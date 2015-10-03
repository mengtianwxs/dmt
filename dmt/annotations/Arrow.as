package dmt.annotations
{
	import flash.display.Sprite;
	
	import dmt.methods.DMT;
	
	/*
	* @declare Arrow
	* @author mengtianwxs
	* @date 2015-5-12
	*/
	
	
	public class Arrow extends Sprite
	{
		public static const Arrow_HC:String="ahc";
		public static const Arrow_VC:String="avc";
		public static const Arrow_HT:String="aht";
		public static const Arrow_VT:String="avt";
		
		private var _d:DMT;
		
		public function Arrow(d:DMT,length:Number=100,shape:String="ahc")
		{
			if(d!=null){
				d.complexContainer.addChild(this);
				_d=d;
			}
			init(shape,length);
		}
		
		private function init(shape:String, length:Number):void
		{
			// TODO Auto Generated method stub
			switch(shape){
				case "ahc":
					this.addChild(new HCArrow(_d,length));
					break;
				case "avc":
					this.addChild(new VCArrow(_d,length));
					break;
				case "aht":
					this.addChild(new HTArrow(_d,length));
					break;
				case "avt":
					this.addChild(new VTArrow(_d,length));
					break;
			}
			
		}
		
		public function move(xpos:Number,ypos:Number):void{
			this.x=xpos;
			this.y=ypos;
		}
	}
}