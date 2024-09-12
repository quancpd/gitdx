public class INDICATOR_Controller {
  @AuraEnabled
  public static String getSObjectLabel(String sObjName){
      String label = 'ABC';
      return Schema.getGlobalDescribe().get(sObjName).getDescribe().getLabel();
  }
}
