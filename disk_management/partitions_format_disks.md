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