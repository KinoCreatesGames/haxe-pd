package core;

@:native('playdate.graphics.image')
extern class Image {
	public function new(imageName:String):Void;

	/**
	 * Draws the background image at the given coordinates.
	 */
	public function draw():Void;
}
