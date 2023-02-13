const int OETYPEWEAPON_UNKNOWN = 0;
const int OETYPEWEAPON_FIST = 1;
const int OETYPEWEAPON_MELEE = 2;
const int OETYPEWEAPON_RANGE = 4;
const int OETYPEWEAPON_MAGIC = 8;
const int OETYPEWEAPON_SPECIAL = 16;
class OSDAMAGEDESCRIPTOR {
	var int DWFIELDSVALID;
	var int PVOBATTACKER;
	var int PNPCATTACKER;
	var int PVOBHIT;
	var int PFXHIT;
	var int PITEMWEAPON;
	var int NSPELLID;
	var int NSPELLCAT;
	var int NSPELLLEVEL;
	var int ENUMODEDAMAGE;
	var int ENUMODEWEAPON;
	var int ARYDAMAGE[8];
	var int FDAMAGETOTAL;
	var int FDAMAGEMULTIPLIER;
	var int VECLOCATIONHIT[3];
	var int VECDIRECTIONFLY[3];
	var string STRVISUALFX;
	var int FTIMEDURATION;
	var int FTIMEINTERVAL;
	var int FDAMAGEPERINTERVAL;
	var int BDAMAGEDONTKILL;
};
var int ONDAMAGEARMORPENETRATION;
var int MAGERING_EQUIPPED;
func void ONDAMAGE_HOOK() {
    var C_ITEM ITM;
    var OCNPC VICTIM;
    var OCNPC ATTACKER;
    var OSDAMAGEDESCRIPTOR OSD;
    OSD = _^(MEM_READINT((ESP) + (4)));
    ATTACKER = _^(OSD.PNPCATTACKER);
    if (NPC_ISPLAYER(ATTACKER)) {
        VICTIM = MEM_PTRTOINST(ECX);
        ITM = NPC_GETREADIEDWEAPON(ATTACKER);
        if (((OSD.ENUMODEWEAPON) == (OETYPEWEAPON_RANGE)) || (((OSD.ENUMODEWEAPON) == (OETYPEWEAPON_MELEE)) && ((ITM.DAMAGETYPE) == (DAM_MAGIC)))) {
            OSD.BDAMAGEDONTKILL = TRUE;
        };
        if ((OSD.NSPELLID) > (0)) {
            PRINTD("spell damage");
            if ((RESERVED_VAR_INT_05) >= (1)) {
                PRINTD("apply mage ring bonus");
                OSD.FDAMAGETOTAL = ADDF(OSD.FDAMAGETOTAL, MKF((5) * (RESERVED_VAR_INT_05)));
                OSD.ARYDAMAGE[5] += (5) * (RESERVED_VAR_INT_05);
            };
        };
        if ((ITM.WEIGHT) > (0)) {
            if ((ITM.DAMAGETYPE) == (DAM_BLUNT)) {
                if ((ITM.WEIGHT) > (VICTIM.PROTECTION[1])) {
                    ONDAMAGEARMORPENETRATION = (ITM.WEIGHT) - ((ITM.WEIGHT) - (VICTIM.PROTECTION[1]));
                    VICTIM.PROTECTION[1] = 0;
                } else {
                    VICTIM.PROTECTION[1] -= ITM.WEIGHT;
                    ONDAMAGEARMORPENETRATION = ITM.WEIGHT;
                };
                PRINTD(CS2("decrease protection: ", I2S(ONDAMAGEARMORPENETRATION)));
            } else if ((ITM.DAMAGETYPE) == (DAM_EDGE)) {
                if ((ITM.WEIGHT) > (VICTIM.PROTECTION[2])) {
                    ONDAMAGEARMORPENETRATION = (ITM.WEIGHT) - ((ITM.WEIGHT) - (VICTIM.PROTECTION[2]));
                    VICTIM.PROTECTION[2] = 0;
                } else {
                    VICTIM.PROTECTION[2] -= ITM.WEIGHT;
                    ONDAMAGEARMORPENETRATION = ITM.WEIGHT;
                };
                PRINTD(CS2("decrease protection: ", I2S(ONDAMAGEARMORPENETRATION)));
            } else if ((ITM.DAMAGETYPE) == (DAM_POINT)) {
                if ((ITM.WEIGHT) > (VICTIM.PROTECTION[6])) {
                    ONDAMAGEARMORPENETRATION = (ITM.WEIGHT) - ((ITM.WEIGHT) - (VICTIM.PROTECTION[6]));
                    VICTIM.PROTECTION[6] = 0;
                } else {
                    VICTIM.PROTECTION[6] -= ITM.WEIGHT;
                    ONDAMAGEARMORPENETRATION = ITM.WEIGHT;
                };
                PRINTD(CS2("decrease protection: ", I2S(ONDAMAGEARMORPENETRATION)));
            } else if ((ITM.DAMAGETYPE) == (DAM_MAGIC)) {
                if ((ITM.WEIGHT) > (VICTIM.PROTECTION[5])) {
                    ONDAMAGEARMORPENETRATION = (ITM.WEIGHT) - ((ITM.WEIGHT) - (VICTIM.PROTECTION[5]));
                    VICTIM.PROTECTION[5] = 0;
                } else {
                    VICTIM.PROTECTION[5] -= ITM.WEIGHT;
                    ONDAMAGEARMORPENETRATION = ITM.WEIGHT;
                };
                PRINTD(CS2("decrease protection: ", I2S(ONDAMAGEARMORPENETRATION)));
            };
        };
    };
}

func void ONDAMAGESCRIPT_HOOK() {
    var C_ITEM ITM;
    var OCNPC VICTIM;
    var OCNPC ATTACKER;
    var OSDAMAGEDESCRIPTOR OSD;
    OSD = _^(MEM_READINT((ESP) + (4)));
    ATTACKER = _^(OSD.PNPCATTACKER);
    if (NPC_ISPLAYER(ATTACKER)) {
        VICTIM = MEM_PTRTOINST(ECX);
        ITM = NPC_GETREADIEDWEAPON(ATTACKER);
        if ((ITM.WEIGHT) > (0)) {
            if ((ITM.DAMAGETYPE) == (DAM_BLUNT)) {
                VICTIM.PROTECTION[1] += ONDAMAGEARMORPENETRATION;
            } else if ((ITM.DAMAGETYPE) == (DAM_EDGE)) {
                VICTIM.PROTECTION[2] += ONDAMAGEARMORPENETRATION;
            } else if ((ITM.DAMAGETYPE) == (DAM_POINT)) {
                VICTIM.PROTECTION[6] += ONDAMAGEARMORPENETRATION;
            } else if ((ITM.DAMAGETYPE) == (DAM_MAGIC)) {
                VICTIM.PROTECTION[5] += ONDAMAGEARMORPENETRATION;
            };
            PRINTD(CS2("increase protection: ", I2S(ONDAMAGEARMORPENETRATION)));
            ONDAMAGEARMORPENETRATION = 0;
        };
    };
}

