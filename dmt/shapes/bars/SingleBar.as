package dmt.shapes.bars
{	
	
	import flash.display.Shape;
	
	import dmt.core.debug;
	import dmt.methods.DMT;

	public class SingleBar extends Shape
	{
		private var _w:Number=0;
		private var _h:Number=0;
		private var _x:Number=0;
		private var _y:Number=0;
		private var _color:int=0xffffff;
		
		public function SingleBar(d:DMT=null,...data)
		{	
			
			if(d!=null){
				
				d.container.addChild(this);
				
				
				//draw1Bar(data);
			}
			if(data[0] is Object && data !=null){
				parseBarData(data[0]);
			     trace("parsedata");
			}
		}		
		
		public function parseBarData(b:Object):void{
			
		     for(var o in b ){
				 if(o=="w"){
					 _w=b[o] as Number;
					 trace(_w);
				 }else if(o=="h"){
					 _h=b[o] as Number;
					 trace(_h);
				 }else if(o=="color"){
					 _color=b[o] as int;
					 trace(_color);
				 }else if(o=="x"){
					 _x=b[o] as Number;
					 
				 }else if(o=="y"){
					 _y=b[o] as Number;
				 }else{
					 trace("no thing useful data in this obj");
				 }
				 
			 }
			 
			 
			 draw1Bar();
			 if(_x!=0 || _y!=0)
			 {
				 move(_x,_y);
			 }
		}
		
		public static function draw(d:DMT,obj:Object):SingleBar{
			return new SingleBar(d,obj);
		}
	
			
		private function draw1Bar():void
		{
			//this.graphics.clear();
			this.graphics.beginFill(_color);
			this.graphics.lineStyle(1);
			this.graphics.drawRect(0,0,_w,_h);
			this.graphics.endFill();	
		}
		
		debug function b10010hs(color:int=0xffffff):void
		{
			 //draw1Bar(10,2,color);
		}
		use namespace debug;
		
		public function move(posx:Number,posy:Number):void{
			this.x=posx;
			this.y=posy;
		}
	}
}