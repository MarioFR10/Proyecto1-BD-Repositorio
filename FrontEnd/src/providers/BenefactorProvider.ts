import Benefactor from '@/models/Benefactor';
import Relationship from '@/models/Relationship';

export default class BenefactorProvider{
    apiUrl = 'https://localhost:44308/api/benefactor/';

    async getAccountBenefactors(accountId: number, user: number): Promise<Benefactor[]>{
        const operation = "GetBenefactorByAccount";
        const options = {
        method: 'POST',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          "SavingsAccountId": accountId,
          "user": user
        })
      };
      const response = await fetch(this.apiUrl+operation, options);
      if(response.ok){
        const object = await response.json();
        if(!object.error){
          return object.Benefactors as Benefactor[];
        }
        throw new Error(object.error);
      }
      throw new Error(response.status + " (" + response.statusText + ")");
    }

    async updatePercentages(benefactors: Benefactor[]): Promise<string>{
      const percentages = benefactors.map(benefactor=>({id:benefactor.id,percentage:benefactor.percentage, user:benefactor.user}));
      const operation = "updateBenefactorsPercentages";
        const options = {
        method: 'PUT',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          "benefactors": percentages
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
    
    async deleteBenefactor(benefactorId: number, user: number): Promise<string>{
      const operation = "deleteBenefactor";
        const options = {
        method: 'PUT',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          "benefactorId": benefactorId,
          "user": user
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

    async createBenefactor(benefactor: Benefactor): Promise<string>{
      const operation = "createBenefactor";
        const options = {
        method: 'POST',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          "benefactor": benefactor
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

    async getRelationships(): Promise<Relationship[]>{
      const operation = "GetRelationship";
      const options = {
      method: 'GET',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      }
    };
    const response = await fetch(this.apiUrl+operation, options);
    if(response.ok){
      const object = await response.json();
      if(!object.error){
        return object.relationships as Relationship[];
      }
      throw new Error(object.error);
    }
    throw new Error(response.status + " (" + response.statusText + ")");
  }
}