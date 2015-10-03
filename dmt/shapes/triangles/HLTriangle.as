package dmt.shapes.triangles
{
	
	
	import flash.display.CapsStyle;
	import flash.display.JointStyle;
	
	import dmt.core.Draw;
	import dmt.methods.DMT;
	
	
	/*
	* @declare HLTriangle
	* @author mengtianwxs
	* @date 2015-5-11
	*/
	
	public class HLTriangle extends Draw
	{
		internal var v:Vector.<Number>=new Vector.<Number>();
		internal 	var n:Number=Math.sqrt(100-  Math.pow((Math.sqrt(200)/2),2));
		internal var c:Number=Math.sqrt(200);
		
		public function HLTriangle(d:DMT=null)
		{
			
			super(d);
			
		}
		
		public override function draw():void{
					drawT();	
			
		}
		
		
		
		public function drawT():void{
		
			//trace(n);
			v.push(0,n);
			v.push(n,0);
			v.push(n,c);
			
			this.graphics.lineStyle(1,0,1,true,"normal",CapsStyle.ROUND,JointStyle.BEVEL,3);
			this.graphics.drawTriangles(v);
			this.graphics.endFill();
		}
	}
}