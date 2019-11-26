# nuxtjs-generate-action
GitHub Action to generate a static web application for Nuxt.js

## usage

`workflow.yml` example

This example check out your repository and runs `npm run generate` on the root of it.

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - uses: kappa0923/nuxtjs-generate-action@master
```

## License
This project is distributed under the [MIT license](./LICENSE)