package events
{
	import flash.events.Event;

	public class CaptionEvent extends Event
	{
		public var captions:Array;
		
		public function CaptionEvent(_captions:Array,type:String){
			super(type);
			this.captions = _captions;
		}
		
		public override function clone():Event{
			return new CaptionEvent(captions,type);
		}
	}
	}