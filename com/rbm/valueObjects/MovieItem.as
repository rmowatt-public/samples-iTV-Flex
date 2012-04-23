package com.rbm.valueObjects
{
	[Bindable]
	public class MovieItem
	{
		public var movieID:Number;
		public var categoryID:Number;
		public var movieName:String;
		public var moviePath:String;
		public var movieDescription:String;
		public var totalPlays:Number;
		public var teaserImage:String;
		
		public function MovieItem(_movieID:Number ,_categoryID:Number , _movieName:String, _moviePath:String , _movieDescription:String , _totalPlays:Number, _teaserImage:String){
				movieID = _movieID;
				categoryID = _categoryID;
				movieName = _movieName;
				moviePath = _moviePath;
				movieDescription = _movieDescription;
				totalPlays = _totalPlays;
				teaserImage = _teaserImage;
		}
		
		public function toString():String{
			return "[MovieItem] "+this.movieName;
		}
	}
}