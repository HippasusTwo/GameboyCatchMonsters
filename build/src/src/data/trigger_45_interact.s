.module trigger_45_interact

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255


___bank_trigger_45_interact = 255
.globl ___bank_trigger_45_interact

_trigger_45_interact::
        VM_LOCK

        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_rulz_outside_0_Data, _song_rulz_outside_0_Data, .MUSIC_NO_LOOP

        ; Pop Scene State
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SCENE_POP

        ; Stop Script
        VM_STOP
        ; Stop Script
        VM_STOP
