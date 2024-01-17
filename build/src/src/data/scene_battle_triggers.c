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
        .x = 2,
        .y = 14,
        .width = 8,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_fight_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Items,
        .x = 12,
        .y = 14,
        .width = 6,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_itemsbattle_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Switchy,
        .x = 3,
        .y = 16,
        .width = 6,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_switchy_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 12,
        .y = 16,
        .width = 7,
        .height = 1,
        .script = TO_FAR_PTR_T(trigger_45_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
