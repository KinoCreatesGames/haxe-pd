package core;

import geometry.Point;
import geometry.LineSegment;

/**
 * Drawing location.
 */
typedef Location = Int;

/**
 * The drawing mode the playdate is in.
 */
typedef DrawMode = Int;

typedef LineCapStyle = Int;

@:native('playdate.graphics')
extern class Graphics {
	/**
	 * White color for clearing the screen
	 */
	@:luaDotMethod
	public static var kColorWhite:Int;

	/**
	 * Black color for clearing the screen
	 */
	@:luaDotMethod
	public static var kColorBlack:Int;

	@:luaDotMethod
	public static var kStrokeCentered:Location;
	@:luaDotMethod
	public static var kStrokeOutside:Location;
	@:luaDotMethod
	public static var kStrokeInside:Location;

	@:luaDotMethod
	public static var kDrawModeBlackTransparent:DrawMode;

	@:luaDotMethod
	public static var kDrawModeWhiteTransparent:DrawMode;

	@:luaDotMethod
	public static var kLineCapStyleButt:LineCapStyle;
	@:luaDotMethod
	public static var kLineCapStyleRound:LineCapStyle;
	@:luaDotMethod
	public static var kLineCapStyleSquare:LineCapStyle;

	/**
	 * Clears the screen.
	 * @param color 
	 */
	@:luaDotMethod
	public static function clear(?color:Int):Void;

	public function new();

	/**
	 * Draws a specific part of the screen via clipping.
	 * @param x 
	 * @param y 
	 * @param width 
	 * @param height 
	 */
	@:luaDotMethod
	public static function setClipRect(x:Int, y:Int, width:Int, height:Int):Void;

	/**
	 * Clears the clipping area.
	 */
	@:luaDotMethod
	public static function clearClipRect():Void;

	/**
	 * Draws a filled rectangle
	 * @param x 
	 * @param y 
	 * @param width 
	 * @param height 
	 */
	@:luaDotMethod
	public static function fillRect(x:Float, y:Float, width:Float, height:Float):Void;

	/**
	 * Draws a rectangle
	 * @param x 
	 * @param y 
	 * @param width 
	 * @param height 
	 */
	@:luaDotMethod
	public static function drawRect(x:Float, y:Float, width:Float, height:Float):Void;

	/**
	 * Draws a line from x1, y1 to x2, y2.
	 * End cap of the line is specified with 
	 * `setLineCapStyle()`.
	 * `setLineWidth()` determines the line width.
	 * @param x1 
	 * @param y1 
	 * @param x2 
	 * @param y2 
	 */
	@:luaDotMethod
	overload public static function drawLine(x1:Float, y1:Float, x2:Float, y2:Float):Void;

	/**
	 * Draws a line from x1, y1 to x2, y2 of the line segment.
	 * End cap of the line is specified with 
	 * `setLineCapStyle()`.
	 * `setLineWidth()` determines the line width.
	 * @param ls 
	 */
	@:luaDotMethod
	overload public static function drawLine(ls:LineSegment):Void;

	/**
	 * Draws a single pixel in the current color at x, y.
	 * @param x 
	 * @param y 
	 */
	@:luaDotMethod
	overload public static function drawPixel(x:Float, y:Float):Void;

	/**
	 * Draws a single pixel in the current color at the point.
	 * @param point
	 */
	@:luaDotMethod
	overload public static function drawPixel(point:Point):Void;

	/**
	 * Sets the color for drawing.
	 * @param color 
	 */
	@:luaDotMethod
	public static function setColor(color:Int):Void;

	/**
	 * Sets the width of the line
	 * for drawLine, rect, polygon, and arc.
	 * @param width 
	 */
	@:luaDotMethod
	public static function setLineWidth(width:Float):Void;

	/**
	 * Returns the line width.
	 * @return Float
	 */
	@:luaDotMethod
	public static function getLineWidth():Float;

	/**
	 * Specifies where the stroke is placed relative to the rectangle
	 * passed into the drawRect.
	 * @param location 
	 */
	@:luaDotMethod
	public static function setStrokeLocation(location:Location):Void;

	/**
	 * Gets the stroke position relative to the rectangle passed into
	 * drawRect.
	 * @return Int
	 */
	@:luaDotMethod
	public static function getStrokeLocation():Int;

	/**
	 * Routes all draw calls to the given
	 * playdate image.
	 * @param image 
	 */
	@:luaDotMethod
	public static function lockFocus(image:Image):Void;

	/**
	 * Returns drawing to the frame buffer.
	 */
	public static function unlockFocus():Void;
}
