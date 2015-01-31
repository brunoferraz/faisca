package com.brferraz.screen 
{
	
	/**
	 * ...
	 * @author Bruno Ferraz
	 */
	public interface IScreen 
	{
		function show():void;
		function showComplete():void;
		
		function hide():void;
		function hideComplete():void;
		
		function init():void;
		function finish():void;
		
		function update():void;
		
		function destroy():void;
	}
}