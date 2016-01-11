package dmt.events
{
	import flash.events.Event;
	
	
	/*
	* @declare XMLEvent
	* @author mengtianwxs
	* @date 2015-6-1
	*/
	
	public class BAR_ParseEvent extends Event
	{
		public static const PARSED:String="parsed";
		
		public function BAR_ParseEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		
		public override function clone():Event{
			return new BAR_ParseEvent(type,bubbles,cancelable);
			
		}
		
		public override function toString():String{
			return formatToString("BAR_ParseEvent","type","bubbles","cancelable","eventPhase");
		}
	}
}