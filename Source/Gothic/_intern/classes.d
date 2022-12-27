const int MAX_MISSIONS = 5;
const int MAX_HITCHANCE = 5;

class C_NPC {
	var int ID;
	var string NAME[5];
	var string SLOT;
	var string EFFECT;
	var int NPCTYPE;
	var int FLAGS;
	var int ATTRIBUTE[8];
	var int HITCHANCE[5];
	var int PROTECTION[8];
	var int DAMAGE[8];
	var int DAMAGETYPE;
	var int GUILD;
	var int LEVEL;
	var func MISSION[5];
	var int FIGHT_TACTIC;
	var int WEAPON;
	var int VOICE;
	var int VOICEPITCH;
	var int BODYMASS;
	var func DAILY_ROUTINE;
	var func START_AISTATE;
	var string SPAWNPOINT;
	var int SPAWNDELAY;
	var int SENSES;
	var int SENSES_RANGE;
	var int AIVAR[100];
	var string WP;
	var int EXP;
	var int EXP_NEXT;
	var int LP;
	var int BODYSTATEINTERRUPTABLEOVERRIDE;
	var int NOFOCUS;
};

class C_MISSION {
	var string NAME;
	var string DESCRIPTION;
	var int DURATION;
	var int IMPORTANT;
	var func OFFERCONDITIONS;
	var func OFFER;
	var func SUCCESSCONDITIONS;
	var func SUCCESS;
	var func FAILURECONDITIONS;
	var func FAILURE;
	var func OBSOLETECONDITIONS;
	var func OBSOLETE;
	var func RUNNING;
};

class C_FOCUS {
	var float NPC_LONGRANGE;
	var float NPC_RANGE1;
	var float NPC_RANGE2;
	var float NPC_AZI;
	var float NPC_ELEVDO;
	var float NPC_ELEVUP;
	var int NPC_PRIO;
	var float ITEM_RANGE1;
	var float ITEM_RANGE2;
	var float ITEM_AZI;
	var float ITEM_ELEVDO;
	var float ITEM_ELEVUP;
	var int ITEM_PRIO;
	var float MOB_RANGE1;
	var float MOB_RANGE2;
	var float MOB_AZI;
	var float MOB_ELEVDO;
	var float MOB_ELEVUP;
	var int MOB_PRIO;
};

class C_INFO {
	var int NPC;
	var int NR;
	var int IMPORTANT;
	var func CONDITION;
	var func INFORMATION;
	var string DESCRIPTION;
	var int TRADE;
	var int PERMANENT;
};

class C_ITEMREACT {
	var int NPC;
	var int TRADE_ITEM;
	var int TRADE_AMOUNT;
	var int REQUESTED_CAT;
	var int REQUESTED_ITEM;
	var int REQUESTED_AMOUNT;
	var func REACTION;
};

instance SELF(C_NPC)
instance OTHER(C_NPC)
instance VICTIM(C_NPC)
instance ITEM(C_ITEM)
instance HERO(C_NPC)
