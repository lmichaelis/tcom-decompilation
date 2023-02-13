func int TORCH_GETSLOTITEM() {
    CALL_ZSTRINGPTRPARAM("ZS_LEFTHAND");
    CALL__THISCALL(_@(1819), 7544720);
    return CALL_RETVALASPTR();
}

func int TORCH_HEROHOLDINGTORCH() {
    var C_ITEM ITM;
    var int PTR;
    PTR = TORCH_GETSLOTITEM();
    if (PTR) {
        ITM = _^(PTR);
        if ((HLP_GETINSTANCEID(ITM)) == (34743)) {
            return TRUE;
        };
    };
    return FALSE;
}

func void TORCH_UNEQUIP() {
    OCNPC_REMOVEFROMSLOT(HERO, "ZS_LEFTHAND", 0, 10);
    CREATEINVITEM(HERO, 34742);
}

func void TORCH_KEYEVENT(var int KEY) {
    var C_ITEM ITM;
    var int PTR;
    if (((KEY) == (MEM_GETKEY("keyTorch"))) || ((KEY) == (MEM_GETSECONDARYKEY("keyTorch")))) {
        if ((INFOMANAGER_HASFINISHED()) && (!(ISINCAMERA))) {
            PTR = TORCH_GETSLOTITEM();
            if (PTR) {
                ITM = _^(PTR);
                if ((HLP_GETINSTANCEID(ITM)) == (34743)) {
                    if ((((!(C_BODYSTATECONTAINS(HERO, BS_STAND))) && (!(C_BODYSTATECONTAINS(HERO, BS_RUN)))) && (!(C_BODYSTATECONTAINS(HERO, BS_WALK)))) && (!(C_BODYSTATECONTAINS(HERO, BS_SNEAK)))) {
                        PRINT(TORCH_TEXT_CANNOTPUTAWAY);
                    } else {
                        TORCH_EQUIP();
                        NPC_REMOVEINVITEM(HERO, 34743);
                        NPC_REMOVEINVITEM(HERO, 34742);
                    };
                } else if ((HLP_GETINSTANCEID(ITM)) != (34743)) {
                    PRINT(TORCH_TEXT_LEFTHANDOCCUPIED);
                };
            } else if ((NPC_HASITEMS(HERO, 34742)) >= (1)) {
                if (!(NPC_ISINFIGHTMODE(HERO, FMODE_NONE))) {
                    PRINT(TORCH_TEXT_FIGHTMODE);
                } else if ((((!(C_BODYSTATECONTAINS(HERO, BS_STAND))) && (!(C_BODYSTATECONTAINS(HERO, BS_RUN)))) && (!(C_BODYSTATECONTAINS(HERO, BS_WALK)))) && (!(C_BODYSTATECONTAINS(HERO, BS_SNEAK)))) {
                    PRINT(TORCH_TEXT_CANNOTWEARTORCH);
                } else {
                    TORCH_EQUIP();
                    NPC_REMOVEINVITEMS(HERO, 34742, 2);
                };
            } else {
                PRINT(TORCH_TEXT_NOTORCH);
            };
        } else {
            PRINT(TORCH_TEXT_DIALOGUE);
        };
    };
}

var int TORCHLOADFIX_GIVETORCH;
func void TORCHLOADFIX_CHECKANDGIVETORCH() {
    var int PTR;
    if (!(HLP_ISVALIDNPC(HERO))) {
        return;
    };
    PTR = TORCH_GETSLOTITEM();
    if ((TORCHLOADFIX_GIVETORCH) && (!(PTR))) {
        TORCH_EQUIP();
        if ((NPC_HASITEMS(HERO, 34742)) > (0)) {
            NPC_REMOVEINVITEM(HERO, 34742);
        };
    };
}

func void TORCHLOADFIX_CHECKTORCH() {
    var C_ITEM ITM;
    var int PTR;
    if (!(HLP_ISVALIDNPC(HERO))) {
        return;
    };
    PTR = TORCH_GETSLOTITEM();
    if (PTR) {
        ITM = _^(PTR);
        if ((HLP_GETINSTANCEID(ITM)) == (34743)) {
            TORCHLOADFIX_GIVETORCH = TRUE;
        };
    };
    if ((!(PTR)) || ((HLP_GETINSTANCEID(ITM)) != (34743))) {
        TORCHLOADFIX_GIVETORCH = FALSE;
    };
}

func void INIT_FIXTORCHESAFTERLOAD_GAMESTART() {
    HOOKENGINEF(7098960, 6, 41672);
}

func void INIT_FIXTORCHESAFTERLOAD_ALWAYS() {
    CALLAFTERWORLDLOADED(41670);
}

