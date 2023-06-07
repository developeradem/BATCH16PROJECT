public  class DepartmentTriggerHandler {
  @future

  public static void createDefaultEmpFuture(set<id> depIds) {
    List<Employee__c> newEmployees = new  List<Employee__c>();

    for (id eachId : depIds) {
        
        Employee__c e = new Employee__c(First_name__c = 'shapshik', Department__c = eachId);
        newEmployees.add(e);
    }
    insert newEmployees;
    
  }
}