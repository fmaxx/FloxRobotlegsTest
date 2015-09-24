/**
 * Created by Max on 24.09.2015.
 */
package view.screens {
import flash.events.MouseEvent;

import gfx.MainScreenGfx;

public class MainScreen extends ScreenBase {

    private var view:MainScreenGfx;

    public function MainScreen() {
        super(Screens.MAIN);

        view = new MainScreenGfx();
        view.introBtn.addEventListener(MouseEvent.CLICK, onIntroBtnClick)
        view.saveBtn.addEventListener(MouseEvent.CLICK, onSaveBtnClick)
        addChild(view);
    }

    private function onSaveBtnClick(event:MouseEvent):void {
        dispatchEvent(new ScreenEvent(ScreenEvent.SAVE_CLICK));
    }

    private function onIntroBtnClick(event:MouseEvent):void {
        dispatchEvent(new ScreenEvent(ScreenEvent.INTRO_CLICK));
    }
}
}
