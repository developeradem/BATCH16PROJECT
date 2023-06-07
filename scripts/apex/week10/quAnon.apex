list<account> acc = [select id, name from account where createddate = last_month];
AccountsQueueableExample aq = new AccountsQueueableExample();
aq.listAcc = acc;

//enqueuing job
id jobId = system.enqueueJob(aq);

AsyncApexJob job = [SELECT Id, Status, JobType, MethodName, NumberOfErrors FROM AsyncApexJob where id = :jobId];
System.debug(job);