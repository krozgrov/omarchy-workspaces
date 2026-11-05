-- Add this to ~/.config/hypr/bindings.lua. The first bind starts a short-lived
-- pointer poll; the mouse bind keeps Omarchy's native window drag dispatcher.
hl.unbind("SUPER + mouse:272")
o.bind("SUPER + mouse:272", "Track workspace drag", "omarchy shell omarchy.workspaces beginWindowDrag", { mouse = true, transparent = true })
o.bind_hold(
  "SUPER + mouse:272",
  "Move window",
  hl.dsp.window.drag(),
  "Drop window on workspace",
  "omarchy shell omarchy.workspaces windowDropped",
  { mouse = true }
)
