package dmt.methods
{
	import flash.utils.clearInterval;
	import flash.utils.setInterval;
	
	
	
	/*
	* @declare RunOneTime
	* @author mengtianwxs
	* @date 2015-5-19
	*/
	
	public class RunOneTime 
	{
		private var id:uint=0;
		private var _x:Number=0;
		private var _y:Number=0;
		
		
		public function RunOneTime()
		{
			
			id=setInterval(cf,10);
			
		}
		
		public function get stageX():Number{
			return _x;
		}
		
		public function get stageY():Number{
			
			return _y;
		}
		
		public function destroy():void{
			clearInterval(id);
			//id=100;
		}
		
		public function resume():void{
			
				id=setInterval(cf,100);
			
		}
		private function cf():void
		{
			// TODO Auto Generated method stub
			
			_y=DMT.p.stage.mouseY;
			_x=DMT.p.stage.mouseX;

	
	//trace(stageX,stageY);
			
			
		}
		
	}
}