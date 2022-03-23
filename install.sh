#!/bin/bash
#
# DESCRIPTION
# Link Bash scripts to $HOME/bin.
#
# USAGE
#
#   install
#
# ADDITIONAL INFORMATION
#
# Add the following to your shell configuration file:
#
#   ```bash
#   export PATH=$HOME/bin:$PATH
#   ```
#
# Link executables to `$HOME/bin`:
#
#   ```bash
#   ./install
#   ```

function usage {
  echo 'usage: install'
}

mkdir -p "${HOME}"/bin

for f in "$(pwd)"/*; do
  [ ! -d "${f}" ] && [ -x "${f}" ] && [ "$(basename "${f}")" != "install" ] || continue
  ln -s "${f}" "${HOME}"/bin 2>/dev/null
done
