export default class Benefactor{
    id: number | undefined;
    nameDocId: string;
    savingsAccountId: number;
    valueDocIden: string;
    name: string;
    percentage: number;

    constructor(id: number|undefined,nameDocId: string,savingsAccountId: number,name: string,valueDocIden: string,percentage: number){
        this.id = id;
        this.nameDocId = nameDocId;
        this.savingsAccountId = savingsAccountId;
        this.name = name;
        this.valueDocIden = valueDocIden;
        this.percentage = percentage;
    }
}