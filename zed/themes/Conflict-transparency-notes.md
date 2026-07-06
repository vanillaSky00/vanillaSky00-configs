# Conflict Theme Transparency Notes

Zed theme files are strict JSON, so do not add `//` comments inside
`Conflict.json`. Keep notes here instead.

## Coding area

These keys control the editor/coding area:

```json
"editor.background": "#24294BB3",
"editor.gutter.background": "#24294BB3",
"editor.subheader.background": "#24294BB3"
```

Use `#24294BB3` to match the tree/agent panel purple at about 70% opacity.
Use `#00000000` for fully transparent.
Use `#1A1E35B3` for the original darker purple at about 70% opacity.

## Left project tree and right/agent panel

These keys control the panel surfaces:

```json
"background": "#00000000",
"panel.background": "#24294BB3",
"surface.background": "#24294BB3",
"elevated_surface.background": "#24294BB3"
```

Keep `"background": "#00000000"` so the panel color does not stack on top
of another semi-transparent background and look solid.

Use `#24294BB3` for the original panel purple at about 70% opacity.

## Panel rows and selected items

These keys control rows, buttons, hover, and selected states inside panels:

```json
"element.background": "#353D70B3",
"element.hover": "#353D70B3",
"element.active": "#1A1E35B3",
"element.selected": "#1B1E36B3",
"ghost_element.background": "#24294BB3",
"ghost_element.hover": "#353D70B3",
"ghost_element.active": "#1A1E35B3",
"ghost_element.selected": "#1B1E36B3"
```

## Alpha values

- `00` = 0% opacity, fully transparent
- `80` = about 50% opacity
- `B3` = about 70% opacity
- `FF` = 100% opacity, solid
