public class DecimalDemoClass {
 public void practice1(){

    decimal myMoney=554.89456123;
    decimal myMoney2= myMoney.setscale(2);
    system.debug('mymoney2==> '+myMoney2);

    string myMoney2Str=myMoney2.toPlainString();
    system.debug(myMoney2Str);

    decimal myMoney3=decimal.valueOf(myMoney2Str);
    system.debug(myMoney3);
 }
}