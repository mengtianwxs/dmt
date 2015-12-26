package dmt.barsdata
{
	import flash.display.Shape;
	
	import dmt.shapes.bars.BarShape;

	public class LineBarData  extends BarShape
	{
		private var line:Shape=new Shape();
		private var len:Number=0;
		private var d:Number=0;
		public function LineBarData(length:Number,D:Number,k:Number=3)
		{
			this.len=length;
			this.d=D*k;
			
		   super.addChild(line);
		}
		
		
	}
}