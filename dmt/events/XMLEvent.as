package dmt.events
{
	import flash.events.Event;
	
	
	/*
	* @declare XMLEvent
	* @author mengtianwxs
	* @date 2015-6-1
	*/
	
	public class XMLEvent extends Event
	{
		public static const COMPLETED:String="completed";
		
		public function XMLEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		
		public override function clone():Event{
			return new XMLEvent(type,bubbles,cancelable);
			
		}
		
		public override function toString():String{
			return formatToString("XMLEvent","type","bubbles","cancelable","eventPhase");
		}
	}
}