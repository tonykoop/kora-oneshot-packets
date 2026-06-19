# Kora — parametric design (one-shot)

21-string gourd bridge-harp, cold-generated from constraints. Resonator from a 16.5″
African kettle gourd, cowskin head, machine-head tuners, CNC-routed neck, lathe-turned
handles, aluminum-reinforced rim, fiberglassed shell.

## Governing model
Vibrating string: **f = (1 / 2L)·√(T/μ)**, μ = ρ·π·(d/2)². On a kora every string runs
the **same speaking length L** over a tall notched bridge; pitch is set by **gauge and
tension**, not length. So: pick L and a graded gauge set so all 21 tensions land in a
playable band.

- Material: nylon, ρ = 1150 kg/m³ *(assumption — confirm vs your string set)*
- Tuning: F-major (Silaba), 21 notes **F2 → E5**; 12-TET approximation *(assumption)*
- Target tension 6.5 kgf; band 3–12 kgf

## Optimized result
| Quantity | Value |
|---|---|
| Speaking length L | **67 cm (26.4 in)** |
| Strings | 21 — 11 left / 10 right |
| Bridge pitch | 10 mm |
| Gauge range (nylon) | 0.40–1.60 mm |
| Per-string tension | 3.2–11.5 kgf, all in band |
| Total string tension | **135 kgf (297 lbf)** |
| Est. skin downbearing | ~80 kgf |

The optimizer swept L from 45–82 cm and chose 67 cm as the value keeping the most
strings in band. Full schedule in `data/string-schedule.csv`.

## Geometry (see cad/kora.scad)
- Gourd Ø419 mm; skin opening Ø~335 mm
- Neck: round pole 1200 × Ø32 mm, 2 gourd through-holes, eyebolt boss at base, headstock with 21 staggered tuner holes
- Bridge: notched standing bridge ~130 × 80 × 12 mm, two notch rows
- Rim ring: 1/8″×1″ aluminum, ~44″ to form Ø~335 mm circle
- Handles + crossbar: lathe-turned Ø28 mm posts

## Honest flags
- Tuning is a 12-TET approximation of the non-equal Silaba tuning — a starting target.
- Speaking length depends on final bridge/neck height; re-run if it isn't 67 cm.
- The ~80 kgf downbearing is why the aluminum rim ring + fiberglass matter structurally.
