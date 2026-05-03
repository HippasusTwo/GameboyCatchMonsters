#pragma bank 255

// Scene: Battle
// Triggers

#include "gbs_types.h"
#include "data/trigger_fight_interact.h"
#include "data/trigger_itemsbattle_interact.h"
#include "data/trigger_switchy_interact.h"
#include "data/trigger_45_interact.h"

BANKREF(scene_battle_triggers)

const struct trigger_t scene_battle_triggers[] = {
    {
        // Fight,
        .left = 2,
        .top = 14,
        .right = 9,
        .bottom = 14,
        .script = TO_FAR_PTR_T(trigger_fight_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Items,
        .left = 12,
        .top = 14,
        .right = 17,
        .bottom = 14,
        .script = TO_FAR_PTR_T(trigger_itemsbattle_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Switchy,
        .left = 3,
        .top = 16,
        .right = 8,
        .bottom = 16,
        .script = TO_FAR_PTR_T(trigger_switchy_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .left = 12,
        .top = 16,
        .right = 18,
        .bottom = 16,
        .script = TO_FAR_PTR_T(trigger_45_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
