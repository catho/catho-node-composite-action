# catho-node-composite-action
A custom action to use in node applications.

## Why
The jobs of github actions don't give support to reuse steps between them, so the alternative is build a composite action to reuse on every steps.
Instead to write 4 or 5 steps in every jobs of your pipeline you cand just use this custom action.

## Featrues
 - use `actions/setup-node@v2`;
 - does application checkout using `actions/checkout@v2`;
 - create a `.npmrc` file in case you pass `npm-token` parameter;
 - run `npm install`.

## Inputs
 - `npm-token`: Used to create `.npmrc` file in case you have some private dependency

## Outputs
There no outputs yet.

## How to use

```yaml
name: Some API

on: [push]

jobs:
  linter:
    timeout-minutes: 10
    runs-on: ubuntu-latest
    strategy:
      matrix:
        node-version: [14.x]

    steps:
      - name: Setup application
        uses: catho/catho-node-composite-action@v2
        with:
          npm-token: you npm token

      - name: Run linter
        run: npm run lint

  tests:
    timeout-minutes: 10
    runs-on: ubuntu-latest
    strategy:
      matrix:
        node-version: [14.x]

    steps:
      - name: Setup application
        uses: catho/catho-node-composite-action@v2

      - name: Run all tests
        run: npm run test
```