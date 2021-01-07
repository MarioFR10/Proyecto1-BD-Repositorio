<template>
    <div>
        <b-card header-tag="header" header-variant="card_header" footer-tag="footer">
            <template v-slot:header>
                <h3 class="mb-0">Agregar Beneficiario</h3>
                <b-img class="icon" :src="require('../assets/close-icon-white.png')" fluid @click="closeForm()"></b-img>
            </template>
            <b-card-body>
                <b-form @submit.prevent="submit">
                    <b-form-group>
                        <b-form-input type="text" placeholder="No. Identificacion" v-model="$v.benefactor.valueDocIden.$model" :class="{'is-invalid':$v.benefactor.valueDocIden.$error}"></b-form-input>
                        <b-form-select class="mt-2" v-model="relationshipSelected" :options="relationships"></b-form-select>
                        <b-row class=mt-2 no-gutters>
                            <b-col md="5" class="mb-1">
                                <b-card-text class=mt-1>Porcentaje beneficio </b-card-text>
                            </b-col>
                            <b-col md="3">
                                <b-form-input type=number v-model="benefactor.percentage"></b-form-input>
                            </b-col>
                        </b-row>
                    </b-form-group>
                    <b-form-group class="mb-0 mt-2">
                        <b-button type="submit" block :disabled="$v.$invalid||!loaded||relationshipSelected===null">Crear beneficiario</b-button>
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
import Benefactor from '../models/Benefactor';

@Component({
  data(){
      return {
          relationshipSelected: null,
          benefactor: new Benefactor(undefined,'nameDocId',0,'','',0)
      }
  },
  created(){
      this.getRelationships();
  },
  props: {
      accountId: Number,
  },
  computed: {
      ...mapGetters(['hasError']),
      ...mapState(['error','loaded','user','relationships']),
  },
  methods: {
      ...mapActions(['createBenefactor','getRelationships']),
      submit(){
        this.$v.$touch()
        if (!this.$v.$invalid) {
            this.benefactor.savingsAccountId = this.accountId;
            this.benefactor.nameDocId = this.relationshipSelected;
            this.createBenefactor(this.benefactor);
            this.$emit('closeForm');
        }
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