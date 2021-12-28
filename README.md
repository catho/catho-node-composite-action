# catho-node-composite-action
A custom action to use in node applications.

## Why
The jobs of github actions don't give support to reuse steps between them, so the alternative is build a composite action to reuse on every steps.
Instead to write 4 or 5 steps in every jobs of your pipeline you cand just use this custom action.

## Featrues
 - use `actions/setup-node@v1`;
 - does application checkout using `actions/checkout@v2`;
 - create a `.npmrc` file in case you pass `npm-token` parameter;
 - run `npm install`.