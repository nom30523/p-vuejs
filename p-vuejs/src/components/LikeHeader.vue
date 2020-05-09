<template>
  <div>
    <slot></slot>
  </div>
</template>

<script>
export default {
  data: function() {
    return {
      user: {
        firstName: 'Jack',
        lastName: 'Donald'
      }
    }
  },
};
</script>