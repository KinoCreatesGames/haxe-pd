package audio;

/**
 * Ring Modulator
 */
@:native('playdate.sound.ringmod')
extern class RingMod extends Effect {
	public function new();

	/**
	 * Sets the wet/dry mix for the effect. A level of 
	 * 1 (full wet) replaces the input with the effect 
	 * output; 0 leaves the effect out of the mix.
	 * @param level 
	 */
	public function setMix(level:Float):Void;

	/**
	 * Sets a `signal` to modulate the mix level.
	 * @param signal 
	 */
	public function setMixMod(signal:Signal):Void;

	/**
	 * Sets the ring mod frequency to `frequency`.
	 * @param frequency 
	 */
	public function setFrequency(frequency:Float):Void;

	/**
	 * Sets a `signal` to modulate the ringmod
	 * frequency.
	 * @param signal 
	 */
	public function setFrequencyMod(signal:Signal):Void;
}
