public class DateTimeMethodsDemo {
    public void calculateAgeInMonths(){
        system.debug('we will calculate our age in months');
        Date todayDate=date.today();
        Date ademBirthDate=date.newInstance(1989, 10, 14);
        integer ademAgeInmonths=ademBirthDate.monthsBetween(todayDate);
        system.debug('adem age in months '+ademAgeInmonths);

    }


    public void calculateAgeInDays(){
        Date todayDate=date.today();
        Date ademBirthDate=date.newInstance(1989, 10, 14);
        integer ademAgeInDays= ademBirthDate.daysBetween(todayDate);
        system.debug('adem age in days '+ademAgeInDays);
    }

    public void printSubscriptionEndDate(){
        date startDate1=date.today();
        date endDate1=startDate1.addDays(1000);
        system.debug('Subscription ends on '+endDate1);

        //today is end date of 1000days of subscription. Get startDate
        date endDate2 = date.today();
        //use addDays method to add days
        date startDate2 = endDate2.addDays(-1000);
        system.debug('Subscription start date2 is ' + startDate2);
        //get YEAR component from date
        integer startYear = startDate2.year();
        system.debug('start year of subscription was ' + startYear);
        integer startMonth = startDate2.month();
        system.debug('month year of subscription was ' + startMonth);


    }

    public void printOfferEndDatetime(){
        //today -> date
        //now   -> datetime
        datetime offerStartDT = datetime.now();
        //print offer end datetime, if offer is for 51 hours
        datetime offerEndDT = offerStartDT.addHours(51);
        system.debug('offer end datetime is ' + offerEndDT);
    }

    
    
  
}