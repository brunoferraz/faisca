package  
{
	import com.brferraz.screen.ScreenManager;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Bruno Ferraz
	 */
	public class Main extends MovieClip
	{
		var m:ScreenManager
		public function Main() 
		{
			m = new ScreenManager();
			m.addScreen(new Tela_1());
			m.addScreen(new Tela_2());
			m.addScreen(new Tela_3());
			m.init();
			
			addChild(m)
			m.addEventListener(MouseEvent.MOUSE_DOWN, clickHandle)
		}
		
		private function clickHandle(e:MouseEvent):void 
		{
			m.prev();
		}
		
	}

}