export default class AccountStatement{
    id: string;
    startDate: Date;
    endDate: Date;
    initialBalance: number;
    finalBalance: number;
    minBalance: number;
    AtmOps: number;
    HumOps: number;

    constructor(id: string,startDate: Date, endDate: Date, initialBalance: number, finalBalance: number, minBalance: number, AtmOps: number, HumOps: number ){
        this.id = id;
        this.startDate = startDate;
        this.endDate = endDate;
        this.initialBalance = initialBalance;
        this.finalBalance = finalBalance;
        this.minBalance = minBalance;
        this.AtmOps = AtmOps;
        this.HumOps = HumOps;
    }
}