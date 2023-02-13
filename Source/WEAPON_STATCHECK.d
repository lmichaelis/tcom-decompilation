func void WEAPON_STATCHECK(var C_NPC NPC) {
    var int ATT;
    var C_ITEM WPN;
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

instance BUFF_HPREGENERATE(LCBUFF) {
    NAME = "Regenerate HP";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (60) * (1000);
    TICKMS = 2000;
    ONTICK = SAVE_GETFUNCID(32445);
    BUFFTEX = "ItPo_Regeneration_health.TGA";
    SHOW = TRUE;
}

func void BUFF_HPREGENERATE_TICK(var int BH) {
    var OCNPC N;
    var int PTR;
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

func void BUFF_MANAREGENERATE_TICK(var int BH) {
    var OCNPC N;
    var int PTR;
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

func void BUFF_SPEED_APPLY(var int BH) {
    var OCNPC N;
    var int PTR;
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    MDL_APPLYOVERLAYMDS(N, HUMANSSPRINTMDS);
}

instance BUFF_HEALTH150(LCBUFF) {
    NAME = "Buff Health50";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = ((3) * (60)) * (1000);
    ONAPPLY = SAVE_GETFUNCID(32464);
    ONREMOVED = SAVE_GETFUNCID(32468);
    BUFFTEX = "ItPo_Time_Health.TGA";
    SHOW = TRUE;
}

func void BUFF_HEALTH150_APPLY(var int BH) {
    var OCNPC N;
    var int PTR;
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[0] += 150;
    N.ATTRIBUTE[1] += 150;
}

instance BUFF_MANA50(LCBUFF) {
    NAME = "Buff Mana50";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = ((3) * (60)) * (1000);
    ONAPPLY = SAVE_GETFUNCID(32473);
    ONREMOVED = SAVE_GETFUNCID(32477);
    BUFFTEX = "ItPo_Time_mana.TGA";
    SHOW = TRUE;
}

func void BUFF_MANA50_APPLY(var int BH) {
    var OCNPC N;
    var int PTR;
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[2] += 50;
    N.ATTRIBUTE[3] += 50;
}

instance BUFF_STR25(LCBUFF) {
    NAME = "Buff Str25";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = ((3) * (60)) * (1000);
    ONAPPLY = SAVE_GETFUNCID(32483);
    ONREMOVED = SAVE_GETFUNCID(32487);
    BUFFTEX = "ItPo_Time_Str.TGA";
    SHOW = TRUE;
}

func void BUFF_STR25_APPLY(var int BH) {
    var OCNPC N;
    var int PTR;
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[4] += 25;
}

instance BUFF_DEX25(LCBUFF) {
    NAME = "Buff Dex25";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = ((3) * (60)) * (1000);
    ONAPPLY = SAVE_GETFUNCID(32493);
    ONREMOVED = SAVE_GETFUNCID(32497);
    BUFFTEX = "ItPo_Time_Dex.TGA";
    SHOW = TRUE;
}

func void BUFF_DEX25_APPLY(var int BH) {
    var OCNPC N;
    var int PTR;
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[5] += 25;
}

instance BUFF_DEF50(LCBUFF) {
    NAME = "Buff Def50";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = ((3) * (60)) * (1000);
    ONAPPLY = SAVE_GETFUNCID(32503);
    ONREMOVED = SAVE_GETFUNCID(32507);
    BUFFTEX = "ItPo_Time_def.TGA";
    SHOW = TRUE;
}

func void BUFF_DEF50_APPLY(var int BH) {
    var OCNPC N;
    var int PTR;
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

instance BUFF_DEF25(LCBUFF) {
    NAME = "Buff Def25";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = ((3) * (60)) * (1000);
    ONAPPLY = SAVE_GETFUNCID(32512);
    ONREMOVED = SAVE_GETFUNCID(32516);
    BUFFTEX = "ItPo_Time_def.TGA";
    SHOW = TRUE;
}

func void BUFF_DEF25_APPLY(var int BH) {
    var OCNPC N;
    var int PTR;
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

instance BUFF_DIVE10(LCBUFF) {
    NAME = "Buff Dive10";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (600) * (1000);
    TICKMS = 1000;
    ONTICK = SAVE_GETFUNCID(32521);
    BUFFTEX = "ItPo_Time_NoWaterDamage.TGA";
    SHOW = TRUE;
}

func void BUFF_DIVE10_TICK(var int BH) {
    var OCNPC N;
    var int PTR;
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.DIVETIME = MKF((30) * (1000));
    N.DIVECTR = MKF((31) * (1000));
}

func void BUFF_SLAGERMEAT_STR20_APPLY(var int BH) {
    var OCNPC N;
    var int PTR;
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

instance BUFF_SLAGERMEAT_DEX20(LCBUFF) {
    NAME = "Buff SlagerMeat Dex20";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (60) * (1000);
    ONAPPLY = SAVE_GETFUNCID(32536);
    ONREMOVED = SAVE_GETFUNCID(32540);
    BUFFTEX = "ItFo_FishCotlet.TGA";
    SHOW = TRUE;
}

func void BUFF_SLAGERMEAT_DEX20_APPLY(var int BH) {
    var OCNPC N;
    var int PTR;
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[5] += 20;
}

instance BUFF_SLAGERMEAT_HEALTH100(LCBUFF) {
    NAME = "Buff SlagerMeat Health100";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (60) * (1000);
    ONAPPLY = SAVE_GETFUNCID(32546);
    ONREMOVED = SAVE_GETFUNCID(32550);
    BUFFTEX = "ItFo_FishCotlet.TGA";
    SHOW = TRUE;
}

func void BUFF_SLAGERMEAT_HEALTH100_APPLY(var int BH) {
    var OCNPC N;
    var int PTR;
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[0] += 100;
    N.ATTRIBUTE[1] += 100;
}

instance BUFF_STRDOORBASH(LCBUFF) {
    NAME = "Buff Door Bash";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = (60) * (1000);
    TICKMS = 2000;
    ONTICK = SAVE_GETFUNCID(32555);
    ONAPPLY = SAVE_GETFUNCID(32557);
    ONREMOVED = SAVE_GETFUNCID(32561);
    BUFFTEX = "ItPo_Time_STR.TGA";
    SHOW = TRUE;
}

func void BUFF_STRDOORBASH_TICK(var int BH) {
    if ((SQ313_SUPERSTRENGTH) == (TRUE)) {
        BUFF_REFRESH(BH);
    };
}

func void BUFF_STRDOORBASH_REMOVE(var int BH) {
    var C_NPC N2;
    var OCNPC N;
    var int PTR;
    PTR = BUFF_GETNPC(BH);
    if (!(PTR)) {
        return;
    };
    N = _^(PTR);
    N.ATTRIBUTE[4] -= 100;
    N2 = HLP_GETNPC(32564);
    WEAPON_STATCHECK(N2);
}

func void BUFF_WATERMAGESET_TICK(var int BH) {
    var OCNPC N;
    var int PTR;
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
        };
        BUFF_REFRESH(BH);
    };
    if (SETBONUS_WATERMAGESET_READY_01) {
        if (((N.ATTRIBUTE[3]) / (80)) > (0)) {
            NPC_CHANGEATTRIBUTE(N, ATR_MANA, (N.ATTRIBUTE[3]) / (80));
        } else {
            NPC_CHANGEATTRIBUTE(N, ATR_MANA, 1);
        };
        BUFF_REFRESH(BH);
    };
    BUFF_REMOVE(BH);
}

