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

#endif // PLANE_H