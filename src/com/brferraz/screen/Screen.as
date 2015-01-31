package com.brferraz.screen 
{
	import flash.display.DisplayObject;
	import flash.events.Event;
	import com.brferraz.events.ScreenEvent
	/**
	 * ...
	 * @author Bruno Ferraz
	 */
	public class Screen implements IScreen extends DisplayObject
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
			
		}
		
		public function showComplete():void 
		{
			
		}
		
		public function hide():void 
		{
			
		}
		
		public function hideComplete():void 
		{
			dispatchEvent(new ScreenEvent(ScreenEvent));
		}
		
		public function startScreen():void 
		{
			
		}
		
		public function stopScreen():void 
		{
			
		}
		
		public function update():void;
		{
			
		}
		
		public function destroy():void 
		{
			
		}
		
	}

}