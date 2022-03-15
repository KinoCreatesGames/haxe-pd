package audio;

/**
 * Delay Line
 */
@:native('playdate.sound.delayline')
extern class DelayLine extends Effect {
	/**
	 * Creates a new delay line effect, with the given length
	 * (in seconds).
	 */
	public function new(length:Float);

	/**
	 * Sets the wet/dry mix for the effect. A level of 1(full wet)
	 * replaces the input with the effect output; 0 leaves the 
	 * effecto ut of the mix.
	 * @param level 
	 */
	public function setMix(level:Float):Void;

	/**
	 * Sets a `signal` to modulate the mix level.
	 * @param signal 
	 */
	public function setMixMod(signal:Signal):Void;

	/**
	 * Returns a new `delaylinetap` on the delay line, at the given
	 * delay (which must be less than or equal to the delay line's length).
	 * @param delay 
	 */
	public function addTap(delay:Float):DelayLineTap;

	/**
	 * Sets the feedback level of the delay line.
	 * @param level 
	 */
	public function setFeedback(level:Float):Void;
}
