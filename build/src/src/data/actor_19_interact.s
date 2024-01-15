.module actor_19_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_19_interact = 255
.globl ___bank_actor_19_interact

_actor_19_interact::
        VM_LOCK

        ; If Variable True
        VM_IF_CONST             .GT, VAR_S16A1_PLAYING, 0, 1$, 0
        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_drum_example_Data, _song_drum_example_Data, .MUSIC_NO_LOOP

        ; Variable Set To True
        VM_SET_CONST            VAR_S16A1_PLAYING, 1

        ; Variable Set To True
        VM_SET_CONST            VAR_MUSIC_HOUSE_PLAYING, 1

        VM_JUMP                 2$
1$:
        ; Music Stop
        VM_MUSIC_STOP

        ; Variable Set To False
        VM_SET_CONST            VAR_S16A1_PLAYING, 0

        ; Variable Set To False
        VM_SET_CONST            VAR_MUSIC_HOUSE_PLAYING, 0

2$:

        ; Stop Script
        VM_STOP
