package dmt.annotations
{
	import dmt.methods.DMT;
	import dmt.shapes.clusters.HLCluster;
	import dmt.shapes.clusters.HRCluster;
	import dmt.shapes.lines.HLine;
	
	
	/*
	* @declare HCArrow
	* @author mengtianwxs
	* @date 2015-5-12
	*/
	
	public class HCArrow extends HTArrow
	{
		public function HCArrow(d:DMT, length:Number)
		{
			super(d, length);
		}
		
		public override function draw():void{
			
			
			
			var hla:HLCluster=new HLCluster(_d);
			var hra:HRCluster=new HRCluster(_d);
			var half_line:Number=_len/2;
			var bl:Number=10;
			var hlL:HLine=new HLine(_d,half_line-bl);
			var hlR:HLine=new HLine(_d,half_line-bl);
			
			hla.move(0,-DMT.c/2);
			hra.move(_len,-DMT.c/2);
			hlL.move(0,0);
			hlR.move(half_line+bl+DMT.n,0);
			
			_text.x=half_line-_text.width/2+3;
			_text.y=-8.5;
			
			_c.addChild(hla);
			_c.addChild(hra);
			_c.addChild(hlL);
			_c.addChild(hlR);
			_c.addChild(_text);
		}
	}
}