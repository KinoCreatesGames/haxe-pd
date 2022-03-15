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

	public function setMixMod(signal:Signal):Void;
}
