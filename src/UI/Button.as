package UI 
{
	import flash.display.DisplayObjectContainer;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author wq
	 */
	public class Button extends BasicComponent 
	{
		
		private var label:Label;
		private var text:String;
		public function Button(parent:DisplayObjectContainer=null, xpos:Number=0, ypos:Number=0, text:String="") 
		{
			this.text = text;
			super(parent, xpos, ypos);
		}
		
		override protected function init():void
		{
			label = new Label(this, 0, 0, text);
			label.textFiled.border = true;
			label.textFiled.borderColor = Style.TEXT_COLOR;
			buttonMode = true;
			useHandCursor = true;
			addEventListener(MouseEvent.ROLL_OVER, rollOver);
		}
		
		private function rollOver(e:MouseEvent):void 
		{
			trace(this.toString);
		}
		
		public function setText(text:String):void
		{
			label.text = text;
		}
		
		
		
	}

}