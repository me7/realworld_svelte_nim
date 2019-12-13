<div class="text-center py-2 fixed bottom-0 w-screen">
  <Icon data={github} scale='2' class="text-white"></Icon>
  <a href="https://github.com/me7/realworld_svelte_nim" target="blank">Fork on Github</a>
</div>

<script>
  import Icon from 'svelte-awesome'
  import {github} from 'svelte-awesome/icons'
</script>

<style>
div {
  background: linear-gradient(#556, #333);
  /* position: fixed;
  z-index: 999;
  text-align: center;
  padding: 1rem 2rem;
  width: 100vw; */
}

a{
  color: white;
}
</style>