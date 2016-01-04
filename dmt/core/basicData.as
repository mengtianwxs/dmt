package dmt.core
{
	import flash.display.Shape;
	
	public class basicData 
	{
		
		public var _a:Shape=new Shape();
		private var _d:Number=1;
		public var _color:Number=0;
		private var _k:Number=3;
		
		public function basicData()
		{
			this._d=_d*_k;
		}
		
		

		public function get k():Number
		{
			return _k;
		}

		public function get d():Number
		{
			return _d;
		}

		public function set d(value:Number):void
		{
			_d = value;
			this._d=_d*_k;
		}

		public function set k(value:Number):void
		{
			_k = value;
			this._d=_d*_k;
			//startDraw();
		}

		protected function startDraw():void{}
		
		public function move(x:Number=0,y:Number=0):void{
			_a.x=x;
			_a.y=y;
		}
		
		public	function getMMP(n:Number):Number{
			return _d/Math.tan(Math.PI/180*((180/Math.PI*(Math.atan(n))+90)/2));
		}	
	}
	
}