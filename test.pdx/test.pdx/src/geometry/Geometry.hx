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
}
