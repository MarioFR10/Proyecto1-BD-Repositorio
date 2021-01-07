<template>
    <b-overlay :show="!loaded" rounded="sm" class=alignment>
        <b-container>
            <div class="accounts pb-5">
                <h1 class="d-flex justify-content-center mb-0 pt-4">Consultas administrador</h1>
                    <div class=pb-2>
                        <h1 class="mb-1 pt-4 ml-4">Consulta tipo a)</h1>
                        <b-button-group class="ml-5 mb-2 pt-2">
                                <b-button variant="success" >Consultar</b-button>
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
                                <b-button variant="success" >Consultar</b-button>
                            </b-button-group>
                            </b-col>
                        </b-row>

                    </div>
                    <div class=pb-2>
                        <h1 class="mb-1 pt-4 ml-4">Consulta tipo c)</h1>
                        <b-button-group class="ml-5 mb-2 pt-2">
                                <b-button variant="success" >Consultar</b-button>
                        </b-button-group>
                    </div>
                    <div class=pb-2>
                        <h1 class="d-flex justify-content-center mb-0 pt-4">Resultados Consultas</h1>
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

@Component({
    data(){
        return {
            id: this.$route.params.id,
            dias: 0
        }
    },
    /*created(){
        
    },*/
    beforeRouteUpdate (to, from, next) {
        next();
    },
    computed:{
        ...mapState(['movements','loaded','error','user']),
        ...mapGetters(['hasError']),
    },
    methods: {
        ...mapActions(['getMovements', 'getMovementsWord']),
        
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
  max-height: 310px;
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