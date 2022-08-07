#!/usr/bin/env bash

set -eu

echo "Running Build..."
npm run build
echo

echo "Running Tests..."
npm run test
echo

echo "Bumping Version..."
declare -r curr_version=$(npx -c 'echo $npm_package_version')
npm version --allow-same-version --no-git-tag-version $@
declare -r next_version=$(npx -c 'echo $npm_package_version')
echo

if [[ "${curr_version}" = "${next_version}" ]]; then
  echo "Version did not change!"
  exit 1
fi

git add package.json

echo "crate: tree-sitter-lua"
echo "v${next_version}"
cargo bump "${next_version}"
git add "Cargo.toml"
echo

git commit -m "chore: release v${next_version}"
git tag "v${next_version}" -m "v${next_version}"
