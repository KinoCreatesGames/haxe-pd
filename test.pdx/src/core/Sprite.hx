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

	/**
	 * Returns an array of array-style tables, each containing two sprites that have overlapping collide rects. 
	 * All sprite pairs that are have overlapping collide rects (taking the sprites' group and 
	 * collides-with masks into consideration) are returned.
	 * @return Array<Sprite>
	 */
	@:luaDotMethod
	public static function allOverlappingSprites():Array<Sprite>;

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

	/**
	 * Sets the rotation for the sprite, in degrees clockwise.
	 * Optional scaling factor paramers. 
	 * If setImage() is called after this, the rotation
	 * and scale is applied to the new image. 
	 * Only affects the sprites that have an image set.
	 * @param angle 
	 * @param scale 
	 * @param yScale 
	 */
	public function setRotation(angle:Float, scale:Float, yScale:Float):Void;

	/**
	 * Returns the current rotation of the sprite.
	 * @return Float
	 */
	public function getRotation():Float;

	/**
	 * Returns a copy of the caller, aka a copy of the sprite.
	 * @return Sprite
	 */
	public function copy():Sprite;

	/**
	 * Determines whether the update method will be called.
	 * By default, a sprite's update method does nothing.
	 * You can choose to have your sprite do something on
	 * every frame by implementing an update method
	 * on your sprite instance. or subclassesing your sprite.
	 * @param flag 
	 */
	public function setUpdatesEnabled(flag:Bool):Void;

	/**
	 * Returns whether the  sprite update is enabled.
	 * @return Bool
	 */
	public function updateEnabled():Bool;

	/**
	 * Sets the sprite's tag, an integer value
	 * useful for identifying the sprites later.
	 * Useful for collision checks.
	 * @param tag 
	 */
	public function setTag(tag:Int):Void;

	/**
	 * Returns the tag integer for the sprite.
	 * @return Int
	 */
	public function getTag():Int;

	/**
	 * Flips the bitmap.
	 * If true is passed for collided rect, the collideder
	 * will also be flipped.
	 * @param flip 
	 * @param flipCollidedRect 
	 */
	public function setImageFlip(flip:Bool, flipCollidedRect:Bool):Void;

	/**
	 * Sets the collision rectangle of the sprite.
	 * This is required for the sprite to participate in collisions.
	 * Note: if you want the rect to match the size of the sprite:
	 * ```lua
	 * setCollideRect(0, 0, sprite:getSize());
	 * ```
	 * @param x 
	 * @param y 
	 * @param width 
	 * @param height 
	 */
	overload public function setCollideRect(x:Float, y:Float, width:Float, height:Float):Void;

	/**
	 *  Sets the collision rectangle of the sprite.
	 * This is required for the sprite to participate in collisions. 
	 * @param rect 
	 */
	overload public function setCollideRect(rect:Rect):Void;

	/**
	 * Returns the sprite's rect set with setCollideRect().
	 * Returns a playdate geometry rect.
	 * @return Rect
	 */
	public function getCollideRect():Rect;

	/**
	 * Returns the sprite collide rect as a 4 tuple,
	 * x, y, width, height.
	 * @return XYWHeight
	 */
	public function getCollideBounds():XYWHeight;

	/**
	 * Clears the sprite's collide rect, set with 
	 * ```lua
	 * setCollideRect() 
	 * ```
	 */
	public function clearCollideRect():Void;

	/**
	 * Returns a list of overlapping sprites to the main sprite.
	 * This takes into account the sprite's groups and collides-with masks
	 * into consideration.
	 * @return Array<Sprite>
	 */
	public function overlappingSprites():Array<Sprite>;

	/**
	 * Sets the collision enabled flag to the parameter value.
	 * Can be used to temporarily disable collisions.
	 * @param flag 
	 */
	public function setCollisionsEnabled(flag:Bool):Void;

	/**
	 * Returns true if the collsionEanbled flag is set to true on the sprite.
	 * @return Bool
	 */
	public function collisionsEnabled():Bool;
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

@:multiReturn extern class XYWHeight {
	var x:Int;
	var y:Int;
	var width:Int;
	var height:Int;
}
