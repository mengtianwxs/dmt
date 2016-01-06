package dmt.barsdata
{
	import flash.display.Shape;
	
	import dmt.core.basicData;
	
	/*
	* @declare SingleBar
	* @author mengtianwxs
	* @date 2015-5-12
	*/
	
	public class SingleBarData extends  basicData
	{
                private var _len:Number=0;
                private var _mode:int=0;
                private var  _k:Number=0;
                public static const Mode_H:int=0;
                public static const Mode_V:int=1;
               

		public function SingleBarData(length:Number,mode:Number=0,color:uint=0)
		{
			
			this._color=color;
			super();
                 _len=length; 
                 _mode=mode;
                  
                
				  
				 
		}
                protected function startDrawH():void
               {
             //   _a.graphics.lineStyle(0);
                _a.graphics.moveTo(0,0);
                _a.graphics.lineTo(_len,0);
                _a.graphics.lineTo(_len,d);
                _a.graphics.lineTo(0,d); 
                _a.graphics.lineTo(0,0);                
               }
                protected function startDrawV():void
               {
             //   _a.graphics.lineStyle(0);
                _a.graphics.moveTo(0,0);
                _a.graphics.lineTo(d,0);
                _a.graphics.lineTo(d,_len);
                _a.graphics.lineTo(0,_len); 
                _a.graphics.lineTo(0,0);                
               }
				
			
				public function get Data():Shape{
					if(_mode==0) 
					{
						startDrawH();
					}else if(_mode==1) {
						startDrawV();
					}
					return _a;
				}
      
	}
}