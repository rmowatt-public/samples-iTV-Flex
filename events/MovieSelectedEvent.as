package events
{
	import flash.events.Event;
	import com.rbm.valueObjects.MovieItem;

	public class MovieSelectedEvent extends Event
	{
		public var movieInfo:MovieItem;
		
		public function MovieSelectedEvent(movieInfo:MovieItem,type:String){
			super(type);
			this.movieInfo = movieInfo;
		}
		
		public override function clone():Event{
			return new MovieSelectedEvent(movieInfo,type);
		}
	}
}