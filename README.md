# Svelte-Template

# Description
Template for developing, deploying and locally-testing Svelte-powered frontends.

# Template Roadmap
* [x] Template for SPA.
* [x] Template for Routed Frontend.
* [ ] Template for PWA.
* [ ] Enable component reuse between Web and Mobile apps.
* [ ] Enable component reuse between Web, Mobile and Desktop apps.
* [ ] Enable component reuse between Web, Mobile, Desktop and Wearable apps.
* [ ] Interactive command to start a new frontend project.
    * [ ] Choose in how many devices you want your project to live.
    * [ ] Pick a routing solution if any (else: SPA)
    * [ ] Pick unit tests config
        * [ ] Component renderer
        * [ ] Test runner (uvu, jest, ava, etc.)
        * [ ] Mocking solution
    * [ ] Toggle TS use
    * [ ] Publish as Svelteplate

<br/>
<br/>

## After cloning the proyect

Run the following script to configure git hooks:
```sh
source ./initial_script.sh
```
## Dev
Run the project:
```sh
- docker-compose up
```
## CI/CD docker commands
```sh
- docker build -t svelte_template_image -f Dockerfile.dev .
- docker run --name svelte_template -it -p 3000:3000 -v "$(pwd)/src:/usr/src/app/src" svelte_template_image
```
### Production
```sh
docker run --name svelte_template -it -p 80:80 -v "$(pwd)/src:/usr/src/app/src" --rm $(docker build -q -f Dockerfile.build .)
```


