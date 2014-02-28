package UI 
{
	import flash.display.DisplayObjectContainer;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author wq
	 */
	public class Label extends BasicComponent 
	{
		protected var _text:String = "";
		protected var _tf:TextField;
		
		public function Label(parent:DisplayObjectContainer = null, xpos:Number = 0, ypos:Number = 0, text:String = "")
		{
			
			_text = text;
			super(parent, xpos, ypos);
		}
		
		override protected function init():void
		{
			var textFormat:TextFormat = new TextFormat(Style.TEXT_FONT, Style.TEXT_SIZE);
			
			_tf = new TextField();
			_tf.text = _text;
			_tf.defaultTextFormat = textFormat;
			_tf.backgroundColor = Style.TEXT_BGCOLOR;
			_tf.textColor = Style.TEXT_COLOR;
			_tf.autoSize = TextFieldAutoSize.LEFT;
			
			mouseChildren = false;
			mouseEnabled = false;
			
			addChild(_tf);
		}
		
		public function set text(value:String):void 
		{
			_tf.text = value;
		}
		
		public function get textFiled():TextField 
		{
			return _tf;
		}
	
		
	}

}