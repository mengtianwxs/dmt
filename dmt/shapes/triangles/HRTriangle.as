package dmt.shapes.triangles
{
	
	import flash.display.CapsStyle;
	import flash.display.JointStyle;
	
	import dmt.core.Draw;
	import dmt.methods.DMT;
	
	
	/*
	* @declare HRTriangle
	* @author mengtianwxs
	* @date 2015-5-11
	*/
	
	public class HRTriangle extends HLTriangle
	{
		public function HRTriangle(d:DMT=null)
		{
			super(d);
			
		}
		
		public override function drawT():void{
			//坐标已经校正
		//	p.drawTriangle(7.14,0,10,10,90,225);
			
			//trace(n);
			v.push(0,0);
			v.push(n,c/2);
			v.push(0,c);
			
			this.graphics.lineStyle(1,0,1,true,"normal",CapsStyle.ROUND,JointStyle.BEVEL,3);
			this.graphics.drawTriangles(v);
			this.graphics.endFill();
		}
	}
}