<template>
  <div>
    <h1 class="d-flex justify-content-center mb-5 pt-4">Bienvenido al sistema bancario usuario #{{user}}</h1>
    <Accounts/>
    <div class="mt-2 d-flex justify-content-center">
      <b-alert v-if="hasError" variant="danger" show fade>
        {{error}}
      </b-alert>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import Accounts from '@/components/Accounts.vue'
import { mapGetters, mapState } from 'vuex';

@Component({
  components: {
    Accounts,
  },
  computed: {
    ...mapState(['loaded','user']),
    ...mapGetters(['hasError'])
  }
})
export default class Home extends Vue {}
</script>
