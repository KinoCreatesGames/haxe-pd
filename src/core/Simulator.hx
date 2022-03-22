package core;

/**
 * Playdate Simulator functionality.
 */
@:native('playdate.simulator')
extern class Simulator {
	/**
	 * Writes an image to a PNG file at the path specified. 
	 * Only available on the simulator.
	 * 
	 * @param image 
	 * @param path 
	 */
	public static function writeToFile(image:Image, path:String):Void;

	/**
	 * Quits the Playdate Simulator app.
	 */
	@:luaDotMethod
	public static function exit():Void;

	/**
	 * Returns the contents of the URL `url` as a string
	 * @param url 
	 * @return String
	 */
	@:luaDotMethod
	public static function getURL(url:String):String;
}
