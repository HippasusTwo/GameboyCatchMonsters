.module trigger_10_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_10_interact = 255
.globl ___bank_trigger_10_interact

_trigger_10_interact::
        VM_LOCK

        VM_RESERVE              4

        ; If Variable True
        VM_IF_CONST             .GT, VAR_VARIABLE_10, 0, 1$, 0
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 8

        ; If Actor At Position
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    6016
            .R_OPERATOR .EQ
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    3200
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 3$, 1

        VM_JUMP                 4$
3$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 8

        ; Actor Set Direction
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 8

        ; Actor Emote
        VM_ACTOR_EMOTE          .LOCAL_ACTOR, ___bank_emote_shock, _emote_shock

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 8

        ; Actor Move To
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 4864
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 2688
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, 0
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 8

        ; Actor Move To
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 5632
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 2432
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, 0
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 8

        ; Actor Move To
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 6016
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 3200
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

4$:

        VM_JUMP                 2$
1$:
2$:

        ; Stop Script
        VM_STOP
