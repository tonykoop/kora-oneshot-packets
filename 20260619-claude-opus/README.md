# Kora one-shot packet — 2026-06-19 (Claude, Opus)

Cold-generated in a single Cowork session from **constraints only** — 16.5" kettle
gourd, 30" cowskin, machine-head tuners, CNC neck, 1/8"x1" aluminum rim, fiberglassed
shell. No reference to the human-built packet. Parked for comparison against the
canonical root of `tonykoop/kora`.

## Key result
- **Speaking length optimized to 67 cm** (swept 45–82 cm to maximize in-band strings)
- 21-string **F-major (Silaba)**, F2–E5, **11 left / 10 right**, 10 mm bridge pitch
- Graded nylon **0.40–1.60 mm**; every string **3.2–11.5 kgf** (inside a 3–12 band)
- **Total tension 135 kgf (297 lbf)**; est. skin downbearing **~80 kgf**

## Files
- `cad/kora.scad` — parametric OpenSCAD master (**compare to the human CAD**)
- `design.md` — governing model, full string schedule, geometry, assumptions
- `data/string-schedule.csv`, `data/summary.json`
- `wolfram/kora-model.wl` — string-tension model with `Manipulate`

DXF drawings (bridge + headstock drill template) and the 3D/preview PNGs regenerate
from the session's `gen.py` (available on request).

## Honest note
This is a one-shot from acoustics first-principles with several `assumption`/`TBD`
inputs (12-TET approximation of a non-equal kora tuning; nylon density; speaking
length depends on final bridge/neck geometry). The human-built packet at the
`tonykoop/kora` root is the validated reference — this is the rehearsal.