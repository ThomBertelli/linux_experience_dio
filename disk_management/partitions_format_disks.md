List all disks and partitions:
`lsblk`
`fdisk -l` 

Partition creation:
`fdisk` -> `n` -> options

Formatting
`mkfs.<file system> <disk>`
Example: `mkfs.ext4 /dev/sdb`

Mounting
* Inside mnt dir
`mount <disk > /mnt/<directory name>/`
Example:
`mount /dev/sdb /mnt/disk2/`

Dismounting
`umount /dev/sdb`

Auto mount
`nano /etc/fstab`

at the end of the file: 
`<disk> <destiny> <file system> defaults 0 0`

