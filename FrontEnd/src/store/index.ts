import User from '@/models/User';
import Vue from 'vue'
import Vuex from 'vuex'
import AuthProvider from '@/providers/AuthProvider'
import AccountProvider from '@/providers/AccountProvider'
import router from '@/router';
import BenefactorProvider from '@/providers/BenefactorProvider';
import Benefactor from '@/models/Benefactor';
import Movement from '@/models/Movement';
import ObjetiveAccount from '@/models/ObjetiveAccount';
import Consulta from '@/models/Consulta';

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    error: null,
    loaded: true,
    success: null,
    user: null,
    accounts: [],
    benefactors: [],
    accountStatements: [],
    relationships: [],
    movements: [],
    objetiveAccounts: [],
    consultas: []
  },
  mutations: {
    setUser(state,payload){
      state.user = payload;
    },
    setError(state,payload){
      state.error = payload;
    },
    setLoaded(state,payload){
      state.loaded = payload;
    },
    setAccounts(state,payload){
      state.accounts = payload;
    },
    setBenefactors(state,payload){
      state.benefactors = payload;
    },
    setSuccess(state,payload){
      state.success = payload;
    },
    setAccountStatements(state,payload){
      state.accountStatements = payload;
    },
    setRelationships(state,payload){
      state.relationships = payload;
    },
    setMovements(state,payload){
      state.movements = payload;
    },
    setObjetiveAccounts(state,payload){
      state.objetiveAccounts = payload;
    },
    setConsultas(state,payload){
      state.consultas = payload;
    }
  },
  actions: {
    signIn({commit},user: User){
      commit('setLoaded',false);
      const authProvider = new AuthProvider();
      authProvider.signIn(user).then(userId=>{
        commit('setUser',userId);
        commit('setError',null);
        commit('setLoaded',true);
        router.push('/');
      }).catch(error=>{
        commit('setError',error);
        commit('setLoaded',true);
      });
    },
    getAccounts({commit},userId: number){
      console.log(userId);
      commit('setLoaded',false);
      const accountProvider = new AccountProvider();
      accountProvider.getAccounts(userId).then(accounts=>{
        commit('setAccounts',accounts);
        commit('setError',null);
        commit('setLoaded',true);
      }).catch(error=>{
        commit('setError',error);
        commit('setLoaded',true);
      });
    },
    getAccountBenefactors({commit},bene: Benefactor){
      commit('setLoaded',false);
      const benefactorProvider = new BenefactorProvider();
      benefactorProvider.getAccountBenefactors(bene.savingsAccountId, bene.user).then(benefactors=>{
        console.log(benefactors);
        commit('setBenefactors',benefactors);
        commit('setError',null);
        commit('setLoaded',true);
      }).catch(error=>{
        commit('setError',error);
        commit('setLoaded',true);
      });
    },
    updatePercentages({commit},benefactors: Benefactor[]){
      commit('setLoaded',false);
      console.log('adentro de updatePercentajes', benefactors);
      const benefactorProvider = new BenefactorProvider();
      benefactorProvider.updatePercentages(benefactors).then(message=>{
        benefactorProvider.getAccountBenefactors(benefactors[0].savingsAccountId, benefactors[0].user).then(benefactors=>{
          commit('setBenefactors',benefactors);
          commit('setSuccess',message);
          commit('setError',null);
          commit('setLoaded',true);
        }).catch(error=>{
          commit('setSuccess',null);
          commit('setError',error);
          commit('setLoaded',true);
        });
      }).catch(error=>{
        commit('setSuccess',null);
        commit('setError',error);
        commit('setLoaded',true);
      });
    },
    deleteBenefactor({commit},benefactor: Benefactor){
      commit('setLoaded',false);
      const benefactorProvider = new BenefactorProvider();
      console.log('antes de delete', benefactor);
      benefactorProvider.deleteBenefactor(benefactor.id, benefactor.user).then(message=>{
        benefactorProvider.getAccountBenefactors(benefactor.savingsAccountId, benefactor.user).then(benefactors=>{
          commit('setBenefactors',benefactors);
          commit('setSuccess',message);
          commit('setError',null);
          commit('setLoaded',true);
        }).catch(error=>{
          commit('setSuccess',null);
          commit('setError',error);
          commit('setLoaded',true);
        });
      }).catch(error=>{
        commit('setSuccess',null);
        commit('setError',error);
        commit('setLoaded',true);
      });
    },
    createBenefactor({commit},benefactor: Benefactor){
      commit('setLoaded',false);
      const benefactorProvider = new BenefactorProvider();
      benefactorProvider.createBenefactor(benefactor).then(message=>{
        benefactorProvider.getAccountBenefactors(benefactor.savingsAccountId, benefactor.user).then(benefactors=>{
          commit('setBenefactors',benefactors);
          commit('setSuccess',message);
          commit('setError',null);
          commit('setLoaded',true);
        }).catch(error=>{
          commit('setSuccess',null);
          commit('setError',error);
          commit('setLoaded',true);
        });
      }).catch(error=>{
        commit('setSuccess',null);
        commit('setError',error);
        commit('setLoaded',true);
      });
    },
    getAccountStatements({commit},accountId: number){
      commit('setLoaded',false);
      const accountProvider = new AccountProvider();
      accountProvider.getAccountStatements(accountId).then(accountStatements=>{
        commit('setAccountStatements',accountStatements);
        commit('setError',null);
        commit('setLoaded',true);
      }).catch(error=>{
        commit('setError',error);
        commit('setLoaded',true);
      });
    },
    getRelationships({commit}){
      commit('setLoaded',false);
      const benefactorProvider = new BenefactorProvider();
      benefactorProvider.getRelationships().then(relationships=>{
        const relationshipsOptions: Array<any> = relationships.map(relationship=>({value:relationship.id,text:relationship.name}));
        relationshipsOptions.unshift({ value: null, text: 'Select relationship',disabled: true });
        commit('setRelationships',relationshipsOptions);
        commit('setError',null);
        commit('setLoaded',true);
      }).catch(error=>{
        commit('setError',error);
        commit('setLoaded',true);
      });
    },
    
    //Funcion de get de movements
    getMovements({commit},accountStatementId: number){
      commit('setLoaded',false);
      const accountProvider = new AccountProvider();
      accountProvider.getMovements(accountStatementId).then(movements=>{
        commit('setMovements',movements);
        commit('setError',null);
        commit('setLoaded',true);
      }).catch(error=>{
        commit('setError',error);
        commit('setLoaded',true);
      });
    },

    //funcion get objetive accounts
    getObjetiveAccount({commit},objetive: ObjetiveAccount){
      commit('setLoaded',false);
      const accountProvider = new AccountProvider();
      accountProvider.getObjetiveAccount(objetive.SavingsAccountId, objetive.user).then(objetiveAccounts=>{
        commit('setObjetiveAccounts',objetiveAccounts);
        commit('setError',null);
        commit('setLoaded',true);
      }).catch(error=>{
        commit('setError',error);
        commit('setLoaded',true);
      });
    },

    //funcion delete objetive Account
    deleteObjetiveAccount({commit},objetiveAccount: ObjetiveAccount){
      commit('setLoaded',false);
      const accountProvider = new AccountProvider();
      accountProvider.deleteObjetiveAccount(objetiveAccount.id, objetiveAccount.user).then(message=>{
        accountProvider.getObjetiveAccount(objetiveAccount.SavingsAccountId, objetiveAccount.user).then(objetiveAccounts=>{
          commit('setObjetiveAccounts',objetiveAccounts);
          commit('setSuccess',message);
          commit('setError',null);
          commit('setLoaded',true);
        }).catch(error=>{
          commit('setSuccess',null);
          commit('setError',error);
          commit('setLoaded',true);
        });
      }).catch(error=>{
        commit('setSuccess',null);
        commit('setError',error);
        commit('setLoaded',true);
      });
    },

    //funcion de filtrado de movimientos
    getMovementsWord({commit},movimiento: Movement){
      commit('setLoaded',false);
      const accountProvider = new AccountProvider();
      accountProvider.getMovementsWord(movimiento).then(movements=>{
        commit('setMovements',movements);
        commit('setError',null);
        commit('setLoaded',true);
      }).catch(error=>{
        commit('setError',error);
        commit('setLoaded',true);
      });
    },

    //funcion de agregar cuentas objetivo

    createObjetiveAccount({commit},cuentaObjetivo: ObjetiveAccount){
      commit('setLoaded',false);
      const accountProvider = new AccountProvider();
      accountProvider.createObjetiveAccount(cuentaObjetivo).then(message=>{
        accountProvider.getObjetiveAccount(cuentaObjetivo.SavingsAccountId, cuentaObjetivo.user).then(objetiveAccounts=>{
          commit('setObjetiveAccounts',objetiveAccounts);
          commit('setSuccess',message);
          commit('setError',null);
          commit('setLoaded',true);
        }).catch(error=>{
          commit('setSuccess',null);
          commit('setError',error);
          commit('setLoaded',true);
        });
      }).catch(error=>{
        commit('setSuccess',null);
        commit('setError',error);
        commit('setLoaded',true);
      });
    },

    //funcion de update de cuenta objetivo

    updateObjetiveAccount({commit},objetiveAccount: ObjetiveAccount){
      commit('setLoaded',false);
      const accountProvider = new AccountProvider();
      accountProvider.updateObjetiveAccount(objetiveAccount).then(message=>{
        accountProvider.getObjetiveAccount(objetiveAccount.SavingsAccountId, objetiveAccount.user).then(objetiveAccounts=>{
          commit('setObjetiveAccounts',objetiveAccounts);
          commit('setSuccess',message);
          commit('setError',null);
          commit('setLoaded',true);
        }).catch(error=>{
          commit('setSuccess',null);
          commit('setError',error);
          commit('setLoaded',true);
        });
      }).catch(error=>{
        commit('setSuccess',null);
        commit('setError',error);
        commit('setLoaded',true);
      });
    },


    consultaA({commit},objetive: Consulta){
      commit('setLoaded',false);
      const accountProvider = new AccountProvider();
      accountProvider.consultaAdminA().then(consultas=>{
        console.log('consultas', consultas);
        commit('setConsultas',consultas);
        commit('setError',null);
        commit('setLoaded',true);
      }).catch(error=>{
        commit('setError',error);
        commit('setLoaded',true);
      });
    },

    consultaB({commit},fecha: Date){
      commit('setLoaded',false);
      const accountProvider = new AccountProvider();
      accountProvider.consultaAdminB(fecha).then(consultas=>{
        console.log('consultas', consultas);
        commit('setConsultas',consultas);
        commit('setError',null);
        commit('setLoaded',true);
      }).catch(error=>{
        commit('setError',error);
        commit('setLoaded',true);
      });
    },

    consultaC({commit},objetive: Consulta){
      commit('setLoaded',false);
      const accountProvider = new AccountProvider();
      accountProvider.consultaAdminC().then(consultas=>{
        console.log('consultas', consultas);
        commit('setConsultas',consultas);
        commit('setError',null);
        commit('setLoaded',true);
      }).catch(error=>{
        commit('setError',error);
        commit('setLoaded',true);
      });
    },

    
  },
  modules: {
  },
  getters:{
    isSignedIn(state){
      return state.user!==null;
    },
    hasError(state){
      return state.error!==null;
    },
    hasSuccess(state){
      return state.success!==null;
    }
  },
})
