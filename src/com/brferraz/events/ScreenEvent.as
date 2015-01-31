package com.brferraz.events 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Bruno Ferraz
	 */
	public class ScreenEvent extends Event 
	{
		static public const SHOW			:String = "onShow";
		static public const SHOW_COMPLETE	:String = "onShowComplete";
		
		static public const HIDE			:String = "onHide";
		static public const HIDE_COMPLETE	:String = "onHideComplete";
		
		static public const START			:String = "onStart";
		static public const STOP			:String = "onStop";
		
		static public const UPDATE			:String = "onUpdate";
		static public const DESTROY			:String = "onDestroy";
		
		public var data:Object;
		public function ScreenEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) 
		{ 
			super(type, bubbles, cancelable);
			data = new Object();
		} 
		
		public override function clone():Event 
		{ 
			return new ScreenEvent(type, bubbles, cancelable);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("ScreenEvent", "type", "bubbles", "cancelable", "eventPhase"); 
		}
		
	}
	
}