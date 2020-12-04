<template>
        <b-overlay :show="!loaded" rounded="sm" class=alignment>
            <b-container>
                <div class="accounts pb-5">
                    <h1 class="d-flex justify-content-center mb-5 pt-4">Accounts</h1>
                    <ul v-for="account in accounts" :key="account.id">
                        <div class=pb-2>
                        <b-card class="account-card mr-5 d-flex justify-content-center">
                            <b-card-title>{{account.personName}}</b-card-title>
                            <b-card-sub-title class=mb-2>Cuenta: {{account.accountNumber}}</b-card-sub-title>
                            <b-card-text class=mt-4>Balance: {{account.balance}}</b-card-text>
                            <b-card-text class="mb-1">{{new Date(account.creationDate).toLocaleDateString()}}</b-card-text>
                            <b-card-text class="mb-1">Tipo de cuenta: {{account.typeSavingsAccountName}}</b-card-text>
                            <router-link :to="{name:'Benefactors',params:{id: account.id}}">
                                <b-card-text class="mb-1">Beneficiarios</b-card-text>
                            </router-link>
                            <router-link :to="{name:'AccountStatements',params:{id: account.id}}">
                                <b-card-text>Estados de cuenta</b-card-text>
                            </router-link>
                            <router-link :to="{name:'ObjetiveAccounts',params:{id: account.id}}">
                                <b-card-text>Cuentas Objetivo</b-card-text>
                            </router-link>
                        </b-card> 
                        </div>
                    </ul>
                </div>
            </b-container>
        </b-overlay>
</template>

<script lang="ts">
import { mapActions, mapGetters, mapState } from 'vuex';
import { Component, Vue } from 'vue-property-decorator';
import Account from '../models/Account';

@Component({
    computed:{
        ...mapState(['accounts','loaded','error','user'])
    },
    methods: {
        ...mapActions(['getAccounts']),
    },
    mounted(){
        this.getAccounts(this.user);
    }
})
export default class Accounts extends Vue {}
</script>

<style scoped>
.accounts{
  background-color: rgba(0,0,0,0.75) !important;
  margin-top: 50px;
  height: 100%;
}
.accounts>h1{
  font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
  color: white;
}
.account-card{
  margin:auto;
  min-width: 70%;
  max-height: 302px;
}
.account-card:hover {
  box-shadow: 0 8px 16px 0 rgba(3, 104, 255, 0.904);
}
.alignment{
    display: flex;
    align-items: center;
    justify-content: center;
}
.spinner{
    width: 3rem; 
    height: 3rem;
}
</style>