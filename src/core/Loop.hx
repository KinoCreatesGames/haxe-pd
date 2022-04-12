package core;

import graphics.ImageTable;
import core.Image.ImageFlip;

/**
 * Animation Loop class.
 * For looping animation with images 
 * on the playdate.
 */
@:native('playdate.graphics.animation.loop')
extern class Loop {
	public function new(?delay:Float, imageTable:ImageTable, shouldLoop:Bool);

	/**
	 * Draws the loop's current image at x, y.
	 * 
	 * The flip argument is optional; see `image:draw` for valid values.
	 * @param x 
	 * @param y 
	 * @param flip 
	 */
	public function draw(x:Float, y:Float, ?flip:ImageFlip):Void;

	/**
	 * Returns the `image` from the caller's *imageTable* if it exists.
	 * The image returned will be at the imageTable's index that matches
	 * the caller's frame.
	 * @return Image
	 */
	public function image():Image;

	/**
	 * Returns false if the loop has passed its
	 * last frame and does not loop.
	 * @return Bool
	 */
	public function isValid():Bool;

	/**
	 * Sets the `ImageTable` to be used for this animation loop,
	 * and sets the loop's endFrame property to
	 * #imageTable.
	 * @param table 
	 */
	public function setImageTable(table:ImageTable):Void;
}
