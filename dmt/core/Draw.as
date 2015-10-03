package dmt.core
{
	import flash.display.Shape;
	
	
	import dmt.methods.DMT;
	
	public class Draw extends Shape
	{
		
		public function Draw(d:DMT=null)
		{
			if(d!=null){
				d.container.addChild(this);
				draw();
			}
			
		}
		
		
		
		
		public function registerDMT(d:DMT):void{
			d.container.addChild(this);
		}
		
		public function draw():void{
			/*this.graphics.clear();
			this.graphics.beginFill(0);
			this.graphics.lineStyle(1);
			this.graphics.moveTo(posx,posy);
			this.graphics.lineTo(tox,toy);
			this.graphics.endFill();*/
			
		}
		
		public function move(posx:Number,posy:Number):void{
			this.x=posx;
			this.y=posy;
		}
		
		
		
		
		
	
	}
}