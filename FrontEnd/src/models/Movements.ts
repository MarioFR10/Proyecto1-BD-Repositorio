export default class Movements{
    id: string;
    savingsAccountId: number;
    typeMovId: number;
    accountStatementId: number;
    amount: number;   
    newBalance: number;
    description: string;
    visible: boolean;

    constructor(id: string, savingsAccountId: number, typeMovId: number, accountStatementId: number, amount: number, newBalance: number, description: string, visible: boolean ){
        this.id = id;
        this.savingsAccountId = savingsAccountId;
        this.typeMovId = typeMovId;
        this.accountStatementId = accountStatementId;
        this.amount = amount;
        this.newBalance = newBalance;
        this.description = description;
        this.visible = visible;
    }
}