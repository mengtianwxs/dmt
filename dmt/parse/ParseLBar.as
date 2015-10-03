package dmt.parse
{
	import flash.events.EventDispatcher;
	
	import crawlingtosea.events.LoaderEvent;
	import crawlingtosea.loaders.LoaderXML;
	
	import dmt.events.XMLEvent;
	
	/*
	* @declare ParseLBar
	* @author mengtianwxs
	* @date 2015-6-1
	*/
	[Event(name="completed", type="events.XMLEvent")]
	
	public class ParseLBar extends EventDispatcher
	{
		public  var xml:XML;

		private var l:LoaderXML;
		
		
		public function ParseLBar(path:String)
		{
		   l=new LoaderXML(path);
		   l.addEventListener(LoaderEvent.COMPLETED,onXMLComplete);
		   l.start();

		}
		
		protected function onXMLComplete(event:LoaderEvent):void
		{
			// TODO Auto-generated method stub
			//trace(l.data);
			if(l.data!=null){
				xml=l.data as XML;
				//trace("here");
				this.dispatchEvent(new XMLEvent(XMLEvent.COMPLETED));
			}
		}
		
		
	}
}