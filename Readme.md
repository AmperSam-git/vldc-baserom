# VLDC Baserom

This is the baserom for SMW Central's Vanilla Level design contest. It has been made for building levels that use only the original game's assets but a minimal set of quality of life and bug fix patches have been applied to keep the process smooth.

This baserom also includes the SA-1 Pack (version 1.40) to increase performance and allow more sprites to exist at one time. To take advantage of this you need to set the sprite header in to 0x08, which will allow up to 20 sprites on screen.

## Using

Everything is ready to use in the provided `VLDC13.bps` patch, apply this to a clean, headered and unmodified copy of Super Mario World using Flips to get started.

**Important:** You must use the latest version of Lunar Magic (3.31) with the baserom to avoid major glitches

## Changes
The following patches are applied to fix a number of commonly known issues or bugs:
- $13FB Game Crash Fix
- Autoscroll ($1411) + L/R Softlock Fix
- Double Spinjump Antifail
- Feather Autoscroll Freeze Fix
- Layer 2+3 Wallrun Triangle Fix
- Line Guide Acts-Like Fix
- Line-Guided Rope Length Fix
- Moving Castle Block Offscreen Handling Fix v1.1
- Piranha Plant Stems Fix
- Time Up Fix
- Yoshi Sprites Interaction Fix v1.1

Additionally, through hex editing a number of small changes have been made:
- bug in hittable blocks (like ON/OFF) with thrown sprites has been fixed
- crash that occurs when trying to stop layer 3 smasher with generator D2 has been fixed
- bug in yoshi stomp has been fixed
- music no longer disappears on overworld when boss defeated
- horizontal pipes now play SFX when exiting 
- infinite lives has been applied

As well as a number of minor graphical changes:
- chuck arm palette is now green
- magikoopa palettes are no longer weird
- layer 3 cave background tiles have been color-corrected
- a misplaced tile on the keyhole "iris in" effect has been fixes
- bat ceiling gfx is now usable without glitches
- the Dolphin tails will no longer show up when they're vertically off-screen
- the last tile of the Turnblock Bridge has been X flipped
- the S in "Mario/Luigi Start" now has the correct palette
- side Turn Block bounce sprite is using the correct tile now
- Wendy's bow tiles are fixed
- vertical level priorities
- the classic & upside-down Piranha plants stems have been remapped to smiley coin tile (C2)