export default class Benefactor{
    id: number | undefined;
    nameDocId: string;
    savingsAccountId: number;
    valueDocIden: string;
    name: string;
    percentage: number;
    user: number | undefined;

    constructor(id: number|undefined,nameDocId: string,savingsAccountId: number,name: string,valueDocIden: string,percentage: number, user: number|undefined){
        this.id = id;
        this.nameDocId = nameDocId;
        this.savingsAccountId = savingsAccountId;
        this.name = name;
        this.valueDocIden = valueDocIden;
        this.percentage = percentage;
        this.user = user;
    }
}