@isTest
public class AnimalLocatorTest {
    @isTest
    public static void testGetAnimalNameById(){
        // Set mock callout class
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock.
        String animalName = AnimalLocator.getAnimalNameById(1);
        // Verify that the response received contains fake values
        //String contentType = response.getHeader('Content-Type');
        //System.assert(contentType == 'application/json');
        String actualValue = animalName;
        //System.debug(response.getBody());
        String expectedValue = 'test name';
        System.assertEquals(actualValue, expectedValue);
        //System.assertEquals(200, response.getStatusCode());
    }

}