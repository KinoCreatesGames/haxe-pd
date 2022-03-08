package geometry;

typedef FlipType = Int;

@:native('playdate.geomeetry')
extern class Geometry {
	/**
	 * Geometry not flipped.
	 */
	public static var kUnflipped:FlipType;

	/**
	 * Geometry flip on the x axis.
	 */
	public static var kFlippedX:FlipType;

	/**
	 * Geometry flip on the Y axis.
	 */
	public static var kFlippedY:FlipType;

	/**
	 * Geometry flipped on both axes.
	 */
	public static var kFlippedXY:FlipType;

	/**
	 * Returns the squared distance from point (x1, y1) to point (x2, y2).
	 * This version is slightly faster than the one used on the point class.
	 * @param x1 
	 * @param y1 
	 * @param x2 
	 * @param y2 
	 */
	@:luaDotMethod
	public static function squaredDistanceToPoint(x1:Float, y1:Float, x2:Float, y2:Float):Float;

	/**
	 * Returns the distance from point (x1, y1,) to point (x2, y2).
	 * This version is slightly faster than the one used in the 
	 * point class.
	 * @param x1 
	 * @param y1 
	 * @param x2 
	 * @param y2 
	 * @return Float
	 */
	@:luaDotMethod
	public static function distanceToPoint(x1:Float, y1:Float, x2:Float, y2:Float):Float;
}
