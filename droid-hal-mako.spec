# These and other macros are documented in dhd/droid-hal-device.inc

%define device mako
%define vendor lge

%define vendor_pretty LG
%define device_pretty Nexus 4

%define installable_zip 1

%define enable_kernel_update 1

# android_config is the set of #defines needed by libhybris builds to
# be injected into android_config.h
# This could eventually be obtained by parsing the BoardConfig.mk
%define android_config \
#define DROID_AUDIO_HAL_ATOI_FIX\
%{nil}

%include rpm/dhd/droid-hal-device.inc
