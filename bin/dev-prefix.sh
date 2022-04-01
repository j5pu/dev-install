#!/bin/sh

#
# install prefix for development

set -eu

PREFIX="/opt"
root="$(dirname "${PREFIX}")"
[ "${root}" = "/" ] || {
  test -w "${root}" || {
    $(command -v sudo) chown -R "$(id -u):$(id -g)" "${root}"
    $(command -v sudo) chmod -R g+w "${root}"
  }
}
mkdir -p "${PREFIX}/lib"
echo "${PREFIX}"