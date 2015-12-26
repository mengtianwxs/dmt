package dmt.barsdata
{
	import flash.display.Shape;
	
	import dmt.shapes.bars.BarShape;
	
	/*
	* @declare SingleBar
	* @author mengtianwxs
	* @date 2015-5-12
	*/
	
	public class SingleBarData extends BarShape
	{
                private var _len:Number=0;
                private var _d:Number=0;
                private var _mode:int=0;
                private var  _k:Number=0;
                public static const Mode_H:int=0;
                public static const Mode_V:int=1;
                private var _s:Shape=new Shape();

		public function SingleBarData(length:Number,D:Number,mode:Number,k:Number=3)
		{
                 _len=length;
                 _d=D*k;
                 _k=k;
                 _mode=mode;
                  
                  if(mode==0) 
                  {
                     startDrawH();
                 }else if(mode==1) {
                       startDrawV();
                  }
				  
				  this.addChild(_s);
		}
                protected function startDrawH():void
               {
                _s.graphics.lineStyle(0);
                _s.graphics.moveTo(0,0);
                _s.graphics.lineTo(_len,0);
                _s.graphics.lineTo(_len,_d);
                _s.graphics.lineTo(0,_d); 
                _s.graphics.lineTo(0,0);                
               }
                protected function startDrawV():void
               {
                _s.graphics.lineStyle(0);
                _s.graphics.moveTo(0,0);
                _s.graphics.lineTo(_d,0);
                _s.graphics.lineTo(_d,_len);
                _s.graphics.lineTo(0,_len); 
                _s.graphics.lineTo(0,0);                
               }
      
	}
}