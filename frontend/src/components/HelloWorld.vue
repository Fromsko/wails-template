<script setup lang="ts">
import { ref } from 'vue'

defineProps<{ msg: string }>()

const count = ref(0)
</script>

<template>
  <div class="h-full flex flex-col">
    <!-- 顶部区域，固定高度h-16 -->
    <div class="flex items-center justify-center h-16">
      <img src="../assets/imgs/vite.svg" class="logo mr-2" alt="Vite logo" />
      <img src="../assets/imgs/vue.svg" class="logo vue" alt="Vue logo" />
    </div>
    <!-- 中部区域，占据剩余高度 -->
    <div class="flex-1 bg-gray-200 m-4 rounded-2xl">
      <div class="container mx-auto py-8">
        <div class="flex mx-auto justify-center items-center">
          <button class="btn-custom" type="button" @click="count++">count is {{ count }}</button>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}
</style>
