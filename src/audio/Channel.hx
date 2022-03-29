package audio;

@:native('playdate.sound.channel')
extern class Channel {
	/**
	 * Returns a new channel object and adds it to the
	 * global list.
	 */
	public function new();

	/**
	 * Removes the channel from the global list.
	 */
	public function remove():Void;

	/**
	 * Adds an effect to the channel
	 * @param effect 
	 */
	public function addEffect(effect:Effect):Void;

	/**
	 * Removes an effect from the channel
	 * @param effect 
	 */
	public function removeEffect(effect:Effect):Void;

	/**
	 * Adds a source to the channel.
	 * If a source is not assigned to a channel,
	 * it plays on the default global channel
	 * @param source 
	 */
	public function addSource(source:Source):Void;

	/**
	 * Removes a source from the channel
	 * @param source 
	 */
	public function removeSource(source:Source):Void;

	/**
	 * Sets the volume (0.0 - 1.0) for the channel.
	 * @param volume 
	 */
	public function setVolume(volume:Float):Void;

	/**
	 * Gets the volume (0.0 - 1.0) for the channel.
	 * @return Float
	 */
	public function getVolume():Float;

	/**
	 * Sets the pan parameter for the channel.
	 * -1 is left, 0 is center, and 1 is right.
	 * @param pan 
	 */
	public function setPan(pan:Float):Void;

	/**
	 * Sets a signal to automate the volume parameter
	 * @param signal 
	 */
	public function setVolumeMod(signal:Signal):Void;
}
