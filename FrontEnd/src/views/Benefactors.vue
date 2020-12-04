<template>
    <b-overlay :show="!loaded" rounded="sm" class=alignment>
        <b-container>
            <div class="accounts pb-5">
                <h1 class="d-flex justify-content-center mb-5 pt-4">Beneficiarios</h1>
                <ul v-for="benefactor in benefactors" :key="benefactor.id">
                    <div class=pb-2>
                        <b-card class="account-card d-flex justify-content-center">
                            <b-card-title>{{benefactor.name}}</b-card-title>
                            <b-card-sub-title class=mb-2>No. Identificacion: {{benefactor.valueDocIden}}</b-card-sub-title>
                            <b-card-text class=mt-4>Parentezco: {{benefactor.nameDocId}}</b-card-text>
                            <b-row no-gutters>
                                <b-col md="4" class="mb-1">
                                    <b-card-text>Porcentaje beneficio: 
                                    </b-card-text>
                                </b-col>
                                <b-col md="3">
                                    <b-form-input @input="sumPercentage()" type=number v-model="benefactor.percentage" :state="percentage=='100'"></b-form-input>
                                </b-col>
                            </b-row>
                            <b-button @click="deleteBenefactor(benefactor)" variant="warning">Eliminar beneficiario</b-button>
                        </b-card> 
                    </div>
                </ul>
                <b-button-group class=ml-5>
                    <b-button variant="success" @click="createBenefactor" :disabled="benefactors.length >=3">Crear beneficiario</b-button>
                    <b-button variant="info" @click="saveChanges" :disabled="percentage <= 100">Guardar cambios</b-button>
                </b-button-group>
            </div>
            <div class="mt-2 d-flex justify-content-center">
                <b-alert v-if="hasError || !(percentage==100)" variant="danger" show fade>
                    {{error}}
                    {{percentageError}}
                </b-alert>
                <b-alert v-else-if="hasSuccess" variant="success" show fade>
                    {{success}}
                </b-alert>
            </div>
            <AddBenefactor class=popup v-if="showCreateForm" @closeForm="closeCreateForm()" :accountId="this.id"/>
        </b-container>
    </b-overlay>
</template>

<script lang="ts">
import { mapActions, mapGetters, mapState } from 'vuex';
import { Component, Vue } from 'vue-property-decorator';
import Benefactor from '../models/Benefactor';
import AddBenefactor from '../components/AddBenefactor.vue'

@Component({
    data(){
        return {
            id: this.$route.params.id,
            percentage: 0,
            percentageError: 'Los porcentajes no suman 100',
            showCreateForm: false,
        }
    },
    components:{
        AddBenefactor,
    },
    created(){
        this.getAccountBenefactors(this.id);
    },
    beforeRouteUpdate (to, from, next) {
        this.id = to.params.id;
        this.getAccountBenefactors(this.id);
        next();
    },
    computed:{
        ...mapState(['benefactors','loaded','error','user','success']),
        ...mapGetters(['hasError']),
    },
    methods: {
        deleteBenefactor(benefactor: Benefactor){
            this.deleteBenefactor(benefactor);
        },
        saveChanges(){
            this.updatePercentages(this.benefactors);
        },
        ...mapActions(['getAccountBenefactors','deleteBenefactor','updatePercentages']),
        createBenefactor(){
            this.showCreateForm = true;
        },
        closeCreateForm(){
            this.showCreateForm = false;
        },
        sumPercentage(){
            let sum = 0;
            this.benefactors.forEach((element: { percentage: string }) => {
                sum += parseInt(element.percentage)
            });
            this.percentage = sum;
            if(this.percentage>100){
                this.percentageError = "Los porcentajes suman mas de 100";
            }
            else if (this.percentage<100){
                this.percentageError = "Los porcentajes suman menos de 100";
            }
        }
    },
})
export default class Benefactors extends Vue {}
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
  max-height: 310px;
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
.popup {
  position: fixed;
  padding: 10px;
  left: 50%;
  margin-left: -250px;
  top: 50%;
  margin-top: -200px;
  background: white;
  z-index: 20;
  border-radius: 10px     10px      10px           10px;
}

.popup:after {
  position: fixed;
  content: "";
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  background: rgba(0,0,0,0.5);
  z-index: -2;
  border-radius: 10px     10px      10px           10px;
}

.popup:before {
  position: absolute;
  content: "";
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  background: #FFF;
  z-index: -1;
  border-radius: 10px     10px      10px           10px;
}
</style>