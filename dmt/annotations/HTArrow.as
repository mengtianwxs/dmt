package dmt.annotations
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	
	import dmt.methods.DMT;
	import dmt.shapes.triangles.HLTriangle;
	import dmt.shapes.lines.HLine;
	import dmt.shapes.triangles.HRTriangle;
	
	/*
	* @declare HArrow
	* @author mengtianwxs
	* @date 2015-5-11
	*/
	
	public class HTArrow extends Sprite
	{
		
		internal var _c:Sprite=null;
		internal var _d:DMT=null;
		internal var _len:Number=0;
		internal var _text:TextField=null;
		
		public function HTArrow(d:DMT,length:Number)
		{
			if(d!=null){
				
				_d=d;
				_len=length;
				_text=new TextField();
				_text.autoSize=TextFieldAutoSize.CENTER;
				_text.text=" "+length+" ";
				_c=new Sprite();
				this.addChild(_c);
				d.complexContainer.addChild(this);
			}
			draw();
		}
		
		
		
		public  function draw():void{
			var hla:HLTriangle=new HLTriangle(_d);
			var hra:HRTriangle=new HRTriangle(_d);
			var half_line:Number=_len/2;
			var bl:Number=15;
			var hlL:HLine=new HLine(_d,half_line-bl);
			var hlR:HLine=new HLine(_d,half_line-bl);
			
			hla.move(0,-DMT.c/2);
			hra.move(_len,-DMT.c/2);
			hlL.move(7.14,0);
			hlR.move(half_line+bl,0);
			
			_text.x=half_line-_text.width/2+3;
			_text.y=-8.5;
			
			_c.addChild(hla);
			_c.addChild(hra);
			_c.addChild(hlL);
			_c.addChild(hlR);
			_c.addChild(_text);
			
			
		}
		
		public function move(xpos:Number,ypos:Number):void{
			_c.x=xpos;
			_c.y=ypos;
		}
		
		
	}
}