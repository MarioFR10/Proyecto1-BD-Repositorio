<template>
    <b-overlay :show="!loaded" rounded="sm" class=alignment>
        <b-container>
            <div class="accounts pb-5">
                <h1 class="d-flex justify-content-center mb-3 pt-4">Objetive Accounts</h1>
                <ul v-for="objetiveAccount in objetiveAccounts" :key="objetiveAccount.id">
                    <div class=pb-2>
                        <b-card class="account-card d-flex justify-content-center">
                            <b-card-title class=mb-2>Id Cuenta Objetivo: {{objetiveAccount.id}}</b-card-title>
                            <b-card-text class=mt-1>Fecha inicial: {{new Date (objetiveAccount.startDate).toLocaleDateString()}}</b-card-text>
                            <b-card-text class=mt-1>Fecha final: {{new Date (objetiveAccount.endDate).toLocaleDateString()}}</b-card-text>
                            <b-card-text class=mt-1>Monto: {{objetiveAccount.fee}} </b-card-text>
                            <b-row no-gutters>
                                <b-col md="2" class="mb-3">
                                    <b-card-text>Objetivo cuenta: 
                                    </b-card-text>
                                </b-col>
                                <b-col class="md-2">
                                    <b-form-input type=text v-model="objetiveAccount.objetive"></b-form-input>
                                </b-col>
                            </b-row>
                            <b-card-text class=mt-2>Balance: {{objetiveAccount.balance}} </b-card-text>
                            <b-card-text class=mt-1>Interes Acumulado: {{objetiveAccount.acumInterest}} </b-card-text>
                            <b-card-text class=mt-1>Dia de Deposito: {{objetiveAccount.daysOfDeposit}} </b-card-text>
                            <b-button-group class="ml-5 mb-2">
                                <b-button variant="info" @click="saveChanges(objetiveAccount)">Guardar cambios</b-button>
                                <b-button @click="deleteObjetive(objetiveAccount)" variant="warning">Desactivar Cuenta Objetivo</b-button>
                            </b-button-group>
                        </b-card>
                    </div>
                </ul>
                <b-button-group class="ml-5 mb-2">
                    <b-button variant="success" @click="createObjetiveAccount">Agregar Cuenta</b-button>
                </b-button-group>
            </div>
            <div class="mt-2 d-flex justify-content-center">
                <b-alert v-if="hasError" variant="danger" show fade>
                    {{error}}
                </b-alert>
            </div>
            <AddObjetiveAccount class=popup v-if="showCreateForm" @closeForm="closeCreateForm()" :accountId="this.id"/>
        </b-container>
    </b-overlay>
</template>

<script lang="ts">
import { mapActions, mapGetters, mapState } from 'vuex';
import { Component, Vue } from 'vue-property-decorator';
import ObjetiveAccount from '../models/ObjetiveAccount';
import AddObjetiveAccount from '../components/AddObjetiveAccount.vue';

@Component({
    data(){
        return {
            id: this.$route.params.id,
            showCreateForm: false
        }
    },
    components:{
        AddObjetiveAccount,
    },
    created(){
        this.getObjetiveAccount(this.id);

    },
    beforeRouteUpdate (to, from, next) {
        this.id = to.params.id;
        this.getObjetiveAccount(this.id);
        next();
    },
    computed:{
        ...mapState(['objetiveAccounts','loaded','error','user']),
        ...mapGetters(['hasError']),
    },
    methods: {
        ...mapActions(['getObjetiveAccount', 'deleteObjetiveAccount', 'updateObjetiveAccount']),

        //Abrir form de creacion
        createObjetiveAccount(){
            this.showCreateForm =true;
        },
        //Cerrar form de creacion
        closeCreateForm(){
            this.showCreateForm =false;
        },
        //Borrado logico de cuenta seleccionada
        deleteObjetive(objetiveAccount: ObjetiveAccount){
            this.deleteObjetiveAccount(objetiveAccount);
        },

        //Update de descripcion
        saveChanges(objetiveAccount: ObjetiveAccount){
            this.updateObjetiveAccount(objetiveAccount);
        }

    },
})
export default class ObjetiveAccounts extends Vue {}
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
  max-height: 390px;
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