public class AnimalLocator
{
  public static String getAnimalNameById(Integer id)
   {
        Http http = new Http();
        HttpRequest request = new HttpRequest();       
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        List<Object> animals = NULL;
        String returnValue = NULL;
        // if the request was successful, then parse the JSON response
        if (response.getStatusCode() == 200) {
            Map<String, Object> result = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            returnValue = (String) result.get('name');
            System.debug(returnValue);
        }        
        return returnValue;
   }
}