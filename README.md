# My Workspaces

A small customization of Omarchy's built-in workspace bar widget. It keeps the existing workspace pills and lets you move a window as you drag over them while holding Super and the left mouse button. You do not need to release the button to switch the window between workspaces.

The plugin samples `hyprctl cursorpos` every 16 ms only during a Super+left-button drag. It matches the pointer against the live workspace-pill bounds and sends the active window to the hovered workspace, following it. It stops polling when the mouse button is released.

## Install

```sh
omarchy plugin add https://github.com/krozgrov/omarchy-workspaces.git --enable
```

Add [`hyprland-bindings.lua`](hyprland-bindings.lua) to `~/.config/hypr/bindings.lua`, then reload Hyprland:

```sh
hyprctl reload
```

The plugin replaces Omarchy's built-in `omarchy.workspaces` widget in the bar.

## Remove

```sh
omarchy plugin remove krozgrov.workspaces
```

Remove the binding block from `~/.config/hypr/bindings.lua` and reload Hyprland. Removing the plugin restores Omarchy's built-in workspace widget.

## Validate

```sh
omarchy plugin validate .
```

## License

MIT. This plugin adapts Omarchy's built-in `omarchy.workspaces` widget; the original copyright notice is retained in [LICENSE](LICENSE).
