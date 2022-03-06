package geometry;

import core.Types.XYWHeight;

/**
 * Creates a new rectangle.
 */
@:native('playdate.geometry.rect')
extern class Rect {
	public function new(x:Float, y:Float, width:Float, height:Float);

	/**
	 * Returns a new copy of the rect.
	 * @return Rect
	 */
	public function copy():Rect;

	public function unpack():XYWHeight;

	/**
	 * Returns true if the rectangle
	 * has a zero width or height.
	 * @return Bool
	 */
	public function isEmpty():Bool;

	/**
	 * Returns true if the x, y, width, height
	 * values of the caller equal the values
	 * of the other rectangle.
	 * @param otherRect 
	 * @return Bool
	 */
	public function isEqual(otherRect:Rect):Bool;

	/**
	 * Returns true if other rectangle intersects the caller.
	 * @param otherRect 
	 * @return Bool
	 */
	public function intersects(otherRect:Rect):Bool;

	/**
	 * Returns the smallest possible rect that 
	 * contains both the source rect and other rectangle.
	 * @param otherRect 
	 * @return Bool
	 */
	public function union(otherRect:Rect):Bool;
}
