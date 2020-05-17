<template>
  <div>
    <LikeHeader>
      <h3>初めまして</h3>
    </LikeHeader>
    <LikeNumber :total-number="number" @my-click="incrementNumber"></LikeNumber>
    <button @click="currentComponent = 'Home'">Home</button>
    <button @click="currentComponent = 'About'">About</button>
    <keep-alive>
      <component :is="currentComponent"></component>
    </keep-alive>
    <div>
      <h2>イベントのフォーム</h2>
      <label for="title">タイトル</label>
      <input id="title" type="text" v-model.lazy="eventData.title">
      <pre>{{ eventData.title }}</pre>
      <label for="maxNumber">最大人数</label>
      <input id="maxNumber" type="number" v-model.number="eventData.maxNumber">
      <p>{{ typeof eventData.maxNumber }}</p>
      <label for="host">主催者</label>
      <input id="host" type="text" v-model.trim="eventData.host">
      <pre>{{ eventData.host }}</pre>
      <label for="detail">イベントの内容</label>
      <textarea id="detail" cols="30" rows="10" v-model="eventData.detail"></textarea>
      <pre>{{ eventData.detail }}</pre>
      <label for="isPrivate">非公開</label>
      <input id="isPrivate" type="checkbox" v-model="eventData.isPrivate">
      <pre>{{ eventData.isPrivate }}</pre>
      <p>参加条件</p>
      <label for="10">10代</label>
      <input id="10" type="checkbox" value="10代" v-model="eventData.target">
      <label for="20">20代</label>
      <input id="20" type="checkbox" value="20代" v-model="eventData.target">
      <label for="30">30代</label>
      <input id="30" type="checkbox" value="30代" v-model="eventData.target">
      <p>{{ eventData.target }}</p>
    </div>
  </div>
</template>

<script>
import LikeHeader from "./components/LikeHeader.vue";
import About from "./components/About.vue";
import Home from "./components/Home.vue";

export default {
  data: function() {
    return {
      number: 14,
      currentComponent: "Home",
      eventData: {
        title: "タイトル",
        maxNumber: 0,
        host: "",
        detail: "",
        isPrivate: false,
        target: []
      }
    }
  },
  components: {
    LikeHeader,
    About,
    Home
  },
  methods: {
    incrementNumber(value) {
      this.number = value;
    }
  }
}
</script>
