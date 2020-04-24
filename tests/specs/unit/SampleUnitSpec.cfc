component extends="testbox.system.BaseSpec" {
	function beforeAll(){
        variables.urlParser = new models.UrlParser();
	}
 
    function run() {

        describe( "Url validator", function() {
            it( "can be loaded", function() {
                expect( urlParser )
                    .toBeComponent();
            } );
            it( "can parse a valid url", function() {
                expect( urlParser.parse( "http://google.com" ).host )
                    .toBe( "google.com" );
            } );
            it( "throws error if invaldid url passed", function() {
                expect( function(){
                	urlParser.parse( "google.com" ) 
                })
                .toThrow();
            } );
            it( "can validate a url", function() {
                expect( urlParser.isValid( "google.com" ) )
                	.toBe( false );
                expect( urlParser.isValid( "http://google.com" ) )
                	.toBe( true );
            } );
        } );

    }
}