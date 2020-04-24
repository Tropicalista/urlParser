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
	 * Returns an instance of InternetDomainName after lenient validation
	 */
	function from( required string aDomain ){
		return domain.from( aDomain );
	}

	/**
	 * Returns the public suffix portion of the domain name, or null if no public suffix is present.
	 * @return string
	 */
	function getPublicSuffix( required string aDomain ){
		return variables.domain.from( arguments.aDomain ).hasPublicSuffix();
	}
	
	/**
	 * Check wether has a public suffix
	 * @return boolean
	 */
	function hasPublicSuffix( required string aDomain ){
		return variables.domain.from( arguments.aDomain ).hasPublicSuffix();
	}
	
	/**
	 * Indicates whether this domain name represents a public suffix, as defined by the Mozilla Foundation's Public Suffix List 
	 * @return string
	 */
	function isPublicSuffix( required string aDomain ){
		return variables.domain.from( arguments.aDomain ).hasPublicSuffix();
	}
	
}