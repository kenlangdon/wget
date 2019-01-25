pkg_name=wget
pkg_origin=core
pkg_version=4.4
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_description="\
package description here
"
pkg_upstream_url="https://package/url/here"
pkg_license=('gplv3')
pkg_source="https://package/source/here"
pkg_shasum="shasum_here"
pkg_deps=(
  core/glibc
  core/acl
)
pkg_build_deps=(
  core/coreutils
  core/diffutils
  core/patch
  core/make
  core/gcc
)
pkg_bin_dirs=(bin)

do_prepare() {
  #prepare here
}

do_check() {
  #check here
}
