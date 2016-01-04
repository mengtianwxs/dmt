package dmt.barsdata
{
	import flash.display.Shape;
	
	import dmt.core.basicData;

	public class VLineBarData extends basicData
	{
		private var _len:Number;
		
		
	
		public function VLineBarData(length:Number=0,color:Number=0)
		{
			super();
			this._len=length;
			this._color=color;
			
		}
		
		protected override function startDraw():void
		{
			_a.graphics.lineStyle(_color);
			_a.graphics.moveTo(0,0);
			_a.graphics.lineTo(d,0);
			_a.graphics.lineTo(d,_len);
			_a.graphics.lineTo(0,_len); 
			_a.graphics.lineTo(0,0);                
		}
		
		public function get Data():Shape{
			startDraw();
			return _a;
		}
	}
}