package dmt.core
{
	import flash.display.Shape;
	
	public class basicData 
	{
		
		public var _a:Shape=new Shape();
		public var _d:Number=0;
		
		public function basicData()
		{
			super();
		
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