package core;

@:native('playdate.graphics')
extern class Graphics {
	public function new();

	/**
	 * Draws a specific part of the screen via clipping.
	 * @param x 
	 * @param y 
	 * @param width 
	 * @param height 
	 */
	public function setClipRect(x:Int, y:Int, width:Int, height:Int):Void;

	/**
	 * Clears the clipping area.
	 */
	public function clearClipRect():Void;

	/**
	 * Draws a filled rectangle
	 * @param x 
	 * @param y 
	 * @param width 
	 * @param height 
	 */
	@:luaDotMethod
	public function fillRect(x:Float, y:Float, width:Float, height:Float):Void;
}
