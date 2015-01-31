package com.brferraz.screen 
{
	
	/**
	 * ...
	 * @author Bruno Ferraz
	 */
	public interface IScreenManager 
	{
		function addScreen(s:Screen):void
		function addScreenAt(s:Screen, at:int):void
		
		function removeScreen(s:Screen):void
		function removeScreenFrom(i:int):void
		
		function next():void;
		function prev():void;
		function changeTo(i:int):void;
		
		function init():void
		function finish():void;
		
		function update():void;
	}
	
}