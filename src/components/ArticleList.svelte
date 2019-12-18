<script>
  import * as api from "api.js";
  import ArticlePreview from "./ArticlePreview.svelte";
  import ListPagination from "./ListPagination.svelte";

  let query
  let articles;
  let articlesCount;
  export let page

  
  $: {
    query = `/articles?limit=10&offset=${(page-1)*10}`
  }

  $: query && getData();

  async function getData() {
      articles = null(({ articles, articlesCount } = await api.get(query)));
  }

</script>

<div>
  {#if articles}
    {#if articles.length === 0}
      No articles are here... yet
    {:else}
      {#each articles as article}
        <ArticlePreview {article} />
      {/each}

      <ListPagination {articlesCount} {page}/>
    {/if}
  {:else}
    Loading...
  {/if}

</div>
