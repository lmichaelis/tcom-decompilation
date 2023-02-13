var int ITEMGROUP_MEATRAW[11];
const int MAX_IG_MEATFRIED = 11;
var int ITEMGROUP_MEATFRIED[11];
const int MAX_IG_VEGETABLE = 5;
var int ITEMGROUP_VEGETABLE[5];
var int ITEMGROUP_VEGETABLE_IGNOREMASK[5];
var int ITEMGROUPSINITED;
instance ITGR_MEAT(C_ITEM) {
    NAME = FOODNAME_MEAT;
    DESCRIPTION = NAME;
    HP = _@(ITEMGROUP_MEAT[0]);
    VALUE = MAX_IG_MEAT;
}

instance ITGR_MEATRAW(C_ITEM) {
    NAME = FOODNAME_MEATRAW;
    DESCRIPTION = NAME;
    HP = _@(ITEMGROUP_MEATRAW[0]);
    VALUE = MAX_IG_MEATRAW;
}

instance ITGR_MEATFRIED(C_ITEM) {
    NAME = FOODNAME_MEATFRIED;
    DESCRIPTION = NAME;
    HP = _@(ITEMGROUP_MEAT[0]);
    VALUE = MAX_IG_MEATFRIED;
}

instance ITGR_VEGETABLE(C_ITEM) {
    NAME = FOODNAME_VEGETABLES;
    DESCRIPTION = NAME;
    HP = _@(ITEMGROUP_VEGETABLE[0]);
    VALUE = MAX_IG_VEGETABLE;
}

func int HLP_ISITEMGROUP(var int INST) {
    if (((((INST) == (HLP_GETINSTANCEID(ITGR_MEAT))) || ((INST) == (HLP_GETINSTANCEID(ITGR_MEATRAW)))) || ((INST) == (HLP_GETINSTANCEID(ITGR_MEATFRIED)))) || ((INST) == (HLP_GETINSTANCEID(ITGR_VEGETABLE)))) {
        return TRUE;
    };
    return FALSE;
}

func int NPC_HASITEMGROUP(var C_NPC NPC, var int GROUPINSTANCE) {
    var int I;
    var C_ITEM ITEMGROUP;
    var int ITM_COUNTER;
    ITM_COUNTER = 0;
    ITEMGROUP = MEM_PTRTOINST(ITM_GETPTR(GROUPINSTANCE));
    REPEAT(I, ITEMGROUP.VALUE);
    if (((GROUPINSTANCE) == (HLP_GETINSTANCEID(ITGR_MEAT))) && ((MEM_READINTARRAY(_@(ITEMGROUP_MEAT_IGNOREMASK[0]), I)) == (FALSE))) {
        PRINTD(CS2("ignore meat", I2S(I)));
    };
    if (((GROUPINSTANCE) == (HLP_GETINSTANCEID(ITGR_VEGETABLE))) && ((MEM_READINTARRAY(_@(ITEMGROUP_VEGETABLE_IGNOREMASK[0]), I)) == (FALSE))) {
        PRINTD(CS2("ignore vege", I2S(I)));
    };
    ITM_COUNTER += NPC_HASITEMS(NPC, MEM_READINTARRAY(ITEMGROUP.HP, I));
    END;
    return ITM_COUNTER;
}

func void INIT_ITEMGROUPS() {
    INIT_ITEMGROUPS_MEAT();
    if (!(ITEMGROUPSINITED)) {
        ITEMGROUP_MEAT_IGNOREMASK[0] = TRUE;
        ITEMGROUP_MEAT_IGNOREMASK[1] = TRUE;
        ITEMGROUP_MEAT_IGNOREMASK[2] = FALSE;
        ITEMGROUP_MEAT_IGNOREMASK[3] = TRUE;
        ITEMGROUP_MEAT_IGNOREMASK[4] = TRUE;
        ITEMGROUP_MEAT_IGNOREMASK[5] = TRUE;
        ITEMGROUP_MEAT_IGNOREMASK[6] = FALSE;
        ITEMGROUP_MEAT_IGNOREMASK[7] = TRUE;
        ITEMGROUP_MEAT_IGNOREMASK[8] = FALSE;
        ITEMGROUP_MEAT_IGNOREMASK[9] = FALSE;
        ITEMGROUP_MEAT_IGNOREMASK[10] = FALSE;
        ITEMGROUP_MEAT_IGNOREMASK[11] = TRUE;
        ITEMGROUP_MEAT_IGNOREMASK[12] = TRUE;
        ITEMGROUP_MEAT_IGNOREMASK[13] = FALSE;
        ITEMGROUP_MEAT_IGNOREMASK[14] = TRUE;
        ITEMGROUP_MEAT_IGNOREMASK[15] = TRUE;
        ITEMGROUP_MEAT_IGNOREMASK[16] = TRUE;
        ITEMGROUP_MEAT_IGNOREMASK[17] = FALSE;
        ITEMGROUP_MEAT_IGNOREMASK[18] = TRUE;
        ITEMGROUP_MEAT_IGNOREMASK[19] = FALSE;
        ITEMGROUP_MEAT_IGNOREMASK[20] = FALSE;
        ITEMGROUP_MEAT_IGNOREMASK[21] = FALSE;
        ITEMGROUP_VEGETABLE_IGNOREMASK[0] = TRUE;
        ITEMGROUP_VEGETABLE_IGNOREMASK[1] = TRUE;
        ITEMGROUP_VEGETABLE_IGNOREMASK[2] = TRUE;
        ITEMGROUP_VEGETABLE_IGNOREMASK[3] = TRUE;
        ITEMGROUP_VEGETABLE_IGNOREMASK[4] = FALSE;
        ITEMGROUPSINITED = TRUE;
    };
}
