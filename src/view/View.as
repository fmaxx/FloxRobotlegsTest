/**
 * Created by Max on 24.09.2015.
 */
package view {
import flash.display.Sprite;

import view.screens.IntroScreen;
import view.screens.MainScreen;

public class View extends Sprite {


    private var introScreen:IntroScreen;
    private var mainScreen:MainScreen;

    public function View() {
        super();
        introScreen = new IntroScreen();
        addChild(introScreen);

        mainScreen = new MainScreen();
        addChild(mainScreen);

    }
}
}
