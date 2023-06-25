setup_target tulip

target_tulip(){
  LOCAL_PATH=$(dirname $BASH_SOURCE)
  include $BASEDIR/droidbuild/build_vars.sh
  TARGET_NEEDS_RESYNC=true
  TARGET_LOCAL_MANIFESTS+=($LOCAL_PATH/manifests/tulip.xml)
  TARGET_ARCH_BITNESS=64
  TARGET_CODENAME="tulip"
  TARGET_FULLNAME="Xiaomi Redmi Note 6 Pro"
  TARGET_BUILDTYPE="eng"
  TARGET_SIGNED_BUILD=true
  TARGET_HOSTS_CAT=2
  TARGET_SUPPORTS_GMSCOMPAT=1
  target_build-device
}

droidbuild_module(){
  # Dummy
  echo 1 > /dev/null
}
