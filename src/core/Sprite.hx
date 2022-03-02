package core;

@:native('playdate.graphics.sprite')
extern class Sprite {
	// Static Methods

	/**
	 * X coordinate of the sprite
	 */
	public var x:Int;

	public var y:Int;

	/**
	 * width of the sprite.
	 */
	public var width:Int;

	/**
	 * Height of the sprite.
	 */
	public var height:Int;

	/**
	 * Updates all the sprites within the game's global sprite list.
	 */
	@:luaDotMethod
	public static function updateAll():Void;

	/**
	 * Removes the given sprite from the display list.
	 * @param sprite 
	 */
	@:luaDotMethod
	public static function removeSprite(sprite:Sprite):Void;

	/**
	 * Returns the number of sprites in the display list;
	 */
	@:luaDotMethod
	public static function spriteCount():Int;

	/**
	 * Removes all sprites from the global
	 * sprite list.
	 */
	@:luaDotMethod
	public static function removeAll():Void;

	public function new(image:Image):Void;

	/**
	 * Updates the current sprite.
	 */
	public function update():Void;

	public function moveTo(x:Int, y:Int):Void;
	public function moveBy(x:Int, y:Int):Void;
	public function add():Void;

	/**
	 * Removes the given sprite from the display list.
	 */
	public function remove():Void;

	/**
	 * Returns the Z index of the given sprite.
	 * @return Int
	 */
	public function getZIndex():Int;

	/**
	 * Sets the z index of the given sprite.
	 * Sprites with higher z indexes are drawn on
	 * top of those with lower z indexes.
	 * Valid values are in the range of
	 *  (-32768, 32767)
	 * @param index 
	 */
	public function setZIndex(index:Int):Void;

	/**
	 * Sets the sprite as visible or invisible.
	 * Sprites that aren't visible, don't have
	 * their draw method called.
	 * @param flag 
	 */
	public function setVisible(flag:Bool):Void;

	/**
	 * Returns whether the sprite is visible or not.
	 * @return Bool
	 */
	public function isVisible():Bool;

	/**
	 * Sets the center of the of the sprite ranging from
	 * 0.0 to 1.0. 
	 * Default: 0.5, 0.5.
	 * Upper left corner: 0.0, 0.0
	 * @param x 
	 * @param y 
	 */
	public function setCenter(x:Float, y:Float):Void;

	/**
	 * Returns the center of the sprite's drawing
	 * center as a fraction, in a tuple.
	 * @return XY
	 */
	public function getCenter():XY;

	/**
	 * Set's the sprite size. The method has no effect on the sprite
	 * if the sprite has an image set.
	 * @param width 
	 * @param height 
	 */
	public function setSize(width:Int, height:Int):Void;

	public function getSize():WidthHeight;

	/**
	 * Sets the scaling factor for the sprite, with an optional scaling for
	 * the Y axis. If set image is called after this,
	 * the scale factor is applied to the new image. Only affects
	 * sprites that have an image set.
	 * @param scale 
	 * @param yScale 
	 */
	public function setScale(scale:Float, ?yScale:Float):Void;

	/**
	 * Returns the tuple (xScale, yScale), the current scaling
	 * of the sprite.
	 * @return ScaleXY
	 */
	public function getScale():ScaleXY;
}

// Multireturn x, y
@:multiReturn extern class XY {
	var x:Int;
	var y:Int;
}

@:multiReturn extern class ScaleXY {
	var xScale:Float;
	var yScale:Float;
}

// Multireturn in Haxe
@:multiReturn extern class WidthHeight {
	var width:Int;
	var height:Int;
}
