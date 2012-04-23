package com.rbm.valueObjects
{
	[Bindable]
	public class Category
	{
		import com.rbm.displayObjects.VideoSelection.MovieDisplayContainer;
		public var catID:int;
		public var catName:String;
		public var catDescription:String;
		public var visible:Boolean;
		public var assocCat:String;
		public var label:String;
		
		public var subCatArray:Array = new Array();
		
		public function Category(_id:int,_catName:String , _catDescription:String , _visible:Boolean = false , _assocCat:String = null){
			this.catID = _id;
			this.catName = _catName;
			this.catDescription=_catDescription;
			this.visible = _visible;
			this.assocCat = _assocCat;
			this.label = _catName;
		}
		
		public function addToCategory(movie:MovieDisplayContainer):int{
			subCatArray.push(movie);
			return Number(subCatArray.length - 1);
		}
		
		public function toString():String{
			return "[Category] " + catName;
		}
	}
}