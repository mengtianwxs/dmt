package dmt.barsdata
{	
	import flash.display.Shape;
	
	import dmt.core.basicData;

	public class SnakeBarData extends basicData
	{
		
		
		private var _w:Number=0;
		private var _h:Number=0;
		private var _sw:Number=0;
		private var _xw:Number=0;
		private var _l:Number=0;
		
		
		public function SnakeBarData(shangWanLen:Number=0,xiaWanLen:Number=0,width:Number=0,height:Number=0,D:Number=0,k:Number=3)
		{
			
			
			this._w=width;
			
			this._sw=shangWanLen;
			this._xw=xiaWanLen;
			this._h=height-shangWanLen-xiaWanLen;
			this._d=D*k;
			_l=getMMP(_h/_w);
			
		}	
		

protected override	 function startDraw():void{
			_a.graphics.lineStyle(0);
			_a.graphics.moveTo(0,0);
			_a.graphics.lineTo(0,_sw);
			_a.graphics.lineTo(_w,_sw+_h);
			_a.graphics.lineTo(_w,_sw+_h+_xw);
			_a.graphics.lineTo(_w+_d,_sw+_h+_xw);
			_a.graphics.lineTo(_w+_d,_sw+_h-_l);
			_a.graphics.lineTo(_d,_sw-_l);
			_a.graphics.lineTo(_d,0);
			_a.graphics.lineTo(0,0);
		}

public  function get Data():Shape{
	startDraw();
	return _a;
}
	
	}
}