RankHandler rh=new RankHandler();
system.debug('1 is '+rh.rankPrize(1));
system.debug('2 is '+rh.rankPrize(2));
system.debug('3 is '+rh.rankPrize(3));
system.debug('5 is '+rh.rankPrize(5));
system.debug('13 is '+rh.rankPrize(13));

RankHandler rh2 = new RankHandler();
string ps1 = rh2.rankPrizeSwitch(1);
system.debug('1 => ' + ps1);
string ps2 = rh2.rankPrizeSwitch(2);
system.debug('2 => ' + ps2);
string ps3 = rh2.rankPrizeSwitch(3);
system.debug('3 => ' + ps3);
string ps5 = rh2.rankPrizeSwitch(5);
system.debug('5 => ' + ps5);
string ps13 = rh2.rankPrizeSwitch(13);
system.debug('13 => ' + ps13);



//turkishhh session
IfConditional ifc = new IfConditional();
decimal sonuc = ifc.kitapUcreti('Sefiller', 11.10, 5);
System.debug('toplam odeme = ' + sonuc);

IfConditional ifc2 = new IfConditional();
string sonuc = ifc2.notOrtalamasi(65, 55, 85);
System.debug('Dersten aldiginiz not => ' + sonuc);
string sonuc2 = ifc2.notOrtalamasi(-65, 55, -85);
System.debug('Dersten aldiginiz not => ' + sonuc2);
string sonuc3 = ifc2.notOrtalamasi(15, 05, 25);
System.debug('Dersten aldiginiz not => ' + sonuc3);
string sonuc4 = ifc2.notOrtalamasi(100, 95, 95);
System.debug('Dersten aldiginiz not => ' + sonuc4);