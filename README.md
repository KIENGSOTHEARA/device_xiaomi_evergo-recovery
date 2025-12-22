# device_xiaomi_amethyst-recovery
Work in progress recovery tree.

Currently waiting 72 hours for the bootloader unlock, 
this tree is just preparing (not functional yet)

# Checklist
- [x] Fix gpt-utils (partitions)
- [ ] Fix touchscreen (vendor drivers, libraries)
- [ ] Fix decryption (libraries, services, rc order)
- [ ] Fix fstab (partitions)
- [ ] Fix USB and init.rc's

Also, if they are broken:
- [ ] Fix haptics
- [ ] Fix fastbootd
- [ ] Fix flashlight
- [ ] Fix orangefox specifics

# Notes
This recovery tree has been based on my previous work:
- https://github.com/chickendrop89/device_xiaomi_sm6225ad-recovery
