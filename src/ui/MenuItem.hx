package ui;

@:native('playdate.menuItem')
extern class MenuItem {
	/**
	 * Sets the callback function for this menu item.
	 * @param callback 
	 */
	public function setCallback(callback:Void->Void):Void;

	/**
	 * Sets the title displayed for this menu item.
	 * 
	 * The title for a menu item can also be set using dot syntax.
	 * @param newTitle 
	 */
	public function setTitle(newTitle:String):Void;

	/**
	 * Returns the title displayed for this menu item.
	 * @return String
	 */
	public function getTitle():String;

	/**
	 * Sets the value for this menu item.
	 * The value is of a different type
	 * depending on the type of menu item:
	 * * normal: integer
	 * checkmark: boolean
	 * options: String
	 * @param newValue 
	 */
	public function setValue(newValue:Any):Void;

	public function getValue():Any;
}
