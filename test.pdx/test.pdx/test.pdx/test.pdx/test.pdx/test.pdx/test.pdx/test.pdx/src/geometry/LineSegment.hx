package geometry;

import core.Types.LSIntersectsFlag;
import core.Types.LSPointFlag;
import core.Types.LSPointsFlag;
import core.Types.LSPoints;

/**
 * Creates a new line segment.
 */
@:native('playdate.geometry.lineSegment')
extern class LineSegment {
	/**
	 * Creates a new geometry line segment.
	 * @param x1 
	 * @param y1 
	 * @param x2 
	 * @param y2 
	 */
	public function new(x1:Float, y1:Float, x2:Float, y2:Float);

	/**
	 * Returns a new copy of the line segment.
	 * @return LineSegment
	 */
	public function copy():LineSegment;

	/**
	 * Returns the values x1, y1, x2, y2.
	 * @return LSPoints
	 */
	public function unpack():LSPoints;

	/**
	 * Returns the length of the line segment.
	 * @return Float
	 */
	public function length():Float;

	/**
	 * Modifiers the line segment, offsets it values by
	 * dx, dy.
	 * @param dx 
	 * @param dy 
	 */
	public function offset(dx:Float, dy:Float):Void;

	/**
	 * Returns a geometry point representing the mid point of the line segment.
	 * @return Point
	 */
	public function midPoint():Point;

	/**
	 * Returns a geometry point on the line segment,
	 * `distance` pixels from the start of the line.
	 * @param distance 
	 */
	public function pointOnLine(distance:Float):Point;

	/**
	 * Returns avector representation of the line segment.
	 * @return Vector2D
	 */
	public function segmentVector():Vector2D;

	/**
	 * Returns a point that is the closest point to point p 
	 * that is on the  line segment.
	 * @param point 
	 * @return Point
	 */
	public function closestPointOnLineToPoint(point:Point):Point;

	/**
	 * Returns true if there is an intersections
	 * between the caller and the line segment passed in.
	 * If there is an intersection a point representing
	 * the line segment is also returned.
	 * @param ls 
	 * @return Bool
	 */
	public function intersectsLineSegment(ls:LineSegment):LSPointFlag;

	/**
	 * For use in inner loops where speed is the priority
	 * Returns true if there is an intersection between the line segments 
	 * defined by (x1, y1), (x2, y2) and (x3, y3), (x4, y4). 
	 * If there is an intersection, x, y values representing the 
	 * intersection point are also returned
	 * @param x1 
	 * @param y1 
	 * @param x2 
	 * @param y2 
	 * @param x3 
	 * @param y3 
	 * @param x4 
	 * @param y4 
	 * @return LSPointsFlag
	 */
	public function fast_intersection(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, x4:Float, y4:Float):LSPointsFlag;

	/**
	 * Returns tuple (intersects, intersectionPoints).
	 * Intersects is true if there is an intersection
	 * between the caller and the poly.
	 * @param poly 
	 * @return LSIntersectsFlag
	 */
	public function intersectsPolygon(poly:Poly):LSIntersectsFlag;

	/**
	 * Returns tuple (intersects, intersectionPoints)
	 * intersects is true if there is an intersection
	 * between the caller and the rect.
	 * @param rect 
	 * @return LSIntersectsFlag
	 */
	public function intersectsRect(rect:Rect):LSIntersectsFlag;
}
