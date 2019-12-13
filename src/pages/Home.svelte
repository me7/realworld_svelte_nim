<button on:click={getArticles}>Get Data</button>
{#each posts as p}
<h1>{p}</h1>
{/each}


<script>
  import * as api from 'api.js'
  let posts = []

  async function getArticles(){
    let data = await api.get('/articles')
    console.log(data)
    for(let i=0;i<20;i++){
      posts = [...posts, data.articles[i].title]
    }
  }
</script>