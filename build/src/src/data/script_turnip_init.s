.module script_turnip_init

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.SCRIPT_ARG_INDIRECT_0_VARIABLE = -7
.SCRIPT_ARG_1_ACTOR = -8
.LOCAL_ACTOR = -4

___bank_script_turnip_init = 255
.globl ___bank_script_turnip_init

_script_turnip_init::
        VM_RESERVE              4

        ; If
        ; -- If Truthy
        VM_PUSH_VALUE_IND       .SCRIPT_ARG_INDIRECT_0_VARIABLE
        VM_IF_CONST             .NE, .ARG0, 0, 1$, 1
        VM_JUMP                 2$
1$:
        ; Actor Deactivate
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_1_ACTOR
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

        ; Actor Set Position
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        ; -- Position Actor
        VM_SET                  .LOCAL_ACTOR, .SCRIPT_ARG_1_ACTOR
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

2$:

        VM_RESERVE              -4
        VM_RET_FAR_N            2
