<p>ArticleList</p>
<div class="border-solid border-gray-600">
  {#if articles}
    <pre>{articlesCount}</pre>
    <pre>{articles}</pre>
  {:else}
    Loading...
  {/if}

</div>


<script>
  import * as api from 'api.js'

  let articles
  let articlesCount

  async function getData(){
    articles = null
    ({articles, articlesCount} = await api.get('/articles'))
  }

  $: getData()
</script>