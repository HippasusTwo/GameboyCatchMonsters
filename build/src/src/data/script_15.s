.module script_15

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_15 = 255
.globl ___bank_script_15

_script_15::
        ; Variable Set To True
        VM_SET_CONST            VAR_WSTR, 1

        ; Variable Set To True
        VM_SET_CONST            VAR_WSPECIAL, 1

        ; Variable Set To True
        VM_SET_CONST            VAR_WTYPE, 1

        ; Variable Set To True
        VM_SET_CONST            VAR_WSPEED, 1

        ; Variable Set To Value
        VM_SET_CONST            VAR_WHP, 4

        ; Variable Set To True
        VM_SET_CONST            VAR_WDEF, 1

        ; Variable Set To True
        VM_SET_CONST            VAR_BATTLERENEMYLVL, 1

        ; Variable Set To True
        VM_SET_CONST            VAR_BATTLERENEMYHP1, 1

        ; VM_RAND VAR_BATTLERENEMYHP1, 2, 3
         VM_IF_CONST .EQ, VAR_WLOOKINGFOR, 1, EnemyGrab,0  
         ;not enemy
          VM_SET VAR_TEMP3,VAR_BATTLERSPECIES
          VM_JUMP Lookup
         EnemyGrab:
         VM_SET VAR_TEMP3, VAR_BATTLERENEMYSPECIES1
         Lookup:
         VM_IF_CONST .EQ,  VAR_TEMP3, 1, Monster1, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 2, Monster2, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 3, Monster3, 0
        VM_IF_CONST .EQ,  VAR_TEMP3, 4, Monster4, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 7, MonsterElephant, 0
         VM_JUMP GenericMonster
        
        Monster1:
         VM_SET_CONST VAR_WSTR, 1
         VM_SET_CONST VAR_WHP, 4
         VM_SET_CONST VAR_WTYPE, 1
          VM_SET_CONST VAR_WDEF, 1
         VM_SET_CONST VAR_WSPECIAL, 2
         VM_SET_CONST VAR_WSPEED, 3
         VM_JUMP LoadMonsterData
        Monster2:
         VM_SET_CONST VAR_WSTR, 2
         VM_SET_CONST VAR_WHP, 5
         VM_SET_CONST VAR_WTYPE, 2
          VM_SET_CONST VAR_WDEF, 2
         VM_SET_CONST VAR_WSPECIAL, 2
         VM_SET_CONST VAR_WSPEED, 2
         VM_JUMP LoadMonsterData
        Monster3:
         VM_SET_CONST VAR_WSTR, 5
         VM_SET_CONST VAR_WHP, 2
         VM_SET_CONST VAR_WTYPE, 3
          VM_SET_CONST VAR_WDEF, 2
         VM_SET_CONST VAR_WSPECIAL, 1
         VM_SET_CONST VAR_WSPEED, 2
         VM_JUMP LoadMonsterData
        Monster4:
          VM_SET_CONST VAR_WSTR, 1
         VM_SET_CONST VAR_WHP, 3
         VM_SET_CONST VAR_WTYPE, 4
         VM_SET_CONST VAR_WDEF, 1
         VM_SET_CONST VAR_WSPECIAL, 1
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
         MonsterElephant:
           VM_SET_CONST VAR_BATTLERENEMYLVL,2
         VM_SET_CONST VAR_WSTR, 5
         VM_SET_CONST VAR_WHP, 10
         VM_SET_CONST VAR_WTYPE, 4
          VM_SET_CONST VAR_WDEF, 10
         VM_SET_CONST VAR_WSPECIAL, 5
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
        GenericMonster:
          VM_SET VAR_BATTLERENEMYLVL,VAR_BATTLER1LVL
         VM_SET_CONST VAR_WSTR, 1
         VM_SET_CONST VAR_WHP, 4
         VM_SET_CONST VAR_WTYPE, 5
         VM_SET_CONST VAR_WDEF, 1
         VM_SET_CONST VAR_WSPECIAL, 1
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
        LoadMonsterData:
         VM_IF_CONST .EQ, VAR_WLOOKINGFOR, 0, LABEL1, 0;if player jump
         ;load monster data into enemy
         VM_SET VAR_BATTLERENEMYSTR, VAR_WSTR
         VM_SET VAR_BATTLERENEMYHP1, VAR_WHP
         VM_SET VAR_BATTLERENEMYTYPE, VAR_WTYPE
         VM_JUMP end
         LABEL1:
         ;load monster data into player
          VM_SET VAR_BATTLERSTR, VAR_WSTR
         VM_SET VAR_BATTLERMAXHP, VAR_WHP
         VM_SET VAR_BATTLERTYPE, VAR_WTYPE
         end:
          

        VM_RET_FAR
