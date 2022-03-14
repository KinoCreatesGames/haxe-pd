package core;

@:native('playdate.strings')
extern class PString {
	/**
	 * Generates a random `string` of uppercase letters.
	 * @param length 
	 * @return String
	 */
	@:luaDotMethod
	public static function UUID(length:Int):String;

	/**
	 * Returns a string with the whitespace removed
	 * from the beginning and ending of `string`.
	 * @param string 
	 * @return String
	 */
	@:luaDotMethod
	public static function trimWhitespace(string:String):String;

	/**
	 * Returns a string with the whitespace removed from the beginning
	 * and ending of `string`.
	 * @param string 
	 * @return String
	 */
	@:luaDotMethod
	public static function trimLeadingWhitespace(string:String):String;

	/**
	 * Returns a string with the whitespace
	 * removed from the ending of `string`.
	 * @param string 
	 * @return String
	 */
	@:luaDotMethod
	public static function trimTrailingWhitespace(string:String):String;
}
