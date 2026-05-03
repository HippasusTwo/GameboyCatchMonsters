.module scene_path_to_sample_town_init

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_scene_path_to_sample_town_init = 255
.globl ___bank_scene_path_to_sample_town_init

_scene_path_to_sample_town_init::
        VM_LOCK

        VM_RESERVE              4

        ; Call Script: Turnip Init
        VM_PUSH_CONST           1 ; Actor 0
        VM_PUSH_REFERENCE       VAR_S10A10_DEFEATED ; Variable V1
        VM_CALL_FAR             ___bank_script_turnip_init, _script_turnip_init

        ; Call Script: Turnip Init
        VM_PUSH_CONST           3 ; Actor 0
        VM_PUSH_REFERENCE       VAR_S10A10_DEFEATED_1 ; Variable V1
        VM_CALL_FAR             ___bank_script_turnip_init, _script_turnip_init

        ; Call Script: Turnip Init
        VM_PUSH_CONST           4 ; Actor 0
        VM_PUSH_REFERENCE       VAR_S10A10_DEFEATED_2 ; Variable V1
        VM_CALL_FAR             ___bank_script_turnip_init, _script_turnip_init

        ; Set Sprite Mode: 8x16
        VM_SET_SPRITE_MODE      .MODE_8X16

        ; Call Script: Init Menu
        VM_CALL_FAR             ___bank_script_init_menu, _script_init_menu

        ; Variable Set To
        VM_SET_CONST            VAR_BATTLERENEMYSPECIES1, 4

        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_rulz_outside_0_Data, _song_rulz_outside_0_Data, .MUSIC_NO_LOOP

        ; Variable Set To
        VM_SET_CONST            VAR_TURNIP_COUNTER, 3

        ; If Actor At Position
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT8     8
            .R_OPERATOR .SHR
            .R_INT16    0
            .R_OPERATOR .EQ
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT8     8
            .R_OPERATOR .SHR
            .R_INT16    0
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 1$, 1

        ; Variable Decrement By 1
        VM_RPN
            .R_REF      VAR_TURNIP_COUNTER
            .R_INT8     1
            .R_OPERATOR .SUB
            .R_REF_SET  VAR_TURNIP_COUNTER
            .R_STOP

        VM_JUMP                 2$
1$:
2$:

        ; If Actor At Position
        VM_SET_CONST            .LOCAL_ACTOR, 3
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT8     8
            .R_OPERATOR .SHR
            .R_INT16    0
            .R_OPERATOR .EQ
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT8     8
            .R_OPERATOR .SHR
            .R_INT16    0
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 3$, 1

        ; Variable Decrement By 1
        VM_RPN
            .R_REF      VAR_TURNIP_COUNTER
            .R_INT8     1
            .R_OPERATOR .SUB
            .R_REF_SET  VAR_TURNIP_COUNTER
            .R_STOP

        VM_JUMP                 4$
3$:
4$:

        ; If Actor At Position
        VM_SET_CONST            .LOCAL_ACTOR, 4
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT8     8
            .R_OPERATOR .SHR
            .R_INT16    0
            .R_OPERATOR .EQ
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT8     8
            .R_OPERATOR .SHR
            .R_INT16    0
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 5$, 1

        ; Variable Decrement By 1
        VM_RPN
            .R_REF      VAR_TURNIP_COUNTER
            .R_INT8     1
            .R_OPERATOR .SUB
            .R_REF_SET  VAR_TURNIP_COUNTER
            .R_STOP

        VM_JUMP                 6$
5$:
6$:

        ; Call Script: Init Shift Menu
        VM_CALL_FAR             ___bank_script_12, _script_12

        ; Idle
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
