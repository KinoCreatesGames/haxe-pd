package core;

import core.Graphics.Color;
import core.Types.WidthHeight;
import core.Types.SuccessError;

typedef DitherType = String;

/**
 * Image class for creating the 
 * images on the playdate.
 */
@:native('playdate.graphics.image')
extern class Image {
	// Dithering types
	public static var kDitherTypeNone:DitherType;

	public static var kDitherTypeDiagonalLine:DitherType;

	public static var kDitherTypeVerticalLine:DitherType;

	public static var kDitherTypeHorizontalLine:DitherType;

	public static var kDitherTypeScreen:DitherType;

	public static var kDitherTypeBayer2x2:DitherType;

	public static var kDitherTypeBayer4x4:DitherType;

	public static var kDitherTypeBayer8x8:DitherType;

	public static var kDitherTypeFlordSteinberg:DitherType;

	public static var kDitherTypeBurkes:DitherType;

	public static var kDitherTypeAtkinson:DitherType;

	public function new(imageName:String):Void;

	/**
	 * Draws the background image at the given coordinates.
	 */
	public function draw():Void;

	/**
	 * Draws a partially transparent image with its upper-left corner
	 * at location (x, y).
	 * @param x 
	 * @param y 
	 * @param alpha 
	 * @param ditherType 
	 */
	public function drawFaded(x:Float, y:Float, alpha:Float, ditherType:DitherType):Void;

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
	 * Erases the contents of the image's mask, so that the image is entirely
	 * opaque if opaque is 1, transparent otherwise. This function has no effect
	 * if the image doesn't have a mask.
	 * @param opaque 
	 */
	public function clearMask(opaque:Int):Void;

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

	/**
	 * Returns an image created by applying a VCR
	 * pause effect to the caller image.
	 * @return Image
	 */
	public function vcrPauseFilterImage():Image;

	/**
	 * Returns a faded version of the caller
	 * .
	 * * alpha: The alpha value assigned to the caller, in the range 0.0 - 1.0. If an image mask already exists it is multiplied by alpha.
	 * * ditherType: The caller is faded into a greyscale image and dithered with one of the dithering algorithms listed in playdate.graphics.image:blurredImage()
	 * @param alpha 
	 * @param ditherType 
	 * @return Image
	 */
	public function fadedImage(alpha:Float, ditherType:DitherType):Image;

	/**
	 * Returns a blurred copy of the caller.
	 * * Radius: a bigger radius means a more blurred result; processing time 
	 * independent of the radius.
	 * * numPasses: A box blur is used to blur the image. More passes, more closely approximates gaussian blur.
	 * Higher values take more time to process.
	 * * ditherType: The original image is blurred into greyscale, then dithered back to 1-bit using
	 * the below algorithms:
	 * 
	 * > * None
	 * > * Diagonal Line
	 * > * Vertical Line
	 * > * Horizontal Line
	 * > * Screen
	 * > * Bayer2x2
	 * > * Bayer4x4
	 * > * Bayer 8x8
	 * > * FloydSteinberg
	 * > * TypeBurkes
	 * > * Atkinson
	 * 
	 * * padEdges: boolean indicating whether the edges of the images should be padded to accomodate
	 * the blur radius. Defaults to false
	 * * xPhase, yPhase: optional; integer values that affect the apperance.
	 * @param radius 
	 * @param numPasses 
	 * @param ditherType 
	 * @param padEdges 
	 * @param xPhase 
	 * @param yPhase 
	 * @return Image
	 */
	public function blurredImage(radius:Float, numPasses:Int, ditherType:DitherType, ?padEdges:Bool, ?xPhase:Int, ?yPhase:Int):Image;

	public function blendWithImage(image:Image, alpha:Float, ditherType:DitherType):Image;
}
