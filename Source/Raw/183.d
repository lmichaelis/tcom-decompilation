func void WEAPON_STATCHECK(var C_NPC NPC) {
    if (NPC_HASREADIEDWEAPON(NPC)) {
        WPN = NPC_GETREADIEDWEAPON(NPC);
        ATT = MEM_READINTARRAY(_@(NPC.ATTRIBUTE[0]), WPN.COND_ATR[2]);
        if ((ATT) < (WPN.COND_VALUE[2])) {
            MEM_WRITEINTARRAY(_@(NPC.ATTRIBUTE[0]), WPN.COND_ATR[2], WPN.COND_VALUE[2]);
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_24);
            OCNPC_DROPFROMSLOT(NPC, "ZS_RIGHTHAND");
            OCNPC_DROPFROMSLOT(NPC, "ZS_LEFTHAND");
            AI_REMOVEWEAPON(NPC);
            MEM_WRITEINTARRAY(_@(NPC.ATTRIBUTE[0]), WPN.COND_ATR[2], ATT);
        };
    };
    if ((NPC_HASEQUIPPEDMELEEWEAPON(NPC)) && (!(NPC_HASREADIEDMELEEWEAPON(NPC)))) {
        WPN = NPC_GETEQUIPPEDMELEEWEAPON(NPC);
        ATT = MEM_READINTARRAY(_@(NPC.ATTRIBUTE[0]), WPN.COND_ATR[2]);
        if ((ATT) < (WPN.COND_VALUE[2])) {
            MEM_WRITEINTARRAY(_@(NPC.ATTRIBUTE[0]), WPN.COND_ATR[2], WPN.COND_VALUE[2]);
            EQUIPWEAPON(NPC, NPC_GETMELEEWEAPON(NPC));
            MEM_WRITEINTARRAY(_@(NPC.ATTRIBUTE[0]), WPN.COND_ATR[2], ATT);
        };
    };
    if ((NPC_HASEQUIPPEDRANGEDWEAPON(NPC)) && (!(NPC_HASREADIEDRANGEDWEAPON(NPC)))) {
        WPN = NPC_GETEQUIPPEDRANGEDWEAPON(NPC);
        ATT = MEM_READINTARRAY(_@(NPC.ATTRIBUTE[0]), WPN.COND_ATR[2]);
        if ((ATT) < (WPN.COND_VALUE[2])) {
            MEM_WRITEINTARRAY(_@(NPC.ATTRIBUTE[0]), WPN.COND_ATR[2], WPN.COND_VALUE[2]);
            EQUIPWEAPON(NPC, NPC_GETRANGEDWEAPON(NPC));
            MEM_WRITEINTARRAY(_@(NPC.ATTRIBUTE[0]), WPN.COND_ATR[2], ATT);
        };
    };
}

instance WEAPON_STATCHECK.WPN(C_ITEM)
var int WEAPON_STATCHECK.ATT = 0;
instance BUFF_NOFALLDMGPOTION(LCBUFF) {
    NAME = "no fall damage";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (120) * (1000);
    BUFFTEX = "ItPo_Time_NofallDamage.TGA";
    SHOW = TRUE;
}

instance BUFF_HPREGENERATE(LCBUFF) {
    NAME = "Regenerate HP";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (60) * (1000);
    TICKMS = 0x7d0;
    ONTICK = SAVE_GETFUNCID(0x7ebd);
    BUFFTEX = "ItPo_Regeneration_health.TGA";
    SHOW = TRUE;
}

func void BUFF_HPREGENERATE_TICK(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    if (((N.ATTRIBUTE[1]) / (20)) > (0)) {
        NPC_CHANGEATTRIBUTE(N, ATR_HITPOINTS, (N.ATTRIBUTE[1]) / (20));
    };
    NPC_CHANGEATTRIBUTE(N, ATR_HITPOINTS, 1);
}

var int BUFF_HPREGENERATE_TICK.PTR = 0;
instance BUFF_HPREGENERATE_TICK.N(OCNPC)
instance BUFF_MANAREGENERATE(LCBUFF) {
    NAME = "Regenerate Mana";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (60) * (1000);
    TICKMS = 0x7d0;
    ONTICK = SAVE_GETFUNCID(0x7ec2);
    BUFFTEX = "ItPo_Regeneration_mana.TGA";
    SHOW = TRUE;
}

func void BUFF_MANAREGENERATE_TICK(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    if (((N.ATTRIBUTE[3]) / (10)) > (0)) {
        NPC_CHANGEATTRIBUTE(N, ATR_MANA, (N.ATTRIBUTE[3]) / (10));
    };
    NPC_CHANGEATTRIBUTE(N, ATR_MANA, 1);
}

var int BUFF_MANAREGENERATE_TICK.PTR = 0;
instance BUFF_MANAREGENERATE_TICK.N(OCNPC)
instance BUFF_SPEED(LCBUFF) {
    NAME = "Speed 4min";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (240) * (1000);
    ONAPPLY = SAVE_GETFUNCID(0x7ec7);
    ONREMOVED = SAVE_GETFUNCID(0x7ecb);
    BUFFTEX = "ItPo_Speed2.TGA";
    SHOW = TRUE;
}

func void BUFF_SPEED_APPLY(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    MDL_APPLYOVERLAYMDS(N, HUMANSSPRINTMDS);
}

var int BUFF_SPEED_APPLY.PTR = 0;
instance BUFF_SPEED_APPLY.N(OCNPC)
func void BUFF_SPEED_REMOVE(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    MDL_REMOVEOVERLAYMDS(N, HUMANSSPRINTMDS);
}

var int BUFF_SPEED_REMOVE.PTR = 0;
instance BUFF_SPEED_REMOVE.N(OCNPC)
instance BUFF_HEALTH150(LCBUFF) {
    NAME = "Buff Health50";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = ((3) * (60)) * (1000);
    ONAPPLY = SAVE_GETFUNCID(0x7ed0);
    ONREMOVED = SAVE_GETFUNCID(0x7ed4);
    BUFFTEX = "ItPo_Time_Health.TGA";
    SHOW = TRUE;
}

func void BUFF_HEALTH150_APPLY(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[0] += 150;
    N.ATTRIBUTE[1] += 150;
}

var int BUFF_HEALTH150_APPLY.PTR = 0;
instance BUFF_HEALTH150_APPLY.N(OCNPC)
func void BUFF_HEALTH150_REMOVE(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[1] -= 150;
    if ((N.ATTRIBUTE[0]) > (N.ATTRIBUTE[1])) {
        N.ATTRIBUTE[0] = N.ATTRIBUTE[1];
    };
}

var int BUFF_HEALTH150_REMOVE.PTR = 0;
instance BUFF_HEALTH150_REMOVE.N(OCNPC)
instance BUFF_MANA50(LCBUFF) {
    NAME = "Buff Mana50";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = ((3) * (60)) * (1000);
    ONAPPLY = SAVE_GETFUNCID(0x7ed9);
    ONREMOVED = SAVE_GETFUNCID(0x7edd);
    BUFFTEX = "ItPo_Time_mana.TGA";
    SHOW = TRUE;
}

func void BUFF_MANA50_APPLY(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[2] += 50;
    N.ATTRIBUTE[3] += 50;
}

var int BUFF_MANA50_APPLY.PTR = 0;
instance BUFF_MANA50_APPLY.N(OCNPC)
func void BUFF_MANA50_REMOVE(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[3] -= 50;
    if ((N.ATTRIBUTE[2]) > (N.ATTRIBUTE[3])) {
        N.ATTRIBUTE[2] = N.ATTRIBUTE[3];
    };
    N2 = HLP_GETNPC(0x7ee0);
    WEAPON_STATCHECK(N2);
}

var int BUFF_MANA50_REMOVE.PTR = 0;
instance BUFF_MANA50_REMOVE.N(OCNPC)
instance BUFF_MANA50_REMOVE.N2(C_NPC)
instance BUFF_STR25(LCBUFF) {
    NAME = "Buff Str25";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = ((3) * (60)) * (1000);
    ONAPPLY = SAVE_GETFUNCID(0x7ee3);
    ONREMOVED = SAVE_GETFUNCID(0x7ee7);
    BUFFTEX = "ItPo_Time_Str.TGA";
    SHOW = TRUE;
}

func void BUFF_STR25_APPLY(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[4] += 25;
}

var int BUFF_STR25_APPLY.PTR = 0;
instance BUFF_STR25_APPLY.N(OCNPC)
func void BUFF_STR25_REMOVE(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[4] -= 25;
    N2 = HLP_GETNPC(0x7eea);
    WEAPON_STATCHECK(N2);
}

var int BUFF_STR25_REMOVE.PTR = 0;
instance BUFF_STR25_REMOVE.N(OCNPC)
instance BUFF_STR25_REMOVE.N2(C_NPC)
instance BUFF_DEX25(LCBUFF) {
    NAME = "Buff Dex25";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = ((3) * (60)) * (1000);
    ONAPPLY = SAVE_GETFUNCID(0x7eed);
    ONREMOVED = SAVE_GETFUNCID(0x7ef1);
    BUFFTEX = "ItPo_Time_Dex.TGA";
    SHOW = TRUE;
}

func void BUFF_DEX25_APPLY(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[5] += 25;
}

var int BUFF_DEX25_APPLY.PTR = 0;
instance BUFF_DEX25_APPLY.N(OCNPC)
func void BUFF_DEX25_REMOVE(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[5] -= 25;
    N2 = HLP_GETNPC(0x7ef4);
    WEAPON_STATCHECK(N2);
}

var int BUFF_DEX25_REMOVE.PTR = 0;
instance BUFF_DEX25_REMOVE.N(OCNPC)
instance BUFF_DEX25_REMOVE.N2(C_NPC)
instance BUFF_DEF50(LCBUFF) {
    NAME = "Buff Def50";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = ((3) * (60)) * (1000);
    ONAPPLY = SAVE_GETFUNCID(0x7ef7);
    ONREMOVED = SAVE_GETFUNCID(0x7efb);
    BUFFTEX = "ItPo_Time_def.TGA";
    SHOW = TRUE;
}

func void BUFF_DEF50_APPLY(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.PROTECTION[2] += 50;
    N.PROTECTION[1] += 50;
    N.PROTECTION[6] += 50;
    N.PROTECTION[5] += 50;
    N.PROTECTION[3] += 50;
}

var int BUFF_DEF50_APPLY.PTR = 0;
instance BUFF_DEF50_APPLY.N(OCNPC)
func void BUFF_DEF50_REMOVE(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.PROTECTION[2] -= 50;
    N.PROTECTION[1] -= 50;
    N.PROTECTION[6] -= 50;
    N.PROTECTION[5] -= 50;
    N.PROTECTION[3] -= 50;
}

var int BUFF_DEF50_REMOVE.PTR = 0;
instance BUFF_DEF50_REMOVE.N(OCNPC)
instance BUFF_DEF25(LCBUFF) {
    NAME = "Buff Def25";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = ((3) * (60)) * (1000);
    ONAPPLY = SAVE_GETFUNCID(0x7f00);
    ONREMOVED = SAVE_GETFUNCID(0x7f04);
    BUFFTEX = "ItPo_Time_def.TGA";
    SHOW = TRUE;
}

func void BUFF_DEF25_APPLY(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.PROTECTION[2] += 25;
    N.PROTECTION[1] += 25;
    N.PROTECTION[6] += 25;
    N.PROTECTION[5] += 25;
    N.PROTECTION[3] += 25;
}

var int BUFF_DEF25_APPLY.PTR = 0;
instance BUFF_DEF25_APPLY.N(OCNPC)
func void BUFF_DEF25_REMOVE(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.PROTECTION[2] -= 25;
    N.PROTECTION[1] -= 25;
    N.PROTECTION[6] -= 25;
    N.PROTECTION[5] -= 25;
    N.PROTECTION[3] -= 25;
}

var int BUFF_DEF25_REMOVE.PTR = 0;
instance BUFF_DEF25_REMOVE.N(OCNPC)
instance BUFF_DIVE10(LCBUFF) {
    NAME = "Buff Dive10";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (600) * (1000);
    TICKMS = 1000;
    ONTICK = SAVE_GETFUNCID(0x7f09);
    BUFFTEX = "ItPo_Time_NoWaterDamage.TGA";
    SHOW = TRUE;
}

func void BUFF_DIVE10_TICK(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.DIVETIME = MKF((30) * (1000));
    N.DIVECTR = MKF((31) * (1000));
}

var int BUFF_DIVE10_TICK.PTR = 0;
instance BUFF_DIVE10_TICK.N(OCNPC)
instance BUFF_SLAGERMEAT_STR20(LCBUFF) {
    NAME = "Buff SlagerMeat Str20";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (60) * (1000);
    TICKMS = 0x7d0;
    ONTICK = SAVE_GETFUNCID(0x7f0e);
    BUFFTEX = "ItFo_FishCotlet.TGA";
    SHOW = FALSE;
}

func void BUFF_SLAGERMEAT_STR20_APPLY(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    if (((N.ATTRIBUTE[3]) / (40)) > (0)) {
        NPC_CHANGEATTRIBUTE(N, ATR_MANA, (N.ATTRIBUTE[3]) / (40));
    };
    NPC_CHANGEATTRIBUTE(N, ATR_MANA, 1);
    BUFF_REFRESH(BH);
}

var int BUFF_SLAGERMEAT_STR20_APPLY.PTR = 0;
instance BUFF_SLAGERMEAT_STR20_APPLY.N(OCNPC)
func void BUFF_SLAGERMEAT_STR20_REMOVE(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[4] -= 20;
    N2 = HLP_GETNPC(0x7f15);
    WEAPON_STATCHECK(N2);
}

var int BUFF_SLAGERMEAT_STR20_REMOVE.PTR = 0;
instance BUFF_SLAGERMEAT_STR20_REMOVE.N(OCNPC)
instance BUFF_SLAGERMEAT_STR20_REMOVE.N2(C_NPC)
instance BUFF_SLAGERMEAT_DEX20(LCBUFF) {
    NAME = "Buff SlagerMeat Dex20";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (60) * (1000);
    ONAPPLY = SAVE_GETFUNCID(0x7f18);
    ONREMOVED = SAVE_GETFUNCID(0x7f1c);
    BUFFTEX = "ItFo_FishCotlet.TGA";
    SHOW = TRUE;
}

func void BUFF_SLAGERMEAT_DEX20_APPLY(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[5] += 20;
}

var int BUFF_SLAGERMEAT_DEX20_APPLY.PTR = 0;
instance BUFF_SLAGERMEAT_DEX20_APPLY.N(OCNPC)
func void BUFF_SLAGERMEAT_DEX20_REMOVE(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[5] -= 20;
    N2 = HLP_GETNPC(0x7f1f);
    WEAPON_STATCHECK(N2);
}

var int BUFF_SLAGERMEAT_DEX20_REMOVE.PTR = 0;
instance BUFF_SLAGERMEAT_DEX20_REMOVE.N(OCNPC)
instance BUFF_SLAGERMEAT_DEX20_REMOVE.N2(C_NPC)
instance BUFF_SLAGERMEAT_HEALTH100(LCBUFF) {
    NAME = "Buff SlagerMeat Health100";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (60) * (1000);
    ONAPPLY = SAVE_GETFUNCID(0x7f22);
    ONREMOVED = SAVE_GETFUNCID(0x7f26);
    BUFFTEX = "ItFo_FishCotlet.TGA";
    SHOW = TRUE;
}

func void BUFF_SLAGERMEAT_HEALTH100_APPLY(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[0] += 100;
    N.ATTRIBUTE[1] += 100;
}

var int BUFF_SLAGERMEAT_HEALTH100_APPLY.PTR = 0;
instance BUFF_SLAGERMEAT_HEALTH100_APPLY.N(OCNPC)
func void BUFF_SLAGERMEAT_HEALTH100_REMOVE(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[1] -= 100;
    if ((N.ATTRIBUTE[0]) > (N.ATTRIBUTE[1])) {
        N.ATTRIBUTE[0] = N.ATTRIBUTE[1];
    };
}

var int BUFF_SLAGERMEAT_HEALTH100_REMOVE.PTR = 0;
instance BUFF_SLAGERMEAT_HEALTH100_REMOVE.N(OCNPC)
instance BUFF_STRDOORBASH(LCBUFF) {
    NAME = "Buff Door Bash";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (60) * (1000);
    TICKMS = 0x7d0;
    ONTICK = SAVE_GETFUNCID(0x7f2b);
    ONAPPLY = SAVE_GETFUNCID(0x7f2d);
    ONREMOVED = SAVE_GETFUNCID(0x7f31);
    BUFFTEX = "ItPo_Time_STR.TGA";
    SHOW = TRUE;
}

func void BUFF_STRDOORBASH_TICK(var int BH) {
    if ((SQ313_SUPERSTRENGTH) == (TRUE)) {
        BUFF_REFRESH(BH);
    };
}

func void BUFF_STRDOORBASH_APPLY(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[4] += 100;
}

var int BUFF_STRDOORBASH_APPLY.PTR = 0;
instance BUFF_STRDOORBASH_APPLY.N(OCNPC)
func void BUFF_STRDOORBASH_REMOVE(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[4] -= 100;
    N2 = HLP_GETNPC(0x7f34);
    WEAPON_STATCHECK(N2);
}

var int BUFF_STRDOORBASH_REMOVE.PTR = 0;
instance BUFF_STRDOORBASH_REMOVE.N(OCNPC)
instance BUFF_STRDOORBASH_REMOVE.N2(C_NPC)
instance BUFF_WATERMAGESET(LCBUFF) {
    NAME = "WaterMageSet";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (60) * (1000);
    TICKMS = 0x7d0;
    ONTICK = SAVE_GETFUNCID(0x7f37);
    BUFFTEX = "DEFAULT.TGA";
    SHOW = FALSE;
}

func void BUFF_WATERMAGESET_TICK(var int BH) {
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    if (SETBONUS_WATERMAGESET_READY_02) {
        if (((N.ATTRIBUTE[3]) / (40)) > (0)) {
            NPC_CHANGEATTRIBUTE(N, ATR_MANA, (N.ATTRIBUTE[3]) / (40));
        } else {
            NPC_CHANGEATTRIBUTE(N, ATR_MANA, 1);
        } else {
            BUFF_REFRESH(BH);
        } else {
            /* set_instance(0) */;
        };
    };
    if (SETBONUS_WATERMAGESET_READY_01) {
        if (((N.ATTRIBUTE[3]) / (80)) > (0)) {
            NPC_CHANGEATTRIBUTE(N, ATR_MANA, (N.ATTRIBUTE[3]) / (80));
        } else {
            NPC_CHANGEATTRIBUTE(N, ATR_MANA, 1);
        } else {
            BUFF_REFRESH(BH);
        } else {
            /* set_instance(0) */;
        };
    };
    BUFF_REMOVE(BH);
}

var int BUFF_WATERMAGESET_TICK.PTR = 0;
instance BUFF_WATERMAGESET_TICK.N(OCNPC)
