---
# Page title as it appears in the navigation menu
title: "Quickstart: Make a new VM using the command line"
# Adjust weight to reorder menu items (lower numbers appear first)
weight: 1
# Uncomment to hide nested pages in a collapsed menu
# bookCollapseSection = true
# Uncomment to hide this page from the navigation menu
# bookHidden = false
# Uncomment to exclude this page from the search
# bookSearchExclude = true
---

# Azure via CLI basic quickstart

## Goal

Set up a basic Azure VM running Ubuntu using the command line tools.

## Assumptions

- You have the command line tools installed already.
- You can recognise your subscription ID.
- You know which region you want and which VM you want.

## Steps

1. `az login`, then find your subscription.
1. Maybe you need `az account list --output table` to find your subscriptions,
   and `az account set -s <subscription-id>` to set the correct one as the
   default.
1. `az group create --name <group-name> --location uksouth` to make a “resource
   group” which holds all the various bits and pieces of this server. To get a
   list of locations do `az account list-locations`.
1. Make a VM, attach some storage units. The "Standard_B2s" size is a 2 core, 4
   GB ram machine, with 30GB of local storage, which is suitable for "bursty"
   tasks. (Basically, when you let it run at less than 100% for a while, you
   build up 'credits' that let you run it at more than 100% for a time. Or
   something like that.)

   I've added a 128 GB disk. The "Standard_LRS" disk is an HDD, not an SSD.

```bash
az vm create \
    --name <name-of-machine-maybe> \
    --resource-group <group-name> \
    --image UbuntuLTS \
    --size Standard_B2s \
    --data-disk-sizes-gb 128 \
    --storage-sku Standard_LRS \
    --ssh-key-values ~/.ssh/id_rsa.pub
```

1. Now you have to format and mount the data disk.

   - `lsblk` This finds the disk (you can tell which one is the data disk by its
     size). Mine was `sbc`

   - Partition and format the disk (replace `sdc` with your disk).
     - `sudo parted /dev/sdc --script mklabel gpt mkpart btrfspart btrfs 0% 100%`
     - `sudo mkfs.btrfs /dev/sdc1`
     - `sudo partprobe /dev/sdc1`

     (Actually, the instructions suggested "xfs" everywhere instead of
     "btrfs". But what the hey.)

   - Mount the disk
     - `sudo mkdir /data`
     - `sudo mount /dev/sdc1 /data`

   - Make the mount point persist across reboots.
     - `sudo blkid` -- find the UUID of this disk
     - Edit `/etc/fstab` (eg, via `sudo nano /etc/fstab`) to add the line:
       `UUID=<uuid found above>   /data   btrfs   defaults,nofail   1   2`
