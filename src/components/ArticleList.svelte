<div class="border-solid border-gray-600">
  {#if articles}
    {#each articles as article, i}
      <ArticlePreview {article} />
    {/each}
  {:else}
    Loading...
  {/if}

</div>


<script>
  import * as api from 'api.js'
  import ArticlePreview from './ArticlePreview.svelte'

  let articles
  let articlesCount

  async function getData(){
    articles = null
    ({articles, articlesCount} = await api.get('/articles'))
  }

  $: getData()
</script>