package  
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author wq
	 */
	public class ClockEvent extends Event 
	{
		public static const TEST_CASE:String = "onTestCase";
		
		public function ClockEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) 
		{ 
			super(type, bubbles, cancelable);
			
		} 
		
		public override function clone():Event 
		{ 
			return new ClockEvent(type, bubbles, cancelable);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("ClockEvent", "type", "bubbles", "cancelable", "eventPhase"); 
		}
		
	}
	
}