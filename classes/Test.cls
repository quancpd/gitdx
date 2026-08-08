public class Test {
	public static void getSessionLevels()
    {
        Schema.DescribeFieldResult fieldResult = Opportunity.StageName.getDescribe();
        String label = fieldResult.getCompoundFieldName();
        List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        for(Schema.PicklistEntry s:ple){
            System.debug('value1:'+s.getLabel());
        } 
    }
}