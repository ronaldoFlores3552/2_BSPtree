#include "Line.h"
Line LineSegment::getLine() const
{
    return Line(p1, p2 - p1);
}

bool Line::isParallel(const Line &l) const
{
    Vector3D v1 = this->getUnit();
    Vector3D v2 = l.getUnit();

    NType crossProduct = v1.dotProduct(v2);
    return abs(crossProduct) == 1;
}

bool Line::isParallel(const Vector3D &v) const
{
    NType crossProduct = this->getUnit().dotProduct(v);
    return abs(crossProduct) == 1;
}
bool Line::isParallel(const LineSegment &l) const
{
    Vector3D v1 = this->getUnit();
    Vector3D v2 = l.getLine().getUnit();

    NType dotProduct = v1.dotProduct(v2);
    return abs(dotProduct) == 1;
}

bool Line::isOrthogonal(const Line &l) const
{
    Vector3D v1 = this->getUnit();
    Vector3D v2 = l.getUnit();

    NType dotProduct = v1.dotProduct(v2);
    return dotProduct == 0;
}
bool Line::isOrthogonal(const Vector3D &v) const
{
    NType dotProduct = this->getUnit().dotProduct(v);
    return dotProduct == 0;
}
bool Line::isOrthogonal(const LineSegment &l) const
{
    Vector3D v1 = this->getUnit();
    Vector3D v2 = l.getLine().getUnit();

    NType dotProduct = v1.dotProduct(v2);
    return dotProduct == 0;
}