package audio;

@:native('playdate.sound.micinput')
extern class MicInput {
	/**
	 * Stops a sample recording starts with
	 * `recordToSample`, if it hasn't already
	 * reached the end of the buffer. The recording's 
	 * completion callback is called immediately.
	 */
	public static function stopRecording():Void;

	/**
	 * Starts monitoring the microphone input level.
	 */
	@:luaDotMethod
	public static function startListening():Void;

	/**
	 * Stops monitoring the 
	 * microphone input level.
	 */
	@:luaDotMethod
	public static function stopListening():Void;

	/**
	 * Returns the current microphone input level, 
	 * a value from 0.0 (quietest) to 1.0 (loudest).
	 * @return Float
	 */
	@:luaDotMethod
	public static function getLevel():Float;

	/**
	 * Returns the current microphone input source, 
	 * either "headset" or "device".
	 * @return String
	 */
	@:luaDotMethod
	public static function getSource():String;
}
