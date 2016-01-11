package dmt.parse
{
	
	public class ParseLBarData extends ParseBarData
	{
		
		private var _n1:Number=0;
		private var _n2:Number=0;
	
		public function ParseLBarData(path:String)
		{
			super(path);
		}
		
		public function get n2():Number
		{
			_n2=Number(this.Data.Bar.n2);
			return _n2;
		}
		public function get n1():Number
		{
			_n1=Number(this.Data.Bar.n1);
			return _n1;
		}	
	}
}