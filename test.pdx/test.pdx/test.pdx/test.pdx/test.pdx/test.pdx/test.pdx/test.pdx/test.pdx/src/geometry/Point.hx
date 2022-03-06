package geometry;

import core.Types.XY;

/**
 * Creates a geometric point.
 */
@:native('playdate.geometry.point')
extern class Point {
	public function new(x:Float, y:Float);

	/**
	 * Returns a new geometry point.
	 * @return Point
	 */
	public function copy():Point;

	/**
	 * Returns the values x,y. 
	 * @return XY
	 */
	public function unpack():XY;

	/**
	 * Modifiers the point, offsetting 
	 * its values by dx, dy.
	 * @param dx 
	 * @param dy 
	 */
	public function offset(dx:Float, dy:Float):Void;

	/**
	 * Returns a new point object, offset by the
	 * dx, dy.
	 * @param dx 
	 * @param dy 
	 */
	public function offsetBy(dx:Float, dy:Float):Void;

	/**
	 * Returns the square of the distance to point p.
	 * @param point 
	 * @return Float
	 */
	public function squaredDistanceToPoint(point:Point):Float;

	/**
	 * Returns the distance to the point p.
	 * @param point 
	 * @return Float
	 */
	public function distanceToPoint(point:Point):Float;
}
