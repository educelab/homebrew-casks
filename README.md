# Educelab Casks

## How do I install these formulae?

`brew install educelab/casks/<formula>`

Or `brew tap educelab/casks` and then `brew install <formula>`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## Updating

```
cd "$(brew --repository)"/Library/Taps/educelab/homebrew-casks
brew bump-cask-pr --no-fork educelab/casks/volume-cartographer --version VERSION_NUM # add --no-audit if a pre-release package
```