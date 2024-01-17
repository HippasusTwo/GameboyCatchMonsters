.module scene_battle_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -4
.LOCAL_ACTOR = -4

___bank_scene_battle_init = 255
.globl ___bank_scene_battle_init

_scene_battle_init::
        VM_LOCK

        VM_RESERVE              4

        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_rulz_battletheme_0_Data, _song_rulz_battletheme_0_Data, .MUSIC_NO_LOOP

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Switch Variable
        VM_SWITCH               VAR_BATTLERENEMYSPECIES1, 14, 0
        .dw 1, 1$
        .dw 2, 2$
        .dw 3, 3$
        .dw 4, 4$
        .dw 5, 5$
        .dw 6, 6$
        .dw 7, 7$
        .dw 8, 8$
        .dw 9, 9$
        .dw 10, 10$
        .dw 11, 11$
        .dw 12, 12$
        .dw 13, 13$
        .dw 14, 14$

        VM_JUMP                 15$
        ; case 1:
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_mouse, _sprite_mouse

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002Mickey Mouse challenges \nyou!\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 15$
        ; case 2:
2$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_cat, _sprite_cat

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002A witty kitty challenges \nyou!\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 15$
        ; case 3:
3$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_duck, _sprite_duck

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002A foul fowl challenges \nyou!\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 15$
        ; case 4:
4$:
        ; Background Text
        VM_PUSH_CONST 0
          VM_GET_UINT8 .ARG0, _overlay_priority
          VM_SET_CONST_UINT8 _overlay_priority, 0

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_BKG

        VM_LOAD_TEXT            0
        .asciz "\003\002\002Enemy Turnip"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_NONMODAL, .UI_WAIT_TEXT

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_WIN

        VM_SET_UINT8 _overlay_priority, .ARG0
        VM_POP 1

        VM_JUMP                 15$
        ; case 5:
5$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_dog, _sprite_dog

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002A dog challenges \nyou!\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 15$
        ; case 6:
6$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_frog, _sprite_frog

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002A frog challenges \nyou!\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 15$
        ; case 7:
7$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_elephant, _sprite_elephant

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002An elephant challenges \nyou!\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 15$
        ; case 8:
8$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_chipmunk, _sprite_chipmunk

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002A murdermonk challenges \nyou!\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 15$
        ; case 9:
9$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_ferret, _sprite_ferret

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002A ferrinous faerie-et\nchallenges you!\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 15$
        ; case 10:
10$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_gerbil, _sprite_gerbil

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002A gibbering gerbil\nchallenges you!\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 15$
        ; case 11:
11$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_hedgehog, _sprite_hedgehog

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002A hedgefundhog challenges \nyou!\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 15$
        ; case 12:
12$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_squirrel, _sprite_squirrel

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002Squire El challenges \nyou!\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 15$
        ; case 13:
13$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_ungulate, _sprite_ungulate

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002Ung, U Late! challenges \nyou!\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 15$
        ; case 14:
14$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_rock, _sprite_rock

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002A... rock???\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 15$
15$:

        ; Switch Variable
        VM_SWITCH               VAR_BATTLERSPECIES, 14, 0
        .dw 1, 16$
        .dw 2, 17$
        .dw 3, 18$
        .dw 4, 19$
        .dw 5, 20$
        .dw 6, 21$
        .dw 7, 22$
        .dw 8, 23$
        .dw 9, 24$
        .dw 10, 25$
        .dw 11, 26$
        .dw 12, 27$
        .dw 13, 28$
        .dw 14, 29$

        VM_JUMP                 30$
        ; case 1:
16$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_mouse, _sprite_mouse

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002You send out a\nmighty mouse.\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 30$
        ; case 2:
17$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_cat, _sprite_cat

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002You send out a\nWitty Kitty.\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 30$
        ; case 3:
18$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_duck, _sprite_duck

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002You send out your\nbizarro roommate.\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 30$
        ; case 4:
19$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_turnip, _sprite_turnip

        VM_JUMP                 30$
        ; case 5:
20$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_dog, _sprite_dog

        VM_JUMP                 30$
        ; case 6:
21$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_frog, _sprite_frog

        VM_JUMP                 30$
        ; case 7:
22$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_elephant, _sprite_elephant

        VM_JUMP                 30$
        ; case 8:
23$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_chipmunk, _sprite_chipmunk

        VM_JUMP                 30$
        ; case 9:
24$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_ferret, _sprite_ferret

        VM_JUMP                 30$
        ; case 10:
25$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_gerbil, _sprite_gerbil

        VM_JUMP                 30$
        ; case 11:
26$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_hedgehog, _sprite_hedgehog

        VM_JUMP                 30$
        ; case 12:
27$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_squirrel, _sprite_squirrel

        VM_JUMP                 30$
        ; case 13:
28$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_ungulate, _sprite_ungulate

        VM_JUMP                 30$
        ; case 14:
29$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_rock, _sprite_rock

        VM_JUMP                 30$
30$:

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Set Position
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 384
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 1792
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        ; Variable Set To Value
        VM_SET_CONST            VAR_BATTLERHP1, 5

        ; Variable Set To Value
        VM_SET_CONST            VAR_BATTLERENEMYHP1, 4

        ; Stop Script
        VM_STOP
