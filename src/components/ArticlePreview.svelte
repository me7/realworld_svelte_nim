<script>
  import Icon from 'svelte-awesome'
  import {heart} from 'svelte-awesome/icons'
  export let article;

  $: console.log(article);
</script>

<div class="py-2 border-gray-400 border-solid border-b-2 py-3">
  <div class="flex items-center justify-between">
    <div class="flex">
      <a href="#/profile/@{article.author.username}">
        <img class="w-8 h-8 rounded-full" src={article.author.image} alt="" />
      </a>
      <div class="px-1 py-0 leading-tight">
        <a
          href="#/profile/@{article.author.username}"
          class="text-md text-green-800">
          {article.author.username}
        </a>
        <div class="text-xs text-gray-600">
          {new Date(article.createdAt).toDateString()}
        </div>
      </div>
    </div>
    <div>
      <button class="rounded-lg text-xs text-green-500">
        <Icon data={heart} scale=0.8/>
        {article.favoritesCount}
      </button>
    </div>
  </div>
  <h2 class="text-lg font-bold">{article.title}</h2>
  <p>{article.body}</p>
  <a href="#/article/{article.slug}" class="text-sm">Read more..</a>
</div>
