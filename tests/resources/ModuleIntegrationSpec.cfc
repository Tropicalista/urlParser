component extends="coldbox.system.testing.BaseTestCase" {

    function beforeAll() {
        super.beforeAll();

        getController().getModuleService()
            .registerAndActivateModule( "urlParser", "testingModuleRoot" );

        getWireBox().autowire( this );
    }

    /**
    * @beforeEach
    */
    function setupIntegrationTest() {
        setup();
    }

}
