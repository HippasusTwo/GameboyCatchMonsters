.module trigger_41_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_sample_town, _scene_sample_town

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_41_interact = 255
.globl ___bank_trigger_41_interact

_trigger_41_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 3968
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 5248
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_sample_town

        ; Stop Script
        VM_STOP
