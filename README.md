# 🦩 asdf-partial

> [asdf] wrapper to handle partial (fuzzy, best-matching) version strings.

[asdf]: https://github.com/asdf-vm/asdf

## Overview

By default asdf [doesn't support partial version matching](https://github.com/asdf-vm/asdf/issues/352).

This means you can't `asdf install nodejs 18` and have it install the
latest matching version e.g. 18.3.0. Same goes for `asdf global`, `asdf
local` and `asdf shell`.

**asdf-partial** wraps asdf to provide partial version match for those
commands.

```console
$ asdf install nodejs 18
Trying to update node-build... ok
node-build: definition not found: 18

$ git clone https://github.com/valeriangalliat/asdf-partial ~/.asdf/asdf-partial
$ export PATH=~/.asdf/asdf-partial:$PATH

$ asdf install nodejs 18
Trying to update node-build... ok
Downloading node-v18.3.0.tar.gz...
-> https://nodejs.org/dist/v18.3.0/node-v18.3.0.tar.gz
Installing node-v18.3.0...
Installed node-v18.3.0 to ~/.asdf/installs/nodejs/18.3.0

$ asdf shell nodejs 18
$ node --version
v18.3.0

$ asdf list nodejs
  18.1.0
  18.3.0

$ asdf shell nodejs 18.1
$ node --version
v18.1.0

$ asdf shell nodejs 18.2
No compatible versions installed (nodejs 18.2)
```

## Installation

```sh
git clone https://github.com/valeriangalliat/asdf-partial ~/.asdf/asdf-partial
```

Then in your `~/.zshrc` or `~/.bashrc` or equivalent, after the line
where you source `~/.asdf/asdf.sh`, add the following:

```sh
export PATH=~/.asdf/asdf-partial:$PATH
```
