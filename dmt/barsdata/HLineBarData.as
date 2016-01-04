package dmt.barsdata
{
	import flash.display.Shape;
	
	import dmt.core.basicData;
	
	public class HLineBarData extends basicData
	{
		private var _len:Number;
		public function HLineBarData(length:Number=0,color:uint=0)
		{
		
			this._len=length;
			this._color=color;
		}
		
		protected override function startDraw():void
		{
			_a.graphics.lineStyle(1,_color);
			_a.graphics.moveTo(0,0);
			_a.graphics.lineTo(_len,0);
			_a.graphics.lineTo(_len,d);
			_a.graphics.lineTo(0,d); 
			_a.graphics.lineTo(0,0);                
		}
		
		public function get Data():Shape{
			startDraw();
			return _a;
		}
		
		
	}
}