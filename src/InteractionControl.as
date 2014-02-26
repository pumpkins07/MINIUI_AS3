package  
{
	import flash.display.Stage;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author wq
	 */
	public class InteractionControl 
	{
		private static var stage:Stage;
		
		public function InteractionControl(stage:Stage) 
		{
			this.stage  = stage;
		}
		
		public function lockOther(
		
		private function lockAll():void
		{
			stage.addEventListener(MouseEvent.CLICK, onMouseEvent, true, int.MAX_VALUE);
			stage.addEventListener(MouseEvent.MOUSE_DOWN, onMouseEvent, true, int.MAX_VALUE);
			stage.addEventListener(MouseEvent.MOUSE_UP, onMouseEvent, true, int.MAX_VALUE);
			stage.addEventListener(MouseEvent., onMouseEvent, true, int.MAX_VALUE);
		}
	}

}