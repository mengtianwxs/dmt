package dmt.shapes.lines
{
	
	import dmt.core.Draw;
	import dmt.methods.DMT;
	
	
	/*
	* @declare HLine
	* @author mengtianwxs
	* @date 2015-5-11
	*/
	
	public class HLine extends Draw
	{
		private var l:Number=0;
		
		public function HLine(d:DMT=null,length:Number=0)
		{
			
			if(length!=0){
				l=length;
				
			}
			
			super(d);
		}
		
		public override function draw():void{			
				this.graphics.lineStyle(1);
				//this.graphics.clear();
				this.graphics.moveTo(0,0);
				this.graphics.lineTo(l,0);
				this.graphics.endFill();
			
		}
		
		
	}
}