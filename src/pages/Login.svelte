<script>
  import ListErrors from "../components/ListErrors.svelte";
  import { post } from "api";
  let email;
  let password;
  let errors; // = {e1:"error1", e2:"error2"}

  async function submit(event) {
    const resp = await post(`users/login`, { email, password });

    errors = resp.errors
    console.log(resp);
  }
</script>

<svelte:head>
  <title>Sign in - Conduit</title>
</svelte:head>

<div class="flex flex-col items-center">
  <h2 class="text-4xl font-semibold">Sign in</h2>
  <a class="text-green-500" href="#/register">Need an account?</a>
</div>

<ListErrors {errors} />

<form
  class="flex flex-col mt-3 px-4 md:flex-row md:justify-around"
  on:submit|preventDefault={submit}>
  <input class="p-3" type="text" placeholder="Email" bind:value={email} />
  <input
    class="p-3 md:ml-3"
    type="text"
    placeholder="Password"
    bind:value={password} />
  <button
    class="ml-auto px-6 py-3 rounded md:ml-3"
    type="submit"
    disabled={!email || !password}>
    Sign in
  </button>
</form>
