package dmt.menus
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import dmt.methods.DMT;
	
	
	/*
	* @declare Label
	* @author mengtianwxs
	* @date 2015-5-14
	*/
	
	public class GroupLabel extends Sprite
	{
		//private var t:TextField=null;
	//	private var i:Number=0;
		
		private var _s:String="";
		
		public static const Click_Event:String="click_event";
		
		//private var DMT.GLA:Array=[];
		
		public function GroupLabel(s:String)
		{
		
			//DMT.GLA.push(addChild(new TextField));
			DMT.GLA.push(new TextField());
	 	    DMT.GLA_TXT.push(s);
		 
		
		
		// trace(DMT.icc);
		 //this.move(0,i);
		//start();
		//trace(DMT.GLA_TXT);
		}
		
		public function start():void{
			init();
			//sortP();
			
		}
		private function init():void{
			trace(DMT.GLA.length,"ll",DMT.icc,DMT.GLA);
			for(var i:int=0;i<=DMT.GLA.length-1;i++)
			{
				DMT.icc=DMT.icc-30;
				(TextField)(DMT.GLA[i]).autoSize="left";
				(TextField)(DMT.GLA[i]).text=DMT.GLA_TXT[i].toString();
				(TextField)(DMT.GLA[i]).addEventListener(MouseEvent.CLICK,onMouseEvent);
				(TextField)(DMT.GLA[i]).addEventListener(MouseEvent.MOUSE_OVER,onOver);
				(TextField)(DMT.GLA[i]).addEventListener(MouseEvent.MOUSE_OUT,onOut);
				(TextField)(DMT.GLA[i]).x=0;
				
				(TextField)(DMT.GLA[i]).y=DMT.icc;
				trace(TextField(DMT.GLA[i]).x,TextField(DMT.GLA[i]).y);
				
				this.addChild(DMT.GLA[i]);
			}
		}
		
		
		
		protected function onOut(event:MouseEvent):void
		{
			// TODO Auto-generated method stub
			for(var i:int=0;i<=DMT.GLA.length-1;i++){
				(TextField)(DMT.GLA[i]).backgroundColor=0xffffff;
			}
			
		}
		
		protected function onOver(event:MouseEvent):void
		{
			// TODO Auto-generated method stub
			event.preventDefault();
			var tf:TextFormat=new TextFormat();
			tf.color=0xff0000;
			
			for(var i:int=0;i<=DMT.GLA.length-1;i++){
				(TextField)(DMT.GLA[i]).setTextFormat(tf);
				(TextField)(DMT.GLA[i]).background=true;
				(TextField)(DMT.GLA[i]).backgroundColor=0xcccccc;			
			}
			
			//trace("over");
		}
		
		protected function onMouseEvent(event:MouseEvent):void
		{
			// TODO Auto-generated method stub
			dispatchEvent(new Event(GroupLabel.Click_Event));
			//trace("dis");
		}
		
		public function move(xpos:Number,ypos:Number):void{
			this.x=xpos;
			this.y=ypos;
		}
		
	}
}