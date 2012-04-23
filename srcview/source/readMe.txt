|-com

   |-rbm

	|- displayObjects : components related the the visual rendering of the interface , in MVC terms the view

		|- Comment Panel : Components relating to user options such as view/add comments

			|- dataRendering: Rendering objects for Comment panel data grids

		|- Television : Components related rto the 'television' or video display portion of app

		|- Videos : The parent panel which contains categorized movies and allows users to choose

		|- VideoSelectionDisplay: Components related to organization and display of movie info

	|- managers: data Managers control data flow to and from db, maintain persistence as well as create objects

	|- ValueObjects: Objects with no visual representation

|- events : Event library used by custom components

iTV.mxml is primary file


<!---------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------->
Data flow 

1. iTV.mxml loaded and creates VideoPlayer , PickAVideo and UserOptions

     a. Upon creation Video Player loads default movie
     b. Upon creation PickAVideo creates a CategorizedMovieManager which will hold an array of MovieItemDisplay objects sorted by category.
     c. PickAVideo catches a dataReady event from CategorizedMovieManager and displays video selections to user

2. MovieItemDisplay object is dragged and dropped on video player

     a. videoDisplay source id switched and a MovieSelected event is fired passing a copy of the MovieItem
     b. iTV application component catches MovieSelected event , updates its current title and sends the new id to comment panel
	   1. comment panel updates the movie id and in effect the movieId's of the 3 components bound to it
           2. Web service is used to getComments associated with movie
	   3. view comments panel is updated
     c. iTV application uses CaptionLoader to get captions for current video and update myCaptions which is bound to video player
           1. Video player attaches cue points to VideoDisplay