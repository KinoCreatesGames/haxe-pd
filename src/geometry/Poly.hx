package geometry;

import core.Types.XYWHeight;

@:native('playdate.geometry.poly')
extern class Poly {
	/**
	 * Clses a polygon. If the polygon's first and 
	 * last point aren't concident,
	 * a line segment will be generated to conenct them.
	 */
	public function close():Void;

	/**
	 * Returns true if the polygon is closed.
	 * @return Bool
	 */
	public function isClosed():Bool;

	/**
	 * Returns the axis-aligned bounding box
	 * for the given polygon as the tuple
	 * (x, y, width, height).
	 * @return XYWHeight
	 */
	public function getBounds():XYWHeight;

	/**
	 * Returns the axis-aligned bounding box for the
	 * given polygon as a rect.
	 * @return Rect
	 */
	public function getBoundsRect():Rect;

	/**
	 * Returns the number of points in the polygon.
	 * @return Int
	 */
	public function count():Int;

	/**
	 * Returns the total length of all line 
	 * segments in the polygon.
	 * @return Float
	 */
	public function length():Float;

	/**
	 * Sets the polygon's 
	 * n'th point at the coordinates x, y.
	 * @param n 
	 * @param x 
	 * @param y 
	 */
	public function setPointAt(n:Int, x:Float, y:Float):Void;

	/**
	 * Returns the n'th point at.
	 * @param n 
	 * @return Point
	 */
	public function getPointAt(n:Int):Point;

	/**
	 * Returns true if the given point
	 * intersects the polygon.
	 * @param point 
	 * @return Bool
	 */
	public function intersects(point:Point):Bool;

	/**
	 * Returns a geometry point on one of the polygon's line segments.
	 * `distance` pixels from the start of the polygon.
	 * @param distance 
	 * @return Point
	 */
	public function pointOnPolygon(distance:Float):Point;

	/**
	 * Translates each point on the polygon by dx, dy
	 * pixels.
	 * @param dx 
	 * @param y 
	 */
	public function translate(dx:Float, dy:Float):Void;
}
