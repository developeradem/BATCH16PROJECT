public class EmployeeTriggerHandler {

    public static void updateJoinDate(List<Employee__c> empTriggerNew) {
        for (Employee__c newEmp : empTriggerNew) {
            if (newEmp.joinDate__c == null) {
                newEmp.JoinDate__c = date.today();
            }
        }
    }
    public static void validateJoinDate(List<employee__c> empTriggerNew) {
        for (Employee__c newEmp : empTriggerNew) {
            if (newEmp.joinDate__c >date.today()) {
                newEmp.joinDate__c.addError('join date can not be in future');
                
            }

            
        }
    }
}