package com.brferraz.events {
	import com.brferraz.events.EventHolder;
	import flash.display.DisplayObject;
	/**
	 * ...
	 * @author Bruno Ferraz
	 */
	public class EventManager extends Object 
	{
		private var _id:uint;
		private var _eventList:Vector.<EventHolder> = new Vector.<EventHolder>();
		public function EventManager() 
		{
			super();
		}
		public function addEventListener (type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = true):void
		{
			this._eventList.push(new EventHolder(type, listener, useCapture, priority, useWeakReference));
		}
		public function removeEventListener (type:String, listener:Function, useCapture:Boolean = false):void
		{
			var temp:Vector.<EventHolder> = _eventList;
			for (var i = 0; i < _eventList.length; i++ ) {
				if (temp[i].compare(type, listener, useCapture)) {
					temp.splice(i, 1);
					_eventList = temp;
					break;
				}
			}
		}
		public function removeAllListeners(target:DisplayObject):void
		{
			while (this._eventList.length) {
				target.removeEventListener(this._eventList[0].type, this._eventList[0].listerner, this._eventList[0].useCapture)
			}
			_eventList = new Vector.<EventHolder>
		}
		public function destroy(target:DisplayObject) {
			removeAllListeners(target);
			_eventList = null
		}
		public function toString():String
		{
			var result:String = "";
			result += "You Have " +this._eventList.length  + " Events \n";
			this._eventList.map(function(ev) {
				result += ev.toString() + "\n";
				})
			return result;
		}
	}
}