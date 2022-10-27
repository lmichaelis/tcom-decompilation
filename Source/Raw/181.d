const int MAX_IG_MEAT = 22;
var int ITEMGROUP_MEAT[22] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
var int ITEMGROUP_MEAT_IGNOREMASK[22] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
const int MAX_IG_MEATRAW = 11;
var int ITEMGROUP_MEATRAW[11] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
const int MAX_IG_MEATFRIED = 11;
var int ITEMGROUP_MEATFRIED[11] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
const int MAX_IG_VEGETABLE = 5;
var int ITEMGROUP_VEGETABLE[5] = {0, 0, 0, 0, 0};
var int ITEMGROUP_VEGETABLE_IGNOREMASK[5] = {0, 0, 0, 0, 0};
var int ITEMGROUPSINITED = 0;
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

func void NPC_REMOVEINVITEMGROUP(var C_NPC NPC, var int GROUPINSTANCE, var int AMOUNT) {
    ITM_COUNTER = 0;
    ITEMGROUP = MEM_PTRTOINST(ITM_GETPTR(GROUPINSTANCE));
    REPEAT(I, ITEMGROUP.VALUE);
    ITEMINST = MEM_READINTARRAY(ITEMGROUP.HP, I);
    if (((GROUPINSTANCE) == (HLP_GETINSTANCEID(ITGR_MEAT))) && ((MEM_READINTARRAY(_@(ITEMGROUP_MEAT_IGNOREMASK[0]), I)) == (FALSE))) {
        PRINTD(CS2("ignore meat", I2S(I)));
    };
    if (((GROUPINSTANCE) == (HLP_GETINSTANCEID(ITGR_VEGETABLE))) && ((MEM_READINTARRAY(_@(ITEMGROUP_VEGETABLE_IGNOREMASK[0]), I)) == (FALSE))) {
        PRINTD(CS2("ignore vege", I2S(I)));
    };
    if ((NPC_HASITEMS(NPC, ITEMINST)) >= ((AMOUNT) - (ITM_COUNTER))) {
    };
    ITM_COUNTER += NPC_HASITEMS(NPC, ITEMINST);
    END;
}

var int NPC_REMOVEINVITEMGROUP.ITM_COUNTER = 0;
instance NPC_REMOVEINVITEMGROUP.ITEMGROUP(C_ITEM)
var int NPC_REMOVEINVITEMGROUP.I = 0;
var int NPC_REMOVEINVITEMGROUP.ITEMINST = 0;
func int NPC_HASITEMGROUP(var C_NPC NPC, var int GROUPINSTANCE) {
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

var int NPC_HASITEMGROUP.ITM_COUNTER = 0;
instance NPC_HASITEMGROUP.ITEMGROUP(C_ITEM)
var int NPC_HASITEMGROUP.I = 0;
func int MOB_HASITEMGROUP(var string MOBNAME, var int GROUPINSTANCE) {
    ITM_COUNTER = 0;
    ITEMGROUP = MEM_PTRTOINST(ITM_GETPTR(GROUPINSTANCE));
    REPEAT(I, ITEMGROUP.VALUE);
    ITM_COUNTER += MOB_HASITEMS(MOBNAME, MEM_READINTARRAY(ITEMGROUP.HP, I));
    END;
    return ITM_COUNTER;
}

var int MOB_HASITEMGROUP.ITM_COUNTER = 0;
instance MOB_HASITEMGROUP.ITEMGROUP(C_ITEM)
var int MOB_HASITEMGROUP.I = 0;
func void INIT_ITEMGROUPS_MEAT() {
    ITGR_MEAT.HP = _@(ITEMGROUP_MEAT[0]);
    ITEMGROUP_MEAT[0] = 0x8433;
    ITEMGROUP_MEAT[1] = 0x8e33;
    ITEMGROUP_MEAT[2] = 0x8e37;
    ITEMGROUP_MEAT[3] = 0x8e3b;
    ITEMGROUP_MEAT[4] = 0x8e3f;
    ITEMGROUP_MEAT[5] = 0x8e43;
    ITEMGROUP_MEAT[6] = 0x8e4b;
    ITEMGROUP_MEAT[7] = 0x8e57;
    ITEMGROUP_MEAT[8] = 0x8e47;
    ITEMGROUP_MEAT[9] = 0x8e53;
    ITEMGROUP_MEAT[10] = 0x8e4f;
    ITEMGROUP_MEAT[11] = 0x8435;
    ITEMGROUP_MEAT[12] = 0x8e35;
    ITEMGROUP_MEAT[13] = 0x8e39;
    ITEMGROUP_MEAT[14] = 0x8e3d;
    ITEMGROUP_MEAT[15] = 0x8e41;
    ITEMGROUP_MEAT[16] = 0x8e45;
    ITEMGROUP_MEAT[17] = 0x8e4d;
    ITEMGROUP_MEAT[18] = 0x8e59;
    ITEMGROUP_MEAT[19] = 0x8e49;
    ITEMGROUP_MEAT[20] = 0x8e55;
    ITEMGROUP_MEAT[21] = 0x8e51;
    ITGR_MEATRAW.HP = _@(ITEMGROUP_MEATRAW[0]);
    ITEMGROUP_MEATRAW[0] = 0x8433;
    ITEMGROUP_MEATRAW[1] = 0x8e33;
    ITEMGROUP_MEATRAW[2] = 0x8e37;
    ITEMGROUP_MEATRAW[3] = 0x8e3b;
    ITEMGROUP_MEATRAW[4] = 0x8e3f;
    ITEMGROUP_MEATRAW[5] = 0x8e43;
    ITEMGROUP_MEATRAW[6] = 0x8e4b;
    ITEMGROUP_MEATRAW[7] = 0x8e57;
    ITEMGROUP_MEATRAW[8] = 0x8e47;
    ITEMGROUP_MEATRAW[9] = 0x8e53;
    ITEMGROUP_MEATRAW[10] = 0x8e4f;
    ITGR_MEATFRIED.HP = _@(ITEMGROUP_MEATFRIED[0]);
    ITEMGROUP_MEATFRIED[0] = 0x8435;
    ITEMGROUP_MEATFRIED[1] = 0x8e35;
    ITEMGROUP_MEATFRIED[2] = 0x8e39;
    ITEMGROUP_MEATFRIED[3] = 0x8e3d;
    ITEMGROUP_MEATFRIED[4] = 0x8e41;
    ITEMGROUP_MEATFRIED[5] = 0x8e45;
    ITEMGROUP_MEATFRIED[6] = 0x8e4d;
    ITEMGROUP_MEATFRIED[7] = 0x8e59;
    ITEMGROUP_MEATFRIED[8] = 0x8e49;
    ITEMGROUP_MEATFRIED[9] = 0x8e55;
    ITEMGROUP_MEATFRIED[10] = 0x8e51;
    ITGR_VEGETABLE.HP = _@(ITEMGROUP_VEGETABLE[0]);
    ITEMGROUP_VEGETABLE[0] = 0x85de;
    ITEMGROUP_VEGETABLE[1] = 0x8e1c;
    ITEMGROUP_VEGETABLE[2] = 0x8e1a;
    ITEMGROUP_VEGETABLE[3] = 0x8e1e;
    ITEMGROUP_VEGETABLE[4] = 0x8e19;
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

