component{
	
	property name="domain";
	property name="javaLoader" inject="loader@cbjavaloader";

	/**
	 * Constructor
	 */
	function init(){
		variables.domain = javaLoader.create( "com.google.common.net.InternetDomainName" );
		return this;
	}
	
	/**
	 * Parser
	 */
	function from( required string aDomain ){
		var domain = domain.from( aDomain );

		return domain;
	}

	/**
	 * index
	 */
	function hasPublicSuffix( required string aDomain ){
		return variables.domain.from( arguments.aDomain ).hasPublicSuffix();
	}
	
}