export default class ObjetiveAccount{
    id: number|undefined;
    SavingsAccountId: number;
    startDate: Date;
    endDate: Date;
    fee: number;
    objetive: string;   
    balance: number;
    acumInterest: number;
    daysOfDeposit: number;
    active: boolean;
    user: number;

    constructor(id: number|undefined, SavingsAccountId: number, startDate: Date, endDate: Date, fee: number, objetive: string, balance: number, acumInterest: number, daysOfDeposit: number, active: boolean, user: number ){
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
        this.user = user;
    }
}