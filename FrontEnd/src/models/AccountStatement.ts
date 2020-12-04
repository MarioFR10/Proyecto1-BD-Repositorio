export default class AccountStatement{
    id: string;
    startDate: Date;
    endDate: Date;
    initialBalance: number;
    finalBalance: number;

    constructor(id: string,startDate: Date, endDate: Date, initialBalance: number, finalBalance: number ){
        this.id = id;
        this.startDate = startDate;
        this.endDate = endDate;
        this.initialBalance = initialBalance;
        this.finalBalance = finalBalance;
    }
}