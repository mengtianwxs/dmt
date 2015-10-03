package dmt.annotations
{
	import dmt.methods.DMT;
	import dmt.shapes.clusters.VBCluster;
	import dmt.shapes.clusters.VTCluster;
	import dmt.shapes.lines.VLine;

	
	
	/*
	* @declare VCArrow
	* @author mengtianwxs
	* @date 2015-5-12
	*/
	
	public class VCArrow extends HTArrow
	{
		public function VCArrow(d:DMT, length:Number)
		{
			super(d, length);
		}
		public override function draw():void{
			var vtt:VTCluster=new VTCluster(_d);
			var vbt:VBCluster=new VBCluster(_d);
			var half_line:Number=_len/2;
			var bl:Number=15;
			var vlt:VLine=new VLine(_d,half_line-bl);
			var vlb:VLine=new VLine(_d,half_line-bl);
			
			vtt.move(0,0);
			//vbt.move(_len,-DMT.c/2);
			vbt.move(0,_len);
			vlt.move(DMT.c/2,DMT.n);
			vlb.move(DMT.c/2,_len/2+bl);
			
			
			_text.x=_text.width*2-2;
			_text.y=_len/2-bl*3-3;
			_text.rotationZ=90;
			
			_c.addChild(vbt);
			_c.addChild(vtt);
			_c.addChild(vlt);
			_c.addChild(vlb);
			_c.addChild(_text);
		}
	}
}