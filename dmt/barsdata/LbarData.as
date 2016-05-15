package dmt.barsdata
{
	import flash.display.Shape;
	
	import dmt.core.basicData;

	public class LBarData extends basicData
	{
		private var _n1:Number=0;
		private var _n2:Number=0;
		
		
		public function LBarData(n1:Number,n2:Number,color:uint=0)
		{
			this._color=color;
			super();
			
			this._n1=n1;
			this._n2=n2;
			
		}
		
		protected override function startDraw():void{
			_a.graphics.moveTo(0,0);
			_a.graphics.lineTo(0,_n1);
			_a.graphics.lineTo(0,_n1+d);
			_a.graphics.lineTo(d+_n2,_n1+d);
			_a.graphics.lineTo(d+_n2,_n1);
			_a.graphics.lineTo(d,_n1);
			_a.graphics.lineTo(d,0);
			_a.graphics.lineTo(0,0);
			
		}
		
		public function get Data():Shape
		{
			startDraw();
			return _a;
		}
	
	}
}