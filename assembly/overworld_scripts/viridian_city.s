.thumb
.align 2

.include "../asm_defines.s"
.include "../xse_commands.s"
.include "../xse_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ VAR_PRE_BATTLE_MUGSHOT_STYLE, 0x503A
.equ VAR_PRE_BATTLE_MUGSHOT_SPRITE, 0x503B

.equ VAR_GRANDMASTER_EFFECT, 0x511F
.equ BLAZING_HEART_T, 1

.global EventScript_ViridianCity_CynthiaT
EventScript_ViridianCity_CynthiaT:
    checktrainerflag 0x1
    if false _goto Cynthia_BattleEvent
    msgbox gText_Cynthia_After MSG_FACE
    release
    end

Cynthia_BattleEvent:
    msgbox gText_Cynthia_Intro MSG_FACE
    setvar VAR_PRE_BATTLE_MUGSHOT_STYLE 0x2
    setvar VAR_PRE_BATTLE_MUGSHOT_SPRITE 0x0
    setvar VAR_GRANDMASTER_EFFECT BLAZING_HEART_T
    trainerbattle3 0x3 0x1 0x200 gText_Cynthia_Defeat
    return
