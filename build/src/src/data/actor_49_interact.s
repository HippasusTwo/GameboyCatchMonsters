.module actor_49_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_battle, _scene_battle

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_actor_49_interact = 255
.globl ___bank_actor_49_interact

_actor_49_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Variable Set To Value
        VM_SET_CONST            VAR_BATTLERENEMYSPECIES1, 10

        ; Push Scene State
        VM_SCENE_PUSH

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_battle

        ; Stop Script
        VM_STOP
