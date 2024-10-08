#ifndef PLANE_H
#define PLANE_H

#include "DataType.h"
#include "Point.h"
#include "Line.h"
#include <vector>

std::ostream &operator<<(std::ostream &os, const RelationType &type);

class Plane
{
private:
    Point3D _p;
    Vector3D _n;

public:
    Plane(const Point3D &point, const Vector3D &normal) : _p(point), _n(normal) {}

    NType distance(const Point3D &p) const;
    Point3D intersect(const Line &l) const;

    // Contain
    bool contains(const Point3D &p) const;
    bool contains(const Line &l) const;

    // Getters
    Point3D getPoint() const { return _p; }
    Vector3D getNormal() const { return _n; }

    // Setters
    void setPoint(Point3D point) { _p = point; }
    void setNormal(Vector3D normal) { _n = normal; }

    // Operators
    bool operator==(const Plane &other) const;
    bool operator!=(const Plane &other) const;

    // Print
    friend std::ostream &operator<<(std::ostream &os, const Plane &p)
    {
        os << "Punto: " << p._p << ", Normal: " << p._n;
        return os;
    }
};
class Polygon
{
private:
    std::vector<Point3D> vertices;

public:
    Polygon(const std::vector<Point3D> &vertices) : vertices(vertices) {}

    // Getters
    std::vector<Point3D> getVertices() const { return vertices; }
    Point3D getVertex(size_t index) const { return vertices[index]; }

    // LISTO
    Plane getPlane() const
    {
        if (vertices.size() < 3)
        {
            throw std::runtime_error("Polygon must have at least three vertices to define a plane.");
        }

        // Use the first three vertices to define the plane
        const Vector3D &p1 = vertices[0];
        const Vector3D &p2 = vertices[1];
        const Vector3D &p3 = vertices[2];

        // Check if the points are collinear by checking if the triangle area is zero
        Vector3D v1 = p2 - p1;                 // Vector from p1 to p2
        Vector3D v2 = p3 - p1;                 // Vector from p1 to p3
        Vector3D normal = v1.crossProduct(v2); // Normal vector is perpendicular to both v1 and v2

        if (normal.mag() == 0)
        {
            throw std::runtime_error("The first three vertices are collinear; cannot define a unique plane.");
        }

        normal.normalize(); // Normalize the normal vector to ensure it has unit length

        // The plane is defined by the normal and any of the points (p1 used here)
        return Plane(p1, normal);
    } // Get the plane of the polygon

    /*
    ====================
    |    observacion   |
    ====================
    */
    Point3D getNormal() const
    {
        Vector3D v1 = vertices[1] - vertices[0];
        Vector3D v2 = vertices[2] - vertices[0];
        return v1.crossProduct(v2).unit();
    } // Get the normal of the polygon
    Point3D getCentroid() const
    {
        Point3D centroid;
        for (Point3D p : this->vertices)
            centroid = centroid + p;
        return Vector3D(centroid) / NType(this->vertices.size());
    } // Get the centroid of the polygon

    // Setters
    void setVertices(std::vector<Point3D> vertices) { this->vertices = vertices; }

    // Check if a point is inside the polygon
    // LISTO
    bool contains(const Point3D &p) const;

    // Get the relation of the polygon with a plane
    // LISTO
    RelationType relationWithPlane(const Plane &plane) const;

    // Split the polygon by a plane
    // LISTO
    std::pair<Polygon, Polygon> split(const Plane &plane) const;

    // Compute the area of the polygon
    /*
    ====================
    |    observacion   |
    ====================
    */
    NType area() const;

    // Operators
    bool operator==(const Polygon &other) const
    {
        if (this->vertices.size() != other.vertices.size())
            return false;

        for (size_t i = 0; i < vertices.size(); ++i)
        {
            if (!(this->vertices[i] == other.vertices[i]))
                return false;
        }
        return true;
    }
    bool operator!=(const Polygon &other) const
    {
        if (this->vertices.size() == other.vertices.size())
            return false;

        for (size_t i = 0; i < vertices.size(); ++i)
        {
            if (!(this->vertices[i] != other.vertices[i]))
                return false;
        }
        return true;
    }

    // Print
    friend std::ostream &operator<<(std::ostream &os, const Polygon &p)
    {
        os << "Vertices: ";
        for (const auto &vertex : p.vertices)
        {
            os << vertex << " ";
        }
        return os;
    }
};
#endif // PLANE_H