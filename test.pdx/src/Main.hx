import util.PD.pdupdate;
import core.Playdate;
import core.Rect;
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

		// Start Draw Update Loop
		Graphics.clear(Graphics.kColorWhite);
		Graphics.drawRect(30, 30, 20, 20);
		Graphics.setColor(Graphics.kColorBlack);
		Graphics.fillRect(50, 50, 100, 100);
	}
}
