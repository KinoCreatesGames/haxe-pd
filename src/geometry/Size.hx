package geometry;

import core.Types.WidthHeight;

@:native('playdate.geometry.size')
extern class Size {
	/**
	 * Returns a new geometry size.
	 * @param width 
	 * @param height 
	 */
	public function new(width:Float, height:Float);

	public function copy():Size;

	/**
	 * Returns the values width, height
	 * @return WidthHeight
	 */
	public function unpack():WidthHeight;
}
