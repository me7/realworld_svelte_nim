<script>
  export let errors
</script>

{#if errors}
  {#each Object.keys(errors) as k}
    <li>{k} {errors[k]}</li>
  {/each}
{/if}