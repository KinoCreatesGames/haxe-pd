package core;

@:native('playdate.datastore')
extern class DataStore {
	/**
	 * encodes the given table into the named file.
	 * The `.json` extension should be omitted from the file name.
	 * The default file name is "data". 
	 * 
	 * If pretty print is true, the JSON will be nicely formatted.
	 * @param table 
	 * @param fileName 
	 * @param prettyPrint 
	 */
	@:luaDotMethod
	public function write(table:lua.Table<String, Dynamic>, ?fileName:String, ?prettyPrint:Bool):Void;

	/**
	 * Returns a table instanted with the data in the JSON
	 * encoded file you specify.
	 * `json` extension should be omitted.
	 * 
	 * The default file name is "data". If no  file is found
	 * the function returns nils.
	 * @param fileName 
	 */
	@:luaDotMethod
	public function read(?fileName:String):Null<lua.Table<String, Dynamic>>;

	/**
	 * Deletes the specified datastore file. The default
	 * file name is "data". Returns false if the datastore
	 * file could not be deleted.
	 * @param fileName 
	 * @return Bool
	 */
	@:luaDotMethod
	public function delete(?fileName:String):Bool;

	/**
	 * Saves a playdate image to a file.
	 * If the path doesn't contain a folder name, the image 
	 * is stored in a folder named images.
	 * By default, this method writes a PDI file, a custom image
	 * format used by Playdate, that can be read back in. 
	 * 
	 * If you want to write out a GIF file, append a 
	 * `.gif` extensions to your path.
	 * @param image 
	 * @param path 
	 */
	@:luaDotMethod
	public function writeImage(image:Image, path:String):Void;

	/**
	 * Reads an image from a file in the data folder. If the path doesn't
	 * contain a folder name, the image is searched for in a folder
	 * named images.
	 * 
	 * Read image can only laod compiled pdi files.
	 * @param path 
	 * @return Image
	 */
	public function readImage(path:String):Image;
}
