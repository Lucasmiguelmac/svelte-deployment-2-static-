<script lang="ts">
    
    import Form from "../components/index/Form.svelte";
      
    let foods = [
        {name: "Apple", color: "red", id: 0},
        {name: "Carrot", color: "orange", id: 1}
    ]
    const addFood = (e: CustomEvent) => {
        const food = e.detail;
        foods = [food, ...foods];
    };
  
    let currentTheme: string = "dark";
    function handleThemeSwitch(){
      currentTheme = (currentTheme === "dark") ? "light" : "dark";
      document.documentElement.setAttribute("data-theme", currentTheme);
    };
  
</script>

<main class="container">
    <article>
        <h1>Theme switcher</h1>
        <button
          on:click={() => handleThemeSwitch()}
        >Switch to {currentTheme === "light" ? "Dark" : "Light"} Mode</button>
      
        <Form on:addFood={addFood} />
        {#each foods as food (food.id)}
            <div class="fooditem">
                <h3>{food.name}</h3>
                <p>Color: {food.color}</p>
            </div>
        {/each}
      
    </article>
</main>