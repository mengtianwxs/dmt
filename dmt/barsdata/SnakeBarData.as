package dmt.barsdata
{
	import flash.display.Shape;
	
	import dmt.shapes.bars.BarShape;

	public class SnakeBarData extends BarShape
	{
		
		private var a:Shape=new  Shape();
		private var _w:Number=0;
		private var _h:Number=0;
		private var _sw:Number=0;
		private var _xw:Number=0;
		private var _l:Number=0;
		private var _d:Number=0;
		
		public function SnakeBarData(shangWanLen:Number=0,xiaWanLen:Number=0,width:Number=0,height:Number=0,D:Number=0,k:Number=3)
		{
			
			
			this._w=width;
			
			this._sw=shangWanLen;
			this._xw=xiaWanLen;
			this._h=height-shangWanLen-xiaWanLen;
			this._d=D*k;
			_l=getMMP(_h/_w);
			this.addChild(a);
			startDraw();
		}	
		
	

		protected function startDraw():void{
			a.graphics.lineStyle(0);
			a.graphics.moveTo(0,0);
			a.graphics.lineTo(0,_sw);
			a.graphics.lineTo(_w,_sw+_h);
			a.graphics.lineTo(_w,_sw+_h+_xw);
			a.graphics.lineTo(_w+_d,_sw+_h+_xw);
			a.graphics.lineTo(_w+_d,_sw+_h-_l);
			a.graphics.lineTo(_d,_sw-_l);
			a.graphics.lineTo(_d,0);
			a.graphics.lineTo(0,0);
		}
	public	function getMMP(n:Number):Number{
			return _d/Math.tan(Math.PI/180*((180/Math.PI*(Math.atan(n))+90)/2));
		}
	}
}