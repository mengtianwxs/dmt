package dmt.events
{
	import flash.events.Event;
	
	public class SnakeBarData_Event extends Event
	{
		
		public static const SNAKEBARDATA_EVENT:String="snakebardata_event";
		public var len_sw:Number=0;
		public var len_xw:Number=0;
		public var len_width:Number=0;
		public var len_height:Number=0;
		
		public function SnakeBarData_Event(type:String,sw:Number,xw:Number,width:Number,height:Number)
		{
			super(type);
			this.len_sw=sw;
			this.len_xw=xw;
			this.len_width=width;
			this.len_height=height;
		}
		
		override public function clone():Event{
			return new SnakeBarData_Event(type,len_sw,len_xw,len_width,len_height);
		}
	}
}


