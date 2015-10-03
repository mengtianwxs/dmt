package dmt.menus
{
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	import dmt.core.Draw;
	import dmt.methods.DMT;
	
	/*
	* @declare groupMenu
	* @author mengtianwxs
	* @date 2015-5-14
	*/
	
	public class GroupMenu extends Draw
	{
		private var _menu:Vector.<String>;
		private var _c:Sprite;
		private var _x:Number=0;
		private var _y:Number=0;
		
		public function GroupMenu(d:DMT)
		{
			_menu=new Vector.<String>();
			//this.addEventListener(MouseEvent.CLICK,onMouseEvent);
			
			_c=new Sprite();
			d.container.addChild(this);
			d.container.addChild(_c);
		}
		
		protected function onLabelClick(event:Event):void
		{
			// TODO Auto-generated method stub
			trace("label click",event.currentTarget.parent);
		}
		
		
		public function push(label:GroupLabel):void{
			
			_menu.push(_c.addChild(label));
			label.addEventListener(GroupLabel.Click_Event,onLabelClick);
			/*if(_menu.length>=2){
				sortLabelPos();	
				trace("20");
			}*/
			
		}
		
		private function sortLabelPos():void{
			for(var i:int=0;i<=_menu.length-1;i++){
				trace(i);
			  (_menu[i] as GroupLabel).x=0;
				
				//Sprite(_menu[i]).y=Sprite(_menu[i-1]).y+20;
			}
		}
		
		public function pop():void{
			_menu.pop();
			
		}
		
		public  function moveGroupLabelToMouse(t:DisplayObjectContainer,l:GroupLabel):void{
			_x=t.stage.mouseX;
			_y=t.stage.mouseY;
			l.x=_x;
			l.y=_y;
			
		}
		public function moveAndLock(xpos:Number,ypos:Number,isLocked:Boolean):void{
			if(isLocked==true){
				_c.x=xpos;
				_c.y=ypos;
			}else{
				
			}
		}
			public override function move(xpos:Number,ypos:Number):void{
				_c.x=xpos;
				_c.y=ypos;
			}
			
			public function setIsDisplay(b:Boolean=true):void{
				this._c.visible=b?b:b;
			}
		
		
		
	}
}