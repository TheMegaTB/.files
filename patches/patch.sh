#!/bin/sh
patch /usr/share/polkit-1/actions/org.freedesktop.upower.policy < upower_permission.patch
patch /etc/inittab < inittab_runlevel_full.patch
