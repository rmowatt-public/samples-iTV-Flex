package events
{
	import flash.events.Event;
	import mx.controls.VideoDisplay;
	

	public class VideoPlayerEvent extends Event
	{
		
		public var myVideo:VideoDisplay;
		
		public function VideoPlayerEvent(movieInfo:VideoDisplay ,type:String){
			super(type);
			this.myVideo = movieInfo;
		}
		
		public override function clone():Event{
			return new VideoPlayerEvent(myVideo,type);
		}
		
	}
}