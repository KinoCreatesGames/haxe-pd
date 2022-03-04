package core;

import lua.Table;

typedef Button = String;

@:native('playdate')
extern class Playdate {
	@:luaDotMethod
	public static var graphics:Graphics;

	/**
	 * Dpad up
	 */
	@:luaDotMethod
	public static var kButtonUp:Button;

	/**
	 * Dpad right
	 */
	@:luaDotMethod
	public static var kButtonRight:Button;

	/**
	 * Dpad down
	 */
	@:luaDotMethod
	public static var kButtonDown:Button;

	/**
	 * Dpad left
	 */
	@:luaDotMethod
	public static var kButtonLeft:Button;

	/**
	 * Checks whether a button is pressed or not.
	 * @return Bool
	 */
	@:luaDotMethod
	public static function buttonIsPressed(button:Button):Bool;

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
}
