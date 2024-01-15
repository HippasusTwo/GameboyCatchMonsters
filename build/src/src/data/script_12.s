.module script_12

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_12 = 255
.globl ___bank_script_12

_script_12::
        ; Input Script Attach
        VM_CONTEXT_PREPARE      2, ___bank_script_input_1, _script_input_1
        VM_INPUT_ATTACH         64, ^/(2 | .OVERRIDE_DEFAULT)/

        VM_RET_FAR
