package fs;

/**
 * The playdate.file module contains functions which 
 * allow you to interact with files on Playdate’s filesystem. 
 * It contains the playdate.file.file submodule for interacting 
 * with an opened file.
 * 
 * About the Playdate filesystem
 * Behind the scenes, there are two directories your game has 
 * access to: the root of your app bundle (read-only), 
 * and a Data directory unique to your game (readable and writeable) 
 * where you can store your game’s saved state or other data.
 * 
 * From your game’s perspective, these two locations are treated as one. If you attempt to read a file, the Playdate OS will first look for the file in the Data directory, then look in the app bundle. If you attempt to create or append to a file, this file will be created in your game’s Data directory. Calling playdate.file.listFiles() returns a list of files and directories at the root of both your app bundle and your game’s Data directory.
 * 
 * You are not permitted access to files outside of these two directories.
 */
typedef FileMode = String;

@:native('playdate.file')
extern class File {
	/**
	 * The file is opened for reading; the system 
	 * first looks in the /Data/<bundleid> folder for the given file, 
	 * then in the game’s pdx folder if it isn’t found 
	 */
	public static var kFilerRead:FileMode;

	/**
	 * the file is created if it doesn’t exist, truncated to zero length if it 
	 * does, then opened for writing
	 */
	public static var kFileWrite:FileMode;

	/**
	 * The file is created if it doesn’t exist, opened for writing, 
	 * with new data written to the end of the file  
	 */
	public static var kFileAppend:FileMode;

	/**
	 * Returns a playdate.file.file corresponding to the opened file. 
	 * mode should be one of the following:
	 * 
	 * * `kFileRead`: the file is opened for reading; 
	 * the system first looks in the /Data/<bundleid> folder 
	 * for the given file, then in the game’s pdx folder 
	 * if it isn’t found
	 * * `kFileWrite`: the file is created if it doesn’t exist, 
	 * truncated to zero length if it does, then opened for writing
	 * * `kFileAppend`: the file is created if it doesn’t exist, 
	 * opened for writing, with new data written to the end of the file
	 * 
	 * if mode is not specified, the default is `kFileRead`
	 *  
	 * @param path 
	 * @param mode 
	 * @return OpenFile
	 */
	@:luaDotMethod
	public static function open(path:String, mode:FileMode):OpenFile;

	/**
	 * Returns an array containing the file names in the given directory
	 * path as strings. Folders are indicated by slash at the 
	 * end of the file name.
	 * 
	 * Call with no arguments to get a list of all  files and folders
	 * your game has access to.
	 * 
	 *  (For a game with default access permissions, 
	 * listFiles(), listFiles("/"), and 
	 * listFiles(".") should all return the same result.)
	 * @param path 
	 * @return Array<String>
	 */
	@:luaDotMethod
	public static function listFiles(?path:String):Array<String>;

	/**
	 * Returns true if file exists at the given path.
	 * @param path 
	 * @return Bool
	 */
	@:luaDotMethod
	public static function exists(path:String):Bool;

	/**
	 * Returns true if a directory exists at the given path.
	 * @param path 
	 * @return Bool
	 */
	@:luaDotMethod
	public static function isdir(path:String):Bool;
}
