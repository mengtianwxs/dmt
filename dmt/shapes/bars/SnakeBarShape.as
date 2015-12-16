package dmt.shapes.bars
{
	import dmt.barsdata.SnakeBarData;

	public class SnakeBarShape extends BarShape
	{
		public function SnakeBarShape(snakeBarData:SnakeBarData)
		{
          this.addChild(snakeBarData);			
		}
	}
}