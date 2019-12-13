{#each posts as p}
<h1>{p}</h1>
{/each}
<script>
  let posts = []
  for(let i=0;i<100;i++){
      posts.push("Post " + i)
  }
</script>