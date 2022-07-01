public class Test {
	public static void getSessionLevels()
    {
        Schema.DescribeFieldResult fieldResult = Opportunity.StageName.getDescribe();
        List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        for(Schema.PicklistEntry s:ple){
            System.debug('value: '+s.getLabel());
        } 
    }
}