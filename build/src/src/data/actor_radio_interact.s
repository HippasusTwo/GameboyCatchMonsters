.module actor_radio_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_radio_interact = 255
.globl ___bank_actor_radio_interact

_actor_radio_interact::
        VM_LOCK

        ; If Variable True
        VM_IF_CONST             .GT, VAR_VARIABLE_14, 0, 1$, 0
        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_rulz_battletheme_0_Data, _song_rulz_battletheme_0_Data, .MUSIC_NO_LOOP

        ; Variable Set To True
        VM_SET_CONST            VAR_VARIABLE_14, 1

        VM_JUMP                 2$
1$:
        ; Music Stop
        VM_MUSIC_STOP

        ; Variable Set To False
        VM_SET_CONST            VAR_VARIABLE_14, 0

2$:

        ; Stop Script
        VM_STOP
