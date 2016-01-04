package dmt.barsdata
{
	import flash.display.Shape;
	
	import dmt.core.basicData;

	public class RightElephantBarData extends basicData
	{
		private var _sw:Number=0;
		private var _h:Number=0;
		private var _w:Number=0;
		private var _xw:Number=0;
		private var _bottomLen:Number=0;
		private var _l:Number=0;
		
		public function RightElephantBarData(sw:Number,H:Number,w:Number,xw:Number,bottomLen:Number,color:uint=0)
		{
			this._sw=sw;
			this._xw=xw;
			this._h=H-sw-xw;
			this._w=w;
			this._bottomLen=bottomLen;
			this._color=color;
			
			this._l=getMMP(_h/_w);
		}
		
		protected override function startDraw():void{
			_a.graphics.lineStyle(1,_color);
			_a.graphics.moveTo(_w,0);
			_a.graphics.lineTo(_w+d,0);
			_a.graphics.lineTo(_w+d,_sw);
			_a.graphics.lineTo(d,_sw+_h);
			_a.graphics.lineTo(d,_sw+_h+_xw);
			_a.graphics.lineTo(d+_bottomLen,_sw+_h+_xw);
			_a.graphics.lineTo(d+_bottomLen,_sw+_h+_xw+d);
			_a.graphics.lineTo(0,_sw+_h+_xw+d);
			_a.graphics.lineTo(0,_sw+_h-_l);
			_a.graphics.lineTo(_w,_sw-_l);
			_a.graphics.lineTo(_w,0);
			
			
			
		}
		
		public function get Data():Shape{
			startDraw();
			return _a;
		}
	}
}