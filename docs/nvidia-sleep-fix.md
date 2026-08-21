[go back](../README.md)

# Nvidia Suspend / Resume Black Screen Fix
If your system displays a black screen when waking up from suspend or hibernate (default: SUPER+SHIFT+L) on an Nvidia GPU, configure memory preservation via systemd and kernel module options.

## 1. Enable Systemd Services
```bash
sudo systemctl enable nvidia-suspend.service
sudo systemctl enable nvidia-hibernate.service
sudo systemctl enable nvidia-resume.service
```

## 2. Enable Video Memory Allocation Preservation
```bash
echo "options nvidia NVreg_PreserveVideoMemoryAllocations=1" | sudo tee /etc/modprobe.d/nvidia-power-management.conf
```

## 3. Rebuild Initramfs
- Dracut (Default on recent EndeavourOS):
```bash
sudo dracut-rebuild
```
- mkinitcpio (Default on Arch Linux):
```bash
sudo mkinitcpio -P
```
