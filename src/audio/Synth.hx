package audio;

import audio.Sound.WaveForm;
import core.Types.FilePlayVol;

@:native('playdate.sound.synth')
extern class Synth extends Source {
	/**
	 * Returns a copy of the given synth.
	 * @return Synth
	 */
	public function copy():Synth;

	/**
	 * Releases the ntoe, if one is playing.
	 * The note will continue to be voiced through
	 * the release section of the synth's envelope.
	 */
	public function noteOff():Void;

	/**
	 * Stops the synth immediately, without playing the release
	 * part of the envelope.
	 */
	public function stop():Void;

	/**
	 * Returns true if the synth is still playing,
	 * including the release phase of the envelope.
	 */
	public function isPlaying():Void;

	/**
	 * Sets the attack time, in seconds.
	 * @param time 
	 */
	public function setAttack(time:Float):Void;

	/**
	 * Sets the decay time, in seconds.
	 * @param time 
	 */
	public function setDecay(time:Float):Void;

	/**
	 * Sets a function to be called when the synth
	 * stops playing.
	 * @param fun 
	 */
	public function setFinishCallback(fun:Void->Void):Void;

	/**
	 * Sets whether to use legato phrasing for the synth.
	 * If the legato flag is set and a new note starts while
	 * a previous note is still playing, the synth's envelope
	 * remains in the sustain phase instead of starting a new attack.
	 * @param flag 
	 */
	public function setLegato(flag:Bool):Void;

	/**
	 * Sets the release time, in seconds.
	 * @param time 
	 */
	public function setRelease(time:Float):Void;

	/**
	 * Sets the sustain level, as a proportion of the 
	 * total level (0.0 to 1.0).
	 * @param level 
	 */
	public function setSustain(level:Float):Void;

	/**
	 * Sets the synth volume. If a single value is passed in,
	 * sets both left side and right side volume to the
	 * given value. If two values are given, volumes are
	 * set separately.
	 * 
	 * Volumes are between 0.0 and 1.0.
	 * @param left 
	 * @param right 
	 */
	public function setVolume(left:Float, ?right:Float):Void;

	/**
	 * Returns the current volume for the synth,
	 * a single value for mono sources or a pair of values
	 * (left, right) for stereo sources.
	 * 
	 * Volume values are between 0.0 and 1.0.
	 * @return FilePlayVol
	 */
	public function getVolume():FilePlayVol;

	/**
	 * Sets the waveform or `Sample` the synth plays.
	 * If a sample is given, it's data must be uncompressed PCM,
	 * not ADPCM. Otherwise waveform should be one of the
	 * following constants:
	 * 
	 * * kWaveSine
	 * * kWaveSquare
	 * * kWaveSawtooth
	 * * kWaveTriangle
	 * * kWaveNoise
	 * * kWavePOPhase
	 * * kWavePODigital
	 * * kWavePOVosim
	 * 
	 * @param waveform 
	 */
	public function setWaveform(waveform:WaveForm):Void;
}
