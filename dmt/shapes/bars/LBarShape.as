package dmt.shapes.bars
{
	import flash.display.Shape;
	
	import crawlingtosea.events.LoaderEvent;
	import crawlingtosea.loaders.LoaderXML;
	
	import dmt.barsdata.LBarData;
	import dmt.parse.ParseBarData;
	import dmt.parse.ParseLBarData;
	

	public class LBarShape extends SingleBar
	{
		
		private var _data:ParseLBarData;
		
		public function LBarShape(data:ParseBarData)
		{
			_data=data as ParseLBarData;	
		}
		
		public  function get shape():Shape
		{
			
			return new LBarData(_data.n1,_data.n2,_data.color).Data;
		}		
		
		public function wirte(n1:Number,n2:Number,color:Number):void{
			var xml:LoaderXML=new LoaderXML("dmt/barsXMLdata/LBarData.xml");
			xml.addEventListener(LoaderEvent.COMPLETED,onXMLED);
			function onXMLED(e:LoaderEvent):void{
				trace(xml.data as XML);
			}
		}
	
		
		
		
	}
}