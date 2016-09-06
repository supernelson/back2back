var World = {
	loaded: false,
	rotating: false,
    
    // 22222 POI-Marker asset
markerDrawable_idle: null,

	init: function initFn() {
		this.createModelAtLocation();
	},
    
    // ////////////////////////////////
    
    // called to inject new POI data
loadPoisFromJsonData: function loadPoisFromJsonDataFn(poiData) {
    
    /*
     The example Image Recognition already explained how images are loaded and displayed in the augmented reality view. This sample loads an AR.ImageResource when the World variable was defined. It will be reused for each marker that we will create afterwards.
     */
    World.markerDrawable_idle = new AR.ImageResource("assets/download.png");
    
    /*
     Since there are additional changes concerning the marker it makes sense to extract the code to a separate Marker class (see marker.js). Parts of the code are moved from loadPoisFromJsonData to the Marker-class: the creation of the AR.GeoLocation, the creation of the AR.ImageDrawable and the creation of the AR.GeoObject. Then instantiate the Marker in the function loadPoisFromJsonData:
     */
    var marker = new Marker(poiData);
    
    // Updates status message as a user feedback that everything was loaded properly.
    World.updateStatusMessage('1 place loaded');
},
    
    // updates status message shon in small "i"-button aligned bottom center
updateStatusMessage: function updateStatusMessageFn(message, isWarning) {
    
    var themeToUse = isWarning ? "e" : "c";
    var iconToUse = isWarning ? "alert" : "info";
    
    $("#status-message").html(message);
    $("#popupInfoButton").buttonMarkup({
                                       theme: themeToUse
                                       });
    $("#popupInfoButton").buttonMarkup({
                                       icon: iconToUse
                                       });
},
    
    // ////////////////////////////

	createModelAtLocation: function createModelAtLocationFn() {

		/*
			First a location where the model should be displayed will be defined. This location will be relativ to the user.	
		*/
//		var location = new AR.RelativeLocation(null, 2, 0, 2);
        
        var geoLoc = new AR.GeoLocation(37.786197, -122.402379);
        //a relative location being 12 meters north, 20 meters east and 13 meters higher than geoLoc
        var location = new AR.RelativeLocation(geoLoc, 2, 0, 2);

		/*
			Next the model object is loaded.
		*/
        
        
		var modelEarth = new AR.Model("assets/house3.wt3" , {
			onLoaded: this.worldLoaded,
			scale: {
				x: 3,
				y: 3,
				z: 3
			}
		});

        var indicatorImage = new AR.ImageResource("assets/indi.png");

        var indicatorDrawable = new AR.ImageDrawable(indicatorImage, 0.1, {
            verticalAnchor: AR.CONST.VERTICAL_ANCHOR.TOP
        });

		/*
			Putting it all together the location and 3D model is added to an AR.GeoObject.
		*/
		var obj = new AR.GeoObject(location, {
            drawables: {
               cam: [modelEarth],
               indicator: [indicatorDrawable]
            }
        });
	},

	worldLoaded: function worldLoadedFn() {
		World.loaded = true;
		var e = document.getElementById('loadingMessage');
		e.parentElement.removeChild(e);
	}

};

World.init();