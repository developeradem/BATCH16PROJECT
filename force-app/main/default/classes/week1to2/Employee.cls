public class Employee {
    private string name;
    private decimal salary;

    public void details(){
        system.debug(name);
        system.debug(salary);

    }

    //set method
    public void setName(string name){
        this.name=name;
    }

    //get method
    public string getName(){
        return this.name;
    }


    //set method for salary
    public void setSalary(Decimal s){
        if(s>=8000 && s<=50000){
            this.salary=s;
        }else{
            this.salary= 0;
            system.debug('you will get nothing');
        }
        
    }

    public decimal getSalary(){
        return this.salary;
    }
   
}