# Bash Scripts

[![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/nickolashkraus/bash-scripts/blob/master/LICENSE)

A collection of helpful Bash scripts.

## Installation

Add the following to your shell configuration file:

```bash
export PATH=$HOME/bin:$PATH
```

Link executables to `$HOME/bin`:

```bash
./install
```

## TODO
- [ ] Add ability to write to log file for git-* scripts
- [ ] Create git-push script
  - [ ] Optional `--wip` flag
- [ ] Standardize usage information
- [ ] Use `getopts` for parsing command-line options and arguments
