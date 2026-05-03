.module scene_menu_3_init

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step, _camera_settings

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_scene_menu_3_init = 255
.globl ___bank_scene_menu_3_init

_scene_menu_3_init::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Collisions
        VM_ACTOR_SET_COLL_ENABLED .LOCAL_ACTOR, 0

        ; Idle
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Switch Variable
        VM_SWITCH               VAR_BATTLERSPECIES, 16, 0
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
        .dw 15, 15$
        .dw 16, 16$

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "No critters? Try talking."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 17$
        ; case 1:
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_mouse, _sprite_mouse

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002You have a mighty mouse.\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 17$
        ; case 2:
2$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_cat, _sprite_cat

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002You have a\012Witty Kitty.\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 17$
        ; case 3:
3$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_duck, _sprite_duck

        ; Advanced Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\002\002You have a\012bizarro roommate.\001\010\001\006"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 3, .UI_COLOR_WHITE

        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 17$
        ; case 4:
4$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_turnip, _sprite_turnip

        VM_JUMP                 17$
        ; case 5:
5$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_dog, _sprite_dog

        VM_JUMP                 17$
        ; case 6:
6$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_frog, _sprite_frog

        VM_JUMP                 17$
        ; case 7:
7$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_mantis, _sprite_mantis

        VM_JUMP                 17$
        ; case 8:
8$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_chipmunk, _sprite_chipmunk

        VM_JUMP                 17$
        ; case 9:
9$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_ferret, _sprite_ferret

        VM_JUMP                 17$
        ; case 10:
10$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_gerbil, _sprite_gerbil

        VM_JUMP                 17$
        ; case 11:
11$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_hedgehog, _sprite_hedgehog

        VM_JUMP                 17$
        ; case 12:
12$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_squirrel, _sprite_squirrel

        VM_JUMP                 17$
        ; case 13:
13$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_ungulate, _sprite_ungulate

        VM_JUMP                 17$
        ; case 14:
14$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_rock, _sprite_rock

        VM_JUMP                 17$
        ; case 15:
15$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_ant, _sprite_ant

        VM_JUMP                 17$
        ; case 16:
16$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_robot, _sprite_robot

        VM_JUMP                 17$
17$:

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 6, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 12, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            8
        .dw VAR_BATTLERSPECIES1, VAR_BATTLERSPECIES5_1, VAR_BATTLERSPECIES3, VAR_BATTLERSPECIES, VAR_BATTLERHP1, VAR_BATTLER1LVL, VAR_BATTLERTYPE, VAR_BATTLERSTR
        .asciz "Slot 1: %d 5: %d 3: %d\012 Front: %d Speciesid\012%d HP, Lvl %d\012Type %d, Str %d"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Switch Variable
        VM_SWITCH               VAR_BATTLERTYPE, 7, 0
        .dw 1, 18$
        .dw 2, 19$
        .dw 3, 20$
        .dw 4, 21$
        .dw 5, 22$
        .dw 0, 23$
        .dw 7, 24$

        VM_JUMP                 25$
        ; case 1:
18$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_typewood, _sprite_typewood

        VM_JUMP                 25$
        ; case 2:
19$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_type2, _sprite_type2

        VM_JUMP                 25$
        ; case 3:
20$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_typewater, _sprite_typewater

        VM_JUMP                 25$
        ; case 4:
21$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_type4, _sprite_type4

        VM_JUMP                 25$
        ; case 5:
22$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_type5, _sprite_type5

        VM_JUMP                 25$
        ; case 0:
23$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_type6, _sprite_type6

        VM_JUMP                 25$
        ; case 7:
24$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_type7, _sprite_type7

        VM_JUMP                 25$
25$:

        ; If
        ; -- If Truthy
        VM_IF_CONST             .NE, VAR_QUESTTURNIP, 0, 26$, 0
        VM_JUMP                 27$
26$:
        ; Actor Set Animation Frame To
        ; -- Calculate value
        VM_RPN
            .R_INT16    1
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 7
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

27$:

        ; If
        ; -- If Truthy
        VM_IF_CONST             .NE, VAR_QUESTSQUIREEL, 0, 28$, 0
        VM_JUMP                 29$
28$:
        ; Actor Set Animation Frame To
        ; -- Calculate value
        VM_RPN
            .R_INT16    1
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 8
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

29$:

        ; If
        ; -- If Truthy
        VM_IF_CONST             .NE, VAR_QUESTSPACE, 0, 30$, 0
        VM_JUMP                 31$
30$:
        ; Actor Set Animation Frame To
        ; -- Calculate value
        VM_RPN
            .R_INT16    1
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 9
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

31$:

        ; If
        ; -- If Truthy
        VM_IF_CONST             .NE, VAR_QUESTPROTEST, 0, 32$, 0
        VM_JUMP                 33$
32$:
        ; Actor Set Animation Frame To
        ; -- Calculate value
        VM_RPN
            .R_INT16    1
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 10
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

33$:

        ; Set Sprite Mode: 8x16
        VM_SET_SPRITE_MODE      .MODE_8X16

        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

        ; Text Menu
        VM_OVERLAY_CLEAR        0, 0, 10, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      10, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      10, 13, .OVERLAY_IN_SPEED
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001Tuxemon\012\002\001Items\012\002\001Exit back"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S17_LOCAL_0, .UI_MENU_CANCEL_B, 3
            .MENUITEM           1, 1, 1, 3, 0, 2
            .MENUITEM           1, 2, 1, 3, 1, 3
            .MENUITEM           1, 3, 1, 3, 2, 0
        VM_OVERLAY_MOVE_TO      10, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT

        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_rulz_pause_underground_0_Data, _song_rulz_pause_underground_0_Data, .MUSIC_NO_LOOP

        ; Wait For Input
        VM_INPUT_WAIT           48

        ; Pop Scene State
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_SCENE_POP

        ; Stop Script
        VM_STOP
        ; Stop Script
        VM_STOP
