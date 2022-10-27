func int C_GOTANYKINDOFMEAT_RAW(var C_NPC NPC) {
    if ((((((((((((NPC_HASITEMS(NPC, 0x8433)) >= (1)) || ((NPC_HASITEMS(NPC, 0x8e33)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e3f)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e4b)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e43)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e57)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e3b)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e37)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e53)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e47)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e4f)) >= (1))) {
        return TRUE;
    };
    return FALSE;
}

func int C_GOTANYKINDOFMEAT_EATABLE(var C_NPC NPC) {
    if ((((((((((((NPC_HASITEMS(NPC, 0x8435)) >= (1)) || ((NPC_HASITEMS(NPC, 0x8e35)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e39)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e3d)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e41)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e45)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e49)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e4d)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e51)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e55)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e59)) >= (1))) {
        return TRUE;
    };
    return FALSE;
}

func int C_GOTANYKINDOFBEER(var C_NPC NPC) {
    if ((((((NPC_HASITEMS(NPC, 0x84c0)) >= (1)) || ((NPC_HASITEMS(NPC, 0x8e10)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e17)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e0b)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e0c)) >= (1))) {
        return TRUE;
    };
    return FALSE;
}

func int C_GOTANYKINDOFMEAL(var C_NPC NPC) {
    if (((((((((((((((((((((((((((((((((((((((((((((((((((((NPC_HASITEMS(NPC, 0x8efc)) >= (1)) || ((NPC_HASITEMS(NPC, 0x8efe)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f00)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f02)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f04)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f06)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f08)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f0a)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f0e)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f10)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f12)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f17)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f19)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f1b)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f1d)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f1f)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f21)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f23)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f25)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f27)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f2c)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f2e)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f30)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f32)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f34)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f36)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f38)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f3a)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f3c)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f3e)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f40)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f42)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f44)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f46)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f48)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f4a)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f4c)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f4e)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f50)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f52)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f54)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f56)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f58)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f5e)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f60)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f62)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f64)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f66)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f68)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f6a)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f6c)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8f6e)) >= (1))) {
        return TRUE;
    };
    return FALSE;
}

func int C_GOTANYKINDOFWINE(var C_NPC NPC) {
    if (((((((((NPC_HASITEMS(NPC, 0x84c4)) >= (1)) || ((NPC_HASITEMS(NPC, 0x8e14)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e12)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e23)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e15)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e27)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e29)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8e5d)) >= (1))) {
        return TRUE;
    };
    return FALSE;
}

func int C_GOTINGRENDIENTS_FISHVINEGAR(var C_NPC NPC) {
    if ((((NPC_HASITEMS(NPC, 0x84b4)) >= (2)) && ((NPC_HASITEMS(NPC, 0x85f2)) >= (1))) && ((NPC_HASITEMS(NPC, 0x8c8f)) >= (1))) {
        return TRUE;
    };
    return FALSE;
}

func int C_GOTINGRENDIENTS_FATSTEW(var C_NPC NPC) {
    if ((((((NPC_HASITEMS(NPC, 0x8e41)) >= (1)) && ((NPC_HASITEMS(NPC, 0x8e1a)) >= (1))) && ((NPC_HASITEMS(NPC, 0x8e1c)) >= (1))) && ((NPC_HASITEMS(NPC, 0x8378)) >= (1))) && ((NPC_HASITEMS(NPC, 0x904e)) >= (1))) {
        return TRUE;
    };
    return FALSE;
}

func int C_GOTINGRENDIENTS_ANYHEALTHPOTION(var C_NPC NPC) {
    if ((((((((((NPC_HASITEMS(NPC, 0x8630)) >= (1)) || ((NPC_HASITEMS(NPC, 0x8632)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8635)) >= (1))) || ((NPC_HASITEMS(NPC, 0x838e)) >= (1))) || ((NPC_HASITEMS(NPC, 0x9362)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8639)) >= (1))) || ((NPC_HASITEMS(NPC, 0x863c)) >= (1))) || ((NPC_HASITEMS(NPC, 0x863f)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8641)) >= (1))) {
        return TRUE;
    };
    return FALSE;
}

func int C_GOTINGRENDIENTS_Q307_POISONBEN(var C_NPC NPC) {
    if ((((NPC_HASITEMS(NPC, 0x8440)) >= (1)) && ((NPC_HASITEMS(NPC, 0x844d)) >= (4))) && ((NPC_HASITEMS(NPC, 0x85e0)) >= (2))) {
        return TRUE;
    };
    return FALSE;
}

func int C_GOTANYKINDOFRUNE(var C_NPC NPC) {
    if (((((((((((((((((((((((((NPC_HASITEMS(NPC, 0x94ac)) >= (1)) || ((NPC_HASITEMS(NPC, 0x94ad)) >= (1))) || ((NPC_HASITEMS(NPC, 0x94ae)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8723)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8725)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8726)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8729)) >= (1))) || ((NPC_HASITEMS(NPC, 0x872a)) >= (1))) || ((NPC_HASITEMS(NPC, 0x83a1)) >= (1))) || ((NPC_HASITEMS(NPC, 0x83a4)) >= (1))) || ((NPC_HASITEMS(NPC, 0x872d)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8732)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8733)) >= (1))) || ((NPC_HASITEMS(NPC, 0x83a2)) >= (1))) || ((NPC_HASITEMS(NPC, 0x83a0)) >= (1))) || ((NPC_HASITEMS(NPC, 0x872e)) >= (1))) || ((NPC_HASITEMS(NPC, 0x8734)) >= (1))) || ((NPC_HASITEMS(NPC, 0x83a3)) >= (1))) || ((NPC_HASITEMS(NPC, 0x873a)) >= (1))) || ((NPC_HASITEMS(NPC, 0x872b)) >= (1))) || ((NPC_HASITEMS(NPC, 0x857f)) >= (1))) || ((NPC_HASITEMS(NPC, 0x94b1)) >= (1))) || ((NPC_HASITEMS(NPC, 0x94b2)) >= (1))) || ((NPC_HASITEMS(NPC, 0x83a9)) >= (1))) {
        return TRUE;
    };
    return FALSE;
}

