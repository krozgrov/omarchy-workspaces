-- Add this to ~/.config/hypr/bindings.lua. The first bind starts a short-lived
-- pointer poll; the mouse bind keeps Omarchy's native window drag dispatcher.
o.bind("SUPER + mouse:272", "Track workspace drag", "omarchy shell omarchy.workspaces beginWindowDrag")
o.bind_hold(
  "SUPER + mouse:272",
  "Move window",
  hl.dsp.window.drag(),
  "Finish workspace drag",
  "omarchy shell omarchy.workspaces windowDropped",
  { mouse = true }
)
