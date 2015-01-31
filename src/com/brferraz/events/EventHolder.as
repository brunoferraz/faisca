package com.brferraz.events {
	/**
	 * ...
	 * @author Bruno Ferraz
	 */
	public class EventHolder 
	{
		private var _type:String;
		private var _listerner:Function
		private var _useCapture:Boolean
		private var _priority:int
		private var _useWeakReference:Boolean
		public function EventHolder(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = true) {
			_type 				= type;
			_listerner 			= listener;
			_useCapture			= useCapture;
			_priority			= priority;
			_useWeakReference 	= useWeakReference;
		}
		public function compare(type:String, listener:Function, useCapture:Boolean = false):Boolean
		{
			if (type == _type && listener == _listerner && useCapture == _useCapture) {
				return true;
			}else {
				return false;
			}
		}
		public function toString():String {
			var result:String = "";
			result += " type:" + _type
			result += " listerner:" + _listerner
			result += " useCapture:" + _useCapture
			return result;
		}
		
		public function get type():String 
		{
			return _type;
		}
		
		public function get listerner():Function 
		{
			return _listerner;
		}
		
		public function get useCapture():Boolean 
		{
			return _useCapture;
		}
	}
}