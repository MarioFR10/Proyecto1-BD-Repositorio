<template>
    <div>
        <b-card header-tag="header" header-variant="card_header" footer-tag="footer">
            <template v-slot:header>
                <h3 class="mb-0">Agregar Cuenta Objetivo</h3>
                <b-img class="icon" :src="require('../assets/close-icon-white.png')" fluid @click="closeForm()"></b-img>
            </template>
            <b-card-body>
                <b-form @submit.prevent="submit">
                    <b-form-group>
                        <b-row class=mt-2 no-gutters>
                            <b-col md="4" class="mb-1">
                                    <b-card-text class=mt-1>Id cuenta de ahorros: {{accountId}} </b-card-text>
                            </b-col>
                        </b-row>
                        <b-row class=mt-2 no-gutters>
                            <b-col md="2" class="mb-1">
                                    <b-card-text class=mt-1 v-model="fechaInicio">Fecha Inicio: </b-card-text>
                            </b-col>
                            <b-col md="4">
                                <b-form-input type="date"></b-form-input>
                            </b-col>
                        </b-row>
                        <b-row class=mt-2 no-gutters>
                            <b-col md="2" class="mb-1">
                                    <b-card-text class=mt-1 v-model="fechaFin">Fecha Fin: </b-card-text>
                            </b-col>
                            <b-col md="4">
                                <b-form-input type="date"></b-form-input>
                            </b-col>
                        </b-row>
                        <b-row class=mt-2 no-gutters>
                            <b-col md="2" class="mb-1">
                                    <b-card-text class=mt-1>Objetivo: </b-card-text>
                            </b-col>
                            <b-col md="5">
                                <b-form-input class="mt-0" v-model="objetivo" placeholder="Ingrese el objetivo de la cuenta"></b-form-input>
                            </b-col>
                        </b-row>
                        <b-row class=mt-2 no-gutters>
                            <b-col md="2" class="mb-1">
                                <b-card-text class=mt-1>Cuota: </b-card-text>
                            </b-col>
                            <b-col md="2">
                                <b-form-input type=number v-model="cuota"></b-form-input>
                            </b-col>
                        </b-row>
                        <b-row class=mt-2 no-gutters>
                            <b-col md="2" class="mb-1">
                                    <b-card-text class=mt-1>Dias de deposito: </b-card-text>
                            </b-col>
                            <b-col md="5">
                                <b-form-input class="mt-2" type=number v-model="diasDeposito"></b-form-input>
                            </b-col>
                        </b-row>
                    </b-form-group>
                    <b-form-group class="mb-0 mt-2">
                        <b-button type="submit" block :disabled="!loaded">Crear Cuenta Objetivo</b-button>
                    </b-form-group>
                </b-form>
            </b-card-body>
            </b-card>
        <div class="mt-2 d-flex justify-content-center">
            <b-alert v-if="hasError" variant="danger" show fade>
                {{error}}
            </b-alert>
        </div>
    </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { mapActions, mapGetters, mapState} from 'vuex'
import { required} from 'vuelidate/lib/validators'
import ObjetiveAccount from '../models/ObjetiveAccount';

@Component({
  data(){
      return {
          objetivo: '',
          diasDeposito: '',
          fechaInicio: new Date(),
          fechaFin: new Date(),
          cuota: 0,
          cuentaObjetivo: new ObjetiveAccount(undefined, 0 , new Date(), new Date(), 0, '', 0, 0, 0, false,0)
      }
  },
  //created(){
    //  this.getObjetiveAccount();
  //},
  props: {
      accountId: Number,
  },
  computed: {
      ...mapGetters(['hasError']),
      ...mapState(['error','loaded','user','relationships']),
  },
  methods: {
      ...mapActions(['createObjetiveAccount','getObjetiveAccount']),

      submit(){
        this.cuentaObjetivo.SavingsAccountId = this.accountId;
        this.cuentaObjetivo.startDate = this.fechaInicio;
        this.cuentaObjetivo.endDate = this.fechaFin;
        this.cuentaObjetivo.fee = this.cuota;
        this.cuentaObjetivo.objetive = this.objetivo;
        this.cuentaObjetivo.daysOfDeposit = this.diasDeposito;
        this.cuentaObjetivo.user = this.user;
        
        this.createObjetiveAccount(this.cuentaObjetivo);

        this.$emit('closeForm');
      },
      closeForm(){
        this.$emit('closeForm');
      },
  },
  validations: {
    benefactor: {
        valueDocIden: {
            required
        },
        percentage: {
            required
        },
    }
  }
})
export default class AddBenefactor extends Vue{}
</script>

<style scoped>
.card{
    height: 100%;
    margin-top: auto;
    margin-bottom: auto;
    width: 100%;
    background-color: rgba(0,0,0,0.5) !important;
}
.card-header h3{
    color: white;
}
.card-text{
    color: white;
} 
.btn{
    color: black;
    background-color: #FFC312;
}
.btn:hover{
    color: black;
    background-color: white;
}
.links{
    color: white;
}
.alert {
   width:400px;    
}
.alignment{
    height: 90%;
    display: flex;
    align-items: center;
    justify-content: center;
}
.icon{
    height: 15px;
    width: 15px;
    position: absolute;
    right: 15px;
    top: 15px;
}
.bg{
    height: 100%;
    background-color: rgba(0,0,0,0.5) !important;
}
</style>
