package dmt.shapes.triangles
{
	
	import flash.display.CapsStyle;
	import flash.display.JointStyle;
	
	import dmt.methods.DMT;
	
	
	/*
	* @declare VTTriangle
	* @author mengtianwxs
	* @date 2015-5-11
	*/
	
	public class VTTriangle extends HLTriangle
	{
		public function VTTriangle(d:DMT=null)
		{
			super(d);
			
		}
		
		public override function drawT():void{
			
			//p.drawTriangle(0,0,10,10,90,-45);}
			
			//trace(n);
			v.push(c/2,0);
			v.push(0,n);
			v.push(c,n);
			
			this.graphics.lineStyle(1,0,1,true,"normal",CapsStyle.ROUND,JointStyle.BEVEL,3);
			this.graphics.drawTriangles(v);
			this.graphics.endFill();
		}	
	}
}