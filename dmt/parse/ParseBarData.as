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
	
	public class ParseBarData extends EventDispatcher
	{
		public  var xml:XML;
		public  var _xpos:Number=0;
		public  var _ypos:Number=0;
		public  var _color:Number=0;
		public  var _k:int=0;
		public  var _d:Number=0;
		public var _shape:String="";

		private var shapes:LoaderXML=new LoaderXML();
		
		
		public function ParseBarData(path:String)
		{
		   shapes=new LoaderXML(path);
		   shapes.addEventListener(LoaderEvent.COMPLETED,onXMLComplete);
		   shapes.start();

		}
		
		public function get shape():String
		{
			_shape=String(this.Data.Bar.shape);
			return _shape;
		}

		public function get d():Number
		{
			_d=Number(this.Data.Bar.deep);
			return _d;
		}

		public function get k():int
		{
			_k=Number(this.Data.Bar.k);
			return _k;
		}

		public function get color():Number
		{
			_color=Number(this.Data.Bar.color);
			return _color;
		}

		public function get ypos():Number
		{
			_ypos=Number(this.Data.Bar.ypos);
			return _ypos;
		}

		public function get xpos():Number
		{
			_xpos=Number(this.Data.Bar.xpos);
			return _xpos;
		}

		protected function onXMLComplete(event:LoaderEvent):void
		{
			// TODO Auto-generated method stub 
			if(shapes.data!=null){
				xml=shapes.data as XML;
				this.dispatchEvent(new XMLEvent(XMLEvent.COMPLETED));
			}
		}
		
		public function get Data():XML{
			return xml;
		}
		
		
	}
}