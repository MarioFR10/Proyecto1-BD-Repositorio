export default class Account{
    id: number;
    typeSavingsAccountName: string;
    personName: string;
    balance: number;
    creationDate: Date;
    accountNumber: string;

    constructor(id: number, typeSavingsAccountName: string, personName: string, balance: number, creationDate: Date, accountNumber: string){
        this.id = id;
        this.typeSavingsAccountName = typeSavingsAccountName;
        this.personName = personName;
        this.balance = balance;
        this.creationDate = creationDate;
        this.accountNumber = accountNumber;
    }
}