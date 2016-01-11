package dmt.methods
{
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.FileFilter;
	import flash.net.FileReference;
	import flash.utils.ByteArray;
	
	import dmt.core.debug;
	
	public class DMT 
	{
		
		protected var _instance:DMT=null;
		private var _container:Sprite;
		private  static var _dmt:DMT=null;
		
		public static const CM:String="cm";
		public static const MM:String="mm";
		
		private static var uint:String="";
		private static var scale:Number=0;
		
		private var _complexContainer:Sprite;
		private static var _p:DisplayObjectContainer=null;
		private var f:FileReference;
		
		public static const n:Number=Math.sqrt(100-  Math.pow((Math.sqrt(200)/2),2));
		public static const c:Number=Math.sqrt(200);
		public static var icc:int=0;
		public static var GLA:Array=[];
		public static var GLA_TXT:Array=[];
		
		use namespace debug;
		
		public function DMT()
		{
			_container=new Sprite();
			_complexContainer=new Sprite();
		}
		
		public static function get p():DisplayObjectContainer{
			if(_p!=null){
				return _p;
			}
			return null;
		}
		public function get complexContainer():Sprite
		{
			return _complexContainer;
		}
		
		public function register(parent:DisplayObjectContainer=null):void{
			if(parent!=null){
				_p=parent;
				parent.addChild(_container);
				parent.addChild(_complexContainer);
			}
		}
		
		
		public  function get container():Sprite{
			return _container;
		}
		
		public function save(data:*, mz:String = ""):void {
			//var ff:FileFilter = new FileFilter("*.pai","*.pai");
			var fr:FileReference = new FileReference();
			
			var by:ByteArray = new ByteArray();
			by.writeUTFBytes(data);
			by.compress();
			fr.save(by,mz+".pai");
		}
		public function combine():void {
			f = new FileReference();
			var fi:FileFilter = new FileFilter("*.pai","*.pai");
			
			f.browse([fi]);
			f.addEventListener(Event.SELECT, onFileSelect);
		}
		
		private function onFileSelect(e:Event):void 
		{
			f.load();
			f.addEventListener(Event.COMPLETE, onFileComplete);
		}
		
		private function onFileComplete(e:Event):void 
		{
			var byte:ByteArray = e.target.data as ByteArray;
			byte.uncompress();
			trace(byte);
			
		}
		
		debug static  function set GlobalUint(s:String):void{
			uint=s;
		}
		
		debug static  function get GlobalUint():String{
			return uint;
		}
		
		debug static function set GlobalScale(v:Number):void{
			scale=v;
		}
		
		debug static function get GlobalScale():Number{
			return scale;
		}
		
		
		
		
	}
}