package audio;

@:native('playdate.sound.bitcrusher')
extern class Bitcrusher extends Effect {
	public function new();

	/**
	 * Sets the wet/dry mix for the effect.
	 * A level of 1 (full wet) replaces the input 
	 * with the effect output; 0 leaves
	 * the effect out of the mix.
	 * @param level 
	 */
	public function setMix(level:Float):Void;

	/**
	 * Sets a `signal` to modulate the mix level.
	 * @param signal 
	 */
	public function setMixMod(signal:Signal):Void;

	/**
	 * SEts the amount of crushing
	 * to amount. Valid values are 0 (no effect) to 1 (quantizing output
	 * to 1-bit).
	 * @param amount 
	 */
	public function setAmount(amount:Float):Void;

	/**
	 * Sets a `signal` to modulate the filter level.
	 * @param signal 
	 */
	public function setAmountMod(signal:Signal):Void;

	/**
	 * Sets the number of samples to repeat; 0 is no undersampling
	 * ;1 effectively halves the sample rate.
	 * @param amount 
	 */
	public function setUndersampling(amount:Float):Void;

	/**
	 * Sets a `signal` to module the filter level.
	 * @param signal 
	 */
	public function setUndersamplingMod(signal:Signal):Void;
}
