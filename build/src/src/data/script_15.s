.module script_15

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_15 = 255
.globl ___bank_script_15

_script_15::
        ; Variable Set To
        VM_SET_CONST            VAR_WSTR, 1

        ; Variable Set To
        VM_SET_CONST            VAR_WSPECIAL, 1

        ; Variable Set To
        VM_SET_CONST            VAR_WTYPE, 1

        ; Variable Set To
        VM_SET_CONST            VAR_WSPEED, 1

        ; Variable Set To
        VM_SET_CONST            VAR_WHP, 5

        ; Variable Set To
        VM_SET_CONST            VAR_WDEF, 1

        ; Variable Set To
        VM_SET_CONST            VAR_BATTLERENEMYLVL, 1

        ; Variable Set To
        VM_SET_CONST            VAR_BATTLERENEMYHP1, 1

        ; VM_RAND VAR_BATTLERENEMYHP1, 2, 3
        ;defaults set above
         ;VM_SET_CONST VAR_WSTR, 1
         ;VM_SET_CONST VAR_WHP, 5
         ;VM_SET_CONST VAR_WTYPE, 1;wood
         ; VM_SET_CONST VAR_WDEF, 1
         ;VM_SET_CONST VAR_WSPECIAL, 2
         ;VM_SET_CONST VAR_WSPEED, 2
         ;DB lookup start
         VM_IF_CONST .EQ, VAR_WLOOKINGFOR, 1, EnemyGrab,0  
         ;not enemy
          VM_SET VAR_TEMP3,VAR_BATTLERSPECIES
          VM_JUMP Lookup
         EnemyGrab:
         VM_SET VAR_TEMP3, VAR_BATTLERENEMYSPECIES1
         Lookup:
         VM_IF_CONST .EQ,  VAR_TEMP3, 1, Monster1, 0;Mouse
         VM_IF_CONST .EQ,  VAR_TEMP3, 2, Monster2, 0 ;Cat
         VM_IF_CONST .EQ,  VAR_TEMP3, 3, Monster3, 0 ;Duck
        VM_IF_CONST .EQ,  VAR_TEMP3, 4, Monster4, 0;Turnip
         VM_IF_CONST .EQ,  VAR_TEMP3, 5, MonsterDog, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 6, MonsterFrog, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 7, MonsterMantis, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 8, Monster8, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 9, Monster9, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 10, Monster10, 0
         VM_IF_CONST .EQ,  VAR_TEMP3, 11, Monster11, 0
          VM_IF_CONST .EQ,  VAR_TEMP3, 12, Monster12, 0
          VM_IF_CONST .EQ,  VAR_TEMP3, 13, MonsterUngulate, 0
          ;VM_IF_CONST .EQ,  VAR_TEMP3, 14, Monster14, 0
           VM_IF_CONST .EQ,  VAR_TEMP3, 15, Monster15, 0
          VM_IF_CONST .EQ,  VAR_TEMP3, 16, MonsterRobot, 0
          VM_IF_CONST .EQ,  VAR_TEMP3, 17, MonsterElephant, 0
         VM_JUMP GenericMonster
        
        Monster1:
         VM_SET_CONST VAR_WSTR, 1
         VM_SET_CONST VAR_WHP, 6
         VM_SET_CONST VAR_WTYPE, 2
          VM_SET_CONST VAR_WDEF, 1
         VM_SET_CONST VAR_WSPECIAL, 2
         VM_SET_CONST VAR_WSPEED, 3
         VM_JUMP LoadMonsterData
        Monster2:
         VM_SET_CONST VAR_WSTR, 2
         VM_SET_CONST VAR_WHP, 7
         VM_SET_CONST VAR_WTYPE, 4
          VM_SET_CONST VAR_WDEF, 2
         VM_SET_CONST VAR_WSPECIAL, 2
         VM_SET_CONST VAR_WSPEED, 2
         VM_JUMP LoadMonsterData
        Monster3:
         VM_SET_CONST VAR_WSTR, 1
         VM_SET_CONST VAR_WHP, 8
         VM_SET_CONST VAR_WTYPE, 5
          VM_SET_CONST VAR_WDEF, 2
         VM_SET_CONST VAR_WSPECIAL, 1
         VM_SET_CONST VAR_WSPEED, 2
         VM_JUMP LoadMonsterData
        Monster4:
          VM_SET_CONST VAR_WSTR, 1
         VM_SET_CONST VAR_WHP, 3
         VM_SET_CONST VAR_WTYPE, 1
         VM_SET_CONST VAR_WDEF, 1
         VM_SET_CONST VAR_WSPECIAL, 3
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
         MonsterDog:
          VM_SET_CONST VAR_WSTR, 1
         VM_SET_CONST VAR_WHP, 8
         VM_SET_CONST VAR_WTYPE, 7
         VM_SET_CONST VAR_WDEF, 1
         VM_SET_CONST VAR_WSPECIAL, 2
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
         MonsterFrog:
          VM_SET_CONST VAR_WSTR, 1
         VM_SET_CONST VAR_WHP, 6
         VM_SET_CONST VAR_WTYPE, 3
         VM_SET_CONST VAR_WDEF, 1
         VM_SET_CONST VAR_WSPECIAL, 1
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
         MonsterMantis:
          VM_SET_CONST VAR_WSTR, 1
         VM_SET_CONST VAR_WHP, 7
         VM_SET_CONST VAR_WTYPE, 6
         VM_SET_CONST VAR_WDEF, 1
         VM_SET_CONST VAR_WSPECIAL, 1
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
         Monster8:
          VM_SET_CONST VAR_WSTR, 2
         VM_SET_CONST VAR_WHP, 4
         VM_SET_CONST VAR_WTYPE, 0
         VM_SET_CONST VAR_WDEF, 1
         VM_SET_CONST VAR_WSPECIAL, 1
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
         Monster9: ;Faerie Ferret
         VM_SET_CONST VAR_WTYPE, 3
         VM_JUMP LoadMonsterData
         Monster10: ;Gerbil
          VM_SET_CONST VAR_WSTR, 1
         VM_SET_CONST VAR_WHP, 6
         VM_SET_CONST VAR_WTYPE, 2
         VM_SET_CONST VAR_WDEF, 1
         VM_SET_CONST VAR_WSPECIAL, 1
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
          Monster11:
         VM_SET_CONST VAR_WTYPE, 1
         VM_JUMP LoadMonsterData
           Monster12:
         VM_SET_CONST VAR_WTYPE, 4
         VM_JUMP LoadMonsterData
         ;14 is generic
         Monster15:
         VM_SET_CONST VAR_WTYPE, 1
         VM_JUMP LoadMonsterData
         MonsterUngulate: ;13
         VM_SET_CONST VAR_WTYPE, 7
         VM_JUMP LoadMonsterData
        MonsterRobot:
         VM_SET_CONST VAR_WTYPE, 5
         VM_JUMP LoadMonsterData
         MonsterElephant:
           VM_SET_CONST VAR_BATTLERENEMYLVL,2
         VM_SET_CONST VAR_WSTR, 5
         VM_SET_CONST VAR_WHP, 10
         VM_SET_CONST VAR_WTYPE, 5
          VM_SET_CONST VAR_WDEF, 10
         VM_SET_CONST VAR_WSPECIAL, 5
         VM_SET_CONST VAR_WSPEED, 1
         VM_JUMP LoadMonsterData
        GenericMonster:
          VM_SET VAR_BATTLERENEMYLVL,VAR_BATTLER1LVL
         VM_SET_CONST VAR_WSTR, 1
         VM_SET_CONST VAR_WHP, 4
         VM_SET_CONST VAR_WTYPE, 0;Aether
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
          

        ; If
        ; -- If Falsy
        VM_IF_CONST             .EQ, VAR_WLOOKINGFOR, 0, 1$, 0
        ; Variable 20 = VAR_BATTLERENEMYLVL+VAR_BATTLERENEMYSTR
        VM_RPN
            .R_REF      VAR_BATTLERENEMYLVL
            .R_REF      VAR_BATTLERENEMYSTR
            .R_OPERATOR .ADD
            .R_REF_SET  VAR_BATTLERENEMYSTR
            .R_STOP

        ; Variable 503 = VAR_BATTLERENEMYHP1+VAR_BATTLERENEMYLVL
        VM_RPN
            .R_REF      VAR_BATTLERENEMYHP1
            .R_REF      VAR_BATTLERENEMYLVL
            .R_OPERATOR .ADD
            .R_REF_SET  VAR_BATTLERENEMYHP1
            .R_STOP

        VM_JUMP                 2$
1$:
        ; Variable 504 = $Battler1LVL+$BattlerHP1
        VM_RPN
            .R_REF      VAR_VARIABLE_1
            .R_REF      VAR_VARIABLE_1
            .R_OPERATOR .ADD
            .R_REF_SET  VAR_BATTLERHP1
            .R_STOP

        ; Variable 18 = $Battler1LVL+VAR_BATTLERSTR
        VM_RPN
            .R_REF      VAR_VARIABLE_1
            .R_REF      VAR_BATTLERSTR
            .R_OPERATOR .ADD
            .R_REF_SET  VAR_BATTLERSTR
            .R_STOP

2$:

        VM_RET_FAR
