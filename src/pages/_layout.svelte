<script>
    import {isActive, url, page, metatags} from '@roxi/routify';
    
    $: metatags.title = `Pomoly | ${$page.title}`;
</script>
    <nav class="container-fluid">
      <ul>
        <li><strong>Pruebita</strong></li>
      </ul>
      <ul>
        <li><a class:secondary={!$isActive('./index')} href={$url('./index')}>Home</a></li>
        <li><a class:secondary={!$isActive('./about')} href={$url('./about')}>About</a></li>
      </ul>
    </nav>
      <slot>
      </slot>