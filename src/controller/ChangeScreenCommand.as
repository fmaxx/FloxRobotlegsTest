/**
 * Created by Max on 24.09.2015.
 */
package controller {
import flash.events.IEventDispatcher;

import model.ScreensModel;

import robotlegs.bender.extensions.commandCenter.api.ICommand;

import view.screens.ScreenEvent;
import view.screens.Screens;

public class ChangeScreenCommand implements ICommand {

    [Inject]
    public var screensModel:ScreensModel;

    [Inject]
    public var eventDispatcher:IEventDispatcher;

    [Inject]
    public var event:ScreenEvent;

    public function execute():void {
        if(screensModel.screenID != event.screenID){
            screensModel.screenID = event.screenID;
            eventDispatcher.dispatchEvent(new ScreenEvent(ScreenEvent.SCREEN_CHANGED, screensModel.screenID));
        }
    }
}
}
