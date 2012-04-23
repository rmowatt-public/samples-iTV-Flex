package events
{
	import flash.events.Event;
	
	public class MovieManagerEvent extends Event
	{
		public var manager:Object;
		
		public function MovieManagerEvent(_manager:Object , type:String){
			super(type);
			this.manager = _manager;
		}
		
		public override function clone():Event{
			return new MovieManagerEvent(manager,type);
		}
	}
}