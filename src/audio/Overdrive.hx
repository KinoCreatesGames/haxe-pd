package audio;

/**
 * Overdrive
 */
@:native('playdate.sound.overdrive')
extern class Overdrive extends Effect {
	/**
	 * Creates a new overdrive effect.
	 */
	public function new();

	/**
	 * Sets the wet dry?mix for the effect. A level of
	 * 1 (full wet) replaces the input with the effect;
	 * 0 leaves the effect out of the mix.
	 * @param level 
	 */
	public function setMix(level:Float):Void;

	/**
	 * Sets a "signal" to modulate the mix level.
	 * @param signal 
	 */
	public function setMixMod(signal:Signal):Void;

	/**
	 * Sets the gain of the filter.
	 * @param level 
	 */
	public function setGain(level:Float):Void;

	/**
	 * Sets the level where amplified input clips.
	 * @param level 
	 */
	public function setLimit(level:Float):Void;

	/**
	 * Sets the level where the amplified input clips.
	 * @param signal 
	 */
	public function setLimitMod(signal:Signal):Void;

	/**
	 * Adds an offset to the upper and lower limits to create
	 * an asymmetric clipping.
	 * @param level 
	 */
	public function setOffset(level:Float):Void;

	/**
	 * Sets a `signal` to modulate the offset value.
	 * @param signal 
	 */
	public function setOffsetMod(signal:Signal):Void;
}
