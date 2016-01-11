package dmt.events
{
	import flash.events.Event;
	
	
	/*
	* @declare XMLEvent
	* @author mengtianwxs
	* @date 2015-6-1
	*/
	
	public class BAR_XMLEvent extends Event
	{
		public static const XML_COMPLED:String="xml_compled";
		
		public function BAR_XMLEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		
		public override function clone():Event{
			return new BAR_XMLEvent(type,bubbles,cancelable);
			
		}
		
		public override function toString():String{
			return formatToString("XMLEvent","type","bubbles","cancelable","eventPhase");
		}
	}
}