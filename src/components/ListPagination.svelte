<script>
  export let page;
  export let articlesCount;

  let range;

  $: {
    range = [];
    for (let i = 1; i < Math.ceil(articlesCount / 10)+1; i++) {
      range.push(i);
    }
  }
</script>

<style>
  .active {
    background-color:#8c8;
    color: #fff;
  }
</style>

<nav>
  <ul class="flex flex-wrap">
    {#each range as i}
      <li class="border rounded p-2" class:active={page == i}>
        <a href="#/{i}">{i}</a>
      </li>
    {/each}
  </ul>
</nav>
