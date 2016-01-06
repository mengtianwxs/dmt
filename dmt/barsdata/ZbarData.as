package dmt.barsdata
{
	import flash.display.Shape;
	
	import dmt.core.basicData;

	public class ZbarData extends basicData
	{
		
		private var _z1:Number=0;
		private var _z2:Number=0;
		private var _z3:Number=0;
		
		public function ZbarData(z1:Number,z2:Number,z3:Number,color:uint=0)
		{
		 this._color=color;
		 super();
		 this._z1=z1;
		 this._z2=z2;
		 this._z3=z3;
		 
		}
		
		protected override function startDraw():void{
			_a.graphics.moveTo(0,0);
			_a.graphics.lineTo(0,_z1+d);
			_a.graphics.lineTo(d+_z2,_z1+d);
			_a.graphics.lineTo(d+_z2,_z1+d+_z3);
			_a.graphics.lineTo(d+_z2+d,_z1+d+_z3);
			_a.graphics.lineTo(d+_z2+d,_z1);
			_a.graphics.lineTo(d,_z1);
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