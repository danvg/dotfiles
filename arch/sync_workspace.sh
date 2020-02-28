#!/bin/bash

mount_device="/dev/nvme0n1p5"
mount_point="$HOME/.local/media/DATA"

source_dir="$HOME/Workspace/"
destination_dir="$mount_point/"

sync_cmd()
{
   rsync -rtvu --delete $source_dir $destination_dir;
   sleep 1
}

if grep -qs "$HOME/.local/media/DATA" /proc/mounts
then
   sync_cmd
else
   sudo mount $mount_device $mount_point
   sync_cmd
   sudo umount $mount_point
fi
