package dmt.barsdata
{
	import flash.display.Sprite;

	public class L2BarData extends LBarData
	{
		
		private var _interval:uint=1;
		private var _mode:uint=0;
		private var _n1:Number=0;
		private var _n2:Number=0;
		private var _c:Sprite;
		
		public static const Mode_Small:uint=0;
		public static const Mode_Big:uint=1;
		
		
		public function L2BarData(n1:Number, n2:Number,mode:uint=0,color:uint=0)
		{
			super(n1, n2, color);
			if(_interval==1){
				_interval=d;
				
			}
			
			_mode=mode;
			this._n1=n1;
			this._n2=n2;
			
			_c=new Sprite();
		}
		
		protected override function startDraw():void{
		switch(_mode){
			case 0:
				drawSamll();
				break;
			case 1:
				drawGig();
				break;
			default:
				break;
		}
			
		}
		
		private function drawGig():void
		{
			// TODO Auto Generated method stub
			var l1:LBarData=new LBarData(_n1,_n2,_color);
			var l2:LBarData=new LBarData(_n1-2*_interval,_n2-2*_interval,_color);
			l2.move(2*_interval,0);
			_c.addChild(l1.Data);
			_c.addChild(l2.Data);
		}
		
		private function drawSamll():void
		{
			// TODO Auto Generated method stub
			var l1:LBarData=new LBarData(_n1,_n2,_color);
			var l2:LBarData=new LBarData(_n1+2*_interval,_n2+2*_interval,_color);
			l1.move(2*_interval,0);
			_c.addChild(l1.Data);
			_c.addChild(l2.Data);
		}
		
		public   function get data():Sprite{
			startDraw();
			return _c;
		}
		
		public override function move(x:Number=0, y:Number=0):void{
			_c.x=x;
			_c.y=y;
		}
		
		
	}
}