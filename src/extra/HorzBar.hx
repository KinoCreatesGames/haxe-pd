package extra;

import core.Graphics;

class HorzBar {
	/**
	 * A number between 0-1.
	 */
	public var perc:Float;

	public var x:Float;
	public var y:Float;
	public var width:Float;
	public var barWidth:Float;

	/**
	 * Creates a new horizontal bar
	 * within the game that allows you to create
	 * a new percentage bar.
	 * @param x 
	 * @param y 
	 * @param barWidth 
	 */
	public function new(x:Float, y:Float, width:Float, barWidth:Float) {
		this.x = x;
		this.y = y;
		this.perc = 1;
		this.width = width;
		this.barWidth = barWidth;
	}

	/**
	 * Updates the percentage
	 * on the bar and redraw it.
	 * @param perc 
	 */
	public function updatePerc(perc:Float) {
		this.perc = perc;
	}

	/**
	 * Draws the bar within the
	 * game using the percentage
	 * property. 
	 */
	public function draw() {
		Graphics.fillRect(x, y, width * perc, barWidth);
	}
}
