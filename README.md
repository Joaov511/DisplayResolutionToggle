# DisplayResolutionToggle

This **PowerShell script** allows you to toggle between your monitor's default resolution and a specified custom resolution.

It’s especially useful for games that don’t work with **DSR** (Dynamic Super Resolution) or **AMD Super Resolution**, such as many of Sony's PC ports.

# Installation

1. Download all the required files.
2. Click or run the ```RunResolutionToggle.bat``` file.

# Change custom resolution

By default, the script toggles between **1080p**(1920x1080) and **1440p** (2560x1440). To modify the default or custom resolution, open the ```resolutionToggleScript.ps1``` script and adjust the following values:

```
    $defaultWidth = 1920
    $defaultHeight = 1080

    $customResolutionWidth = 2560
    $customResolutionHeight = 1440
```

Simply change these values to match the resolutions you want to toggle between.

# Notes

1. Check if your custom resolution is avaliable.