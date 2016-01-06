package dmt.barsdata
{
	import flash.display.Shape;
	
	import dmt.core.basicData;

	public class LeftElephantBarData extends basicData
	{
		private var _sw:Number=0;
		private var _h:Number=0;
		private var _w:Number=0;
		private var _xw:Number=0;
		private var _bottomLen:Number=0;
		private var _l:Number=0;
		
		public function LeftElephantBarData(sw:Number,H:Number,w:Number,xw:Number,bottomLen:Number,color:uint=0)
		{
			
			this._color=color;
			super();
			this._sw=sw;
			this._xw=xw;
			this._h=H-sw-xw;
			this._w=w;
			this._bottomLen=bottomLen;
		
			this._l=getMMP(_h/_w);
		}
		
		protected override function startDraw():void{
			//_a.graphics.lineStyle(1,_color);
			_a.graphics.moveTo(0,0);
			_a.graphics.lineTo(0,_sw);
			_a.graphics.lineTo(_w,_sw+_h);
			_a.graphics.lineTo(_w,_sw+_h+_xw+d);
			_a.graphics.lineTo(_w+d+_bottomLen,_sw+_h+_xw+d);
			_a.graphics.lineTo(_w+d+_bottomLen,_sw+_h+_xw);
			_a.graphics.lineTo(_w+d,_sw+_h+_xw);
			_a.graphics.lineTo(_w+d,_sw+_h-_l);
			_a.graphics.lineTo(d,_sw-_l);
			_a.graphics.lineTo(d,0);
			_a.graphics.lineTo(0,0);
			
			
				
		}
		
		public function get Data():Shape{
			startDraw();
			return _a;
		}
	}
}