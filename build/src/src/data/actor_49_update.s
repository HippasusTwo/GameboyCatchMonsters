.module actor_49_update

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_49_update = 255
.globl ___bank_actor_49_update

_actor_49_update::
1$:
        ; Call Script: Turnip Movement
        VM_PUSH_CONST           3 ; Actor 0
        VM_CALL_FAR             ___bank_script_turnip_movement, _script_turnip_movement

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
