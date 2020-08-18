<template>
  <div class="container "id="test">
    <p>{{ mensage }}</p>
    <div>
      <div class="mt-3">

      	<div class="h2 mb-0">
      	    <b-icon-arrow-up></b-icon-arrow-up>
      	    <b-icon-exclamation-triangle-fill></b-icon-exclamation-triangle-fill>
      	  </div>

        <b-button-group>
          <b-button variant="success">Success</b-button>
          <b-button variant="info">Info</b-button>
          <b-button variant="warning">Warning</b-button>
        </b-button-group>
      </div>
    </div>
  </div>
</template>

<script>
export default {
 props: ["mensage"]
}
</script>

<style scoped>
p {
  font-size: 6em;
  text-align: center;
}
#test {
	color:blue;
}
</style>
