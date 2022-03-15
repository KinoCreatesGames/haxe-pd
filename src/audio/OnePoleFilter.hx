package audio;

/**
 * One pole filter
 * 
 * One pole filter is a simple low/high pass filter, with a single
 * parameter describing the cutoff frequency: values above 0 (up to 1)
 * are high pass, values below 0(down to -1) are low-pass.
 */
@:native('playdate.sound.onepolefilter')
extern class OnePoleFilter extends Effect {
	/**
	 * Returns a new one pole filter.
	 */
	public function new();

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
	 * Sets the filter's single parameter (cutoff frequency) to 
	 * `param`.
	 * @param param 
	 */
	public function setParameter(param:Float):Void;

	/**
	 * Sets a modulator for the filter's parameter.
	 * @param mod 
	 */
	public function setParameterMod(mod:Float):Void;
}
