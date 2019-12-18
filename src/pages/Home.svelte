<script>
  import * as api from "api.js";
  import Hero from '../components/Hero.svelte'

  import ArticleList from "../components/ArticleList.svelte";

  let page = 30;
</script>

<Hero />
<ArticleList {page} />
