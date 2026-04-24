# capysc/homebrew-tap

Homebrew tap for Capy.

## Install

```bash
brew install capysc/tap/capy
```

## Formulas

- `capy` — the Capy CLI ([docs](https://docs.capy.sc), [source](https://github.com/capysc/capy-cli))

## Updating the formula for a new release

1. Publish the new version to npm: `cd packages/cli && npm publish --access public`.
2. Fetch the published tarball's sha256:
   ```bash
   curl -sL https://registry.npmjs.org/@capysc/cli/-/cli-<VERSION>.tgz | shasum -a 256
   ```
3. Update `Formula/capy.rb`:
   - `url` → new version path
   - `sha256` → the hash from step 2
4. Commit and push.

This can be automated by the CLI release workflow — see `dawidd6/action-homebrew-bump-formula@v3`.
