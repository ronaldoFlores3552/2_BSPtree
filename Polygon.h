#include "DataType.h"
#include "Plane.h"
#include <vector>

class Polygon
{
private:
    std::vector<Point3D> vertices;

public:
    Polygon(const std::vector<Point3D> &vertices) : vertices(vertices) {}

    // Getters
    std::vector<Point3D> getVertices() const { return vertices; }
    Point3D getVertex(size_t index) const { return vertices[index]; }
    Plane getPlane() const;      // Get the plane of the polygon
    Point3D getNormal() const;   // Get the normal of the polygon
    Point3D getCentroid() const; // Get the centroid of the polygon

    // Setters
    void setVertices(std::vector<Point3D> vertices) { this->vertices = vertices; }

    // Check if a point is inside the polygon
    bool contains(const Point3D &p) const;

    // Get the relation of the polygon with a plane
    RelationType relationWithPlane(const Plane &plane) const;

    // Split the polygon by a plane
    std::pair<Polygon, Polygon> split(const Plane &plane) const;

    // Compute the area of the polygon
    NType area() const;

    // Operators
    bool operator==(const Polygon &other) const;
    bool operator!=(const Polygon &other) const;

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