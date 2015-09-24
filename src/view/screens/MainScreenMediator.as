/**
 * Created by Max on 24.09.2015.
 */
package view.screens {
import robotlegs.bender.bundles.mvcs.Mediator;

public class MainScreenMediator extends Mediator {

    [Inject]
    public var view:MainScreen;

    override public function initialize():void{
        view.addEventListener(ScreenEvent.INTRO_CLICK, onIntroClick);
        view.addEventListener(ScreenEvent.SAVE_CLICK, onSaveClick);

        addContextListener(ScreenEvent.SCREEN_CHANGED, onScreenChanged, ScreenEvent);
    }

    private function onSaveClick(event:ScreenEvent):void {
        dispatch(event);
    }

    private function onIntroClick(event:ScreenEvent):void {
        dispatch(event);
    }

    private function onScreenChanged(event:ScreenEvent):void{
        view.visible = event.screenID == view.id;
    }
}
}
