<template>
    <b-overlay :show="!loaded" rounded="sm" class=alignment>
        <b-container>
            <div class="accounts pb-5">
                <h1 class="d-flex justify-content-center mb-0 pt-4">Consultas administrador</h1>
                    <div class=pb-2>
                        <h1 class="mb-1 pt-4 ml-4">Consulta tipo a)</h1>
                        <b-button-group class="ml-5 mb-2 pt-2">
                                <b-button variant="success" @click="adminA()">Consultar</b-button>
                        </b-button-group>
                    </div>
                    <div class=pb-2>
                        <h1 class="mb-1 pt-4 ml-4">Consulta tipo b)</h1>
                        <b-row class=mt-2 no-gutters>
                            <b-col class=ml-5>
                                 <b-form-input v-model="dias" type=date></b-form-input>
                            </b-col>
                            <b-col>
                            <b-button-group class="ml-2">
                                <b-button variant="success" @click="adminB()">Consultar</b-button>
                            </b-button-group>
                            </b-col>
                        </b-row>

                    </div>
                    <div class=pb-2>
                        <h1 class="mb-1 pt-4 ml-4">Consulta tipo c)</h1>
                        <b-button-group class="ml-5 mb-2 pt-2">
                                <b-button variant="success" @click="adminC()">Consultar</b-button>
                        </b-button-group>
                    </div>
                    <div class=pb-2>
                        <h1 class="d-flex justify-content-center mb-0 pt-4">Resultados Consultas</h1>
                        <ul v-for="consul in consultas" :key="consul.id">
                            <div>
                                <b-card class="account-card d-flex justify-content-center" v-if="tipoConsulta == 1">
                                    <b-card-text>Consulta tipo A</b-card-text>
                                    <b-card-text>Id cuenta objetivo: {{consul.objetiveAccountId}}</b-card-text>
                                    <b-card-text class=mt-1>Codigo cuenta objetivo: {{consul.oANumber}} </b-card-text>
                                    <b-card-text class=mt-1>Descripcion: {{consul.description}} </b-card-text>
                                    <b-card-text class=mt-1>Cantidad depositos realizados: {{consul.succesfullDeposits}} </b-card-text>
                                    <b-card-text class=mt-1>Cantidad depositos teoricos: {{consul.deposits}} </b-card-text>
                                    <b-card-text class=mt-1>Balance real: {{consul.succesfullBalance}} </b-card-text>
                                    <b-card-text class=mt-1>Balance teorico: {{consul.balance}} </b-card-text>
                                </b-card> 
                            </div>
                        </ul>

                        <ul v-for="consul in consultas" :key="consul.id">
                            <div>
                                <b-card class="account-card d-flex justify-content-center" v-if="tipoConsulta == 2">
                                    <b-card-text>Consulta tipo B</b-card-text>
                                    <b-card-text>Codigo cuenta: {{consul.codigoCuenta}}</b-card-text>
                                    <b-card-text class=mt-1>Promedio retiros: {{consul.promedioRetiros}} </b-card-text>
                                    <b-card-text class=mt-1>Mes mayor cantidad retiros: {{consul.mesMayor}} </b-card-text>
                                    <b-card-text class=mt-1>Año mayor cantidad retiros: {{consul.anioMayor}} </b-card-text>
                                </b-card> 
                            </div>
                        </ul>

                        <ul v-for="consul in consultas" :key="consul.id">
                            <div>
                                <b-card class="account-card d-flex justify-content-center" v-if="tipoConsulta == 3">
                                    <b-card-text>Consulta tipo C</b-card-text>
                                    <b-card-text>Nombre beneficiario: {{consul.nombre}}</b-card-text>
                                    <b-card-text class=mt-1>Balance: {{consul.balan}} </b-card-text>
                                    <b-card-text class=mt-1>Cuenta mayor beneficio: {{consul.mayorBen}} </b-card-text>
                                    <b-card-text class=mt-1>Cantidad cuentas asociadas: {{consul.cantCuentas}} </b-card-text>
                                </b-card> 
                            </div>
                        </ul>
                    </div>
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
import Consulta from '../models/Consulta';

@Component({
    data(){
        return {
            id: this.$route.params.id,
            dias: '',
            consulta: new Consulta(0,0,0,'',0,0,0,0,'',0,'',0,'',0,0,0),
            tipoConsulta: 0
        }
    },
    /*created(){
        
    },*/
    beforeRouteUpdate (to, from, next) {
        next();
    },
    computed:{
        ...mapState(['consultas','loaded','error','user']),
        ...mapGetters(['hasError']),
    },
    methods: {
        ...mapActions(['consultaA', 'consultaC', 'consultaB']),

        adminA(){
            console.log("Consulta A");
            this.tipoConsulta = 1;
            this.consultaA(this.consulta);

        },

        adminB(){
            console.log("Consulta B");
            this.tipoConsulta = 2;
            this.consultaB(this.dias);
        },

        adminC(){
            console.log("Consulta C");
            this.tipoConsulta = 3;
            this.consultaC(this.consulta);
        }

        
    },

    
})
export default class Admin extends Vue {}
</script>



<style scoped>
.accounts{
  background-color: rgba(104, 101, 101, 0.75) !important;
  margin-top: 30px;
}
.accounts>h1{
  font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
  color: white;
}
.accounts>title{
  font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
  color: white;
}
.account-card{
  margin:auto;
  width: 70%;
  max-height: 350px;
}
.account-card:hover {
  box-shadow: 0 8px 16px 0 rgba(92, 94, 97, 0.904);
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