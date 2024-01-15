.module actor_15_update

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_15_update = 255
.globl ___bank_actor_15_update

_actor_15_update::
1$:
        ; Call Script: Enemy Ship Movement Diagonal Bottom To Top
        VM_PUSH_CONST           14 ; Actor 0
        VM_CALL_FAR             ___bank_script_enemy_ship_movement__2, _script_enemy_ship_movement__2

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
