# kora-oneshot-packets

One-shot / AI-generated kora build packets, parked here for comparison against the
canonical, human-built packet at the root of [tonykoop/kora](https://github.com/tonykoop/kora).

Each subfolder is one cold-generated attempt (dated, by agent/model). **Nothing here
is authoritative.** It's a rehearsal / visualization layer: what an agent _envisions_
for the build, set next to what the human actually built and measured — so the two
can be diffed.

## Use as a submodule of tonykoop/kora
The gitlink has to be created from a local clone (the GitHub API can't set it). From
your local `kora` checkout:

```bash
git submodule add https://github.com/tonykoop/kora-oneshot-packets one-shot-packets
git commit -am "add one-shot-packets submodule for AI/human build comparison"
git push
```

Then diff any one-shot folder against the canonical files at the repo root.

## Packets
- `20260619-claude-opus/` — first cold generation (Cowork session, from constraints only).
