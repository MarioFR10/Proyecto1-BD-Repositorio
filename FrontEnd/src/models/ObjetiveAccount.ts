export default class ObjetiveAccount{
    id: number|undefined;
    SavingsAccountId: number;
    startDate: Date;
    endDate: Date;
    fee: number;
    objetive: string;   
    balance: number;
    acumInterest: number;
    daysOfDeposit: string;
    active: boolean;

    constructor(id: number|undefined, SavingsAccountId: number, startDate: Date, endDate: Date, fee: number, objetive: string, balance: number, acumInterest: number, daysOfDeposit: string, active: boolean ){
        this.id = id;
        this.SavingsAccountId = SavingsAccountId;
        this.startDate = startDate;
        this.endDate = endDate;
        this.fee = fee;
        this.objetive = objetive;
        this.balance = balance;
        this.acumInterest = acumInterest;
        this.daysOfDeposit = daysOfDeposit;
        this.active = active;
    }
}