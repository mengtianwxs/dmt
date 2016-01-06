package dmt.barsdata
{
	import flash.display.Shape;
	
	import dmt.core.basicData;

	public class ShipBarData extends basicData
	{
		private var _sw:Number=0;
		private var _h1:Number=0;
		private var _w1:Number=0;
		private var _zw:Number=0;
		private var _w2:Number=0;
		private var _h2:Number=0;
		private var _xw:Number=0;
		private var _l1:Number=0;
		private var _l2:Number=0;
		private var w3:Number=0;
		private var i:Number=0;
		
		public function ShipBarData(sw:Number,zw:Number,xw:Number,w1:Number,w2:Number,H:Number,h1:Number,color:uint=0)
		{
			this._color=color;
			super();
			this._sw=sw;
			this._h1=h1;
			this._w1=w1;
			this._zw=zw;
			this._w2=w2;
			this._xw=xw;
			this._h2=H-sw-h1-zw-xw;
		    this._l1=getMMP(h1/w1);
			this._l2=getMMP(_h2/w2);
		
			
			
		}
		
		protected override function startDraw():void{
			
			if(_w1>_w2){
				w3=_w1-_w2;
			}else if(_w1==_w2){
				w3=0;
			}else if(_w1<_w2){
				w3=_w1-_w2;
				i=Math.abs(_w1-_w2);
			}
			_a.graphics.moveTo(0+i,0);
			_a.graphics.lineTo(0+i,_sw);
			_a.graphics.lineTo(_w1+i,_sw+_h1);
			_a.graphics.lineTo(_w1+i,_sw+_h1+_zw);
			_a.graphics.lineTo(w3+i,_sw+_h1+_zw+_h2);
			_a.graphics.lineTo(w3+i,_sw+_h1+_zw+_h2+_xw);
			_a.graphics.lineTo(w3+d+i,_sw+_h1+_zw+_h2+_xw);
			_a.graphics.lineTo(w3+d+i,_sw+_h1+_zw+_h2+_l2);
			_a.graphics.lineTo(_w1+d+i,_sw+_h1+_zw+_l2);
			_a.graphics.lineTo(_w1+d+i,_sw+_h1-_l1);
			_a.graphics.lineTo(d+i,_sw-_l1);
			_a.graphics.lineTo(d+i,0);
			_a.graphics.lineTo(0+i,0);
				
		}
		
		public function get Data():Shape{
			startDraw();
			if(_w1<_w2){
				
			}
			return _a;
		}
	}
}