package events
{
	import flash.events.Event;

	public class DataLoadedEvent extends Event
	{
		public var products:Array;
		
		public function DataLoadedEvent(_products:Array,type:String){
			super(type);
			this.products = _products;
		}
		
		public override function clone():Event{
			return new DataLoadedEvent(products,type);
		}
	}
}