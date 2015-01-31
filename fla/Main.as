package  
{
	import com.brferraz.display.BSprite;
	import com.brferraz.screen.ScreenManager;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Bruno Ferraz
	 */
	public class Main extends MovieClip
	{
		var m:ScreenManager
		var f:BSprite
		public function Main() 
		{
			m = new ScreenManager();
			m.addScreen(new Tela_1());
			m.addScreen(new Tela_2());
			m.addScreen(new Tela_3());
			m.init();
			
			addChild(m)
			m.addEventListener(MouseEvent.MOUSE_DOWN, clickHandle)
			f = new BSprite();
		}
		
		private function clickHandle(e:MouseEvent):void 
		{
			if (e.ctrlKey) {
				trace("criaEvento")
				f.addEventListener(Event.ADDED, handler)
			}else if(e.altKey){
				trace(f.eventManager)
			}else if (e.shiftKey) {
				trace("tiraEvento")
				f.removeAllListeners();
			}
		}
		private function handler(e:Event):void 
		{
			
		}		
	}
}