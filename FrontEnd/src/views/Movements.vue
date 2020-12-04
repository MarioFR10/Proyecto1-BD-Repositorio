<template>
    <b-overlay :show="!loaded" rounded="sm" class=alignment>
        <b-container>
            <div class="accounts pb-5">
                <h1 class="d-flex justify-content-center mb-0 pt-4">Movimientos</h1>
                <b-col  class="mb-0 mt-2 pb-2">
                    <b-form-input v-model="descripcion" type=text placeholder="Ingrese una descripcion"></b-form-input>
                </b-col>
                <b-button-group class=ml-3>
                    <b-button variant="success" @click="filtrado" >Buscar</b-button>
                </b-button-group>
                <ul v-for="movement in movements" :key="movement.id">
                    <div class=pb-2>
                        <b-card class="account-card d-flex justify-content-center" v-if="verMovimiento">
                            <b-card-text>Id Movimiento: {{movement.id}}</b-card-text>
                            <b-card-text class=mt-1>Tipo Movimiento: {{movement.typeMovId}} </b-card-text>
                            <b-card-text class=mt-1>Monto: {{movement.amount}} </b-card-text>
                            <b-card-text class=mt-1>Nuevo Balance: {{movement.newBalance}} </b-card-text>
                            <b-card-text class=mt-1>Descripcion: {{movement.description}} </b-card-text>
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
import Movement from '../models/Movements';

@Component({
    data(){
        return {
            id: this.$route.params.id,
            verMovimiento: true,
            descripcion: ''
        }
    },
    created(){
        this.getMovements(this.id);

    },
    beforeRouteUpdate (to, from, next) {
        this.id = to.params.id;
        this.getMovements(this.id);
        next();
    },
    computed:{
        ...mapState(['movements','loaded','error','user']),
        ...mapGetters(['hasError']),
    },
    methods: {
        ...mapActions(['getMovements', 'getMovementsWord']),
        //preguntar a edgar
        filtrado(){
            if(this.descripcion != ''){
                this.movements.forEach((element: { description: string }) => {
                    console.log(element.description);
                    
                    if (this.descripcion == element.description){
                        this.verMovimiento = true;
                    }
                    else{
                        this.verMovimiento = false;
                    }
                });
            }
            else{
                this.getMovements(this.id);
            }
        }
    },
})
export default class Movements extends Vue {}
</script>



<style scoped>
.accounts{
  background-color: rgba(0,0,0,0.75) !important;
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