package UI 
{
	import flash.display.DisplayObjectContainer;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author wq
	 */
	public class Label extends BasicComponent 
	{
		protected var _text:String = "";
		protected var _tf:TextField;
		
		public function Label(parent:DisplayObjectContainer = null, xpos:Number = 0, ypos:Number = 0, text:String = ""):void
		{
			
			_text = text;
			super(parent, xpos, ypos);
		}
		
		override protected function init():void
		{
			mouseChildren = false;
			mouseEnabled = false;
			_tf = new TextField();
			_tf.text = _text;
			_tf.backgroundColor = Style.TEXT_BGCOLOR;
			_tf.textColor = Style.TEXT_COLOR;
			addChild(_tf);
		}
		
		public function set text(value:String):void 
		{
			_text = value;
		}
		
		public function get textFiled():TextField 
		{
			return _tf;
		}
	
		
	}

}