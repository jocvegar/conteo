<template>
  <div class="mt-5 px-5">
    <b-form @submit="onSubmit" @reset="onReset" v-if="show">
      <b-form-group id="input-group-1" label="Nombre" label-for="input-1">
        <b-form-input
          id="input-1"
          v-model="form.name"
          type="text"
          required
          placeholder="Nombre"
        ></b-form-input>
      </b-form-group>

      <b-form-group id="input-group-2" label="Identidad" label-for="input-2">
        <b-form-input
          id="input-2"
          v-model="form.identity"
          required
          type="number"
          placeholder="Identidad"
        ></b-form-input>
      </b-form-group>

      <b-row>
        <b-col>
          <b-button block type="reset" variant="secondary">Cancelar</b-button>
        </b-col>
        <b-col>
          <b-button block type="submit" variant="primary">Enviar</b-button>
        </b-col>
      </b-row>
    </b-form>

    <b-card class="mt-3" header="Form Data Result">
      <pre class="m-0">{{ form }}</pre>
    </b-card>
  </div>
</template>

<script>
  export default {
    props: ['post_route', 'voting_center'],
    data() {
      return {
        form: {
          name: '',
          identity: '',
          voting_center_id: this.voting_center
        },
        show: true
      }
    },
    methods: {
      onSubmit(evt) {
        evt.preventDefault()

        const requestOptions = {
          method: 'POST',
          headers: {
            "Content-Type": "application/json",
                  "Accept": "application/json"
          },
          body: JSON.stringify(this.form)
        };
        fetch(this.post_route, requestOptions)
        .then(response => {
          if(response.ok) {
            this.resetForm()
          } else {
            response.text().then(text => {
              console.log("text " + JSON.parse(text).message)
            })
          }
        })
        .catch(error => {
          console.log('There was an error!', error);
        })
      },
      onReset(evt) {
        evt.preventDefault()
        this.resetForm()
      },
      resetForm() {
        this.form.name = ''
        this.form.identity = ''
        // Trick to reset/clear native browser form validation state
        this.show = false
        this.$nextTick(() => {
          this.show = true
        })
      }
    }
  }
</script>
