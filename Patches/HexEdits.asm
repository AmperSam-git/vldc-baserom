;;;;;;;;;;;;;;;
;; Hex Edits ;;
;;;;;;;;;;;;;;;

; infinite lives
org $00D0D8 : NOP #3

; play SFX when exiting horizontal pipes
org $00D24E : LDA $7D : NOP : NOP

; fix vertical level priorities
org $0584BE : db $20,$20        ; level mode 07 & 08
org $0584C1 : db $20            ; level mode 0A
org $0584C3 : db $20,$20,$20    ; level mode 0C, 0D & 0E
org $0584C8 : db $20            ; level mode 11
org $0584D5 : db $20,$20        ; level mode 1E & 1F

;;;;;;;;;;;;;;;
;; Bug Fixes ;;
;;;;;;;;;;;;;;;

; fix crash that occurs when trying to stop layer 3 smasher with generator D2
org $02D421 : db $6B

; fix bug in yoshi stomp
org $0286D7 : db $D5

; fix bug in hittable blocks (like ON/OFF) with thrown sprites
org $0195A5 : db $00

; fix disappearing music on overworld when boss defeated
org $048E2E : db $80

;;;;;;;;;;;;;;;;;;;;;
;; Graphical Fixes ;;
;;;;;;;;;;;;;;;;;;;;;

; fix unused side Turn Block bounce sprite
org $0291F4 : db $40

; fix a misplaced tile on the keyhole "iris in" effect
org $00CBA3 : db $49

; fix the S in "Mario/Luigi Start".
org $00913F : db $34
org $009170 : db $F4

; fix layer 3 cave background using wrong colors
org $05A312 : db $15
org $05A4B2 : db $15

; fix chuck arm palette
org $02CAFA : db $4B,$0B

; fix the Dolphin tails showing up when they're vertically off-screen
org $07F69C : db $25 

; fix bat ceiling gfx
org $02FDB8 : db $AE,$AE,$C0,$E8

; fix the last tile of the Turnblock Bridge being X flipped.
org $01B79D : db $20

; fix Wendy's bow
org $03CFAF : db $08
org $03CFB5 : db $08
org $03D1D7 : db $1F,$1E
org $03D1DD : db $1E,$1F

; fix magikoopa palettes
org $03B90C : db $00,$28
org $03B91C : db $40,$34
org $03B92C : db $A3,$40
org $03B93C : db $06,$4D
org $03B94C : db $69,$59
org $03B95C : db $CC,$65
org $03B96C : db $2F,$72
org $03B97C : db $92,$7E

;;;;;;;;;;;;;;;;;;
;; Sprite Edits ;;
;;;;;;;;;;;;;;;;;;

; remap classic & upside-down Piranha plants stems to smiley coin tile
org $019BBE : db $C2
org $019BC0 : db $C2