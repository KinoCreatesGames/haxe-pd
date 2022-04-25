package ui;

import core.Types.MenuItemReturn;

/**
 * A Playdate menu.
 */
@:native('playdate.menu')
extern class Menu {
	/**
	 * Title will be the title displayed by the menu item.
	 * 
	 * When this menu item is selected, the OS will:
	 * 1. Hide the System Menu.
	 * 2. Invoke your `callback` function
	 * 3. Unpauses your game and call `playdate.gameWillResume`
	 * If the returned `menuItem` is nil, a second `errorMessage`
	 * return value will indicate the reason the operation failed.
	 * @param title 
	 * @param callback 
	 * @return MenuItemReturn
	 */
	public function addMenuItem(title:String, callback:Void->Void):MenuItemReturn;

	/**
	 * Removes the `playdate.menuItem` from the menu.
	 * @param menuItem 
	 */
	public function removeMenuItem(menuItem:MenuItem):Void;

	/**
	 * Removes all menu items from the menu.
	 */
	public function removeAllMenuItems():Void;
}
