package audio;

import audio.Sound.PassType;

/**
 * Two Pole Filter
 */
@:native('playdate.sound.twopolefilter')
extern class TwoPoleFilter extends Effect {
	/**
	 * Creates a new two pole IIR filter
	 * of the given type:
	 * 
	 * * kFilterLowePass or "lowpass/lopass"
	 * * kFilterHIghPass or "highpass/hipass"
	 * * kFilterBandPass or "bandpass"
	 * * kFilterNotch  or "notch"
	 * * kFilterPEQ or "peq"
	 * * kFilterLowShelf or "lowshelf/lowshelf"
	 * * kFilterHIghShelf or "highshelf/hishelf"
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
	 * Sets the center frequency (in Hz) of the filter to `Freq`.
	 * @param freq 
	 */
	public function setFrequency(freq:Float):Void;

	/**
	 * Sets a `signal` to  modualte the filter frequency..
	 * @param signal 
	 */
	public function setFrequencyMod(signal:Signal):Void;

	/**
	 * Sets the resonance of the filter to `reso. 
	 * Valid values are in the range 0-1. This parameter
	 * has noe ffect on shelf type filters.
	 * @param reso 
	 */
	public function setResonance(reso:Float):Void;

	/**
	 * Sets a `signal to modulate the filter resonance.
	 * @param signal 
	 */
	public function setResonanceMod(signal:Signal):Void;

	/**
	 * Sets the gain of the filter to `gain`.
	 * Gain is only used in PEQ and shelf type filters.
	 * @param gain 
	 */
	public function setGain(gain:Float):Void;

	public function setType(type:PassType):Void;
}
