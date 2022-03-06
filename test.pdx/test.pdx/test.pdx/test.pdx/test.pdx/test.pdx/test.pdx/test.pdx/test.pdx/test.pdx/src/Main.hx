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
		var p = new Sprite(image);
		trace(p.x);

		// Start Draw Update Loop
		Graphics.clear(Graphics.kColorWhite);
		Graphics.drawRect(30, 30, 20, 20);
		Playdate.drawFPS(10, 10);
		Graphics.setColor(Graphics.kColorBlack);
		var size = 100;
		var center = 100;
		var radius = 50;
		var t = Playdate.getElapsedTime();
		Graphics.fillRect(center + (Math.cos(t) * radius), center + (Math.sin(t) * radius), size, size);
		trace(center * (Math.cos(t) + radius));
		coroutineYield();
	}
}
