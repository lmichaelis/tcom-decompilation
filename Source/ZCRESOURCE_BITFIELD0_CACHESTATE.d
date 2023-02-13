const int ZCRESOURCE_BITFIELD0_CACHESTATE = 3;
const int ZCRESOURCE_BITFIELD0_CACHEOUTLOCK = 256;
const int ZCRESOURCE_BITFIELD0_CACHECLASSINDEX = 16711680;
const int ZCRESOURCE_BITFIELD0_MANAGEDBYRESMAN = 16777216;
const int ZCRESOURCE_BITFIELD1_CACHEINPRIORITY = 65535;
const int ZCRESOURCE_BITFIELD1_CANBECACHEDOUT = 65536;
class ZCRESOURCE {
	var int _VTBL;
	var int _ZCOBJECT_REFCTR;
	var int _ZCOBJECT_HASHINDEX;
	var int _ZCOBJECT_HASHNEXT;
	var string _ZCOBJECT_OBJECTNAME;
	var int NEXTRES;
	var int PREVRES;
	var int TIMESTAMP;
	var int STATECHANGEGUARD_VBTL;
	var int STATECHANGEGUARD_CRITICALSECTION[6];
	var int BITFIELD[2];
};