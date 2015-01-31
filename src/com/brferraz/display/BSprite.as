package com.brferraz.display {
	import com.brferraz.events.EventManager;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Bruno Ferraz
	 */
	public class BSprite extends Sprite 
	{
		private var _eventManager:EventManager = new EventManager();
		public function BSprite() 
		{
			super();
		}
		override public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void 
		{
			super.addEventListener(type, listener, useCapture, priority, useWeakReference);
			this._eventManager.addEventListener(type, listener, useCapture, priority, useWeakReference);
		}
		override public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void 
		{
			super.removeEventListener(type, listener, useCapture);
			this._eventManager.removeEventListener(type, listener, useCapture);
		}
		public function removeAllListeners()
		{
			this._eventManager.removeAllListeners(this);
		}
		
		public function get eventManager():EventManager 
		{
			return _eventManager;
		}
	}
}