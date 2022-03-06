package core;

import geometry.Rect;
import core.Types.WidthHeight;

@:native('playdate.geometry.nineSlice')
extern class NineSlice {
	/**
	 * Returns a new 9 slice image from the image at `imagePath` with
	 * the stretchable region defined by other parameters. The arguments
	 * represent the origin and dimensions of the innermost ('center') slice.
	 * @param imagePath 
	 * @param innerX 
	 * @param innerY 
	 * @param innerWidth 
	 * @param innerHeight 
	 */
	public function new(imagePath:String, innerX:Float, innerY:Float, innerWidth:Float, innerHeight:Float):Void;

	/**
	 * Returns the slice of a 9 slice image as a pair
	 * width, height.
	 * @return WidthHeight
	 */
	public function getSize():WidthHeight;

	/**
	 * Returns the minimum size of the 9 slice image as a pair
	 * width, height.
	 * @return WidthHeight
	 */
	public function getMinSize():WidthHeight;

	/**
	 * Draws the 9 slice image at the desired coordinates by stretching
	 * the defined region to achieve the width and height inputs.
	 * @param x 
	 * @param y 
	 * @param width 
	 * @param height 
	 */
	overload public function drawInRect(x:Float, y:Float, width:Float, height:Float):Void;

	/**
	 * Draws the 9 slice image at the desired coordinates by stretching
	 * the defined region to achieve the width and height inputs.
	 * @param x 
	 * @param y 
	 * @param width 
	 * @param height 
	 */
	overload public function drawInRect(rect:Rect):Void;
}
