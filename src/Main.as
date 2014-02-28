package 
{
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import UI.Button;
	import UI.Label;
	
	/**
	 * ...
	 * @author wq
	 */
	public class Main extends Sprite 
	{
		
		private var clockEvent:ClockEvent;
		private var textField:TextField = new TextField;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			//var customDisplayObject:CustomDisplayObject  = new CustomDisplayObject();
			//addChild(customDisplayObject);
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			//var label:Label = new Label(this, 10, 10, "---------------");
			var button:Button = new Button(this, 10, 10, "START");
			var button2:Button = new Button(this, 10, 50, "END");
			

			
			
			//addEventListener(ClockEvent.TEST_CASE, onTestCase);
			//dispatchEvent(new ClockEvent(ClockEvent.TEST_CASE));
			//clockEvent = new ClockEvent("sss");
			//clockEvent.cancelable = true;
		
			//trace("clockEvent.toString"+clockEvent.toString);
			//graphics.lineTo(10, 100);
		}
		
		private function onTestCase(event:ClockEvent):void
		{
			trace("lll");
			textField.text = "TEXTFILED";
			addChildAt(textField, 0);
			textField.addEventListener(MouseEvent.CLICK, onMouseClick);
			
		}
		
		private function onMouseClick(e:MouseEvent):void 
		{
			//textField.text += " MouseEvent";
		}
		
	
	}
	
}