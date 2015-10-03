package dmt.shapes.clusters
{
	import flash.display.CapsStyle;
	import flash.display.JointStyle;
	
	import dmt.methods.DMT;
	
	/*
	* @declare HLCluster
	* @author mengtianwxs
	* @date 2015-5-12
	*/
	
	public class HLCluster extends Cluster
	{
		public function HLCluster(d:DMT=null)
		{
			super(d);
		}
		
		public override function draw():void{
			this.graphics.lineStyle(0,0,1,true,"normal",CapsStyle.ROUND,JointStyle.ROUND,5);
			this.graphics.moveTo(DMT.n,0);
			this.graphics.lineTo(0,DMT.c/2);
			this.graphics.lineTo(DMT.n,DMT.c);
			this.graphics.endFill();
		}
	}
}