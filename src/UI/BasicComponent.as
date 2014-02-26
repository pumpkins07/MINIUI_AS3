package UI 
{
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author wq
	 */
	public class BasicComponent extends Sprite 
	{
		
		public function BasicComponent(parent:DisplayObjectContainer = null, xpos:Number = 0, ypos:Number = 0):void
		{
			init();
			move(xpos, ypos);
			if (parent != null)
			{
				parent.addChild(this);
			}
		}
		
		protected function init():void 
		{
			
		}
		
		protected function move(xpos:Number, ypos:Number):void 
		{
			x = Math.round(xpos);
			y = Math.round(ypos);
		}
		
		
		
	}

}