const int VALUE_RU_SLOWDOWN = 200;
const int VALUE_RU_ACID = 200;
const int VALUE_RU_TELEPORT = 200;
const int VALUE_RU_PICKLOCK = 200;
const int VALUE_RU_TELEKINESIS = 200;
const int VALUE_RU_SPAWN_SNAPPER = 200;
const int VALUE_RU_SPAWN_BEAR = 200;
const int SPL_DURATION_SLOWDOWN = 1;
instance ITRU_SLOWDOWN(C_ITEM) {
    NAME = NAME_RUNE;
    MAINFLAG = ITEM_KAT_RUNE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_RU_SLOWDOWN;
    VISUAL = "ItRu_Shrink.3DS";
    MATERIAL = MAT_STONE;
    SPELL = SPL_SLOWDOWN;
    MAG_CIRCLE = 4;
    WEAR = WEAR_EFFECT;
    EFFECT = "SPELLFX_WEAKGLIMMER";
    DESCRIPTION = NAME_SPL_SLOWDOWN;
    TEXT[0] = DESCRUNE_SLOWDOWN;
    TEXT[1] = NAME_MANAKOSTEN;
    COUNT[1] = SPL_COST_SLOWDOWN;
    TEXT[2] = NAME_DURATION;
    COUNT[2] = SPL_DURATION_SLOWDOWN;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITRU_ACID(C_ITEM) {
    NAME = NAME_SPL_ACID;
    MAINFLAG = ITEM_KAT_RUNE;
    FLAGS = 0;
    VALUE = VALUE_RU_ACID;
    VISUAL = "ItRu_InstantFireball.3DS";
    MATERIAL = MAT_STONE;
    MAG_CIRCLE = 5;
    SPELL = SPL_ACID;
    WEAR = WEAR_EFFECT;
    EFFECT = "SPELLFX_WEAKGLIMMER";
    DESCRIPTION = NAME;
    TEXT[0] = DESCRUNE_ACID;
    TEXT[1] = NAME_MANAKOSTEN;
    COUNT[1] = SPL_COST_ACID;
    TEXT[2] = NAME_DAM_MAGIC;
    COUNT[2] = SPL_DAMAGE_ACID;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITRU_PICKLOCK(C_ITEM) {
    NAME = NAME_SPL_PICKLOCK;
    MAINFLAG = ITEM_KAT_RUNE;
    FLAGS = 0;
    VALUE = VALUE_RU_PICKLOCK;
    VISUAL = "itru_lockpicking.3DS";
    MATERIAL = MAT_STONE;
    MAG_CIRCLE = 2;
    SPELL = SPL_PICKLOCK;
    WEAR = WEAR_EFFECT;
    EFFECT = "SPELLFX_WEAKGLIMMER";
    DESCRIPTION = NAME;
    TEXT[0] = DESCRUNE_PICKLOCK;
    TEXT[1] = NAME_MANAPERSEC;
    COUNT[1] = SPL_COST_PICKLOCK;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITRU_TELEKINESIS(C_ITEM) {
    NAME = NAME_SPL_TELEKINESIS;
    MAINFLAG = ITEM_KAT_RUNE;
    FLAGS = 0;
    VALUE = VALUE_RU_TELEKINESIS;
    VISUAL = "itru_Telekinesis.3DS";
    MATERIAL = MAT_STONE;
    MAG_CIRCLE = 2;
    SPELL = SPL_TELEKINESIS;
    WEAR = WEAR_EFFECT;
    EFFECT = "SPELLFX_WEAKGLIMMER";
    DESCRIPTION = NAME;
    TEXT[0] = DESCRUNE_TELEKINESIS;
    TEXT[1] = NAME_MANAPERSEC;
    COUNT[1] = STEP_TELEKINESIS;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITRU_TELEPORTKM(C_ITEM) {
    NAME = NAME_SPL_TELEPORTKM;
    MAINFLAG = ITEM_KAT_RUNE;
    FLAGS = ITEM_IMPORTANT;
    VALUE = VALUE_RU_TELEPORT;
    VISUAL = "ItRu_Teleport.3ds";
    MATERIAL = MAT_STONE;
    SPELL = SPL_PALTELEPORTSECRET;
    WEAR = WEAR_EFFECT;
    EFFECT = "SPELLFX_WEAKGLIMMER";
    DESCRIPTION = NAME;
    TEXT[0] = DESCRUNE_TELEPORT;
    TEXT[1] = NAME_MANAKOSTEN;
    COUNT[1] = SPL_COST_TELEPORT;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITRU_SUMSNAPPER(C_ITEM) {
    NAME = NAME_SPL_SUMMONSNAPPER;
    MAINFLAG = ITEM_KAT_RUNE;
    FLAGS = 0;
    VALUE = VALUE_RU_SPAWN_SNAPPER;
    VISUAL = "itru_snapper.3DS";
    MATERIAL = MAT_STONE;
    MAG_CIRCLE = 2;
    SPELL = SPL_SUMMONSNAPPER;
    WEAR = WEAR_EFFECT;
    EFFECT = "SPELLFX_WEAKGLIMMER";
    DESCRIPTION = NAME;
    TEXT[0] = DESCRUNE_SUMSNAPPER;
    TEXT[1] = NAME_MANA_NEEDED;
    COUNT[1] = SPL_COST_SUMMONSNAPPER;
    TEXT[2] = NAME_SEC_DURATION;
    COUNT[2] = MONSTER_SUMMON_TIME;
    TEXT[3] = DESCRUNE_SUMMONINFO_1;
    TEXT[4] = DESCRUNE_SUMMONINFO_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITRU_SUMBEAR(C_ITEM) {
    NAME = NAME_SPL_SUMMONBEAR;
    MAINFLAG = ITEM_KAT_RUNE;
    FLAGS = 0;
    VALUE = VALUE_RU_SPAWN_BEAR;
    VISUAL = "itru_bear.3DS";
    MATERIAL = MAT_STONE;
    MAG_CIRCLE = 3;
    SPELL = SPL_SUMMONBEAR;
    WEAR = WEAR_EFFECT;
    EFFECT = "SPELLFX_WEAKGLIMMER";
    DESCRIPTION = NAME;
    TEXT[0] = DESCRUNE_SUMBEAR;
    TEXT[1] = NAME_MANA_NEEDED;
    COUNT[1] = SPL_COST_SUMMONBEAR;
    TEXT[2] = NAME_SEC_DURATION;
    COUNT[2] = MONSTER_SUMMON_TIME;
    TEXT[3] = DESCRUNE_SUMMONINFO_1;
    TEXT[4] = DESCRUNE_SUMMONINFO_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

