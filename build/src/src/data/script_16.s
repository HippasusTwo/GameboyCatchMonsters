.module script_16

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_16 = 255
.globl ___bank_script_16

_script_16::
        ; VM_RAND VAR_BATTLERENEMYHP1, 2, 3
         VM_IF_CONST .EQ, VAR_WLOOKINGFOR, 0, EnemyG,0
         ;not enemy
          VM_SET VAR_TEMP3,VAR_TECHNIQUECHOSEN
          VM_JUMP Lookup1
         EnemyG:
         VM_SET VAR_TEMP3, VAR_TECHNIQUEFOE
         Lookup1:
         VM_IF_CONST .EQ,  VAR_TEMP3, 1, Attack1, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 2, Attack2, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 3, Attack3, 0
        VM_IF_CONST .EQ,  VAR_TEMP3, 4, Attack4, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 5, Attack5, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 6, Attack6, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 7, Attack7, 0
         VM_JUMP GenericAttack
        
        Attack1:
         VM_SET_CONST VAR_WSTR, 1
        ; VM_SET_CONST VAR_WHP, 4
         VM_SET_CONST VAR_WTYPE, 1
         ; VM_SET_CONST VAR_WDEF, 1
         ;VM_SET_CONST VAR_WSPECIAL, 2
         VM_SET_CONST VAR_WSPEED, 3
         VM_JUMP LoadMonsterData
        Attack2:
         VM_SET_CONST VAR_WSTR, 1
        ; VM_SET_CONST VAR_WHP, 5
         VM_SET_CONST VAR_WTYPE, 2
        ;  VM_SET_CONST VAR_WDEF, 2
        ; VM_SET_CONST VAR_WSPECIAL, 2
         VM_SET_CONST VAR_WSPEED, 2
         VM_JUMP LoadMonsterData
        Attack3:
         VM_SET_CONST VAR_WSTR, 1
        ; VM_SET_CONST VAR_WHP, 6
         VM_SET_CONST VAR_WTYPE, 3
        ;  VM_SET_CONST VAR_WDEF, 2
        ; VM_SET_CONST VAR_WSPECIAL, 1
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
        Attack4:
          VM_SET_CONST VAR_WSTR, 1
        ; VM_SET_CONST VAR_WHP, 3
         VM_SET_CONST VAR_WTYPE, 4
         ;VM_SET_CONST VAR_WDEF, 1
         ;VM_SET_CONST VAR_WSPECIAL, 1
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
         Attack5:
         VM_SET_CONST VAR_WSTR, 1
        ; VM_SET_CONST VAR_WHP, 10
         VM_SET_CONST VAR_WTYPE, 5
        ;  VM_SET_CONST VAR_WDEF, 10
        ; VM_SET_CONST VAR_WSPECIAL, 5
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
          Attack6:
         VM_SET_CONST VAR_WSTR, 2
        ; VM_SET_CONST VAR_WHP, 10
         VM_SET_CONST VAR_WTYPE, 6
        ;  VM_SET_CONST VAR_WDEF, 10
        ; VM_SET_CONST VAR_WSPECIAL, 5
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
          Attack7:
         VM_SET_CONST VAR_WSTR, 1
        ; VM_SET_CONST VAR_WHP, 10
         VM_SET_CONST VAR_WTYPE, 7
        ;  VM_SET_CONST VAR_WDEF, 10
        ; VM_SET_CONST VAR_WSPECIAL, 5
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
        GenericAttack:
        
         VM_SET_CONST VAR_WSTR, 2
        ; VM_SET_CONST VAR_WHP, 4
         VM_SET_CONST VAR_WTYPE, 0
         
        ; VM_SET_CONST VAR_WDEF, 1
        ; VM_SET_CONST VAR_WSPECIAL, 1
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
        LoadMonsterData:
         VM_IF_CONST .EQ, VAR_WLOOKINGFOR, 0, LABEL1, 0;if player jump
         ;load monster data into enemy attack. Could use this for stat raising techniques.
         ;VM_SET VAR_BATTLERENEMYSTR, VAR_WSTR
         ;VM_SET VAR_BATTLERENEMYHP1, VAR_WHP
         ;VM_SET VAR_BATTLERENEMYTYPE, VAR_WTYPE
         VM_JUMP end
         LABEL1:
         ;load monster data into player
          ;VM_SET VAR_BATTLERSTR, VAR_WSTR
        ; VM_SET VAR_BATTLERMAXHP, VAR_WHP
         ;VM_SET VAR_BATTLERTYPE, VAR_WTYPE
         end:
          

        VM_RET_FAR
