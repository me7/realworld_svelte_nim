<div class="py-2">
  <div class="flex items-end">
    <a href="#/profile/@{article.author.username}">
      <img class="w-8 h-8 rounded-full" src="{article.author.image}" alt="">
    </a>
    <div class="px-1 py-0 leading-none">
      <a href="#/profile/@{article.author.username}" class="text-lg text-green-800">{article.author.username}</a>
      <div class="text-xs text-gray-400">{article.createdAt}</div>
    </div>
  </div>
  <h2 class="text-xl">{article.title}</h2>
  <p>{article.body}</p>
</div>


<script>
  export let article

  $: console.log(article)
</script>