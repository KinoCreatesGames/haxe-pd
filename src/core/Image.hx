package core;

import core.Graphics.Color;
import core.Types.WidthHeight;
import core.Types.SuccessError;

@:native('playdate.graphics.image')
extern class Image {
	public function new(imageName:String):Void;

	/**
	 * Draws the background image at the given coordinates.
	 */
	public function draw():Void;

	/**
	 * Loads a new image from the data at path into an already-existing 
	 * image, without allocating additional memory. 
	 * The image at path must be of the same dimensions as the original
	 * @param path 
	 */
	public function load(path:String):SuccessError;

	/**
	 * Returns a new image that is an exact copy of the original.
	 * @return Image
	 */
	public function copy():Image;

	/**
	 * Gets the size of the image as a tuple
	 * `width, height.`
	 * @return WidthHeight
	 */
	public function getSize():WidthHeight;

	/**
	 * Returns 
	 * `kColorWhite` if white.
	 * `kColorBlack` if black
	 *  `kColorClear` if transparent
	 * @param x 
	 * @param y 
	 * @return Color
	 */
	public function sample(x:Int, y:Int):Color;

	/**
	 * Returns ta new image containing this image scaled by amount
	 * scale, with an optional separate scaling for the y axis.
	 * @param scale 
	 * @param yScale 
	 */
	public function scaledImage(scale:Float, ?yScale:Float):Image;

	/**
	 * `Sets` sets the image's mask to a copy of the mask image.
	 * If the image has a mask, `get` returns the mask as an image. 
	 * Otherwise, returns nil.
	 * @param maskImage 
	 */
	public function setMaskImage(maskImage:Image):Void;

	/**
	 * `Sets` sets the image's mask to a copy of the mask image.
	 * If the image has a mask, `get` returns the mask as an image. 
	 * Otherwise, returns nil.
	 * 
	 * `Note`
	 * The returned image references the original’s data, 
	 * so drawing into this image alters the original image’s mask.
	 * @return Null<Image>
	 */
	public function getMaskImage():Null<Image>;

	/**
	 * Adds a mask to the image if it doesn’t already have one. 
	 * If opaque is true, the image will be set to entirely opaque. 
	 * Otherwise, or if not specified, the image will be completely 
	 * transparent.
	 * @param opaque 
	 */
	public function addMask(opaque:Bool):Void;

	/**
	 * Removes the mask from the image if it has one.
	 */
	public function removeMask():Void;

	/**
	 * Returns true if the image has a mask.
	 * @return Bool
	 */
	public function hasMask():Bool;

	/**
	 * If the flag is true, the image will be drawn with it's
	 * colors inverted. If the image is being used as a stencil,
	 * it's behavior is reversed: pixels are drawn where the 
	 * stencil is black, nothing is drawn where the stencil is white.
	 * @param flag 
	 */
	public function setInverted(flag:Bool):Void;

	/**
	 * Returns a color-inverted copy of the caller.
	 * @return Image
	 */
	public function invertedImage():Image;
}
