package events
{
	import flash.events.Event;
	
	public class CommentEvent extends Event
	{
		public var info:Object;
		
		public function CommentEvent(_info:Object,type:String){
			super(type);
			this.info = _info;
		}
		
		public override function clone():Event{
			return new CommentEvent(info,type);
		}
	}
	}
