<template>
  <div id="test">
    <p>{{ mensage }}</p>
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
</style>
