<template>
  <div>
    <h1>Counter: {{ count }}</h1>
    <button @click="increment">Increment</button>
    <button @click="decrement">Decrement</button>
    <button @click="reset">Reset</button>
  </div>
</template>
<script setup lang="ts">

import { ref } from 'vue'

// Define a reactive state for the count

const count = ref(0)

// Create functions to update the count

const increment = () => {
  count.value++
}

const decrement = () => {

  // Prevent negative count
  if (count.value > 0) count.value--  
}

const reset = () => {
  count.value = 0
}

</script>

<style scoped>


button {
  margin: 0 5px;
  padding: 8px 12px;
  font-size: 16px;
}
</style>
