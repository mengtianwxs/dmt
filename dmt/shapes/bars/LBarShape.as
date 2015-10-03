package dmt.shapes.bars
{
	import dmt.barsdata.BarData;

	public class LBarShape extends SingleBar
	{
		public function LBarShape(data:*)
		{
			if(data!=null){
				parseData(data);
			}
		}
		
		private function parseData(d:Object):void
		{
			// TODO Auto Generated method stub
			
		}		
		
	}
}