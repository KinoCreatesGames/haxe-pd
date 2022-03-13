package ui;

import core.NineSlice;
import haxe.extern.EitherType;
import core.Image;
import core.Types.XY;
import haxe.extern.Rest;

/**
 * Grid view for drawing components within
 * cells and optionally sections with section
 * heades.
 * 
 * 
 * Example playdate code:
 * 
 * ```lua
 * 
 * local gridview = playdate.ui.gridview.new(44, 44)
 * gridview.backgroundImage = playdate.graphics.nineSlice.new('shadowbox', 4, 4, 45, 45)
 * gridview:setNumberOfColumns(8)
 * gridview:setNumberOfRows(2, 4, 3, 5) -- number of sections is set automatically
 * gridview:setSectionHeaderHeight(24)
 * gridview:setContentInset(1, 4, 1, 4)
 * gridview:setCellPadding(4, 4, 4, 4)
 * gridview.changeRowOnColumnWrap = false 
 * 
 * ```
 */
@:native('playdate.ui.gridview')
extern class GridView {
	// Properties

	/**
	 * A background image that draws behind the gridview's cells.
	 * This image can either be an `image`, which will be tiled or
	 * a `nineSlice`.
	 */
	public var backgroundImage:EitherType<Image, NineSlice>;

	/**
	 * Read-only. True if the gridview is currently performing
	 * a scroll animation.
	 */
	public var isScrolling:Bool;

	/**
	 * For `easingFunctions` that take additional amplitude and
	 * period arguments (such as `inOutElastic`), set these
	 * to the desired values.
	 */
	public var easingAmplitude:Float;

	/**
	 * For `easingFunctions` that take additional amplitude and
	 * period arguments (such as `inOutElastic`), set these
	 * to the desired values.
	 */
	public var easingPeriod:Float;

	/**
	 * If true, grid view will attempt to center cells
	 * when scrolling. If false, the grid view will be scrolled
	 * just as much as necessary to make the cell visible.
	 * 
	 * By default, this is false.
	 */
	public var scrollCellsToCenter:Bool;

	/**
	 * This read-only variable returns true if the gridview
	 * needs to be redrawn. 
	 * 
	 * This can be used to help
	 * optimize drawing in your app. Keep in mind that a gridVeiw
	 * cannot know al lreasons it may need to beredrawn, such as changes
	 * in your drawing callback functions, coordinate or size changes,
	 * or overlapping drawing, so you may need to additionally
	 * redraw at other times.
	 */
	public var needsDisplay(default, null):Bool;

	/**
	 * Creates a new grid view with cells sized
	 * with cellWidth, cellHeight. Sizes are in pixels.
	 * 
	 * If cells should span the entire width of the grid (list view), 
	 * pass zero (0) for cellWidth.
	 * @param cellWidth 
	 * @param cellHeight 
	 */
	public function new(cellWidth:Float, cellHeight:Float);

	/**
	 * Override this method to draw the cells in the gridview.
	 * `selected` is a boolean, true if the cell is being drawn is the
	 * currently-selected cell.
	 * @param section 
	 * @param row 
	 * @param column 
	 * @param selected 
	 * @param x 
	 * @param y 
	 * @param width 
	 * @param height 
	 */
	dynamic public function drawCell(section:Int, row:Int, column:Int, selected:Bool, x:Float, y:Float, width:Float, height:Float):Void;

	/**
	 * Override this method to draw section headers.
	 * This function will only be called if the header height has been
	 * set to a value greater than zero.
	 * @param section 
	 * @param x 
	 * @param y 
	 * @param width 
	 * @param height 
	 */
	dynamic public function drawSectionHeader(section:Int, x:Float, y:Float, width:Float, height:Float):Void;

	/**
	 * Sets the number of sections in the grid view. 
	 * Each section contains at least one row, and row numbering
	 * starts at 1 in each section.
	 * @param num 
	 */
	public function setNumberOfSections(num:Int):Void;

	/**
	 * Gets the number of rows in section.
	 * @return Int
	 */
	public function getNumberOfSections():Int;

	/**
	 * Sets the number of columns in the grid view.
	 * This is set to 1 by default.
	 * @param num 
	 */
	public function setNumberOfColumns(num:Int):Void;

	/**
	 * Returns the number of columns in the grid view.
	 * This is 1 by default.
	 * @return Int
	 */
	public function getNumberOfColumns():Int;

	/**
	 * Convenience method for list-style gridviews, or for
	 * setting the number of rows for multiple sections at 
	 * a time. Pass in a list of numbers of rows for sections
	 * starting from section 1.
	 * @param rows 
	 */
	public function setNumberOfRows(rows:Rest<Int>):Void;

	/**
	 * Sets the size of the cells in the grid view. If cells
	 * should span the entire width of the grid (as in list view)
	 * pass zero (0) for cellWidth.
	 * @param cellWidth 
	 * @param cellHeight 
	 */
	public function setCellSize(cellWidth:Float, cellHeight:Float):Void;

	/**
	 * Sets the amount of padding around cells.
	 * @param left 
	 * @param right 
	 * @param top 
	 * @param bottom 
	 */
	public function setCellPadding(left:Float, right:Float, top:Float, bottom:Float):Void;

	/**
	 * Set the amount of space the content is insert from
	 * the edges of the grid view. Useful if a background image
	 * is being used as a border.
	 * @param left 
	 * @param right 
	 * @param top 
	 * @param bottom 
	 */
	public function setContentInset(left:Float, right:Float, top:Float, bottom:Float):Void;

	/**
	 * Returnst he tuple (x, y, width ,height) representing
	 * the bounds of the cell, not including padding, relative
	 * to the top-right corner of the grid view.
	 * 
	 * If the grid view is configured with zero with cells, gridWidth
	 * is required, and should be the same value you would pass
	 * to.
	 * @param section 
	 * @param row 
	 * @param col 
	 * @param gridWidth 
	 * @return Int
	 */
	public function getCellBounds(section:Int, row:Int, col:Int, ?gridWidth:Float):Int;

	/**
	 * SEts the height of the section headers. 0 by default,
	 * whichc auses section headers not to be drawn.
	 * @param height 
	 */
	public function setSectionHeaderHeight(height:Float):Void;

	/**
	 * Gets the height of the section headers. 0 by default,
	 * which causes section headers not to be drawn.
	 * @return Float
	 */
	public function getSectionHeaderHeight():Float;

	// Scrolling

	/**
	 * Controls the duration of scroll animations.
	 * 250ms by default.
	 * @param ms 
	 */
	public function setScrollDuration(ms:Float):Void;

	/**
	 * `set` scrolls to the coordinate x, y.
	 * 
	 * If animated is true(or not provided) the new scroll position
	 * is animated to using `scrollEasingFunction` and the value
	 * set in `setScrollDuration`.
	 * @param x 
	 * @param y 
	 * @param animated 
	 */
	public function setScrollPosition(x:Float, y:Float, ?animated:Float):Void;

	/**
	 * Returns the current scroll location x,y. 
	 * @return XY
	 */
	public function getScrollPosition():XY;

	/**
	 * Scrolls to the specified cell, just enough so that
	 * the cell is visible.
	 * @param section 
	 * @param row 
	 * @param column 
	 * @param animated 
	 */
	public function scrollToCell(section:Int, row:Int, column:Int, ?animated:Bool):Void;

	/**
	 * Scrolls to the specified cell, just enough so that
	 * the cell is centered in the grid view if possible and visible.
	 * @param section 
	 * @param row 
	 * @param column 
	 * @param animated 
	 */
	public function scrollToCellToCenter(section:Int, row:Int, column:Int, ?animated:Bool):Void;

	/**
	 * Convenience function for list-style grid iews.
	 * Scrolls to the specified row in the list.
	 * @param row 
	 * @param animated 
	 */
	public function scrollToRow(row:Int, ?animated:Bool):Void;

	/**
	 * Scrolls to the top of the grid view.
	 * @param animated 
	 */
	public function scrollToTop(?animated:Bool):Void;
}
