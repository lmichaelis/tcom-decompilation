func void TORCH_EQUIP() {
    NPC_STOPANI(HERO, "S_RUNL");
    CREATEINVITEM(HERO, 0x87b7);
    CALL_PTRPARAM(_@(0x87b7));
    CALL__THISCALL(_@(0x71b), 0x739c90);
}

func int TORCH_GETSLOTITEM() {
    CALL_ZSTRINGPTRPARAM("ZS_LEFTHAND");
    CALL__THISCALL(_@(0x71b), 0x731f90);
    return CALL_RETVALASPTR();
}

func int TORCH_HEROHOLDINGTORCH() {
    PTR = TORCH_GETSLOTITEM();
    if (PTR) {
        ITM = _^(PTR);
        if ((HLP_GETINSTANCEID(ITM)) == (0x87b7)) {
            return TRUE;
        };
    };
    return FALSE;
}

var int TORCH_HEROHOLDINGTORCH.PTR = 0;
instance TORCH_HEROHOLDINGTORCH.ITM(C_ITEM)
func void TORCH_UNEQUIP() {
    OCNPC_REMOVEFROMSLOT(HERO, "ZS_LEFTHAND", 0, 10);
    CREATEINVITEM(HERO, 0x87b6);
}

func void TORCH_KEYEVENT(var int KEY) {
    if (((KEY) == (MEM_GETKEY("keyTorch"))) || ((KEY) == (MEM_GETSECONDARYKEY("keyTorch")))) {
        if ((INFOMANAGER_HASFINISHED()) && (!(ISINCAMERA))) {
            PTR = TORCH_GETSLOTITEM();
            if (PTR) {
                ITM = _^(PTR);
                if ((HLP_GETINSTANCEID(ITM)) == (0x87b7)) {
                    if ((((!(C_BODYSTATECONTAINS(HERO, BS_STAND))) && (!(C_BODYSTATECONTAINS(HERO, BS_RUN)))) && (!(C_BODYSTATECONTAINS(HERO, BS_WALK)))) && (!(C_BODYSTATECONTAINS(HERO, BS_SNEAK)))) {
                        PRINT(TORCH_TEXT_CANNOTPUTAWAY);
                    } else {
                        TORCH_EQUIP();
                        NPC_REMOVEINVITEM(HERO, 0x87b7);
                        NPC_REMOVEINVITEM(HERO, 0x87b6);
                    } else {
                        /* set_instance(0) */;
                    };
                };
                if ((HLP_GETINSTANCEID(ITM)) != (0x87b7)) {
                    PRINT(TORCH_TEXT_LEFTHANDOCCUPIED);
                };
            } else if ((NPC_HASITEMS(HERO, 0x87b6)) >= (1)) {
                if (!(NPC_ISINFIGHTMODE(HERO, FMODE_NONE))) {
                    PRINT(TORCH_TEXT_FIGHTMODE);
                } else if ((((!(C_BODYSTATECONTAINS(HERO, BS_STAND))) && (!(C_BODYSTATECONTAINS(HERO, BS_RUN)))) && (!(C_BODYSTATECONTAINS(HERO, BS_WALK)))) && (!(C_BODYSTATECONTAINS(HERO, BS_SNEAK)))) {
                    PRINT(TORCH_TEXT_CANNOTWEARTORCH);
                } else {
                    TORCH_EQUIP();
                    NPC_REMOVEINVITEMS(HERO, 0x87b6, 2);
                } else {
                    /* set_instance(0) */;
                };
            };
            PRINT(TORCH_TEXT_NOTORCH);
        } else {
            PRINT(TORCH_TEXT_DIALOGUE);
        };
    };
}

var int TORCH_KEYEVENT.PTR = 0;
instance TORCH_KEYEVENT.ITM(C_ITEM)
func void INIT_TORCHKEY() {
    if ((MEM_GOTHOPTEXISTS("KEYS", "keyTorch")) == (FALSE)) {
        MEM_SETKEYS("keyTorch", KEY_T, KEY_COMMA);
    };
}

var int TORCHLOADFIX_GIVETORCH = 0;
func void TORCHLOADFIX_CHECKANDGIVETORCH() {
    if (!(HLP_ISVALIDNPC(HERO))) {
        return;
    };
    PTR = TORCH_GETSLOTITEM();
    if ((TORCHLOADFIX_GIVETORCH) && (!(PTR))) {
        TORCH_EQUIP();
        if ((NPC_HASITEMS(HERO, 0x87b6)) > (0)) {
            NPC_REMOVEINVITEM(HERO, 0x87b6);
        };
    };
}

var int TORCHLOADFIX_CHECKANDGIVETORCH.PTR = 0;
func void TORCHLOADFIX_CHECKTORCH() {
    if (!(HLP_ISVALIDNPC(HERO))) {
        return;
    };
    PTR = TORCH_GETSLOTITEM();
    if (PTR) {
        ITM = _^(PTR);
        if ((HLP_GETINSTANCEID(ITM)) == (0x87b7)) {
            TORCHLOADFIX_GIVETORCH = TRUE;
        };
    };
    if ((!(PTR)) || ((HLP_GETINSTANCEID(ITM)) != (0x87b7))) {
        TORCHLOADFIX_GIVETORCH = FALSE;
    };
}

var int TORCHLOADFIX_CHECKTORCH.PTR = 0;
instance TORCHLOADFIX_CHECKTORCH.ITM(C_ITEM)
func void INIT_FIXTORCHESAFTERLOAD_GAMESTART() {
    HOOKENGINEF(0x6c5250, 6, 0xa2c8);
}

func void INIT_FIXTORCHESAFTERLOAD_ALWAYS() {
    CALLAFTERWORLDLOADED(0xa2c6);
}

