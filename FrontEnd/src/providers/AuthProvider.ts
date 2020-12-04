import User from '@/models/User';

export default class AuthProvider{
    apiUrl = 'https://localhost:44308/api/';

    async signIn(user: User): Promise<number>{
      const operation = "user/Login";
      const options = {
        method: 'POST',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          "userName": user.username,
          "password": user.password
        })
      };
      const response = await fetch(this.apiUrl+operation, options);
      if(response.ok){
        const object = await response.json();
        if(!object.error){
          return object.UserId as number;
        }
        throw new Error(object.error);
      }
      throw new Error(response.status + " (" + response.statusText + ")");
  }
}