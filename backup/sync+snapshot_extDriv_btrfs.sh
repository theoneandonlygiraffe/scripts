#meant to run ON the external drive

sudo echo ""
rsync -acuvP ~/Sync ./data

Timestamp=$( date -Iminutes)
sudo btrfs subvolume snapshot ./data ./.snapshots/data-${Timestamp}
echo saved to : ./.snapshots/data-${Timestamp}

