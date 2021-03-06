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

public class GoIntroClickedCommand implements ICommand {

    [Inject]
    public var screensModel:ScreensModel;

    [Inject]
    public var eventDispatcher:IEventDispatcher;

    [Inject]
    public var statsService:IStatsService;

    public function execute():void {
        eventDispatcher.dispatchEvent(new ScreenEvent(ScreenEvent.CHANGE_SCREEN_TO,Screens.INTRO));
        statsService.sendEvent("go_intro_clicked");
    }
}
}
