public class Custom_Accounts {
    @AuraEnabled
    public static List<Account> getAccounts(){
        List<Account> accounts = [SELECT Id, Name, BillingStreet, BillingCity, BillingPostalCode, BillingState, Phone, AccountNumber, Rating, NumberofLocations__c FROM Account LIMIT 100 ];
        return accounts;
	}
}