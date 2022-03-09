package geometry;

@:native('playdate.geometry.arc')
extern class Arc {
	/**
	 * Returns a new arc.
	 * Angles should be specified in degrees. Zero degrees represents the top
	 * of the circles.
	 * 
	 * If specified, direction should be true for clockwise, false
	 * for counterclockwise. If not specified, the direction is inferred
	 * from the start and end angles.
	 * @param x 
	 * @param y 
	 * @param radius 
	 * @param startAngle 
	 * @param endAngle 
	 * @param direction 
	 */
	public function new(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, ?direction:Bool);

	/**
	 * Returns a new copy of the arc.
	 * @return Arc
	 */
	public function copy():Arc;

	/**
	 * Returns the length of the arc.
	 * @return Float
	 */
	public function length():Float;

	/**
	 * Returns true if the direction of the 
	 * arc is clockwise.
	 * @return Bool
	 */
	public function isClockwise():Bool;

	/**
	 * Returns a new point on the arc, 
	 * `distance` pixels from the arc's start angle.
	 * @param distance 
	 * @return Point
	 */
	public function pointOnArc(distance:Float):Point;
}
