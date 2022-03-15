package audio;

/**
 * `DelayLineTap` is a sublcass of sound `Source`.
 * Note that a tap can be added to any channel, not just the 
 * channel tap's delay line is on.
 */
@:native('playdate.sound.delaylinetap')
extern class DelayLineTap {
	public function new();

	/**
	 * Sets the position of the tap on the delay line, up to the delay
	 * line's length.
	 * @param time 
	 */
	public function setDelay(time:Float):Void;

	/**
	 * Sets a `signal` to modulate the tap delay. If the signal is continuous (
	 * an envelope or triangle LFO, but not a square LFO) playback is sped up
	 * or slowed down to compress or expand time.
	 * @param signal 
	 */
	public function setDelayMod(signal:Signal):Void;

	/**
	 * Sets the tap's volume.
	 * @param level 
	 */
	public function setVolume(level:Float):Void;

	/**
	 * Return the tap's volume.
	 * @return Float
	 */
	public function getVolume():Float;

	/**
	 * If set and the delay line is stereo, the tap outputs the 
	 * delay line's left channel to its right output and vice versa.
	 * @param flag 
	 */
	public function setFlipChannel(flag:Bool):Void;
}
