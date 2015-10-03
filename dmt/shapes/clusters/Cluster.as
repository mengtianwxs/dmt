package dmt.shapes.clusters
{
	import flash.display.CapsStyle;
	import flash.display.JointStyle;
	
	import dmt.core.Draw;
	import dmt.methods.DMT;
	
	
	/*
	* @declare Cluster 簇
	* @author mengtianwxs
	* @date 2015-5-12
	*/
	
	public class Cluster extends Draw
	{
		public function Cluster(d:DMT=null)
		{
			super(d);
		}
		
		public override function draw():void{
			this.graphics.lineStyle(0,0,1,true,"normal",CapsStyle.ROUND,JointStyle.ROUND,5);
			this.graphics.moveTo(0,DMT.n);
			this.graphics.lineTo(DMT.c/2,0);
			this.graphics.lineTo(DMT.c,DMT.n);
			this.graphics.endFill();
			
		}
	}
}