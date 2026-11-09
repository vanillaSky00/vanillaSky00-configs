# Zed: black background with GitHub Dark syntax

This configuration uses Zed's built-in **One Dark** theme with solid black
backgrounds and the GitHub Dark syntax palette. No theme extension is required.
Property names use GitHub green so YAML keys are visibly highlighted too.

## Use on another machine

Clone this repository and change into its directory. Back up your existing Zed
settings first: copying this file replaces all settings, including keybindings
and agent preferences.

On macOS or Linux:

```sh
mkdir -p ~/.config/zed
cp zed/settings.json ~/.config/zed/settings.json
```

On Windows, copy `zed/settings.json` to `%APPDATA%\Zed\settings.json`.
Quit and reopen Zed to apply the settings.

To keep your other settings, copy only `theme` and `theme_overrides` into your
existing settings file instead. The older `themes/Conflict.json` file is not
needed for this appearance.

The syntax palette comes from [GitHub Zed Themes](https://github.com/PyaeSoneAungRgn/github-zed-theme),
which is generated from GitHub Primer colors. Its MIT license is included in
[LICENSE.github-theme](LICENSE.github-theme). Zed and GitHub may classify some
syntax tokens differently.
