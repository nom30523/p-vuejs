<template>
  <div>
    <slot name="title"></slot>
    <slot></slot>
    <hr>
    <p>いいね数</p>
    <slot name="number"></slot>
  </div>
</template>

<script>
export default {
  props: ["headerText"]
};
</script>