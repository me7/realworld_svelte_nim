<script>
  import Router from "svelte-spa-router";
  import Home from "./pages/Home.svelte";
  import Setting from "./pages/Setting.svelte";
  import Login from "./pages/Login.svelte";
  import Header from "./components/Header.svelte";
  import Footer from "./components/Footer.svelte";

  const routes = {
    "/": Home,
    "/setting": Setting,
    "/login": Login
  };
</script>

<style>

</style>

<main class="flex flex-col min-h-screen">
  <div class="flex-1">
    <Header />
    <Router {routes} />
  </div>
  <div class="sticky bottom-0">
    <Footer />
  </div>
</main>
