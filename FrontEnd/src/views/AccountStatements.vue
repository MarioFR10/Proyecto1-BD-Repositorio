<template>
    <b-overlay :show="!loaded" rounded="sm" class=alignment>
        <b-container>
            <div class="accounts pb-5">
                <h1 class="d-flex justify-content-center mb-5 pt-4">Estados de cuenta</h1>
                <ul v-for="accountStatement in accountStatements" :key="accountStatement.id">
                    <div class=pb-2>
                        <b-card class="account-card d-flex justify-content-center">
                            <b-card-text >Fecha inicial: {{new Date (accountStatement.startDate).toLocaleDateString()}}</b-card-text>
                            <b-card-text class=mt-1>Fecha final: {{new Date (accountStatement.endDate).toLocaleDateString()}}</b-card-text>
                            <b-card-text class=mt-1>Balance inicial: {{accountStatement.initialBalance}}</b-card-text>
                            <b-card-text class=mt-1>Balance final: {{accountStatement.finalBalance}}</b-card-text>
                            <b-card-text class=mt-1>Balance minimo: {{accountStatement.minBalance}}</b-card-text>
                            <b-card-text class=mt-1>Operaciones Cajero Humano: {{accountStatement.HumOps}}</b-card-text>
                            <b-card-text class=mt-1>Operaciones ATM: {{accountStatement.AtmOps}}</b-card-text>
                            <router-link :to="{name:'Movements',params:{id: accountStatement.id}}">
                                <b-card-text>Movimientos</b-card-text>
                            </router-link>
                        </b-card> 
                    </div>
                </ul>

            </div>
            <div class="mt-2 d-flex justify-content-center">
                <b-alert v-if="hasError" variant="danger" show fade>
                    {{error}}
                </b-alert>
            </div>
        </b-container>
    </b-overlay>
</template>

<script lang="ts">
import { mapActions, mapGetters, mapState } from 'vuex';
import { Component, Vue } from 'vue-property-decorator';
import Benefactor from '../models/Benefactor';

@Component({
    data(){
        return {
            id: this.$route.params.id,
        }
    },
    created(){
        this.getAccountStatements(this.id);

    },
    beforeRouteUpdate (to, from, next) {
        this.id = to.params.id;
        this.getAccountStatements(this.id);
        next();
    },
    computed:{
        ...mapState(['accountStatements','loaded','error','user']),
        ...mapGetters(['hasError']),
    },
    methods: {
        ...mapActions(['getAccountStatements']),
    },
})
export default class AccountStatements extends Vue {}
</script>

<style scoped>
.accounts{
  background-color: rgba(0,0,0,0.75) !important;
  margin-top: 50px;
}
.accounts>h1{
  font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
  color: white;
}
.account-card{
  margin:auto;
  width: 70%;
  max-height: 330px;
}
.account-card:hover {
  box-shadow: 0 8px 16px 0 rgba(3, 104, 255, 0.904);
}
.alignment{
    display: flex;
    align-items: center;
    width: 100%;
    justify-content: center;
}
.spinner{
    width: 3rem; 
    height: 3rem;
}
.alert {
   width:400px;    
}
</style>