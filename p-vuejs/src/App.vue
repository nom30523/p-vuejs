<template>
  <div style="width: 700px; margin: auto; padding-top: 50px;">
    <Home></Home>
    <router-view name="header"></router-view>
    <transition name="fade" mode="out-in" @before-enter="beforeEnter">
      <router-view></router-view>
    </transition>
  </div>
</template>

<script>
import Home from "./views/Home.vue";
export default {
  components: {
    Home
  },
  methods: {
    beforeEnter() {
      this.$emit('triggerScroll');
    }
  }
}
</script>

<style scoped>
.link {
  margin-right: 10px;
}
.link--active {
  font-size: 1.5em;
}

.fade-enter,
.fade-leave-to {
  opacity: 0;
}
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.5s;
}
</style>
