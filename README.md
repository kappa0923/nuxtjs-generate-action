# nuxtjs-generate-action
GitHub Action to generate a static web application for Nuxt.js

## Usage

`workflow.yml` example

### Basic

This example check out your repository and runs `npm run generate` on the root of it.

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: kappa0923/nuxtjs-generate-action@v0.1.0
```

### Deploy to Firebase Hosting

This example generate a static nuxt.js web application and deploy it to [Firebase Hosting](https://firebase.google.com/docs/hosting).

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: kappa0923/nuxtjs-generate-action@v0.1.0
      - uses: jakejarvis/firebase-deploy-action@v0.1.0
        env:
          FIREBASE_TOKEN: ${{ secrets.FIREBASE_TOKEN }}
        with:
          args: "--only hosting"
```

## License
This project is distributed under the [MIT license](./LICENSE)