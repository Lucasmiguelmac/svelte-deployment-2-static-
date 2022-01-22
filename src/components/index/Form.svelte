<script lang="ts">
    import { createEventDispatcher } from "svelte";

    let dispatch = createEventDispatcher();
    let name: string;
    let color: string;
    const handleSubmit = () => {
        const food = {
            name: name,
            color: color,
            id: Math.random()
        }
        dispatch("addFood", food);
    };
</script>

<form on:submit|preventDefault={handleSubmit}>
    <input type="text" placeholder="name" bind:value={name}>
    <input type="text" placeholder="color" bind:value={color}>
    <button on:click={() => handleSubmit()}>Add Food</button>
</form>

<style>
</style>