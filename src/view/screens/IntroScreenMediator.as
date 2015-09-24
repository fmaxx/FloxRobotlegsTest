/**
 * Created by Max on 24.09.2015.
 */
package view.screens {
import robotlegs.bender.bundles.mvcs.Mediator;

public class IntroScreenMediator extends Mediator {

    [Inject]
    public var view:IntroScreen;

    override public function initialize():void{
        view.addEventListener(ScreenEvent.MAIN_CLICK, onMainClick);

        addContextListener(ScreenEvent.SCREEN_CHANGED, onScreenChanged, ScreenEvent);
    }

    private function onScreenChanged(event:ScreenEvent):void{
        view.visible = event.screenID == view.id;
    }

    private function onMainClick(event:ScreenEvent):void {
        dispatch(event);
    }
}
}
