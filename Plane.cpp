#include "Plane.h"

NType Plane::distance(const Point3D &p) const
{
    return Vector3D(p - this->_p).dotProduct(this->_n);
}

Point3D Plane::intersect(const Line &l) const
{
    if (l.getUnit().dotProduct(this->_n) == 0)
        return Point3D(INFINITY, INFINITY, INFINITY);
    NType d = (Vector3D(this->_p - l.getPoint()).dotProduct(this->_n)) /
              l.getUnit().dotProduct(this->_n);

    return l.getPoint() + l.getUnit() * d;
}

bool Plane::contains(const Point3D &p) const
{
    return this->_n.dotProduct(p - this->_p) == 0;
}

bool Plane::contains(const Line &l) const
{
    return this->_n.dotProduct(l.getPoint() - this->_p) == 0 &&
           this->_n.dotProduct(l.getUnit()) == 0;
}

bool Polygon::contains(const Point3D &p) const
{
    Plane plane = this->getPlane();

    for (int i = 0; i < this->vertices.size() - 1; i++)
    /// for all linbe segments except closing one
    {
        Vector3D pside = vertices[i + 1] - vertices[i]; // side of polygon
        Vector3D topoint = p - vertices[i];             // from point to polygon

        // if var points up, then were inside.
        Vector3D var = pside.crossProduct(topoint); // may fail if colinear
        var.normalize();

        // project on normal and find size to see if 1
        NType projectionOnNormal = abs(var.dotProduct(plane.getNormal()));
        if (projectionOnNormal != 1)
            return false;
    }
    Vector3D pside = vertices.back() - vertices[0];
    Vector3D topoint = p - vertices[0];

    Vector3D var = pside.crossProduct(topoint);
    var.normalize();

    NType projectionOnNormal = abs(var.dotProduct(plane.getNormal()));

    if (projectionOnNormal != 1)
        return false;

    return true;
}

RelationType Polygon::relationWithPlane(const Plane &plane) const
{
    if (vertices.empty())
        return COINCIDENT; // Optional: Handle empty polygons

    // Retrieve plane properties once, outside the loop
    Point3D point_in_plane = plane.getPoint();
    Vector3D normal = plane.getNormal();

    int top = 0, bottom = 0, zero = 0;

    for (const Point3D &vertex : vertices)
    {
        // Calculate distance from the plane to the point
        Vector3D to_point_in_plane = vertex - point_in_plane;
        NType distance = to_point_in_plane.dotProduct(normal);

        // Classify the point based on its distance to the plane
        if (distance == 0)
        {
            zero++;
        }
        else if (distance > 0)
        {
            top++;
        }
        else
        {
            bottom++;
        }
    }

    // Determine the polygon's relation to the plane
    if (zero == vertices.size())
    {
        return COINCIDENT; // All vertices are on the plane
    }
    else if (top > 0 && bottom == 0)
    {
        return IN_FRONT; // All vertices are in front of the plane
    }
    else if (bottom > 0 && top == 0)
    {
        return BEHIND; // All vertices are behind the plane
    }
    else
    {
        return SPLIT; // Vertices are on both sides of the plane
    }
}

std::pair<Polygon, Polygon> Polygon::split(const Plane &plane) const
{
    std::vector<Point3D> front;
    std::vector<Point3D> back;

    NType distance_old = Vector3D(vertices[0] - plane.getPoint()).dotProduct(plane.getNormal());

    for (int i = 1; i <= vertices.size(); i++)
    {
        int current_index = i % vertices.size();
        int previous_index = (i - 1) % vertices.size();

        Point3D current_vertex = vertices[current_index];
        Point3D previous_vertex = vertices[previous_index];

        NType distance = Vector3D(current_vertex - plane.getPoint()).dotProduct(plane.getNormal());

        // Check if the segment crosses the plane
        if (distance_old * distance < 0)
        {
            Line l = Line(previous_vertex, current_vertex);
            Point3D intersection_point = plane.intersect(l);

            if (!front.empty() && front.back() != intersection_point)
            {
                front.push_back(intersection_point);
            }
            else if (front.empty())
            {
                front.push_back(intersection_point);
            }

            if (!back.empty() && back.back() != intersection_point)
            {
                back.push_back(intersection_point);
            }
            else if (back.empty())
            {
                back.push_back(intersection_point);
            }
        }

        // Add the current vertex to the appropriate list
        if (distance == 0)
        {
            front.push_back(current_vertex);
            back.push_back(current_vertex);
        }
        else if (distance > 0)
        {
            front.push_back(current_vertex);
        }
        else
        {
            back.push_back(current_vertex);
        }

        distance_old = distance;
    }

    return std::make_pair(Polygon(front), Polygon(back));
}
/*
    ====================
    |    observacion   |
    ====================
*/
NType Polygon::area() const
{
    NType area = 0;
    for (int i = 0; i < vertices.size(); i++)
    {
        Point3D p1 = vertices[i];
        Point3D p2 = vertices[(i + 1) % vertices.size()];
        area += p1.getX() * p2.getY() - p1.getY() * p2.getX();
    }
    return abs(area) / 2;
}