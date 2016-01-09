package dmt.barsdata
{
	import flash.display.Shape;
	
	import dmt.core.basicData;

	public class UbarData extends basicData
	{
		
		private var _u1:Number=0;
		private var _u2:Number=0;
		private var _u3:Number=0;
		private var u:Number=0;
		private var v:Number=0;
		
		
		public function UbarData(u1:Number,u2:Number,u3:Number,color:uint=0)
		{
			this._color=color;
		    super();
			
			this._u1=u1;
			this._u2=u2;
			this._u3=u3;
			
		}
		
		protected override function startDraw():void{
			if(_u1>_u3){
				u=_u1-_u3;
			}
			else if(_u1==_u3){
				u=0;
				//trace("here");
			}else if(_u1<_u3){
				v=Math.abs(_u1-_u3);
				u=-v;
			}
			_a.graphics.moveTo(0,0+v);
			_a.graphics.lineTo(0,_u1+d+v);
			_a.graphics.lineTo(d+d+_u2,_u1+d+v);
			
			
			_a.graphics.lineTo(d+d+_u2,u+v);
			_a.graphics.lineTo(_u2+d,u+v);
			_a.graphics.lineTo(d+_u2,_u1+v);
			_a.graphics.lineTo(d,_u1+v);
			_a.graphics.lineTo(d,0+v);
			_a.graphics.lineTo(0,0+v);
				
			
		}
		public function get Data():Shape{
			startDraw();
			return _a;
		}
		
	}
}