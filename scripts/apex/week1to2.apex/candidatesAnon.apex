Candidates.companyName='soft innovas';


Candidates c1 =new Candidates();

c1.name='kerry';
c1.gender='male';
c1.details();


Candidates c2=new Candidates();

c2.name='vitap';
c2.gender='male';
c2.details();

system.debug('company name is '+Candidates.companyName);
Candidates.companyName='salesforce';
system.debug('after change '+Candidates.companyName);

c1.details();
c2.details();



Candidate.companyName = 'Softinnovas';

Candidate c1 = new Candidate();

c1.name = 'Jerry';
c1.gender = 'Male';
c1.details();


Candidate c2 = new Candidate();

c2.name = 'George';
c2.gender = 'Male';
c2.details();

Candidate c3 = new Candidate();

c3.name = 'Elaine';
c3.gender = 'Female';
c3.details();

//we cannot access static member via instance
// system.debug('c3 company name is ' + c3.companyName);

system.debug('company name is ' + Candidate.companyName);

Candidate.companyName = 'Salesforce';
system.debug('after change company name is ' + Candidate.companyName);

c1.details();
c2.details();
c3.details();


//track number of candidates created in one execution
