# Disclaimer
Lots of what is written below has just been copy-pasted from various places (hyprland wiki/arch wiki/etc) for the sake of accessibility. If I haven't provided a source, I am sorry.


# Notes

## Hyprland flickering in Electron / CEF apps
- Source: [Hyprland Wiki - Nvidia](https://wiki.hyprland.org/Nvidia/#flickering-in-electron--cef-apps)

This flickering is likely caused by these apps running in XWayland. To fix the flickering, try running the apps in native Wayland instead.

For most Electron apps, you should be fine just adding this environment variable to your config:

`env = ELECTRON_OZONE_PLATFORM_HINT,auto`

This has been confirmed to work on Vesktop, VSCodium, Obsidian and will probably work on other Electron apps as well.

For other apps, including CEF apps, you will need to launch them with these flags:

`--enable-features=UseOzonePlatform --ozone-platform=wayland`
