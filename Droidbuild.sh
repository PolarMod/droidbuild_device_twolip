setup_target twolip

target_twolip(){
  LOCAL_PATH=$(dirname $BASH_SOURCE)
  include $BASEDIR/droidbuild/build_vars.sh
  TARGET_NEEDS_RESYNC=true
  TARGET_LOCAL_MANIFESTS+=$LOCAL_PATH/manifests/twolip.xml
  TARGET_ARCH_BITNESS=64
  TARGET_CODENAME="twolip"
  TARGET_FULLNAME="Xiaomi Redmi Note 6 Pro"
  TARGET_BUILDTYPE="userdebug"
  TARGET_SIGNED_BUILD=true
  TARGET_HOSTS_CAT=2
  target_build-device
}

droidbuild_module(){
  # Dummy
}
