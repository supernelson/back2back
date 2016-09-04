var World = {
	loaded: false,
	rotating: false,

	init: function initFn() {
		this.createModelAtLocation();
	},

	createModelAtLocation: function createModelAtLocationFn() {

		/*
			First a location where the model should be displayed will be defined. This location will be relativ to the user.	
		*/
//		var location = new AR.RelativeLocation(null, 2, 0, 2);
        
        var geoLoc = new AR.GeoLocation(37.785610, -122.397162);
        //a relative location being 12 meters north, 20 meters east and 13 meters higher than geoLoc
        var location = new AR.RelativeLocation(geoLoc, 2, 0, 2);

		/*
			Next the model object is loaded.
		*/
		var modelEarth = new AR.Model("assets/house.wt3", {
			onLoaded: this.worldLoaded,
			scale: {
				x: 10,
				y: 10,
				z: 10
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
