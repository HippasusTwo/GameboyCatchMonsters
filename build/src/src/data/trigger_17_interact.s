.module trigger_17_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_deeper_underground, _scene_deeper_underground

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_17_interact = 255
.globl ___bank_trigger_17_interact

_trigger_17_interact::
        VM_LOCK

        VM_RESERVE              4

        ; If Variable True
        VM_IF_CONST             .GT, VAR_VARIABLE_1, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 640
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 384
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_RIGHT
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_deeper_underground

2$:

        ; Stop Script
        VM_STOP
