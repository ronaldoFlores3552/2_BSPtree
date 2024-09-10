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