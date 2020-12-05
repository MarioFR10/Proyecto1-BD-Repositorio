import AccountStatement from '@/models/AccountStatement';
import Account from '@/models/AccountStatement';
import Movement from '@/models/Movement';
import ObjetiveAccount from '@/models/ObjetiveAccount';

export default class AccountProvider{
    apiUrl = 'https://localhost:44308/api/';

    async getAccounts(userId: number): Promise<Account[]>{
        const operation = "savingsaccount/GetByUserId";
        const options = {
        method: 'POST',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          "UserId": userId,
        })
      };
      const response = await fetch(this.apiUrl+operation, options);
      if(response.ok){
        const object = await response.json();
        if(!object.error){
          return object.Accounts as Account[];
        }
        throw new Error(object.error);
      }
      throw new Error(response.status + " (" + response.statusText + ")");
    }

    async getAccountStatements(accountId: number): Promise<AccountStatement[]>{
      const operation = "accountstatement/GetStatementBy";
      const options = {
      method: 'POST',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        "SavingsAccountId": accountId,
      })
    };
    const response = await fetch(this.apiUrl+operation, options);
    if(response.ok){
      const object = await response.json();
      if(!object.error){
        console.log(object);
        return object.accountStatements as AccountStatement[];
      }
      throw new Error(object.error);
    }
    throw new Error(response.status + " (" + response.statusText + ")");
  }

  async getMovements(accountStatementId: number): Promise<Movement[]>{
    const operation = "accountstatement/GetMovements";
    const options = {
    method: 'POST',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      "accountStatementId": accountStatementId,
    })
  };
  const response = await fetch(this.apiUrl+operation, options);
  if(response.ok){
    const object = await response.json();
    if(!object.error){
      return object.movements as Movement[];
    }
    throw new Error(object.error);
  }
  throw new Error(response.status + " (" + response.statusText + ")");
  }

  async getObjetiveAccount(accountId: number): Promise<ObjetiveAccount[]>{
    const operation = "savingsaccount/getObjetiveAccounts";
    const options = {
    method: 'POST',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      "SavingsAccountId": accountId,
    })
  };
  const response = await fetch(this.apiUrl+operation, options);
  if(response.ok){
    const object = await response.json();
    if(!object.error){
      return object.objetiveAccounts as ObjetiveAccount[];
    }
    throw new Error(object.error);
  }
  throw new Error(response.status + " (" + response.statusText + ")");
  }

  async deleteObjetiveAccount(objetiveaccountId: number): Promise<Movement[]>{
    const operation = "savingsaccount/deleteObjetive";
      const options = {
      method: 'PUT',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        "objetiveaccountId": objetiveaccountId
      })
    };
    const response = await fetch(this.apiUrl+operation, options);
    if(response.ok){
      const object = await response.json();
      if(!object.error){
        return object.success;
      }
      throw new Error(object.error);
    }
    throw new Error(response.status + " (" + response.statusText + ")");
  }


  async getMovementsWord(movement: Movement): Promise<Movement[]>{
    const operation = "accountstatement/getMovementsWord";
    const options = {
    method: 'POST',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      "accountStatementId": movement.accountStatementId,
      "description": movement.description
    })
  };
  const response = await fetch(this.apiUrl+operation, options);
  if(response.ok){
    const object = await response.json();
    if(!object.error){
      return object.movements as Movement[];
    }
    throw new Error(object.error);
  }
  throw new Error(response.status + " (" + response.statusText + ")");
  }

  
}