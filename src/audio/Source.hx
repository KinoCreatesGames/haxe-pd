package audio;

@:native('playdate.sound.source')
extern class Source {
	/**
	 * Returns a list of all sources
	 * currently playing.
	 * @return Array<Source>
	 */
	@:luaDotMethod
	public static function playingSources():Array<Source>;
}
