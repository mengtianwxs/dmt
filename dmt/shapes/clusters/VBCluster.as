package dmt.shapes.clusters
{
	import flash.display.CapsStyle;
	import flash.display.JointStyle;
	
	import dmt.methods.DMT;
	
	
	/*
	* @declare VBCluster
	* @author mengtianwxs
	* @date 2015-5-12
	*/
	
	public class VBCluster extends Cluster
	{
		public function VBCluster(d:DMT=null)
		{
			super(d);
		}
		
		public override function draw():void{
			this.graphics.lineStyle(0,0,1,true,"normal",CapsStyle.ROUND,JointStyle.ROUND,5);
			this.graphics.moveTo(0,0);
			this.graphics.lineTo(DMT.c/2,DMT.n);
			this.graphics.lineTo(DMT.c,0);
			this.graphics.endFill();
		}
	}
}