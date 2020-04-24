component {
    
    this.name = "urlParser";
    this.author = "Francesco Pepe";
    this.webUrl = "https://github.com/Tropicalista/urlParser";
	this.dependencies = ["cbjavaloader"];

    function configure() {
        //
    }

    function onLoad(){

        // load Guava jars
        wirebox.getInstance( "Loader@cbjavaloader" )
        	.appendPaths( variables.modulePath & "/lib" );
    
    }
}