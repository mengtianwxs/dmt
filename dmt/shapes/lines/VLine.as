package dmt.shapes.lines
{
	
	import dmt.core.Draw;
	import dmt.methods.DMT;
	
	
	/*
	* @declare VLine
	* @author mengtianwxs
	* @date 2015-5-11
	*/
	
	public class VLine extends Draw
	{
		
		private var l:Number=0;
		private var _d:DMT=null;
		
		public function VLine(d:DMT=null,length:Number=0)
		{
			
			if(length!=0){
				l=length;
			}
			_d=d;
			super(d);
			
		}
		
	 public override function draw():void{
		
		 this.graphics.lineStyle(1);
		 //this.graphics.clear();
		 this.graphics.moveTo(0,0);
		 this.graphics.lineTo(0,l);
		 this.graphics.endFill();
		
		 
	 }
	}
}