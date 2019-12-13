<main>
	<Header />
	<Router {routes} />
	<Footer />
</main>

<script>
  import Router from 'svelte-spa-router'

  import Home from './pages/Home.svelte'	
  import Setting from './pages/Setting.svelte'	
  import Header from './components/Header.svelte'	
  import Footer from './components/Footer.svelte'	

  const routes = {
    '/' : Home,
    '/setting' : Setting
  }
</script>

