func void UPDATE_MENU_ITEM(var string NAME, var string VAL) {
    ITPTR = MEM_GETMENUITEMBYSTRING(NAME);
    if (!(ITPTR)) {
        MEM_ERROR(CONCATSTRINGS("Update_Menu_Item: Invalid Menu Item: ", NAME));
        return;
    };
    CALL_INTPARAM(TRUE);
    CALL_INTPARAM(0);
    CALL_ZSTRINGPTRPARAM(VAL);
    CALL__THISCALL(ITPTR, ZCMENUITEM__SETTEXT);
}

var int UPDATE_MENU_ITEM.ITPTR = 0;
