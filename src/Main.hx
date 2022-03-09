import extra.VertBar;
import util.PD.width;
import util.PD.center;
import lua.Math;
import util.PD.coroutineYield;
import util.PD.pdupdate;
import core.Playdate;
import geometry.Rect;
import core.Image;
import core.Sprite;
import core.Graphics;

class Main {
	public static function main() {
		// Special Update Method for playdate
		pdupdate(update);
	}

	public static inline function update() {
		var player = new Rect(5, 5, 10, 10);
		var image = new Image('');

		// Start Draw Update Loop
		Graphics.clear(Graphics.kColorWhite);
		Graphics.drawRect(30, 30, 20, 20);
		Playdate.drawFPS(10, 10);
		Graphics.setColor(Graphics.kColorBlack);
		var realCenter = center();
		var size = 100;
		var center = 100;
		var radius = 50;
		var t = Playdate.getElapsedTime();
		var starAmt = 1000;
		// for (i in 0...starAmt) {
		// 	var radius = width() / 2;
		// 	var sign = i % 2 == 0 ? -1 : 1;
		// 	var randX = Math.random() * sign;
		// 	var randY = Math.random() * sign;
		// 	Graphics.fillRect(realCenter.x + (Math.cos(i) * radius) * randX, realCenter.y + (Math.sin(i) * radius) * randY, 4 * randX, 4 * randX);
		// }
		// Graphics.fillRect(center + (Math.cos(t) * radius), center + (Math.sin(t) * radius), size, size);

		// Try Bar
		var bar = new VertBar(50, 40, 150, 20);
		bar.updatePerc(Math.abs(Math.sin(t)));
		bar.draw();
		trace(center * (Math.cos(t) + radius));
		coroutineYield();
	}
}
