/**
 * Created by Max on 24.09.2015.
 */
package controller {
import flash.events.IEventDispatcher;

import model.ScreensModel;

import robotlegs.bender.extensions.commandCenter.api.ICommand;

import service.IStatsService;

import view.screens.ScreenEvent;
import view.screens.Screens;

public class GoMainClickedCommand implements ICommand {

    [Inject]
    public var screensModel:ScreensModel;

    [Inject]
    public var eventDispatcher:IEventDispatcher;

    [Inject]
    public var statsService:IStatsService;

    public function execute():void {
        eventDispatcher.dispatchEvent(new ScreenEvent(ScreenEvent.CHANGE_SCREEN_TO,Screens.MAIN));
        statsService.sendEvent("went_to_main");
    }
}
}
