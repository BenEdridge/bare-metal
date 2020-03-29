#!/bin/bash
echo "### Assembling UEFI Application with fasm ###"
./fasm ./mount/EFI/BOOT/program.asm ./mount/EFI/BOOT/BOOTx64.EFI
echo ""
echo "### Building bootable iso file ###"
mkisofs -o ./efi.iso ./mount
