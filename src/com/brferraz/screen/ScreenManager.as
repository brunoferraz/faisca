package com.brferraz.screen 
{
	import com.brferraz.events.ScreenEvent;
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Bruno Ferraz
	 */
	public class ScreenManager extends MovieClip implements IScreenManager 
	{
		public var current:Screen;
		public var lastIndex:int;
		public var currentIndex:int;
		public var nextIndex:int;
		public var list:Vector.<Screen>
		public function ScreenManager() 
		{
			list = new Vector.<Screen>
			current = null;
			currentIndex = 0;
			lastIndex = 0;
			nextIndex = 0;
		}
		
		/* INTERFACE com.brferraz.screen.IScreenManager */
		
		public function addScreen(s:Screen):void 
		{
			list.push(s);
		}
		
		public function addScreenAt(s:Screen, at:int):void 
		{
			//TODO implement addScreeAt
		}
		
		public function removeScreen(s:Screen):void 
		{
			var i = list.indexOf(s);
			if (i != -1) {
				list.splice(i, 1);
			}
		}
		
		public function removeScreenFrom(i:int):void 
		{
			if (i > 0 && i < list.length) {
				list.splice(i,1)
			}
		}
		
		public function next():void 
		{
			changeTo(currentIndex +1)
		}
		
		public function prev():void 
		{
			changeTo(currentIndex-1)
		}
		
		public function changeTo(i:int):void 
		{
			lastIndex = currentIndex;
			nextIndex = i;
			if (nextIndex >= 0 && nextIndex < list.length) {
				if (current != null) {//if has current
					if (current.parent != null) {//if current is on a displayList
						current.finish();
						current.addEventListener(ScreenEvent.HIDE_COMPLETE, removeCurrentFinishChange)
						current.hide();
					}
				}else {
					currentIndex = nextIndex;
					current = list[nextIndex];
					addChild(current);
					current.init();
					current.show();
				}
			// If index to change is out of range so Loop
			}else if (nextIndex < 0 && list.length!=0) {
				nextIndex = list.length -1;
				changeTo(nextIndex);
			}else if (nextIndex >= list.length && list.length != 0) {
				nextIndex = 0;
				changeTo(0);
			}
		}
		
		private function removeCurrentFinishChange(e:ScreenEvent):void 
		{
			current.removeEventListener(ScreenEvent.HIDE_COMPLETE, removeCurrentFinishChange)
			current.parent.removeChild(current);
			
			dispatchEvent(new ScreenEvent(ScreenEvent.MANAGER_CHANGE_SCREEN));
			
			currentIndex = nextIndex;
			current = list[currentIndex];
			addChild(current);
			current.init();
			current.show();
		}
		
		public function init():void 
		{
			if (list.length != 0) {
				changeTo(0);
			}
		}
		
		public function finish():void 
		{
			
		}
		
		public function update():void 
		{
			current.update();
		}
	}
}