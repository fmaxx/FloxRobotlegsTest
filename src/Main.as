package {

import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;

import robotlegs.bender.bundles.mvcs.MVCSBundle;
import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.framework.api.IContext;
import robotlegs.bender.framework.impl.Context;

[SWF(width="400", height="600", backgroundColor="#FFFFFF", frameRate="40")]
public class Main extends Sprite {

    private var context:IContext;
    public function Main() {
        stage.align = StageAlign.LEFT;
        stage.scaleMode = StageScaleMode.NO_SCALE;

        context = new Context();
        context.install(MVCSBundle).configure(Config, new ContextView(this)).initialize();
    }
}
}
