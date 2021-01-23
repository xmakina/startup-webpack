# startup-webpack

a rapid startup repository with jest testing for es6 modules friendly web development

## npm commands

```bash
npm run init # remove the origin remote, install npm packages, start docker
```

```bash
npm t # run tests
```

```bash
npm run test:coverage # display test coverage report
```

```bash
npm run lint # show all linting errors (using standardjs)
```

```bash
npm run lint:fix # fix all auto-fixable linting errors (using standardjs)
```

## husky

the project comes with `husky` to enable git commit level checks

by default husky will run `lint:fix` over staged files before commiting