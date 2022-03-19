package audio;

typedef CSEvent = {
	step:Float,
	value:Float,
	?interpolate:Bool
}

@:native('playdate.sound.controlsignal')
extern class ControlSignal {
	public var events:Array<CSEvent>;

	/**
	 * Creates a new control signal object,  for automating
	 * effect parameters, channel pan and level, etc.
	 */
	public function new();

	/**
	 * `addEvent` is a simpler way of adding events one at a time
	 * than setting the entire `events` table. Arguments are either
	 * the values themlseves in the given order, or a table
	 * containing values for `step`, `value`, and optionally
	 * `interpolate`.
	 * @param step 
	 * @param value 
	 * @param interpolate 
	 */
	overload public function addEvent(step:Float, value:Float, ?interpolate:Float):Void;

	/**
	 * `addEvent` is a simpler way of adding events one at a time
	 * than setting the entire `events` table. Arguments are either
	 * the values themlseves in the given order, or a table
	 * containing values for `step`, `value`, and optionally
	 * `interpolate`.
	 * @param event 
	 */
	overload public function addEvent(event:CSEvent):Void;

	/**
	 * Clears all events from the control signal.
	 */
	public function clearEvents():Void;

	/**
	 * Sets the midi controller number for the 
	 * control signal, if that's something you want to do.
	 * The value has no effect on playback.
	 * @param num 
	 */
	public function setControllerType(num:Int):Void;

	/**
	 * Control signals in midi files are assigned a
	 * controller number, which describes the intent of
	 * the control. This function returns the controller number.
	 * @return Int
	 */
	public function getControllerType():Int;
}
