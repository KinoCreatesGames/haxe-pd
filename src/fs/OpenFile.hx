package fs;

import core.Types.FileWrite;

@:native('playdate.file.file')
extern class OpenFile {
	/**
	 * Closes the file.
	 */
	public function close():Void;

	/**
	 * Writes the given string to the file and returns the number of bytes written.
	 * if successful, or 0 and a second return value describing the error.
	 * 
	 * If you wish to include the line termination characters, include them
	 * in the string.
	 * @param string 
	 */
	public function write(string:String):FileWrite;

	/**
	 * Flushes any buffered data written to the file to the disk.
	 */
	public function flush():Void;

	/**
	 * Returns the next line of the file delimited by either \n or \r\n.
	 * The returned string does not include newline characters.
	 * @return String
	 */
	public function readLine():String;

	/**
	 * Returns a buffer containing up to a number of bytes bytes from the file,
	 * and the numbers of bytes read. If the read failed, the function
	 * returns null and a second value describing the error.
	 * @param numBytes 
	 * @return FileWrite
	 */
	public function read(numBytes:Int):FileWrite;

	/**
	 * Sets the file read/write position to the given byte offset.
	 * @param offset 
	 */
	public function seek(offset:Int):Void;

	/**
	 * Returns the current byte offset of the read/write position in the file.
	 * @return Int
	 */
	public function tell():Int;
}
