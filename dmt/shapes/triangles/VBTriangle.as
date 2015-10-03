package dmt.shapes.triangles
{
	import flash.display.CapsStyle;
	import flash.display.JointStyle;
	
	
	import dmt.methods.DMT;
	
	
	/*
	* @declare VBTriangle
	* @author mengtianwxs
	* @date 2015-5-11
	*/
	
	public class VBTriangle extends HLTriangle
	{
		public function VBTriangle(d:DMT=null)
		{
			super(d);
		}
		
		public override function drawT():void{
			
			//p.drawTriangle(0,0,10,10,90,135);}
			
			
			v.push(0,0);
			v.push(c/2,n);
			v.push(c,0);
			
			this.graphics.lineStyle(1,0,1,true,"normal",CapsStyle.ROUND,JointStyle.BEVEL,3);
			this.graphics.drawTriangles(v);
			this.graphics.endFill();
			
		}
	}
}