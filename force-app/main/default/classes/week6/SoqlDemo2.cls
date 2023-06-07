public class SoqlDemo2 {
    public static void projectSOQL1(){
        list<salesforce_project__c> sp = [select id, name, project_name__c, status__c from salesforce_project__c where Status__c = 'New'];

        for (Salesforce_Project__c eachSP : sp) {
            system.debug('project name is ' + eachSP.Project_Name__c + ', its status is ' + eachSP.Status__c);
        }
        
    }

    public static void projectSOQL1(string status){
        list<salesforce_project__c> sp = [select id, name, project_name__c, status__c from salesforce_project__c where Status__c = :status];

        for (Salesforce_Project__c eachSP : sp) {
            system.debug('project name is ' + eachSP.Project_Name__c + ', its status is ' + eachSP.Status__c);
        }
        
    }


    //opportunities to account
    public static void childToParentSOQL1() {
        list<Opportunity> listOPP = [select id, name, amount, closedate, account.Name, account.annualrevenue, account.website from opportunity];
        //print opp name and amount ,account name and revenue 

        for (Opportunity eachOpp : listOpp) {
            system.debug('opp name and amount is ' + eachOpp.Name + ' - ' + eachOpp.Amount);
            system.debug('acc name and its revenue is ' + eachOpp.account.Name);




            
        }
        

        
    }
}