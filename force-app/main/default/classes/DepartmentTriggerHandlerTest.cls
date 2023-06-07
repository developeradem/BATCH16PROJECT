@isTest
public class DepartmentTriggerHandlerTest {
    @isTest
    private static void testFuture1() {
        list<Department__c> listDep = new list<Department__c>{

            new Department__c(Name__c = 'future'),
            new Department__c(Name__c = 'present'),
            new Department__c(Name__c = 'past')

        };

        test.startTest();
        insert listDep;
        test.stopTest();


        list<Department__c> allEmp = [select id, first_name__c from employee__c];
        assert.areEqual(3, allEmp.size());
        
    }

  
}