/**
 * Created by Max on 24.09.2015.
 */
package view.screens {
import flash.events.MouseEvent;

import gfx.IntroScreenGfx;

public class IntroScreen extends ScreenBase {

    private var view:IntroScreenGfx;

    public function IntroScreen() {
        super(Screens.INTRO);
        view = new IntroScreenGfx();
        view.mainBtn.addEventListener(MouseEvent.CLICK, onMainBtnClick)
        addChild(view);
    }

    private function onMainBtnClick(event:MouseEvent):void {
        dispatchEvent(new ScreenEvent(ScreenEvent.MAIN_CLICK, id));
    }
}
}
