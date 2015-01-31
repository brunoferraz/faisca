package com.brferraz.screen 
{
	import flash.display.DisplayObject;
	import flash.events.Event;
	import com.brferraz.events.ScreenEvent
	import flash.display.MovieClip;

	/**
	 * ...
	 * @author Bruno Ferraz
	 */
	public class Screen extends MovieClip implements IScreen 
	{
		
		public function Screen() 
		{
			addEventListener(Event.ADDED_TO_STAGE, onAdded)
		}
		
		public function onAdded(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAdded);
			
		}
		
		/* INTERFACE com.brferraz.screen.IScreen */
		
		public function show():void 
		{
			dispatchEvent(new ScreenEvent(ScreenEvent.SHOW));
			showComplete();
		}
		
		public function showComplete():void 
		{
			dispatchEvent(new ScreenEvent(ScreenEvent.SHOW_COMPLETE));
		}
		
		public function hide():void 
		{
			dispatchEvent(new ScreenEvent(ScreenEvent.HIDE));
			hideComplete();
		}
		
		public function hideComplete():void 
		{
			dispatchEvent(new ScreenEvent(ScreenEvent.HIDE_COMPLETE));
		}
		
		public function init():void 
		{
			dispatchEvent(new ScreenEvent(ScreenEvent.START));
		}
		
		public function finish():void 
		{
			dispatchEvent(new ScreenEvent(ScreenEvent.STOP));
		}
		
		public function update():void
		{
			dispatchEvent(new ScreenEvent(ScreenEvent.UPDATE));
		}
		
		public function destroy():void 
		{
			dispatchEvent(new ScreenEvent(ScreenEvent.DESTROY));
		}	
	}
}