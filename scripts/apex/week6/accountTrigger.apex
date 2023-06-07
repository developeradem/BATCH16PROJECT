list<account> listAcc = new list<account>();
for (Integer i = 0; i < 3; i++) {
    account ac = new account();
    ac.Name = 'test trigger acc ' + i;
    listAcc.add(ac);
}

insert listAcc;