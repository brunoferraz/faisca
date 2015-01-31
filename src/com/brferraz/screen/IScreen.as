package com.brferraz.screen 
{
	
	/**
	 * ...
	 * @author Bruno Ferraz
	 */
	public interface IScreen 
	{
		public function show():void;
		public function showComplete():void;
		
		public function hide():void;
		public function hideComplete():void;
		
		public function startScreen():void;
		public function stopScreen():void;
		
		public function update():void;
		
		public function destroy():void;
	}
}