# asdf-use

> [asdf] plugin to add a `use` command with partial version match.

[asdf]: https://github.com/asdf-vm/asdf

## Overview

```console
$ asdf use nodejs 16
$ node --version
v16.8.0

$ asdf use nodejs 18.1
$ node --version
v18.1.0

$ asdf use nodejs 18.2
no version match 18.2 for nodejs

available versions:
  18.1.0
  16.8.0
```

## Installation

```sh
git clone https://github.com/valeriangalliat/asdf-use.git ~/.asdf/asdf-use
```

Then in your `~/.zshrc` or `~/.bashrc` or equivalent, after the line
where you source `~/.asdf/asdf.sh`, also source
`~/.asdf/asdf-use/asdf-use.sh`. For example with Bash or Zsh it should
look like this:

```sh
. ~/.asdf/asdf.sh
. ~/.asdf/asdf-use/asdf-use.sh
```

## Contributing

This plugin is very basic and might not work for all use cases, e.g.
shells other than Bash or Zsh, and SemVer prereleases or build metadata
versions.

Pull requests more than welcome if you want to improve it. Cheers! 🍻
