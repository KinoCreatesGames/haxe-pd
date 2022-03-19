package ui;

@:native('playdate.ui.crankIndicator')
extern class CrankIndicator {
	/**
	 * Boolean property specifying which
	 * direction to animate the crank. Defaults
	 * to true.
	 */
	public var clockwise:Bool;

	/**
	 * Initializes or resets the crankIndicator. 
	 * Should be called before showing the alert.
	 */
	public function start():Void;

	/**
	 * Draws the alert.
	 */
	public function update():Void;
}
