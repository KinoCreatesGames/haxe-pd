package core;

import lua.Table;

typedef Button = String;

@:native('playdate')
extern class Playdate {
	/**
	 * This variable--not a function, so don't invoke with ()--
	 * it is set to 1 when running inside of the simulator
	 * and is nil otherwise.
	 */
	public static var isSimulator:Int;

	@:luaDotMethod
	public static var graphics:Graphics;

	/**
	 * Dpad up
	 */
	public static var kButtonUp:Button;

	/**
	 * Dpad right
	 */
	public static var kButtonRight:Button;

	/**
	 * Dpad down
	 */
	public static var kButtonDown:Button;

	/**
	 * Dpad left
	 */
	public static var kButtonLeft:Button;

	/**
	 * A button
	 */
	public static var kButtonA:Button;

	/**
	 * B button
	 */
	public static var kButtonB:Button;

	// Button callbacks

	/**
	 * Called immediately after the player presses the A button.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function AButtonDown():Bool;

	/**
	 * Called after the A button is held down for one
	 * second. This can be used for secondary actions (
	 * displaying a game world map, changing weapons).
	 * @return Bool
	 */
	@:luaDotMethod
	public static function AButtonHeld():Bool;

	/**
	 * Called immediately after the player releases the A Button.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function AButtonUp():Bool;

	/**
	 * Called immediately after the player presses the B 
	 * Button.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function BButtonDown():Bool;

	/**
	 * Called after the B button is held down for one second.
	 * This can be used for secondary actions.
	 * (displaying a game world map, changing weapons).
	 * @return Bool
	 */
	@:luaDotMethod
	public static function BButtonHeld():Bool;

	/**
	 * Called immediately after the player releases the B button.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function BButtonUp():Bool;

	/**
	 * Called immediately after the player releases the
	 * left direction on the d-pad.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function leftButtonDown():Bool;

	/**
	 * Called immediately after the player releases the
	 * left direction on the d-pad.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function leftButtonUp():Bool;

	/**
	 * Called immediately after the player presses the down
	 * direction on the d-pad.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function downButtonDown():Bool;

	/**
	 * Called immediately after the player releases 
	 * the down direction on the d-pad.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function downButtonUp():Bool;

	/**
	 * Called immediately after the player presses the right
	 * direction on the d-pad.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function rightButtonDown():Bool;

	/**
	 * Called immediately after the player releases the 
	 * right direction on the d-pad.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function rightButtonUp():Bool;

	/**
	 * Called immediately after the player presses the up
	 * direction on the d-pad.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function upButtonDown():Bool;

	/**
	 * Called immediately after the player releases
	 * the up direction on the d-pad.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function upButtonUp():Bool;

	/**
	 * The `playdate.metadata` table contains the values in the 
	 * current game’s pdxinfo file, keyed by variable name. 
	 * To retrieve the version number of the game, for example, 
	 * you would use `playdate.metadata.version`.
	 */
	public static var metaData:Table<String, Dynamic>;

	/**
	 * Checks whether a button is pressed or not.
	 * * kButtonA
	 * * kButtonB
	 * * kButtonUp
	 * * kButtonDown
	 * * kButtonLeft
	 * * kButtonRight
	 * Or one of the strings "a", "b", "up", "down", "left", "right".
	 * @return Bool
	 */
	@:luaDotMethod
	public static function buttonIsPressed(button:Button):Bool;

	/**
	 * Returns true for just one update cycle if button was pressed. 
	 * ButtonJustPressed will not return true again until the button 
	 * is released and pressed again. This is useful for, say, 
	 * a player "jump" action, so the jump action is taken only 
	 * once and not on every single update.
	 * 
	 * button should be one of the constants listed in 
	 * `buttonIsPressed()`.
	 * @param button 
	 * @return Bool
	 */
	@:luaDotMethod
	public static function buttonJustPressed(button:Button):Bool;

	/**
	 * Returns true for just one update cycle if button was released.
	 * `buttonJustReleased` will not return true again until the button
	 * is pressed and released again. Button should be one of the constants
	 * listed in `buttonIsPressed`
	 * @param button 
	 * @return Bool
	 */
	@:luaDotMethod
	public static function buttonJustReleased(button:Button):Bool;

	public static var argv:Array<Dynamic>;

	/**
	 * Heart of the play date application.
	 * Updates the game. This is called
	 * before every frame is drawn onscreen.
	 * Use the function to poll input, run game logic, move
	 * sprites.
	 * @return 
	 */
	@:luaDotMethod
	public static function update():Void;

	/**
	 * Returns a boolean indicating whether or not the crank
	 * is foleded into the unit.
	 */
	@:luaDotMethod
	public static function isCrankDocked():Bool;

	/**
	 * Gets the absolute position of the crank in degrees.
	 * Zero is pointing straight up, parallel to the device.
	 * Turning the crank clockwise(when looking at the right edge of an upright device) 
	 * increases the angle,
	 * up to a maximum value 359.9999999. The value then resets back 
	 * to zero as the crank
	 * continues its rotation.
	 * @return Float
	 */
	@:luaDotMethod
	public static function getCrankPosition():Float;

	/**
	 * `You must import CoreLibs/crank to use getCrankTicks().`
	 * 
	 * Returns the number of "ticks" — whose frequency is defined by the value of ticksPerRevolution — 
	 * the crank has turned through since the last time this function was called. 
	 * Tick boundaries are set at absolute positions along the crank’s rotation. 
	 * Ticks can be positive or negative, depending upon the direction of rotation.
	 * 
	 * 
	 * For example, say you have a movie player and you want your movie to 
	 * advance 6 frames for every one revolution of the crank. 
	 * Calling playdate.getCrankTicks(6) during each update will give you a 
	 * return value of 1 as the crank turns past each 60 degree increment. 
	 * (Since we passed in a 6, each tick represents 360 ÷ 6 = 60 degrees.) 
	 * So getCrankTicks(6) will return a 1 as the crank turns past the 0 degree 
	 * absolute position, the 60 degree absolute position, 
	 * and so on for the 120, 180, 240, and 300 degree positions. Otherwise, 
	 * 0 will be returned. (-1 will be returned if the crank moves past one of these 
	 * mentioned positions while going in a backward direction.)
	 * @param ticksPerRevolution
	 * @return Int
	 */
	@:luaDotMethod
	public static function getCrankTicks(ticksPerRevolution:Int):Int;

	/**
	 * This function, if defined, is called when the crank is docked.
	 */
	@:luaDotMethod
	public static dynamic function crankDocked():Void;

	/**
	 * This function, if defined, is called when the crank is undocked.
	 */
	@:luaDotMethod
	public static dynamic function crankUndocked():Void;

	/**
	 * True disables the default crank docking/undocking sound effects. 
	 * False re-enables them. Useful if the crank 
	 * sounds seem out-of-place in your game.
	 * @param disable 
	 */
	@:luaDotMethod
	public static function setCrankSoundsDisabled(disable:Bool):Void;

	// Timer Functions
	// Date & Time

	/**
	 * Returns the number of milliseconds the game has been active since launched.
	 * @return Float
	 */
	@:luaDotMethod
	public static function getCurrentTimeMilliseconds():Float;

	/**
	 * Resets the high-resolution timer.
	 */
	@:luaDotMethod
	public static function resetElapsedTime():Void;

	/**
	 * Returns the number of seconds since playdate.resetElapsedTime() 
	 * was called. 
	 * The value is a floating-point number with microsecond accuracy
	 * @return Float
	 */
	@:luaDotMethod
	public static function getElapsedTime():Float;

	/**
	 * Returns a table with values for the local time, accessible via the following keys:
	 * year: 4-digit year (until 10,000 AD)
	 * 	 month: month of the year, where 1 is January and 12 is December
	 * day: day of the month, 1 - 31
	 * weekday: day of the week, where 1 is Monday and 7 is Sunday
	 * hour: 0 - 23
	 * minute: 0 - 59
	 * second: 0 - 59 (or 60 on a leap second)
	 * millisecond: 0 - 999
	 * @return Table<String,Float>
	 */
	@:luaDotMethod
	public static function getTime():Table<String, Float>;

	/**
	 * Returns a table with values for the GMT time, accessible via the following keys:
	 * year: 4-digit year (until 10,000 AD)
	 * 	 month: month of the year, where 1 is January and 12 is December
	 * day: day of the month, 1 - 31
	 * weekday: day of the week, where 1 is Monday and 7 is Sunday
	 * hour: 0 - 23
	 * minute: 0 - 59
	 * second: 0 - 59 (or 60 on a leap second)
	 * millisecond: 0 - 999
	 * @return Table<String,Float>
	 */
	@:luaDotMethod
	public static function getGMTTime():Table<String, Float>;

	/**
	 * flag determines whether or not the print() function adds a 
	 * newline to the end of the printed text. Default is true.
	 * @param flag 
	 */
	@:luaDotMethod
	public static function setNewlinePrinted(flag:Bool):Void;

	/**
	 * Calculates the current frames per second and draws that value at x, y.
	 * `Make sure to invoke drawFPS() only once per frame, otherwise its displayed results will be incorrect.`
	 * @param x 
	 * @param y 
	 */
	@:luaDotMethod
	public static function drawFPS(x:Float, y:Float):Void;

	/**
	 * Returns two values, the current API version of the Playdate
	 * runtime and the minimum API verison supported by the run time.
	 * @return String
	 */
	@:luaDotMethod
	public static function apiVersion():String;

	/**
	 * Pauses the game execution.
	 * Update will not be called, screen will freeze
	 * during wait. Audio will continue to play.
	 * Animation is possible, but must explicitly call
	 * `playdate.display.flush()`
	 */
	@:luaDotMethod
	public static function wait(milliseconds:Float):Void;

	/**
	 * Stops per-frame callbacks to `playdate.update()`. Useful
	 * in confunction with `playdate.display.flush()` if 
	 * your program only does things in response to button 
	 * presses.
	 */
	@:luaDotMethod
	public static function stop():Void;

	/**
	 * Resume per-frame callbacks to `playdate.update()`
	 */
	@:luaDotMethod
	public static function start():Void;

	// Garbage Collection

	/**
	 * If flag is false, automatic garbage collection
	 * is disabled and the game should manually collect
	 * garbage with Lua's `collectgarbage()` function.
	 * @param flag 
	 */
	@:luaDotMethod
	public static function setcollectsGarbage(flag:Bool):Void;

	/**
	 * Force the Lua garbage collector to run for at least ms
	 * milliseconds every frame, so that garbage doesn't pile up
	 * and cause the game to run out of memory and stall in
	 * emergency garbage collection.
	 * 
	 * The default value is 5 milliseconds.
	 * `Note`: If your game isn’t generating a lot of garbage, 
	 * it might be advantageous to set a smaller minimum GC time, 
	 * granting more CPU bandwidth to your game.
	 * 
	 * @param ms
	 */
	public static function setMinimumGCTIme(ms:Float):Void;

	/**
	 * When the amount of used memory is less than `min` (scaled from
	 * 0-1 as a percentage of totaly system memory), the system will
	 * only run the collector for the minimum GC time, as set by 
	 * `setGCScaling`, every frame. If the used memory is more than
	 * `max`, the system will spend all free time running the collector.
	 * 
	 * Between the two, the time used by the garbage collector is
	 * scaled proportionally.
	 * 
	 * For example, if the scaling is set to a min of 0.4 and max 0.7,
	 * and memory is half full, the collector will run for the
	 * minimum GC time plus 1/3 of whatever time isl eft before the 
	 * next frame  (because (0.5 - 0.4) / (0.7 - 0.4) = 1/3).
	 * 
	 * The default behavior is a scaling of `(0.0, 1.0)`. If set to
	 * `(0.0, 0.0)` the system will use all available extra time each 
	 * frame running GC.
	 * @param min 
	 * @param max 
	 */
	@:luaDotMethod
	public static function setGCScaling(min:Float, max:Float):Void;

	/**
	 * Returns a table holding booleans with the following
	 * keys: charging (for any sort of charging), and USB (for USB-
	 * specific charging). Test these values for `true` to see 
	 * if the device is being charged, and by what means.
	 * @return Float
	 */
	@:luaDotMethod
	public static function getPowerStatus():lua.Table<String, Bool>;

	/**
	 * Returns a value from 0-100 denoting the current level of battery 
	 * charge. 0 = empty; 100 = full.
	 * 
	 * @return Float
	 */
	@:luaDotMethod
	public static function getBatteryPercentage():Float;

	/**
	 * Returns the battery's  current voltage level.
	 * @return String
	 */
	@:luaDotMethod
	public static function getBatteryVoltage():String;

	/**
	 * Clears the simulator console.
	 */
	@:luaDotMethod
	public static function clearConsole():Void;

	/**
	 * Sets the color of `debugDraw` overlay image.
	 * @param r 
	 * @param g 
	 * @param b 
	 * @param a 
	 */
	@:luaDotMethod
	public static function setDebugDrawColor(r:Float, g:Float, b:Float, a:Float):Void;

	/**
	 * Called immediately after `update`, any drawing performed during
	 * this callback is overlaid on the display in 50% transparent red
	 * (or another color selected with `setDebugDrawColor()`).
	 * 
	 * White pixels are drawin in the `debugDrawColor` .
	 * Black pixels are transparent.
	 * 
	 */
	public static function debugDraw():Void;
}
