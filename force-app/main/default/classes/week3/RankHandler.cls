public  class RankHandler {
    //1==>gold
    //2==>silver
    //3==>bronze
    //top 10 ==>top 10 iron
    //more 10 ==>aluminium
    
   public string rankPrize(integer rank){
    string prize='';
    if(rank==1){
        prize='gold';
    }else if(rank==2){
        prize='silver';
    }else if(rank==3){
        prize='bronze';
    }else {
        if(rank<=10){
            prize='iron';
        }else{
            prize='aluminium';
        }
    }

    return prize;
 
   }


   public string rankPrizeSwitch(integer rank){
    string prize = '';

    switch on rank {
        when 1 {
            prize = 'Goldd';
        }
        when 2{
            prize = 'Silverr';
        }
        when 3{
            prize = 'Bronze';
        }
        when 4,5,6,7,8,9,10{
            prize = 'Ironn';
        }
        when else {
            prize = 'Aluminium';
        }
    }

    return prize;
   }


//turkish session

public class IfConditional {
    //kitap, fiyatı, adet 3 parametreli metot toplam ödeyecek miktarı hesaplasın. bu kitaptan .. adet aldınız. ödemeniz gereken miktar = ...
    public decimal kitapUcreti(string kitapAdi, decimal fiyat, integer adet) {
        decimal toplamOdeme = fiyat*adet;
        System.debug(kitapAdi + ' kitabindan ' + adet + ' adet aldiniz. odemeniz gereken toplam miktar = ' + toplamOdeme);
        return toplamOdeme;
    }
    /*3 integer parameter alan, bu notlarin ortalamasina gore
    0-24  => F
    25-44 => E
    45-54 => D
    55-69 => C
    70-84 => B
    85-100 => A sonuclarini dondursun..*/
    public string notOrtalamasi(integer not1, integer not2, integer not3) {
        //once not ortalamasini buluruz..
        decimal ortalama = (not1 + not2 + not3)/3;
        //sonucu icine koyacagimiz variable tanimlayalim..
        string sonuc;
        //ortalamaya gore karsilastirmalar yapalim.
        if (ortalama>0 && ortalama<=100) {
            if (ortalama<25) {
                sonuc = 'F';
            } else if (ortalama<45) {
                sonuc = 'E';
            } else if (ortalama<55) {
                sonuc = 'D';
            } else if (ortalama<70) {
                sonuc = 'C';
            } else if (ortalama<85) {
                sonuc = 'B';
            } else {
                sonuc = 'A';
            }
        } else {
            System.debug('Girilen notlarda hatali bir durum var..');
        }
        return sonuc;

    }
}







   
}



