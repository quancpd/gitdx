public class Test {
    private static Map<Id,Id> pairings = new Map<Id,Id>();
	public static void getSessionLevels()
    {
        Schema.DescribeFieldResult fieldResult = Opportunity.StageName.getDescribe();
        String label = fieldResult.getCompoundFieldName();
        List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        for(Schema.PicklistEntry s:ple){
            System.debug('value1:'+s.getLabel());
        }
        CustomObject__c customObject = new CustomObject__c();
        customObject.custom_field__c = 'custom field';
    }
}