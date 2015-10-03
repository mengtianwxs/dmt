package dmt.barsdata
{
	import dmt.core.debug;

	public class BarData
	{
		
		private var _materials:String;
		private var _w:Number;
		private var _h:Number;
		private var _l:Number;
		private var _weigth:Number;
		private var _shape:String;
		private var _mxAmount:Number=0;
		
		
		public static const Materials_TMY:String="tmy";
		public static const Materials_LMY:String="lmy";
		
		public static const Shape_Elephant:int=0xa1;
		public static const Shape_L:int=0xa2;
		public static const Shape_Ship:int=0xa3;
		public static const Shape_Snake:int=0xa4;
		public static const Shape_U:int=0xa5;
		public static const Shape_Z:int=0xa6;
		
		
		use namespace debug;
		
		public function BarData(materialsOrString:String=null,shape:String=null,width:Number=0,thickness:Number=0,length:Number=0)
		{
			if((width+thickness+length)==0)
			{
				parseString(materialsOrString);
			}
			else
			{
				init(materialsOrString,shape,width,thickness,length);
			}
		}
		
		
		public function parseString(s:String=null):void{
			if(s!=null){
				//@mode  tmy-2[3*100*10]+100*10+100*10
				var p:RegExp=/(tmy|lmy)-[1-3]?\[?[0-4]?\*?[0-9]{1,3}\*[0-9]{1,2}\]?(\+[0-9]{1,3}\*[0-9]{1,2})?(\+[0-9]{1,3}\*[0-9]{1,2})?$/gi;
				
				if(p.test(s))
				{
					_materials=s.substr(0,3);
					trace(_materials);
					//tmy-
					var endS:String=s.substr(4,s.length-1);
					//trace(endS);
					switch(s.split("+").length){
						case 1:
							//trace("here");
							
							if(/[1-3]\[3\*[0-9]{2,3}\*[0-9]{1,2}$/gi.test(endS)){
								// mode 1 2[3*100*10]
								trace("mode 1",endS.split("["));
								_mxAmount=parseInt(endS.substr(0,1));
								
								
							}else if(/\[3\*[0-9]{2,3}\*[0-9]{1,2}\]$/gi.test(endS)){
								// mode 2 [3*100*10]
								trace("mode 2",endS.split("*"));
							}else if(/3\*[0-9]{2,3}\*[0-9]{1,2}$/gi.test(endS)){
								//mode 3 3*100*10
								trace("mode 3",endS.split("*"));
							}
							else
							{
								trace("error");
							}
							break;
						case 2:
							break;
						case 3:
							break;
						default:
							trace("nono");
							break;
					}
				}
					else{
						throw new Error("DMT : this has a error in this data");
					}
				}
			}
		
		public function get shape():String
		{
			return _shape;
		}

		public function set shape(value:String):void
		{
			_shape = value;
		}

		protected function init(materials:String,shape:String,width:Number,thickness:Number,length:Number):void{
			this._materials=materials;
			this._shape=shape;
			this._w=width;
			this._h=thickness;
			this._l=length;
		}
		
	
		
		
		public function get weigth():Number
		{
			return _weigth;
		}

		public function get l():Number
		{
			return _l;
		}

		public function set l(value:Number):void
		{
			_l = value;
		}

		public function get h():Number
		{
			return _h;
		}

		public function set h(value:Number):void
		{
			_h = value;
		}

		public function get w():Number
		{
			return _w;
		}

		public function set w(value:Number):void
		{
			_w = value;
		}

		public function get materials():String
		{
			return _materials;
		}

		public function set materials(value:String):void
		{
			_materials = value;
		}

	}
}