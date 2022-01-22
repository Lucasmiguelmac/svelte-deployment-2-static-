<script>
  import { Router } from '@roxi/routify';
  import { routes } from '../.routify/routes';
</script>
<svelte:head>
  <link rel="stylesheet" href="https://unpkg.com/@picocss/pico@latest/css/pico.min.css">
</svelte:head>
<Router {routes} />