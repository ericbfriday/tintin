const std = @import("std"); pub const tintin_c = @cImport({@cInclude("tintin.h");});
pub const struct_math_node = extern struct {
    next: [*c]struct_math_node = @import("std").mem.zeroes([*c]struct_math_node),
    prev: [*c]struct_math_node = @import("std").mem.zeroes([*c]struct_math_node),
    level: c_ushort = @import("std").mem.zeroes(c_ushort),
    priority: u8 = @import("std").mem.zeroes(u8),
    type: u8 = @import("std").mem.zeroes(u8),
    val: c_longdouble = @import("std").mem.zeroes(c_longdouble),
    str3: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const BV01 = @as(c_int, 1) << @as(c_int, 0);
pub const BV02 = @as(c_int, 1) << @as(c_int, 1);
pub const BV03 = @as(c_int, 1) << @as(c_int, 2);
pub const BV04 = @as(c_int, 1) << @as(c_int, 3);
pub const BV05 = @as(c_int, 1) << @as(c_int, 4);
pub const BV06 = @as(c_int, 1) << @as(c_int, 5);
pub const BV07 = @as(c_int, 1) << @as(c_int, 6);
pub const BV08 = @as(c_int, 1) << @as(c_int, 7);
pub const BV09 = @as(c_int, 1) << @as(c_int, 8);
pub const BV10 = @as(c_int, 1) << @as(c_int, 9);
pub const BV11 = @as(c_int, 1) << @as(c_int, 10);
pub const BV12 = @as(c_int, 1) << @as(c_int, 11);
pub const BV13 = @as(c_int, 1) << @as(c_int, 12);
pub const BV14 = @as(c_int, 1) << @as(c_int, 13);
pub const BV15 = @as(c_int, 1) << @as(c_int, 14);
pub const BV16 = @as(c_int, 1) << @as(c_int, 15);
pub const BV17 = @as(c_int, 1) << @as(c_int, 16);
pub const BV18 = @as(c_int, 1) << @as(c_int, 17);
pub const BV19 = @as(c_int, 1) << @as(c_int, 18);
pub const BV20 = @as(c_int, 1) << @as(c_int, 19);
pub const BV21 = @as(c_int, 1) << @as(c_int, 20);
pub const BV22 = @as(c_int, 1) << @as(c_int, 21);
pub const BV23 = @as(c_int, 1) << @as(c_int, 22);
pub const BV24 = @as(c_int, 1) << @as(c_int, 23);
pub const BV25 = @as(c_int, 1) << @as(c_int, 24);
pub const BV26 = @as(c_int, 1) << @as(c_int, 25);
pub const BV27 = @as(c_int, 1) << @as(c_int, 26);
pub const BV28 = @as(c_int, 1) << @as(c_int, 27);
pub const BV29 = @as(c_int, 1) << @as(c_int, 28);
pub const BV30 = @as(c_int, 1) << @as(c_int, 29);
pub const BV31 = @as(c_int, 1) << @as(c_int, 30);
pub const BV32 = @as(c_longlong, 1) << @as(c_int, 31);
pub const BV33 = @as(c_longlong, 1) << @as(c_int, 32);
pub const BV34 = @as(c_longlong, 1) << @as(c_int, 33);
pub const BV35 = @as(c_longlong, 1) << @as(c_int, 34);
pub const BV36 = @as(c_longlong, 1) << @as(c_int, 35);
pub const BV37 = @as(c_longlong, 1) << @as(c_int, 36);
pub const BV38 = @as(c_longlong, 1) << @as(c_int, 37);
pub const BV39 = @as(c_longlong, 1) << @as(c_int, 38);
pub const BV40 = @as(c_longlong, 1) << @as(c_int, 39);
pub const BV41 = @as(c_longlong, 1) << @as(c_int, 40);
pub const BUFFER_FLAG_GREP = BV01;
pub const CHAR_FLAG_DIGIT = BV01;
pub const CHAR_FLAG_ALPHA = BV02;
pub const CHAR_FLAG_VAR = BV03;
pub const CHAR_FLAG_SPACE = BV04;
pub const CHAR_FLAG_HEX = BV05;
pub const CHAR_FLAG_CSI = BV06;
pub const CHAR_FLAG_PRINT = BV07;
pub const CHARSET_FLAG_UTF8 = BV01;
pub const CHARSET_FLAG_BIG5 = BV02;
pub const CHARSET_FLAG_GBK1 = BV03;
pub const CHARSET_FLAG_CP949 = BV04;
pub const CHARSET_FLAG_BIG5TOUTF8 = BV05;
pub const CHARSET_FLAG_FANSITOUTF8 = BV06;
pub const CHARSET_FLAG_GBK1TOUTF8 = BV07;
pub const CHARSET_FLAG_ISO1TOUTF8 = BV08;
pub const CHARSET_FLAG_ISO2TOUTF8 = BV09;
pub const CHARSET_FLAG_KOI8TOUTF8 = BV10;
pub const CHARSET_FLAG_CP1251TOUTF8 = BV11;
pub const CHARSET_FLAG_CP949TOUTF8 = BV12;
pub const CHARSET_FLAG_EUC = (CHARSET_FLAG_BIG5 | CHARSET_FLAG_GBK1) | CHARSET_FLAG_CP949;
pub const CHARSET_FLAG_ALL_TOUTF8 = ((((((CHARSET_FLAG_BIG5TOUTF8 | CHARSET_FLAG_CP1251TOUTF8) | CHARSET_FLAG_FANSITOUTF8) | CHARSET_FLAG_GBK1TOUTF8) | CHARSET_FLAG_ISO1TOUTF8) | CHARSET_FLAG_ISO2TOUTF8) | CHARSET_FLAG_KOI8TOUTF8) | CHARSET_FLAG_CP949TOUTF8;
pub const CHARSET_FLAG_ALL = (CHARSET_FLAG_UTF8 | CHARSET_FLAG_ALL_TOUTF8) | CHARSET_FLAG_EUC;
pub const COL_BLD = BV01;
pub const COL_ITA = BV02;
pub const COL_UND = BV03;
pub const COL_BLK = BV04;
pub const COL_REV = BV05;
pub const COL_XTF = BV06;
pub const COL_XTF_5 = BV07;
pub const COL_XTF_R = BV08;
pub const COL_XTB = BV09;
pub const COL_XTB_5 = BV10;
pub const COL_XTB_R = BV11;
pub const COL_TCF = BV12;
pub const COL_TCF_2 = BV13;
pub const COL_TCF_R = BV14;
pub const COL_TCB = BV15;
pub const COL_TCB_2 = BV16;
pub const COL_TCB_R = BV17;
pub const CHAT_NAME_CHANGE = @as(c_int, 1);
pub const CHAT_REQUEST_CONNECTIONS = @as(c_int, 2);
pub const CHAT_CONNECTION_LIST = @as(c_int, 3);
pub const CHAT_TEXT_EVERYBODY = @as(c_int, 4);
pub const CHAT_TEXT_PERSONAL = @as(c_int, 5);
pub const CHAT_TEXT_GROUP = @as(c_int, 6);
pub const CHAT_MESSAGE = @as(c_int, 7);
pub const CHAT_DO_NOT_DISTURB = @as(c_int, 8);
pub const CHAT_SEND_ACTION = @as(c_int, 9);
pub const CHAT_SEND_ALIAS = @as(c_int, 10);
pub const CHAT_SEND_MACRO = @as(c_int, 11);
pub const CHAT_SEND_VARIABLE = @as(c_int, 12);
pub const CHAT_SEND_EVENT = @as(c_int, 13);
pub const CHAT_SEND_GAG = @as(c_int, 14);
pub const CHAT_SEND_HIGHLIGHT = @as(c_int, 15);
pub const CHAT_SEND_LIST = @as(c_int, 16);
pub const CHAT_SEND_ARRAY = @as(c_int, 17);
pub const CHAT_SEND_BARITEM = @as(c_int, 18);
pub const CHAT_VERSION = @as(c_int, 19);
pub const CHAT_FILE_START = @as(c_int, 20);
pub const CHAT_FILE_DENY = @as(c_int, 21);
pub const CHAT_FILE_BLOCK_REQUEST = @as(c_int, 22);
pub const CHAT_FILE_BLOCK = @as(c_int, 23);
pub const CHAT_FILE_END = @as(c_int, 24);
pub const CHAT_FILE_CANCEL = @as(c_int, 25);
pub const CHAT_PING_REQUEST = @as(c_int, 26);
pub const CHAT_PING_RESPONSE = @as(c_int, 27);
pub const CHAT_PEEK_CONNECTIONS = @as(c_int, 28);
pub const CHAT_PEEK_LIST = @as(c_int, 29);
pub const CHAT_SNOOP_START = @as(c_int, 30);
pub const CHAT_SNOOP_DATA = @as(c_int, 31);
pub const CHAT_END_OF_COMMAND = @as(c_int, 255);
pub const CHAT_FLAG_PRIVATE = BV01;
pub const CHAT_FLAG_REQUEST = BV02;
pub const CHAT_FLAG_SERVE = BV03;
pub const CHAT_FLAG_IGNORE = BV04;
pub const CHAT_FLAG_FORWARD = BV05;
pub const CHAT_FLAG_FORWARDBY = BV06;
pub const CHAT_FLAG_FORWARDALL = BV07;
pub const CHAT_FLAG_DND = BV08;
pub const CHAT_FLAG_LINKLOST = BV09;
pub const INPUT_FLAG_EDIT = BV01;
pub const INPUT_FLAG_HISTORYBROWSE = BV02;
pub const INPUT_FLAG_HISTORYSEARCH = BV03;
pub const INPUT_FLAG_CONVERTMETACHAR = BV04;
pub const INPUT_FLAG_REDRAW = BV05;
pub const PORT_FLAG_PRIVATE = BV01;
pub const PORT_FLAG_REQUEST = BV02;
pub const PORT_FLAG_SERVE = BV03;
pub const PORT_FLAG_IGNORE = BV04;
pub const PORT_FLAG_FORWARD = BV05;
pub const PORT_FLAG_FORWARDBY = BV06;
pub const PORT_FLAG_FORWARDALL = BV07;
pub const PORT_FLAG_DND = BV08;
pub const PORT_FLAG_LINKLOST = BV09;
pub const PORT_RANK_SPY = @as(c_int, 0);
pub const PORT_RANK_DIPLOMAT = @as(c_int, 1);
pub const PORT_RANK_SCOUT = @as(c_int, 2);
pub const RANK_FLAG_SCOUT = BV01;
pub const COMM_FLAG_DISCONNECT = BV01;
pub const COMM_FLAG_PASSWORD = BV02;
pub const COMM_FLAG_REMOTEECHO = BV03;
pub const COMM_FLAG_EOR = BV04;
pub const COMM_FLAG_MSDPUPDATE = BV05;
pub const COMM_FLAG_256COLORS = BV06;
pub const COMM_FLAG_UTF8 = BV07;
pub const COMM_FLAG_GMCP = BV08;
pub const MSDP_FLAG_COMMAND = BV01;
pub const MSDP_FLAG_LIST = BV02;
pub const MSDP_FLAG_SENDABLE = BV03;
pub const MSDP_FLAG_REPORTABLE = BV04;
pub const MSDP_FLAG_CONFIGURABLE = BV05;
pub const MSDP_FLAG_REPORTED = BV06;
pub const MSDP_FLAG_UPDATED = BV07;
pub const MTTS_FLAG_ANSI = BV01;
pub const MTTS_FLAG_VT100 = BV02;
pub const MTTS_FLAG_UTF8 = BV03;
pub const MTTS_FLAG_256COLORS = BV04;
pub const MTTS_FLAG_MOUSETRACKING = BV05;
pub const MTTS_FLAG_COLORPALETTE = BV06;
pub const MTTS_FLAG_SCREENREADER = BV07;
pub const MTTS_FLAG_PROXY = BV08;
pub const MTTS_FLAG_TRUECOLOR = BV09;
pub const SCREEN_FLAG_CSIP = BV01;
pub const SCREEN_FLAG_OSCT = BV02;
pub const SCREEN_FLAG_OMIT = BV03;
pub const SCREEN_FLAG_GET_ONE = BV04;
pub const SCREEN_FLAG_GET_ALL = BV05;
pub const SCREEN_FLAG_GET_NONE = BV06;
pub const SCREEN_FLAG_SCROLLMODE = BV07;
pub const SCREEN_FLAG_SCROLLUPDATE = BV08;
pub const SCROLL_FLAG_RESIZE = BV01;
pub const STR_FLAG_STACK = BV01;
pub const STR_FLAG_LIST = BV02;
pub const STR_FLAG_FREE = BV03;
pub const SUB_NONE = BV00;
pub const SUB_ARG = BV01;
pub const SUB_SEC = BV02;
pub const SUB_BRA = BV03;
pub const SUB_CMD = BV04;
pub const SUB_VAR = BV05;
pub const SUB_FUN = BV06;
pub const SUB_COL = BV07;
pub const SUB_ESC = BV08;
pub const SUB_EOL = BV09;
pub const SUB_LNF = BV10;
pub const SUB_SIL = BV11;
pub const SUB_LIT = BV12;
pub const EVENT_FLAG_CATCH = BV04;
pub const EVENT_FLAG_CLASS = BV05;
pub const EVENT_FLAG_GAG = BV06;
pub const EVENT_FLAG_INPUT = BV07;
pub const EVENT_FLAG_MAP = BV08;
pub const EVENT_FLAG_MOUSE = BV09;
pub const EVENT_FLAG_OUTPUT = BV10;
pub const EVENT_FLAG_PORT = BV11;
pub const EVENT_FLAG_SCAN = BV12;
pub const EVENT_FLAG_SCREEN = BV13;
pub const EVENT_FLAG_SESSION = BV14;
pub const EVENT_FLAG_SYSTEM = BV15;
pub const EVENT_FLAG_TELNET = BV16;
pub const EVENT_FLAG_TIME = BV17;
pub const EVENT_FLAG_UPDATE = BV18;
pub const EVENT_FLAG_VARIABLE = BV19;
pub const EVENT_FLAG_VT100 = BV20;
pub const EVENT_FLAG_REFORMAT = BV21;
pub const TAB_FLAG_FORWARD = BV01;
pub const TAB_FLAG_BACKWARD = BV02;
pub const TAB_FLAG_COMPLETE = BV03;
pub const TAB_FLAG_CASELESS = BV04;
pub const TAB_FLAG_DICTIONARY = BV05;
pub const TAB_FLAG_LIST = BV06;
pub const TAB_FLAG_SCROLLBACK = BV07;
pub const TAB_FLAG_INPUT = BV08;
pub const REGEX_FLAG_NONE = @as(c_int, 0);
pub const REGEX_FLAG_FIX = BV01;
pub const REGEX_FLAG_ARG = BV02;
pub const REGEX_FLAG_CMD = BV03;
pub const TINTIN_FLAG_HISTORYUPDATE = BV01;
pub const TINTIN_FLAG_SESSIONUPDATE = BV02;
pub const TINTIN_FLAG_PROCESSINPUT = BV03;
pub const TINTIN_FLAG_INHERITANCE = BV04;
pub const TINTIN_FLAG_INSERTINPUT = BV05;
pub const TINTIN_FLAG_CHILDLOCK = BV06;
pub const TINTIN_FLAG_TERMINATE = BV07;
pub const TINTIN_FLAG_MOUSETRACKING = BV08;
pub const TINTIN_FLAG_DISPLAYUPDATE = BV09;
pub const TINTIN_FLAG_DAEMONIZE = BV10;
pub const TINTIN_FLAG_HIDDENCURSOR = BV11;
pub const TINTIN_FLAG_LOCAL = BV12;
pub const TINTIN_FLAG_PRESERVEMACRO = BV13;
pub const TINTIN_FLAG_WINCHUPDATE = BV14;
pub const TINTIN_FLAG_NOHUP = BV15;
pub const TINTIN_FLAG_HIBERNATE = BV16;
pub const CONFIG_FLAG_AUTOPATCH = BV01;
pub const CONFIG_FLAG_AUTOPROMPT = BV02;
pub const CONFIG_FLAG_COLORPATCH = BV03;
pub const CONFIG_FLAG_COMPACT = BV04;
pub const CONFIG_FLAG_CONVERTMETA = BV05;
pub const CONFIG_FLAG_ECHOCOMMAND = BV06;
pub const CONFIG_FLAG_MCCP = BV07;
pub const CONFIG_FLAG_MOUSEDEBUG = BV08;
pub const CONFIG_FLAG_MOUSEINFO = BV09;
pub const CONFIG_FLAG_MOUSEPIXELS = BV10;
pub const CONFIG_FLAG_MOUSETRACKING = BV11;
pub const CONFIG_FLAG_REPEATENTER = BV12;
pub const CONFIG_FLAG_SCREENREADER = BV13;
pub const CONFIG_FLAG_SCROLLLOCK = BV14;
pub const CONFIG_FLAG_SPEEDWALK = BV15;
pub const CONFIG_FLAG_TELNET = BV16;
pub const CONFIG_FLAG_VERBATIM = BV17;
pub const CONFIG_FLAG_VERBOSE = BV18;
pub const CONFIG_FLAG_WORDWRAP = BV19;
pub const SES_FLAG_BUFFERUPDATE = BV01;
pub const SES_FLAG_CLOSED = BV02;
pub const SES_FLAG_CONNECTED = BV03;
pub const SES_FLAG_LINKLOST = BV04;
pub const SES_FLAG_PATHMAPPING = BV05;
pub const SES_FLAG_PRINTBUFFER = BV06;
pub const SES_FLAG_PRINTLINE = BV07;
pub const SES_FLAG_READMUD = BV08;
pub const SES_FLAG_RUN = BV09;
pub const SES_FLAG_SCANABORT = BV10;
pub const SES_FLAG_SCROLLSPLIT = BV11;
pub const SES_FLAG_SNOOP = BV12;
pub const SES_FLAG_SNOOPSCROLL = BV13;
pub const SES_FLAG_SPLIT = BV14;
pub const SES_FLAG_UPDATEVTMAP = BV15;
pub const TELOPT_FLAG_TELNET = BV01;
pub const TELOPT_FLAG_SGA = BV02;
pub const TELOPT_FLAG_ECHO = BV03;
pub const TELOPT_FLAG_NAWS = BV04;
pub const TELOPT_FLAG_PROMPT = BV05;
pub const TELOPT_FLAG_DEBUG = BV06;
pub const TELOPT_FLAG_TSPEED = BV07;
pub const TELOPT_FLAG_TTYPE = BV08;
pub const TELOPT_FLAG_MTTS = BV09;
pub const TELOPT_FLAG_UPDATENAWS = BV10;
pub const TELOPT_FLAG_CR = BV11;
pub const TELOPT_FLAG_LF = BV12;
pub const TELOPT_FLAG_NUL = BV13;
pub const LIST_FLAG_IGNORE = BV01;
pub const LIST_FLAG_PRIORITY = BV02;
pub const LIST_FLAG_MESSAGE = BV03;
pub const LIST_FLAG_DEBUG = BV04;
pub const LIST_FLAG_INFO = BV05;
pub const LIST_FLAG_LOG = BV06;
pub const LIST_FLAG_CLASS = BV07;
pub const LIST_FLAG_READ = BV08;
pub const LIST_FLAG_WRITE = BV09;
pub const LIST_FLAG_HIDE = BV10;
pub const LIST_FLAG_INHERIT = BV11;
pub const LIST_FLAG_REGEX = BV12;
pub const LIST_FLAG_NEST = BV13;
pub const LIST_FLAG_CASE = BV14;
pub const LIST_FLAG_DEFAULT = LIST_FLAG_MESSAGE;
pub const NODE_FLAG_COLOR = BV01;
pub const NODE_FLAG_MULTI = BV02;
pub const NODE_FLAG_DEBUG = BV03;
pub const LOG_FLAG_NONE = @as(c_int, 0);
pub const LOG_FLAG_LINEFEED = BV01;
pub const LOG_FLAG_OVERWRITE = BV02;
pub const LOG_FLAG_APPEND = BV03;
pub const LOG_FLAG_NEXT = BV04;
pub const LOG_FLAG_LOW = BV05;
pub const LOG_FLAG_HTML = BV06;
pub const LOG_FLAG_PLAIN = BV07;
pub const LOG_FLAG_RAW = BV08;
pub const LOG_FLAG_STAMP = BV09;
pub const ROOM_FLAG_AVOID = BV01;
pub const ROOM_FLAG_HIDE = BV02;
pub const ROOM_FLAG_LEAVE = BV03;
pub const ROOM_FLAG_VOID = BV04;
pub const ROOM_FLAG_STATIC = BV05;
pub const ROOM_FLAG_CURVED = BV06;
pub const ROOM_FLAG_PATH = BV07;
pub const ROOM_FLAG_NOGLOBAL = BV08;
pub const ROOM_FLAG_INVIS = BV09;
pub const ROOM_FLAG_AVOID_TMP = BV10 | ROOM_FLAG_AVOID;
pub const ROOM_FLAG_HIDE_TMP = BV11 | ROOM_FLAG_HIDE;
pub const ROOM_FLAG_LEAVE_TMP = BV12 | ROOM_FLAG_LEAVE;
pub const ROOM_FLAG_VOID_TMP = BV13 | ROOM_FLAG_VOID;
pub const ROOM_FLAG_STATIC_TMP = BV13 | ROOM_FLAG_STATIC;
pub const ROOM_FLAG_CURVED_TMP = BV14 | ROOM_FLAG_CURVED;
pub const ROOM_FLAG_BLOCK = BV15;
pub const ROOM_FLAG_TERRAIN = BV20;
pub const ROOM_FLAG_FOG = BV21;
pub const EXIT_FLAG_HIDE = BV01;
pub const EXIT_FLAG_AVOID = BV02;
pub const EXIT_FLAG_INVIS = BV03;
pub const EXIT_FLAG_BLOCK = BV04;
pub const EXIT_FLAG_ALL = ((BV01 | BV02) | BV03) | BV04;
pub const EXIT_GRID_0 = @as(c_int, 0);
pub const EXIT_GRID_N = @as(c_int, 1);
pub const EXIT_GRID_E = @as(c_int, 2);
pub const EXIT_GRID_S = @as(c_int, 3);
pub const EXIT_GRID_W = @as(c_int, 4);
pub const EXIT_GRID_U = @as(c_int, 5);
pub const EXIT_GRID_D = @as(c_int, 6);
pub const EXIT_GRID_NE = @as(c_int, 7);
pub const EXIT_GRID_NW = @as(c_int, 8);
pub const EXIT_GRID_SE = @as(c_int, 9);
pub const EXIT_GRID_SW = @as(c_int, 10);
pub const MAP_FLAG_STATIC = BV01;
pub const MAP_FLAG_VTMAP = BV02;
pub const MAP_FLAG_DIRECTION = BV03;
pub const MAP_FLAG_ASCIIGRAPHICS = BV04;
pub const MAP_FLAG_ASCIIVNUMS = BV05;
pub const MAP_FLAG_MUDFONT = BV06;
pub const MAP_FLAG_NOFOLLOW = BV07;
pub const MAP_FLAG_SYMBOLGRAPHICS = BV08;
pub const MAP_FLAG_UNICODEGRAPHICS = BV09;
pub const MAP_FLAG_BLOCKGRAPHICS = BV10;
pub const MAP_FLAG_RESIZE = BV11;
pub const MAP_FLAG_SYNC = BV12;
pub const MAP_FLAG_ASCIILENGTH = BV13;
pub const MAP_FLAG_TERRAIN = BV14;
pub const MAP_FLAG_UPDATETERRAIN = BV15;
pub const MAP_FLAG_DOUBLED = BV16;
pub const MAP_FLAG_QUIET = BV17;
pub const MAP_FLAG_READ = BV18;
pub const MAP_FLAG_PANCAKE = BV19;
pub const MAP_FLAG_FAST = BV20;
pub const MAP_FLAG_AUTOLINK = BV21;
pub const MAP_SEARCH_NAME = @as(c_int, 0);
pub const MAP_SEARCH_EXITS = @as(c_int, 1);
pub const MAP_SEARCH_DESC = @as(c_int, 2);
pub const MAP_SEARCH_AREA = @as(c_int, 3);
pub const MAP_SEARCH_NOTE = @as(c_int, 4);
pub const MAP_SEARCH_TERRAIN = @as(c_int, 5);
pub const MAP_SEARCH_FLAG = @as(c_int, 6);
pub const MAP_SEARCH_ID = @as(c_int, 7);
pub const MAP_SEARCH_DISTANCE = @as(c_int, 8);
pub const MAP_SEARCH_MAX = @as(c_int, 9);
pub const MAP_EXIT_N = @as(c_int, 1);
pub const MAP_EXIT_E = @as(c_int, 2);
pub const MAP_EXIT_S = @as(c_int, 4);
pub const MAP_EXIT_W = @as(c_int, 8);
pub const MAP_EXIT_U = @as(c_int, 16);
pub const MAP_EXIT_D = @as(c_int, 32);
pub const MAP_DIR_N = @as(c_longlong, 1) << MAP_EXIT_N;
pub const MAP_DIR_E = @as(c_longlong, 1) << MAP_EXIT_E;
pub const MAP_DIR_S = @as(c_longlong, 1) << MAP_EXIT_S;
pub const MAP_DIR_W = @as(c_longlong, 1) << MAP_EXIT_W;
pub const MAP_DIR_U = @as(c_longlong, 1) << MAP_EXIT_U;
pub const MAP_DIR_D = @as(c_longlong, 1) << MAP_EXIT_D;
pub const MAP_DIR_NE = @as(c_longlong, 1) << (MAP_EXIT_N | MAP_EXIT_E);
pub const MAP_DIR_NW = @as(c_longlong, 1) << (MAP_EXIT_N | MAP_EXIT_W);
pub const MAP_DIR_SE = @as(c_longlong, 1) << (MAP_EXIT_S | MAP_EXIT_E);
pub const MAP_DIR_SW = @as(c_longlong, 1) << (MAP_EXIT_S | MAP_EXIT_W);
pub const MAP_UNDO_MOVE = @as(c_int, 1) << @as(c_int, 0);
pub const MAP_UNDO_CREATE = @as(c_int, 1) << @as(c_int, 1);
pub const MAP_UNDO_LINK = @as(c_int, 1) << @as(c_int, 2);
pub const MAP_UNDO_INSERT = @as(c_int, 1) << @as(c_int, 3);
pub const TERRAIN_FLAG_DENSE = BV01;
pub const TERRAIN_FLAG_AMPLE = BV02;
pub const TERRAIN_FLAG_SPARSE = BV03;
pub const TERRAIN_FLAG_SCANT = BV04;
pub const TERRAIN_FLAG_NARROW = BV05;
pub const TERRAIN_FLAG_STANDARD = BV06;
pub const TERRAIN_FLAG_WIDE = BV07;
pub const TERRAIN_FLAG_VAST = BV08;
pub const TERRAIN_FLAG_FADEIN = BV09;
pub const TERRAIN_FLAG_FADEOUT = BV10;
pub const TERRAIN_FLAG_DOUBLE = BV11;
pub const MOUSE_FLAG_BUTTON_A = @as(c_int, 1);
pub const MOUSE_FLAG_BUTTON_B = @as(c_int, 2);
pub const MOUSE_FLAG_SHIFT = @as(c_int, 4);
pub const MOUSE_FLAG_ALT = @as(c_int, 8);
pub const MOUSE_FLAG_CTRL = @as(c_int, 16);
pub const MOUSE_FLAG_MOTION = @as(c_int, 32);
pub const MOUSE_FLAG_WHEEL = @as(c_int, 64);
pub const MOUSE_FLAG_EXTRA = @as(c_int, 128);
pub const MOUSE_FLAG_RELEASE = @as(c_int, 256);
pub const CURSOR_FLAG_ALWAYS = @as(c_int, 1);
pub const CURSOR_FLAG_GET_ONE = @as(c_int, 4);
pub const CURSOR_FLAG_GET_ALL = @as(c_int, 8);
pub const STARTUP_FLAG_NOGREETING = @as(c_int, 1);
pub const STARTUP_FLAG_SCREENREADER = @as(c_int, 2);
pub const STARTUP_FLAG_NORESET = @as(c_int, 4);
pub const STARTUP_FLAG_ARGUMENT = @as(c_int, 8);
pub const STARTUP_FLAG_NOTITLE = @as(c_int, 16);
pub const STARTUP_FLAG_VERBOSE = @as(c_int, 32);
pub const STARTUP_FLAG_NOHUP = @as(c_int, 64);
pub const WRAP_FLAG_NONE = @as(c_int, 0);
pub const WRAP_FLAG_DISPLAY = BV01;
pub const WRAP_FLAG_WORD = BV02;
pub const WRAP_FLAG_SPLIT = BV03;
pub const WRAP_FLAG_TAIL = BV04;
pub const LEGEND_ASCII = @as(c_int, 0);
pub const LEGEND_ASCII_MISC = @as(c_int, 16);
pub const LEGEND_ASCII_CURVED = @as(c_int, 20);
pub const LEGEND_ASCII_DIRS = @as(c_int, 24);
pub const LEGEND_UNICODE = @as(c_int, 32);
pub const LEGEND_UNICODE_MISC = @as(c_int, 48);
pub const LEGEND_UNICODE_CURVED = @as(c_int, 52);
pub const LEGEND_UNICODE_DIRS = @as(c_int, 56);
pub const LEGEND_MUDFONT = @as(c_int, 64);
pub const LEGEND_MUDFONT_NWS = @as(c_int, 64);
pub const LEGEND_MUDFONT_NES = @as(c_int, 96);
pub const LEGEND_MUDFONT_CURVED = @as(c_int, 192);
pub const LEGEND_UNICODE_GRAPHICS = @as(c_int, 196);
pub const LEGEND_MAX = @as(c_int, 230);
pub const UNICODE_DIR_SE = @as(c_int, 1);
pub const UNICODE_DIR_NE = @as(c_int, 2);
pub const UNICODE_DIR_SW = @as(c_int, 4);
pub const UNICODE_DIR_NW = @as(c_int, 8);
pub const UNICODE_DIR_D = @as(c_int, 16);
pub const UNICODE_DIR_N = @as(c_int, 17);
pub const UNICODE_DIR_S = @as(c_int, 18);
pub const UNICODE_DIR_NS = @as(c_int, 19);
pub const UNICODE_DIR_U = @as(c_int, 20);
pub const UNICODE_DIR_E = @as(c_int, 21);
pub const UNICODE_DIR_W = @as(c_int, 22);
pub const UNICODE_DIR_EW = @as(c_int, 23);
pub const UNICODE_DIR_RL = @as(c_int, 24);
pub const UNICODE_DIR_RL_CURVED = @as(c_int, 25);
pub const UNICODE_DIR_RR = @as(c_int, 26);
pub const UNICODE_DIR_RR_CURVED = @as(c_int, 27);
pub const MAP_COLOR_AVOID = @as(c_int, 0);
pub const MAP_COLOR_BACK = @as(c_int, 1);
pub const MAP_COLOR_BLOCK = @as(c_int, 2);
pub const MAP_COLOR_EXIT = @as(c_int, 3);
pub const MAP_COLOR_FOG = @as(c_int, 4);
pub const MAP_COLOR_HIDE = @as(c_int, 5);
pub const MAP_COLOR_INVIS = @as(c_int, 6);
pub const MAP_COLOR_PATH = @as(c_int, 7);
pub const MAP_COLOR_ROOM = @as(c_int, 8);
pub const MAP_COLOR_SYMBOL = @as(c_int, 9);
pub const MAP_COLOR_USER = @as(c_int, 10);
pub const MAP_COLOR_MAX = @as(c_int, 11);
pub const LINK = @compileError("unable to translate C expr: unexpected token '{'");
// src/tintin.h:912:9
pub const UNLINK = @compileError("unable to translate macro: undefined identifier `__FILE__`");
// src/tintin.h:962:9
pub const RESTRING = @compileError("unable to translate C expr: unexpected token '{'");
// src/tintin.h:994:9
pub inline fn HAS_BIT(bitvector: anytype, bit: anytype) @TypeOf(bitvector & bit) {
    _ = &bitvector;
    _ = &bit;
    return bitvector & bit;
}
pub const SET_BIT = @compileError("unable to translate C expr: expected ')' instead got '|='");
// src/tintin.h:1014:9
pub const DEL_BIT = @compileError("unable to translate C expr: expected ')' instead got '&='");
// src/tintin.h:1015:9
pub const TOG_BIT = @compileError("unable to translate C expr: expected ')' instead got '^='");
// src/tintin.h:1016:9
pub inline fn FFS_BIT(bitvector: anytype) @TypeOf(ffs(bitvector) - @as(c_int, 1)) {
    _ = &bitvector;
    return ffs(bitvector) - @as(c_int, 1);
}
pub inline fn URANGE(a: anytype, b: anytype, c: anytype) @TypeOf(if (b < a) a else if (b > c) c else b) {
    _ = &a;
    _ = &b;
    _ = &c;
    return if (b < a) a else if (b > c) c else b;
}
pub inline fn UMAX(a: anytype, b: anytype) @TypeOf(if (a > b) a else b) {
    _ = &a;
    _ = &b;
    return if (a > b) a else b;
}
pub inline fn UMIN(a: anytype, b: anytype) @TypeOf(if (a < b) a else b) {
    _ = &a;
    _ = &b;
    return if (a < b) a else b;
}
pub const next_arg = @compileError("TODO postfix inc/dec expr");
// src/tintin.h:1029:9
pub inline fn IS_SPLIT(ses: anytype) @TypeOf(gtd.*.screen.*.rows != ses.*.split.*.bot_row) {
    _ = &ses;
    return gtd.*.screen.*.rows != ses.*.split.*.bot_row;
}
pub inline fn SCROLL(ses: anytype) @TypeOf(((ses.*.cur_row == @as(c_int, 0)) or ((ses.*.cur_row >= ses.*.split.*.top_row) and (ses.*.cur_row <= ses.*.split.*.bot_row))) or ((ses.*.cur_row >= ses.*.input.*.top_row) and (ses.*.cur_row <= ses.*.input.*.bot_row))) {
    _ = &ses;
    return ((ses.*.cur_row == @as(c_int, 0)) or ((ses.*.cur_row >= ses.*.split.*.top_row) and (ses.*.cur_row <= ses.*.split.*.bot_row))) or ((ses.*.cur_row >= ses.*.input.*.top_row) and (ses.*.cur_row <= ses.*.input.*.bot_row));
}
pub inline fn VERBATIM(ses: anytype) @TypeOf((gtd.*.level.*.verbatim != 0) or ((gtd.*.level.*.input == @as(c_int, 0)) and ((HAS_BIT(ses.*.config_flags, CONFIG_FLAG_VERBATIM) != 0) or (HAS_BIT(gtd.*.flags, TINTIN_FLAG_CHILDLOCK) != 0)))) {
    _ = &ses;
    return (gtd.*.level.*.verbatim != 0) or ((gtd.*.level.*.input == @as(c_int, 0)) and ((HAS_BIT(ses.*.config_flags, CONFIG_FLAG_VERBATIM) != 0) or (HAS_BIT(gtd.*.flags, TINTIN_FLAG_CHILDLOCK) != 0)));
}
pub const DO_BUFFER = @compileError("unable to translate macro: undefined identifier `ses`");
// src/tintin.h:1641:9
pub const DO_CHAT = @compileError("unable to translate macro: undefined identifier `arg1`");
// src/tintin.h:1642:9
pub const DO_COMMAND = @compileError("unable to translate macro: undefined identifier `ses`");
// src/tintin.h:1643:9
pub const DO_CURSOR = @compileError("unable to translate macro: undefined identifier `ses`");
// src/tintin.h:1644:9
pub const DO_DAEMON = @compileError("unable to translate macro: undefined identifier `ses`");
// src/tintin.h:1645:9
pub const DO_EDIT = @compileError("unable to translate macro: undefined identifier `ses`");
// src/tintin.h:1646:9
pub const DO_HISTORY = @compileError("unable to translate macro: undefined identifier `ses`");
// src/tintin.h:1647:9
pub const DO_LINE = @compileError("unable to translate macro: undefined identifier `ses`");
// src/tintin.h:1648:9
pub const DO_MAP = @compileError("unable to translate macro: undefined identifier `ses`");
// src/tintin.h:1649:9
pub const DO_PATH = @compileError("unable to translate macro: undefined identifier `ses`");
// src/tintin.h:1650:9
pub const DO_PORT = @compileError("unable to translate macro: undefined identifier `ses`");
// src/tintin.h:1651:9
pub const __BANNER_H__ = "";
pub const __BASE_H__ = "";
pub const __BUFFER_H__ = "";
pub const __CHAT_H__ = "";
pub const __CLASS_H__ = "";
pub const __COMMAND_H__ = "";
pub const __CURSOR_H__ = "";
pub const __INPUT_H__ = "";
pub const __MAPPER_H__ = "";
pub const __TT_MATH_H__ = "";
pub const __CONFIG_H__ = "";
pub const __DAEMON_H__ = "";
pub const __DATA_H__ = "";
pub const __DEBUG_H__ = "";
pub const __DICT_H__ = "";
pub const __EDIT_H__ = "";
pub const __DRAW_H__ = "";
pub const __EVENT_H__ = "";
pub const __FILES_H__ = "";
pub const __HELP_H__ = "";
pub const __HISTORY_H__ = "";
pub const __LINE_H__ = "";
pub const __LOG_H__ = "";
pub const __MAIN_H__ = "";
pub const __MCCP_H__ = "";
pub const __MEMORY_H__ = "";
pub const __MISC_H__ = "";
pub const __MSDP_H__ = "";
pub const __NEST_H__ = "";
pub const __NET_H__ = "";
pub const __PARSE_H__ = "";
pub const __PATH_H__ = "";
pub const __PORT_H__ = "";
pub const __SCREEN_H__ = "";
pub const __SESSION_H__ = "";
pub const __SHOW_H__ = "";
pub const __SORT_H__ = "";
pub const __SPLIT_H__ = "";
pub const __SSL_H__ = "";
pub const __STRING_H__ = "";
pub const __SUBSTITUTE_H__ = "";
pub const __SYSTEM_H__ = "";
pub const __TABLES_H__ = "";
pub const __TELOPT_H__ = "";
pub const __TERMINAL_H__ = "";
pub const __TEXT_H__ = "";
pub const __TINEXP_H__ = "";
pub const __TOKENIZE_H__ = "";
pub const __TRIGGER_H__ = "";
pub const __UTILS_H__ = "";
pub const __UTF8_H__ = "";
pub const __VARIABLE_H__ = "";
pub const __VT102_H__ = "";
pub const EXP_NUMBER = @as(c_int, 0);
pub const EXP_STRING = @as(c_int, 1);
pub const EXP_BRACE = @as(c_int, 2);
pub const EXP_OPERATOR = @as(c_int, 3);
pub const EXP_PARANTHESES = @as(c_int, 4);
pub const EXP_PR_CONSTANT = @as(c_int, 0);
pub const EXP_PR_DICE = @as(c_int, 1);
pub const EXP_PR_INTMUL = @as(c_int, 2);
pub const EXP_PR_INTADD = @as(c_int, 3);
pub const EXP_PR_BITSHIFT = @as(c_int, 4);
pub const EXP_PR_LOGLTGT = @as(c_int, 5);
pub const EXP_PR_LOGCOMP = @as(c_int, 6);
pub const EXP_PR_BITAND = @as(c_int, 7);
pub const EXP_PR_BITXOR = @as(c_int, 8);
pub const EXP_PR_BITOR = @as(c_int, 9);
pub const EXP_PR_LOGAND = @as(c_int, 10);
pub const EXP_PR_LOGXOR = @as(c_int, 11);
pub const EXP_PR_LOGOR = @as(c_int, 12);
pub const EXP_PR_TERNARY = @as(c_int, 13);
pub const EXP_PR_VAR = @as(c_int, 14);
pub const EXP_PR_LVL = @as(c_int, 15);
pub const EXP_OP_MULTIPLY = '*';
pub const EXP_OP_POWER = '*' + (@as(c_int, 128) * '*');
pub const EXP_OP_DIVIDE = '/';
pub const EXP_OP_ROOT = '/' + (@as(c_int, 128) * '/');
pub const EXP_OP_MODULO = '%';
pub const EXP_OP_DICE = 'd';
pub const EXP_OP_ADDITION = '+';
pub const EXP_OP_SUBTRACTION = '-';
pub const EXP_OP_LEFT_SHIFT = '<' + (@as(c_int, 128) * '<');
pub const EXP_OP_RIGHT_SHIFT = '>' + (@as(c_int, 128) * '>');
pub const EXP_OP_ELLIPSIS = '.' + (@as(c_int, 128) * '.');
pub const EXP_OP_GREATER = '>';
pub const EXP_OP_GREATER_EQUAL = '>' + (@as(c_int, 128) * '=');
pub const EXP_OP_LESSER = '<';
pub const EXP_OP_LESSER_EQUAL = '<' + (@as(c_int, 128) * '=');
pub const EXP_OP_EQUAL = '=' + (@as(c_int, 128) * '=');
pub const EXP_OP_COMPARE = ('=' + (@as(c_int, 128) * '=')) + ((@as(c_int, 128) * @as(c_int, 128)) * '=');
pub const EXP_OP_NOT_EQUAL = '!' + (@as(c_int, 128) * '=');
pub const EXP_OP_NOT_COMPARE = ('!' + (@as(c_int, 128) * '=')) + ((@as(c_int, 128) * @as(c_int, 128)) * '=');
pub const EXP_OP_AND = '&';
pub const EXP_OP_XOR = '^';
pub const EXP_OP_OR = '|';
pub const EXP_OP_LOGICAL_AND = '&' + (@as(c_int, 128) * '&');
pub const EXP_OP_LOGICAL_XOR = '^' + (@as(c_int, 128) * '^');
pub const EXP_OP_LOGICAL_OR = '|' + (@as(c_int, 128) * '|');
pub const EXP_OP_TERNARY_IF = '?';
pub const EXP_OP_TERNARY_ELSE = ':';
pub const BV00 = tintin_c.BV00;
pub const calloc = tintin_c.calloc;
pub const CMPFUNC = tintin_c.CMPFUNC;
pub const COMMAND = tintin_c.COMMAND;
pub const fd_set = tintin_c.fd_set;
pub const ffs = tintin_c.ffs;
pub const FILE = tintin_c.FILE;
pub const fmod = tintin_c.fmod;
pub const free = tintin_c.free;
pub const gnutls_session_t = tintin_c.gnutls_session_t;
pub const LIST_VARIABLE = tintin_c.LIST_VARIABLE;
pub const pcre = tintin_c.pcre;
pub const pow = tintin_c.pow;
pub const powl = tintin_c.powl;
pub const sprintf = tintin_c.sprintf;
pub const sqrt = tintin_c.sqrt;
pub const strchr = tintin_c.strchr;
pub const strcmp = tintin_c.strcmp;
pub const strdup = tintin_c.strdup;
pub const strlen = tintin_c.strlen;
pub const struct_buffer_type = tintin_c.struct_buffer_type;
pub const struct_charset_type = tintin_c.struct_charset_type;
pub const struct_chat_type = tintin_c.struct_chat_type;
pub const struct_color_type = tintin_c.struct_color_type;
pub const struct_cursor_type = tintin_c.struct_cursor_type;
pub const struct_daemon_type = tintin_c.struct_daemon_type;
pub const struct_edit_data = tintin_c.struct_edit_data;
pub const struct_edit_type = tintin_c.struct_edit_type;
pub const struct_event_type = tintin_c.struct_event_type;
pub const struct_history_type = tintin_c.struct_history_type;
pub const struct_list_type = tintin_c.struct_list_type;
pub const struct_listnode = tintin_c.struct_listnode;
pub const struct_listroot = tintin_c.struct_listroot;
pub const struct_map_legend_group_type = tintin_c.struct_map_legend_group_type;
pub const struct_map_legend_type = tintin_c.struct_map_legend_type;
pub const struct_map_type = tintin_c.struct_map_type;
pub const struct_msdp_type = tintin_c.struct_msdp_type;
pub const struct_path_type = tintin_c.struct_path_type;
pub const struct_port_data = tintin_c.struct_port_data;
pub const struct_port_type = tintin_c.struct_port_type;
pub const struct_rank_type = tintin_c.struct_rank_type;
pub const struct_row_data = tintin_c.struct_row_data;
pub const struct_scriptroot = tintin_c.struct_scriptroot;
pub const struct_session = tintin_c.struct_session;
pub const struct_stamp_type = tintin_c.struct_stamp_type;
pub const struct_str_data = tintin_c.struct_str_data;
pub const struct_substitution_type = tintin_c.struct_substitution_type;
pub const struct_telopt_type = tintin_c.struct_telopt_type;
pub const struct_timer_type = tintin_c.struct_timer_type;
pub const struct_tintin_data = tintin_c.struct_tintin_data;
pub const time_t = tintin_c.time_t;
pub export fn mathexp(arg_ses: [*c]struct_session, arg_str: [*c]u8, arg_result: [*c]u8, arg_seed: c_int) callconv(.c) c_longdouble {
    const ses = arg_ses;
    const str = arg_str;
    const result = arg_result;
    const seed = arg_seed;
    var node: [*c]struct_math_node = null;

    _ = substitute(ses, str, result, SUB_VAR | SUB_FUN);

    if (mathexp_tokenize(ses, result, seed, 1) == 0) {
        return 0;
    }

    node = math_head;

    while (node != null and (node.*.prev != null or node.*.next != null)) {
        if (node.*.next == null or node.*.next.*.level < node.*.level) {
            mathexp_level(ses, node);
            node = math_head;
        } else {
            node = node.*.next;
        }
    }

    if (node.*.type != EXP_STRING) {
        _ = sprintf(result, "%.*Lf", @as(c_int, precision), node.*.val);
    }
    return node.*.val;
}
pub export fn is_math(arg_ses: [*c]struct_session, arg_str: [*c]u8) c_int {
    var ses = arg_ses;
    _ = &ses;
    var str = arg_str;
    _ = &str;
    return mathexp_tokenize(ses, str, @as(c_int, 0), @as(c_int, 0));
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:172:3: warning: TODO implement function '__builtin___strcpy_chk' in std.zig.c_builtins

// src/math.c:157:5: warning: unable to translate function, demoted to extern
pub export fn get_ellipsis(arg_ses: [*c]struct_session, arg_size: c_uint, arg_name: [*c]u8, arg_min: [*c]c_int, arg_max: [*c]c_int) callconv(.c) c_int {
    _ = arg_ses;
    _ = arg_size;
    _ = arg_name;
    _ = arg_min;
    _ = arg_max;
    return 0; // TODO: Implement
}
pub export fn get_number(arg_ses: [*c]struct_session, arg_str: [*c]u8) c_longdouble {
    var ses = arg_ses;
    _ = &ses;
    var str = arg_str;
    _ = &str;
    var val: c_longdouble = undefined;
    _ = &val;
    var result: [40000]u8 = undefined;
    _ = &result;
    val = mathexp(ses, str, @as([*c]u8, @ptrCast(@alignCast(&result[@as(usize, @intCast(0))]))), @as(c_int, 0));
    return val;
}
pub export fn get_ulong(arg_ses: [*c]struct_session, arg_str: [*c]u8) c_ulonglong {
    var ses = arg_ses;
    _ = &ses;
    var str = arg_str;
    _ = &str;
    var val: c_ulonglong = undefined;
    _ = &val;
    var result: [40000]u8 = undefined;
    _ = &result;
    val = @as(c_ulonglong, @intFromFloat(mathexp(ses, str, @as([*c]u8, @ptrCast(@alignCast(&result[@as(usize, @intCast(0))]))), @as(c_int, 0))));
    return val;
}
pub export fn get_double(arg_ses: [*c]struct_session, arg_str: [*c]u8) c_longdouble {
    var ses = arg_ses;
    _ = &ses;
    var str = arg_str;
    _ = &str;
    var val: c_longdouble = undefined;
    _ = &val;
    var result: [40000]u8 = undefined;
    _ = &result;
    val = mathexp(ses, str, @as([*c]u8, @ptrCast(@alignCast(&result[@as(usize, @intCast(0))]))), @as(c_int, 1));
    return val;
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h:87:2: warning: TODO implement function '__builtin___sprintf_chk' in std.zig.c_builtins

// src/math.c:227:6: warning: unable to translate function, demoted to extern
pub export fn get_number_string(arg_ses: [*c]struct_session, arg_str: [*c]u8, arg_result: [*c]u8) callconv(.c) void {
    const ses = arg_ses;
    const str = arg_str;
    const result = arg_result;
    const val = get_number(ses, str);
    _ = sprintf(result, "%.*Lf", @as(c_int, precision), val);
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h:87:2: warning: TODO implement function '__builtin___sprintf_chk' in std.zig.c_builtins

// src/math.c:234:13: warning: unable to translate function, demoted to extern
pub export fn mathswitch(arg_ses: [*c]struct_session, arg_left: [*c]u8, arg_right: [*c]u8) callconv(.c) c_longdouble {
    const ses = arg_ses;
    const left = arg_left;
    const right = arg_right;
    var shift: [40000]u8 = undefined;
    _ = sprintf(&shift, "%s == %s", left, right);
    return get_number(ses, &shift);
}
pub export fn tintoi(arg_str: [*c]u8) c_longdouble {
    var str = arg_str;
    _ = &str;
    var ptr: [*c]u8 = str;
    _ = &ptr;
    var values: [5]c_longdouble = [5]c_longdouble{
        0,
        0,
        0,
        0,
        0,
    };
    _ = &values;
    var m: c_longdouble = 1;
    _ = &m;
    var i: c_int = 1;
    _ = &i;
    var d: c_int = 0;
    _ = &d;
    if (@as(c_int, @bitCast(@as(c_uint, ptr.*))) == @as(c_int, 0)) {
        return 0;
    }
    while (true) {
        switch (@as(c_int, @bitCast(@as(c_uint, ptr.*)))) {
            @as(c_int, 33), @as(c_int, 126), @as(c_int, 43), @as(c_int, 45) => {
                ptr += 1;
                break;
            },
            else => {},
        }
        break;
    }
    ptr = str + strlen(str);
    while (true) {
        ptr -= 1;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, ptr.*)))) {
                @as(c_int, 48), @as(c_int, 49), @as(c_int, 50), @as(c_int, 51), @as(c_int, 52), @as(c_int, 53), @as(c_int, 54), @as(c_int, 55), @as(c_int, 56), @as(c_int, 57) => {
                    values[@as(c_uint, @intCast(i))] += @as(c_longdouble, @floatFromInt(@as(c_int, @bitCast(@as(c_uint, ptr.*))) - @as(c_int, '0'))) * m;
                    m *= @as(c_longdouble, @floatFromInt(@as(c_int, 10)));
                    break;
                },
                @as(c_int, 46) => {
                    if (d != 0) {
                        return 0;
                    }
                    d = 1;
                    values[@as(c_uint, @intCast(@as(c_int, 0)))] = values[@as(c_uint, @intCast(@as(c_int, 1)))] / m;
                    values[@as(c_uint, @intCast(@as(c_int, 1)))] = 0;
                    m = 1;
                    break;
                },
                @as(c_int, 58) => {
                    while (true) {
                        switch (i) {
                            @as(c_int, 2) => {
                                values[@as(c_uint, @intCast(i))] *= @as(c_longdouble, @floatFromInt(@as(c_int, 60)));
                                break;
                            },
                            @as(c_int, 3) => {
                                values[@as(c_uint, @intCast(i))] *= @as(c_longdouble, @floatFromInt(@as(c_int, 60) * @as(c_int, 60)));
                                break;
                            },
                            @as(c_int, 4) => return 0,
                            else => {},
                        }
                        break;
                    }
                    i += 1;
                    m = 1;
                    break;
                },
                @as(c_int, 33), @as(c_int, 126), @as(c_int, 43), @as(c_int, 45) => {
                    if (ptr == str) {
                        break;
                    }
                    return 0;
                },
                else => return 0,
            }
            break;
        }
        if (ptr == str) {
            while (true) {
                switch (i) {
                    @as(c_int, 2) => {
                        values[@as(c_uint, @intCast(i))] *= @as(c_longdouble, @floatFromInt(@as(c_int, 60)));
                        break;
                    },
                    @as(c_int, 3) => {
                        values[@as(c_uint, @intCast(i))] *= @as(c_longdouble, @floatFromInt(@as(c_int, 60) * @as(c_int, 60)));
                        break;
                    },
                    @as(c_int, 4) => {
                        values[@as(c_uint, @intCast(i))] *= @as(c_longdouble, @floatFromInt((@as(c_int, 60) * @as(c_int, 60)) * @as(c_int, 24)));
                        break;
                    },
                    else => {},
                }
                break;
            }
            break;
        }
    }
    while (true) {
        switch (@as(c_int, @bitCast(@as(c_uint, str.*)))) {
            @as(c_int, 33) => return @as(c_longdouble, @floatFromInt(@intFromBool(!(((((values[@as(c_uint, @intCast(@as(c_int, 0)))] + values[@as(c_uint, @intCast(@as(c_int, 1)))]) + values[@as(c_uint, @intCast(@as(c_int, 2)))]) + values[@as(c_uint, @intCast(@as(c_int, 3)))]) + values[@as(c_uint, @intCast(@as(c_int, 4)))]) != 0)))),
            @as(c_int, 126) => return @as(c_longdouble, @floatFromInt(~@as(c_longlong, @intFromFloat((((values[@as(c_uint, @intCast(@as(c_int, 0)))] + values[@as(c_uint, @intCast(@as(c_int, 1)))]) + values[@as(c_uint, @intCast(@as(c_int, 2)))]) + values[@as(c_uint, @intCast(@as(c_int, 3)))]) + values[@as(c_uint, @intCast(@as(c_int, 4)))])))),
            @as(c_int, 43) => return (((values[@as(c_uint, @intCast(@as(c_int, 0)))] + values[@as(c_uint, @intCast(@as(c_int, 1)))]) + values[@as(c_uint, @intCast(@as(c_int, 2)))]) + values[@as(c_uint, @intCast(@as(c_int, 3)))]) + values[@as(c_uint, @intCast(@as(c_int, 4)))],
            @as(c_int, 45) => return -((((values[@as(c_uint, @intCast(@as(c_int, 0)))] + values[@as(c_uint, @intCast(@as(c_int, 1)))]) + values[@as(c_uint, @intCast(@as(c_int, 2)))]) + values[@as(c_uint, @intCast(@as(c_int, 3)))]) + values[@as(c_uint, @intCast(@as(c_int, 4)))]),
            else => return (((values[@as(c_uint, @intCast(@as(c_int, 0)))] + values[@as(c_uint, @intCast(@as(c_int, 1)))]) + values[@as(c_uint, @intCast(@as(c_int, 2)))]) + values[@as(c_uint, @intCast(@as(c_int, 3)))]) + values[@as(c_uint, @intCast(@as(c_int, 4)))],
        }
        break;
    }
    return 0;
}
pub export fn tintou(arg_str: [*c]u8) c_ulonglong {
    var str = arg_str;
    _ = &str;
    var ptr: [*c]u8 = str;
    _ = &ptr;
    var value: c_ulonglong = 0;
    _ = &value;
    var m: c_ulonglong = 1;
    _ = &m;
    if (@as(c_int, @bitCast(@as(c_uint, ptr.*))) == @as(c_int, 0)) {
        return 0;
    }
    while (true) {
        switch (@as(c_int, @bitCast(@as(c_uint, ptr.*)))) {
            @as(c_int, 33), @as(c_int, 126), @as(c_int, 43), @as(c_int, 45) => {
                ptr += 1;
                break;
            },
            else => {},
        }
        break;
    }
    ptr = str + strlen(str);
    while (ptr != str) {
        ptr -= 1;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, ptr.*)))) {
                @as(c_int, 48), @as(c_int, 49), @as(c_int, 50), @as(c_int, 51), @as(c_int, 52), @as(c_int, 53), @as(c_int, 54), @as(c_int, 55), @as(c_int, 56), @as(c_int, 57) => {
                    value +%= @as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, @bitCast(@as(c_uint, ptr.*))) - @as(c_int, '0')))) *% m;
                    m *%= @as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 10))));
                    break;
                },
                @as(c_int, 46) => {
                    value = 0;
                    m = 1;
                    break;
                },
                @as(c_int, 58) => return 0,
                @as(c_int, 33), @as(c_int, 126), @as(c_int, 43), @as(c_int, 45) => {
                    if (ptr == str) {
                        break;
                    }
                    return 0;
                },
                else => return 0,
            }
            break;
        }
    }
    while (true) {
        switch (@as(c_int, @bitCast(@as(c_uint, str[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
            @as(c_int, 33) => return @as(c_ulonglong, @intFromBool(!(value != 0))),
            @as(c_int, 126) => return ~value,
            @as(c_int, 43) => return value,
            @as(c_int, 45) => return -%value,
            else => return value,
        }
        break;
    }
    return 0;
}
pub extern fn do_configure(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn do_daemon(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn daemon_attach(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn daemon_detach(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn daemon_input(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn daemon_kill(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn daemon_list(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn reset_daemon() void;
pub extern fn winch_daemon() void;
pub extern fn do_kill(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn kill_list(root: [*c]struct_listroot) void;
pub extern fn free_list(root: [*c]struct_listroot) void;
pub extern fn show_node_with_wild(ses: [*c]struct_session, cptr: [*c]u8, root: [*c]struct_listroot) c_int;
pub extern fn show_node(root: [*c]struct_listroot, node: [*c]struct_listnode, level: c_int) void;
pub extern fn show_nest(node: [*c]struct_listnode, result: [*c]u8) void;
pub extern fn show_list(root: [*c]struct_listroot, level: c_int) void;
pub extern fn remove_node_list(ses: [*c]struct_session, @"type": c_int, node: [*c]struct_listnode) void;
pub extern fn remove_index_list(root: [*c]struct_listroot, index: c_int) void;
pub extern fn dispose_node(node: [*c]struct_listnode) void;
pub extern fn delete_node(ses: [*c]struct_session, @"type": c_int, node: [*c]struct_listnode) void;
pub extern fn delete_node_list(ses: [*c]struct_session, @"type": c_int, node: [*c]struct_listnode) void;
pub extern fn delete_node_with_wild(ses: [*c]struct_session, index: c_int, string: [*c]u8) c_int;
pub extern fn delete_index_list(root: [*c]struct_listroot, index: c_int) void;
pub extern fn search_index_list(root: [*c]struct_listroot, text: [*c]u8, priority: [*c]u8) c_int;
pub extern fn locate_index_list(root: [*c]struct_listroot, text: [*c]u8, priority: [*c]u8) c_int;
pub extern fn bsearch_alpha_list(root: [*c]struct_listroot, text: [*c]u8, seek: c_int) c_int;
pub extern fn bsearch_alnum_list(root: [*c]struct_listroot, text: [*c]u8, seek: c_int) c_int;
pub extern fn bsearch_priority_list(root: [*c]struct_listroot, text: [*c]u8, priority: [*c]u8, seek: c_int) c_int;
pub extern fn nsearch_list(root: [*c]struct_listroot, text: [*c]u8) c_int;
pub extern fn init_list(ses: [*c]struct_session, @"type": c_int, size: c_int) [*c]struct_listroot;
pub extern fn copy_list(ses: [*c]struct_session, sourcelist: [*c]struct_listroot, @"type": c_int) [*c]struct_listroot;
pub extern fn create_node(arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_listnode;
pub extern fn create_node_list(root: [*c]struct_listroot, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_listnode;
pub extern fn insert_node_list(root: [*c]struct_listroot, node: [*c]struct_listnode) [*c]struct_listnode;
pub extern fn insert_index_list(root: [*c]struct_listroot, node: [*c]struct_listnode, index: c_int) [*c]struct_listnode;
pub extern fn update_node_list(root: [*c]struct_listroot, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_listnode;
pub extern fn search_node_list(root: [*c]struct_listroot, text: [*c]u8) [*c]struct_listnode;
pub extern fn push_call(format: [*c]u8, ...) void;
pub extern fn push_call_printf(format: [*c]u8, ...) c_int;
pub extern fn pop_call() void;
pub extern fn dump_stack() void;
pub extern fn do_dictionary(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn spellcheck_count(ses: [*c]struct_session, in: [*c]u8) c_int;
pub extern fn cursor_dictionary_tab_add(stop_after_first: c_int) c_int;
pub extern fn do_edit(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn edit_create(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn edit_load(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn edit_read(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn edit_resume(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn edit_save(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn edit_suspend(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn edit_write(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn create_editor() [*c]struct_edit_data;
pub extern fn enable_editor(edit: [*c]struct_edit_data) void;
pub extern fn delete_editor(edit: [*c]struct_edit_data) void;
pub extern fn resize_editor(edit: [*c]struct_edit_data, size: c_int) void;
pub extern fn clear_editor(edit: [*c]struct_edit_data) void;
pub extern fn str_save_editor(edit: [*c]struct_edit_data, str: [*c][*c]u8) c_int;
pub extern fn var_save_editor(edit: [*c]struct_edit_data, str: [*c][*c]u8) c_int;
pub extern fn create_line(edit: [*c]struct_edit_data, index: c_int, str: [*c]u8) void;
pub extern fn delete_line(edit: [*c]struct_edit_data, index: c_int) void;
pub extern fn insert_line(edit: [*c]struct_edit_data, index: c_int, str: [*c]u8) void;
pub extern fn remove_line(edit: [*c]struct_edit_data, index: c_int) void;
pub extern fn do_draw(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn check_all_events(ses: [*c]struct_session, flags: c_int, args: c_int, vars: c_int, fmt: [*c]u8, ...) c_int;
pub extern fn mouse_handler(ses: [*c]struct_session, val1: c_int, val2: c_int, val3: c_int) void;
pub extern fn do_read(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn do_write(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn read_file(ses: [*c]struct_session, fp: [*c]FILE, filename: [*c]u8) [*c]struct_session;
pub extern fn write_node(ses: [*c]struct_session, mode: c_int, node: [*c]struct_listnode, file: [*c]FILE) void;
pub extern fn fread_one_line(str: [*c][*c]u8, fp: [*c]FILE) [*c]u8;
pub extern fn do_help(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn do_history(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn add_line_history(ses: [*c]struct_session, line: [*c]u8) void;
pub extern fn insert_line_history(ses: [*c]struct_session, line: [*c]u8) void;
pub extern fn repeat_history(ses: [*c]struct_session, line: [*c]u8) [*c]struct_session;
pub extern fn write_history(ses: [*c]struct_session, filename: [*c]u8) c_int;
pub extern fn read_history(ses: [*c]struct_session, filename: [*c]u8) c_int;
pub extern fn history_delete(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn history_get(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn history_insert(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn history_list(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn history_read(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn history_write(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn do_line(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn line_background(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_benchmark(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_capture(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_convert(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_debug(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_gag(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_ignore(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_json(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_local(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_log(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_logmode(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_logverbatim(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_msdp(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_multishot(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_oneshot(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_quiet(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_strip(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_substitute(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_verbatim(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn line_verbose(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) [*c]struct_session;
pub extern fn logheader(ses: [*c]struct_session, file: [*c]FILE, newline: c_int) void;
pub extern fn init_log(ses: [*c]struct_session) void;
pub extern fn free_log(ses: [*c]struct_session) void;
pub extern fn logit(ses: [*c]struct_session, txt: [*c]u8, file: [*c]FILE, newline: c_int) void;
pub extern fn write_html_header(ses: [*c]struct_session, fp: [*c]FILE) void;
pub extern fn vt102_to_html(ses: [*c]struct_session, txt: [*c]u8, out: [*c]u8) void;
pub extern var gts: [*c]struct_session;
pub extern var gtd: [*c]struct_tintin_data;
pub extern fn winch_handler(signal: c_int) void;
pub extern fn abort_handler(signal: c_int) void;
pub extern fn pipe_handler(signal: c_int) void;
pub extern fn suspend_handler(signal: c_int) void;
pub extern fn trap_handler(signal: c_int) void;
pub extern fn main(argc: c_int, argv: [*c][*c]u8) c_int;
pub extern fn init_tintin(greeting: c_int) void;
pub extern fn quitmsg(message: [*c]u8) void;
pub extern fn syserr_fatal(signal: c_int, msg: [*c]u8) void;
pub extern fn syserr_printf(ses: [*c]struct_session, fmt: [*c]u8, ...) void;
pub extern fn zlib_alloc(@"opaque": ?*anyopaque, items: c_uint, size: c_uint) ?*anyopaque;
pub extern fn zlib_free(@"opaque": ?*anyopaque, address: ?*anyopaque) void;
pub extern fn restring(point: [*c]u8, string: [*c]u8) [*c]u8;
pub extern fn restringf(point: [*c]u8, fmt: [*c]u8, ...) [*c]u8;
pub extern fn init_memory() void;
pub extern fn get_str_ptr(str: [*c]u8) [*c]struct_str_data;
pub extern fn get_str_str(str_ptr: [*c]struct_str_data) [*c]u8;
pub extern fn str_len(str: [*c]u8) c_int;
pub extern fn str_max(str: [*c]u8) c_int;
pub extern fn str_fix(str: [*c]u8) c_int;
pub extern fn str_fix_len(str: [*c]u8, len: c_int) c_int;
pub extern fn str_alloc(len: c_int) [*c]u8;
pub extern fn str_free(ptr: [*c]u8) void;
pub extern fn str_mim(original: [*c]u8) [*c]u8;
pub extern fn str_dup(original: [*c]u8) [*c]u8;
pub extern fn str_dup_clone(original: [*c]u8) [*c]u8;
pub extern fn str_dup_printf(fmt: [*c]u8, ...) [*c]u8;
pub extern fn str_ndup(original: [*c]u8, len: c_int) [*c]u8;
pub extern fn str_resize(ptr: [*c][*c]u8, add: c_int) [*c]u8;
pub extern fn str_clone(clone: [*c][*c]u8, original: [*c]u8) void;
pub extern fn str_cpy(ptr: [*c][*c]u8, str: [*c]u8) [*c]u8;
pub extern fn str_cpy_printf(ptr: [*c][*c]u8, fmt: [*c]u8, ...) [*c]u8;
pub extern fn str_ncpy(ptr: [*c][*c]u8, str: [*c]u8, len: c_int) [*c]u8;
pub extern fn str_cat_len(str: [*c][*c]u8, arg: [*c]u8, len: c_int) [*c]u8;
pub extern fn str_cat(str: [*c][*c]u8, arg: [*c]u8) [*c]u8;
pub extern fn str_cat_chr(ptr: [*c][*c]u8, chr: u8) [*c]u8;
pub extern fn str_cat_printf(str: [*c][*c]u8, fmt: [*c]u8, ...) [*c]u8;
pub extern fn str_cap(str: [*c][*c]u8, index: c_int, buf: [*c]u8) [*c]u8;
pub extern fn str_ins(str: [*c][*c]u8, index: c_int, buf: [*c]u8) [*c]u8;
pub extern fn str_ins_printf(str: [*c][*c]u8, index: c_int, fmt: [*c]u8, ...) [*c]u8;
pub extern fn str_mov(str: [*c][*c]u8, dst: c_int, src: c_int) [*c]u8;
pub extern fn str_alloc_stack(size: c_int) [*c]u8;
pub extern fn do_end(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn do_nop(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn do_test(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn init_msdp_table() void;
pub extern fn msdp_find(@"var": [*c]u8) c_int;
pub extern fn arachnos_devel(ses: [*c]struct_session, fmt: [*c]u8, ...) void;
pub extern fn arachnos_mudlist(ses: [*c]struct_session, fmt: [*c]u8, ...) void;
pub extern fn msdp_update_all(@"var": [*c]u8, fmt: [*c]u8, ...) void;
pub extern fn msdp_update_var(ses: [*c]struct_session, buddy: [*c]struct_port_data, @"var": [*c]u8, str: [*c]u8) void;
pub extern fn msdp_update_varf(ses: [*c]struct_session, buddy: [*c]struct_port_data, @"var": [*c]u8, fmt: [*c]u8, ...) void;
pub extern fn msdp_update_var_instant(ses: [*c]struct_session, buddy: [*c]struct_port_data, @"var": [*c]u8, fmt: [*c]u8, ...) void;
pub extern fn msdp_send_update(ses: [*c]struct_session, buddy: [*c]struct_port_data) void;
pub extern fn msdp_get_var(ses: [*c]struct_session, buddy: [*c]struct_port_data, @"var": [*c]u8) [*c]u8;
pub extern fn process_msdp_varval(ses: [*c]struct_session, buddy: [*c]struct_port_data, @"var": [*c]u8, val: [*c]u8) void;
pub extern fn msdp_command_list(ses: [*c]struct_session, buddy: [*c]struct_port_data, index: c_int) void;
pub extern fn msdp_command_report(ses: [*c]struct_session, buddy: [*c]struct_port_data, index: c_int) void;
pub extern fn msdp_command_reset(ses: [*c]struct_session, buddy: [*c]struct_port_data, index: c_int) void;
pub extern fn msdp_command_send(ses: [*c]struct_session, buddy: [*c]struct_port_data, index: c_int) void;
pub extern fn msdp_command_unreport(ses: [*c]struct_session, buddy: [*c]struct_port_data, index: c_int) void;
pub extern fn msdp_configure_arachnos(ses: [*c]struct_session, buddy: [*c]struct_port_data, index: c_int) void;
pub extern fn write_msdp_to_descriptor(ses: [*c]struct_session, buddy: [*c]struct_port_data, src: [*c]u8, length: c_int) void;
pub extern fn msdp2gmcp(src: [*c]u8, srclen: c_int, out: [*c]u8) c_int;
pub extern fn gmcp2msdp(src: [*c]u8, srclen: c_int, out: [*c]u8) c_int;
pub extern fn tintin2msdp(src: [*c]u8, out: [*c]u8) c_int;
pub const msdp_table: [*c]struct_msdp_type = @extern([*c]struct_msdp_type, .{
    .name = "msdp_table",
});
pub extern fn search_nest_base_ses(ses: [*c]struct_session, arg: [*c]u8) [*c]struct_listroot;
pub extern fn search_nest_root(root: [*c]struct_listroot, arg: [*c]u8) [*c]struct_listroot;
pub extern fn search_base_node(root: [*c]struct_listroot, variable: [*c]u8) [*c]struct_listnode;
pub extern fn search_nest_node(root: [*c]struct_listroot, variable: [*c]u8) [*c]struct_listnode;
pub extern fn search_nest_node_path(root: [*c]struct_listroot, variable: [*c]u8, path: [*c]u8) [*c]struct_listnode;
pub extern fn search_nest_node_ses(ses: [*c]struct_session, variable: [*c]u8) [*c]struct_listnode;
pub extern fn search_nest_index(root: [*c]struct_listroot, variable: [*c]u8) c_int;
pub extern fn update_nest_root(root: [*c]struct_listroot, arg: [*c]u8) [*c]struct_listroot;
pub extern fn update_nest_node(root: [*c]struct_listroot, arg: [*c]u8) void;
pub extern fn delete_nest_node(root: [*c]struct_listroot, variable: [*c]u8) c_int;
pub extern fn delete_nest_node_with_wild(root: [*c]struct_listroot, variable: [*c]u8) c_int;
pub extern fn get_nest_size_key(root: [*c]struct_listroot, variable: [*c]u8, result: [*c][*c]u8) c_int;
pub extern fn get_nest_size_val(root: [*c]struct_listroot, variable: [*c]u8, result: [*c][*c]u8) c_int;
pub extern fn get_nest_node_key(root: [*c]struct_listroot, variable: [*c]u8, result: [*c][*c]u8, def: c_int) [*c]struct_listnode;
pub extern fn get_nest_node_val(root: [*c]struct_listroot, variable: [*c]u8, result: [*c][*c]u8, def: c_int) [*c]struct_listnode;
pub extern fn get_nest_index(root: [*c]struct_listroot, variable: [*c]u8, result: [*c][*c]u8, def: c_int) c_int;
pub extern fn show_nest_node(node: [*c]struct_listnode, result: [*c][*c]u8, initialize: c_int) void;
pub extern fn view_nest_node_json(node: [*c]struct_listnode, str_result: [*c][*c]u8, nest: c_int, initialize: c_int) void;
pub extern fn view_nest_node(node: [*c]struct_listnode, str_result: [*c][*c]u8, nest: c_int, initialize: c_int, color: c_int) void;
pub extern fn set_nest_node_ses(ses: [*c]struct_session, arg1: [*c]u8, format: [*c]u8, ...) [*c]struct_listnode;
pub extern fn add_nest_node_ses(ses: [*c]struct_session, arg1: [*c]u8, format: [*c]u8, ...) [*c]struct_listnode;
pub extern fn set_nest_node(root: [*c]struct_listroot, arg1: [*c]u8, format: [*c]u8, ...) [*c]struct_listnode;
pub extern fn add_nest_node(root: [*c]struct_listroot, arg1: [*c]u8, format: [*c]u8, ...) [*c]struct_listnode;
pub extern fn copy_nest_node(dst_root: [*c]struct_listroot, dst: [*c]struct_listnode, src: [*c]struct_listnode) void;
pub extern fn connect_mud(ses: [*c]struct_session, host: [*c]u8, port: [*c]u8) c_int;
pub extern fn write_line_mud(ses: [*c]struct_session, line: [*c]u8, size: c_int) void;
pub extern fn read_buffer_mud(ses: [*c]struct_session) c_int;
pub extern fn readmud(ses: [*c]struct_session) void;
pub extern fn process_more_output(ses: [*c]struct_session, append: [*c]u8, prompt: c_int) void;
pub extern fn process_one_line(ses: [*c]struct_session, linebuf: [*c]u8, prompt: c_int) void;
pub extern fn is_abbrev(str1: [*c]u8, str2: [*c]u8) c_int;
pub extern fn is_abbrev_cmp(str1: [*c]u8, str2: [*c]u8) c_int;
pub extern fn is_member(str1: [*c]u8, str2: [*c]u8) c_int;
pub extern fn is_vowel(str: [*c]u8) c_int;
pub extern fn filename_string(input: [*c]u8, output: [*c]u8) void;
pub extern fn execute(ses: [*c]struct_session, format: [*c]u8, ...) [*c]struct_session;
pub extern fn command(ses: [*c]struct_session, cmd: ?*const COMMAND, format: [*c]u8, ...) [*c]struct_session;
pub extern fn parse_input(ses: [*c]struct_session, input: [*c]u8) [*c]struct_session;
pub extern fn parse_command(ses: [*c]struct_session, input: [*c]u8) [*c]struct_session;
pub extern fn is_speedwalk(ses: [*c]struct_session, input: [*c]u8) c_int;
pub extern fn substitute_speedwalk(ses: [*c]struct_session, input: [*c]u8, output: [*c]u8) [*c]u8;
pub extern fn process_speedwalk(ses: [*c]struct_session, input: [*c]u8) void;
pub extern fn parse_tintin_command(ses: [*c]struct_session, input: [*c]u8) [*c]struct_session;
pub extern fn cnt_arg_all(ses: [*c]struct_session, string: [*c]u8, flag: c_int) c_int;
pub extern fn get_arg_all(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8, verbatim: c_int) [*c]u8;
pub extern fn sub_arg_all(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8, verbatim: c_int, sub: c_int) [*c]u8;
pub extern fn get_arg_in_braces(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8, flag: c_int) [*c]u8;
pub extern fn sub_arg_in_braces(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8, flag: c_int, sub: c_int) [*c]u8;
pub extern fn get_arg_with_spaces(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8, flag: c_int) [*c]u8;
pub extern fn get_arg_stop_spaces(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8, flag: c_int) [*c]u8;
pub extern fn sub_arg_stop_spaces(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8, flag: c_int, sub: c_int) [*c]u8;
pub extern fn get_arg_stop_digits(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8, flag: c_int) [*c]u8;
pub extern fn space_out(string: [*c]u8) [*c]u8;
pub extern fn get_arg_to_brackets(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8) [*c]u8;
pub extern fn get_arg_at_brackets(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8) [*c]u8;
pub extern fn get_arg_in_brackets(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8) [*c]u8;
pub extern fn get_char(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8) [*c]u8;
pub extern fn write_mud(ses: [*c]struct_session, command: [*c]u8, flags: c_int) void;
pub extern fn check_one_line_multi(ses: [*c]struct_session, line: [*c]u8, strip: [*c]u8) void;
pub extern fn check_one_line(ses: [*c]struct_session, line: [*c]u8) void;
pub extern fn do_pathdir(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn is_pathdir(ses: [*c]struct_session, dir: [*c]u8) c_int;
pub extern fn exit_to_dir(ses: [*c]struct_session, name: [*c]u8) c_int;
pub extern fn pdir(node: [*c]struct_listnode) u8;
pub extern fn dir_to_exit(ses: [*c]struct_session, dir: c_int) [*c]u8;
pub extern fn check_append_path(ses: [*c]struct_session, forward: [*c]u8, backward: [*c]u8, delay: f64, force: c_int, follow: c_int) void;
pub extern fn path_create(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_describe(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_delete(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_destroy(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_get(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_goto(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_insert(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_load(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_map(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_move(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_run(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_save(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_start(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_stop(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_swap(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_undo(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_unzip(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_walk(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_zip(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_new(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn path_end(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn port_call(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_color(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_flag(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_group(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_ignore(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_initialize(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_info(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_message(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_name(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_prefix(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_proxy(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_rank(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_send(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_uninitialize(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_who(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_zap(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) [*c]struct_session;
pub extern fn port_new(ses: [*c]struct_session, s: c_int) c_int;
pub extern fn close_port(ses: [*c]struct_session, buddy: [*c]struct_port_data, unlink: c_int) void;
pub extern fn process_port_connections(ses: [*c]struct_session, read_set: [*c]fd_set, write_set: [*c]fd_set, exc_set: [*c]fd_set) void;
pub extern fn port_forward_session(ses: [*c]struct_session, linelog: [*c]u8) void;
pub extern fn port_socket_printf(ses: [*c]struct_session, buddy: [*c]struct_port_data, format: [*c]u8, ...) void;
pub extern fn port_telnet_printf(ses: [*c]struct_session, buddy: [*c]struct_port_data, length: usize, format: [*c]u8, ...) void;
pub extern fn port_log_printf(ses: [*c]struct_session, buddy: [*c]struct_port_data, format: [*c]u8, ...) void;
pub extern fn port_printf(ses: [*c]struct_session, format: [*c]u8, ...) void;
pub extern fn process_port_input(ses: [*c]struct_session, buddy: [*c]struct_port_data) c_int;
pub extern fn get_port_commands(ses: [*c]struct_session, buddy: [*c]struct_port_data, buf: [*c]u8, len: c_int) void;
pub extern fn port_name_change(ses: [*c]struct_session, buddy: [*c]struct_port_data, txt: [*c]u8) void;
pub extern fn port_receive_message(ses: [*c]struct_session, buddy: [*c]struct_port_data, txt: [*c]u8) void;
pub extern fn port_puts(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn find_port_buddy(ses: [*c]struct_session, arg: [*c]u8) [*c]struct_port_data;
pub extern fn find_port_group(ses: [*c]struct_session, arg: [*c]u8) [*c]struct_port_data;
pub extern fn do_screen(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn init_inputregion(ses: [*c]struct_session, top_row: c_int, top_col: c_int, bot_row: c_int, bot_col: c_int) void;
pub extern fn get_row_index(ses: [*c]struct_session, val: c_int) c_int;
pub extern fn get_col_index(ses: [*c]struct_session, val: c_int) c_int;
pub extern fn get_row_index_arg(ses: [*c]struct_session, arg: [*c]u8) c_int;
pub extern fn get_col_index_arg(ses: [*c]struct_session, arg: [*c]u8) c_int;
pub extern fn csip_handler(var1: c_int, var2: c_int, var3: c_int) void;
pub extern fn csit_handler(var1: c_int, var2: c_int, var3: c_int) void;
pub extern fn rqlp_handler(event: c_int, button: c_int, row: c_int, col: c_int) void;
pub extern fn osc_handler(ind: u8, arg: [*c]u8) void;
pub extern fn erase_scroll_region(ses: [*c]struct_session) void;
pub extern fn erase_input_region(ses: [*c]struct_session) void;
pub extern fn erase_split_region(ses: [*c]struct_session) void;
pub extern fn erase_bot_region(ses: [*c]struct_session) void;
pub extern fn erase_top_region(ses: [*c]struct_session) void;
pub extern fn erase_left_region(ses: [*c]struct_session) void;
pub extern fn erase_right_region(ses: [*c]struct_session) void;
pub extern fn erase_square(ses: [*c]struct_session, top_row: c_int, top_col: c_int, bot_row: c_int, bot_col: c_int) void;
pub extern fn fill_scroll_region(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn fill_top_region(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn fill_bot_region(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn fill_left_region(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn fill_right_region(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn fill_split_region(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn inside_scroll_region(ses: [*c]struct_session, row: c_int, col: c_int) c_int;
pub extern fn add_row_index(row: [*c][*c]struct_row_data, index: c_int) void;
pub extern fn del_row_index(row: [*c][*c]struct_row_data, index: c_int) void;
pub extern fn print_scroll_region(ses: [*c]struct_session) void;
pub extern fn print_screen(...) void;
pub extern fn init_screen(rows: c_int, cols: c_int, pix_rows: c_int, pix_cols: c_int) void;
pub extern fn destroy_screen(...) void;
pub extern fn set_grid_screen(ses: [*c]struct_session, str: [*c]u8, row: c_int, col: c_int) void;
pub extern fn add_line_screen(ses: [*c]struct_session, str: [*c]u8, row: c_int) void;
pub extern fn set_line_screen(ses: [*c]struct_session, ins: [*c]u8, row: c_int, col: c_int) void;
pub extern fn get_line_screen(str: [*c]u8, row: c_int) void;
pub extern fn get_link_screen(ses: [*c]struct_session, @"var": [*c]u8, val: [*c]u8, flags: c_int, row: c_int, col: c_int) c_int;
pub extern fn get_word_screen(str: [*c]u8, row: c_int, col: c_int) void;
pub extern fn do_session(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn do_snoop(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn do_zap(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn session_command(arg: [*c]u8, ses: [*c]struct_session) [*c]struct_session;
pub extern fn find_session(name: [*c]u8) [*c]struct_session;
pub extern fn newactive_session() [*c]struct_session;
pub extern fn activate_session(ses: [*c]struct_session) [*c]struct_session;
pub extern fn new_session(ses: [*c]struct_session, name: [*c]u8, address: [*c]u8, desc: c_int, ssl: c_int) [*c]struct_session;
pub extern fn connect_session(ses: [*c]struct_session) [*c]struct_session;
pub extern fn cleanup_session(ses: [*c]struct_session) void;
pub extern fn dispose_session(ses: [*c]struct_session) void;
pub extern fn show_message(ses: [*c]struct_session, index: c_int, format: [*c]u8, ...) void;
pub extern fn show_error(ses: [*c]struct_session, index: c_int, format: [*c]u8, ...) void;
pub extern fn show_debug(ses: [*c]struct_session, index: c_int, node: [*c]struct_listnode, format: [*c]u8, ...) void;
pub extern fn show_info(ses: [*c]struct_session, index: c_int, format: [*c]u8, ...) void;
pub extern fn tintin_header(ses: [*c]struct_session, width: c_int, format: [*c]u8, ...) void;
pub extern fn socket_printf(ses: [*c]struct_session, length: usize, format: [*c]u8, ...) void;
pub extern fn telnet_printf(ses: [*c]struct_session, length: c_int, format: [*c]u8, ...) void;
pub extern fn print_lines(ses: [*c]struct_session, flags: c_int, color: [*c]u8, format: [*c]u8, ...) void;
pub extern fn show_lines(ses: [*c]struct_session, color: [*c]u8, str: [*c]u8) void;
pub extern fn tintin_printf(ses: [*c]struct_session, format: [*c]u8, ...) void;
pub extern fn tintin_printf2(ses: [*c]struct_session, format: [*c]u8, ...) void;
pub extern fn tintin_printf3(ses: [*c]struct_session, format: [*c]u8, ...) void;
pub extern fn tintin_puts(ses: [*c]struct_session, string: [*c]u8) void;
pub extern fn tintin_puts2(ses: [*c]struct_session, string: [*c]u8) void;
pub extern fn tintin_puts3(ses: [*c]struct_session, string: [*c]u8, prompt: c_int) void;
pub extern fn quadsort(array: ?*anyopaque, nmemb: usize, size: usize, cmp: ?*const CMPFUNC) void;
pub extern fn cmp_int(a: ?*const anyopaque, b: ?*const anyopaque) c_int;
pub extern fn cmp_str(a: ?*const anyopaque, b: ?*const anyopaque) c_int;
pub extern fn cmp_num(a: ?*const anyopaque, b: ?*const anyopaque) c_int;
pub extern fn do_split(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn do_unsplit(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn init_split(ses: [*c]struct_session, top: c_int, bot: c_int, left: c_int, right: c_int) void;
pub extern fn reset_screen(ses: [*c]struct_session) void;
pub extern fn dirty_screen(ses: [*c]struct_session) void;
pub extern fn split_show(ses: [*c]struct_session, prompt: [*c]u8, row: [*c]u8, col: [*c]u8) void;
pub extern fn ssl_negotiate(ses: [*c]struct_session) gnutls_session_t;
pub extern fn get_raw_len_str_range_str_width(ses: [*c]struct_session, str: [*c]u8, start: c_int, end: c_int, raw_width: [*c]c_int) c_int;
pub extern fn get_raw_off_str_range_raw_width(ses: [*c]struct_session, str: [*c]u8, start: c_int, end: c_int, raw_width: [*c]c_int) c_int;
pub extern fn raw_len_str(ses: [*c]struct_session, str: [*c]u8, start: c_int, end: c_int) c_int;
pub extern fn str_len_raw(ses: [*c]struct_session, str: [*c]u8, start: c_int, end: c_int) c_int;
pub extern fn str_ins_str(ses: [*c]struct_session, str: [*c][*c]u8, ins: [*c]u8, str_start: c_int, str_end: c_int) [*c]u8;
pub extern fn calign(ses: [*c]struct_session, in: [*c]u8, out: [*c]u8, width: c_int) [*c]u8;
pub extern fn lalign(ses: [*c]struct_session, in: [*c]u8, out: [*c]u8, width: c_int) [*c]u8;
pub extern fn ralign(ses: [*c]struct_session, in: [*c]u8, out: [*c]u8, width: c_int) [*c]u8;
pub extern fn ualign(ses: [*c]struct_session, in: [*c]u8, out: [*c]u8, width: c_int) [*c]u8;
pub extern fn char_cmp(left: u8, right: u8) u8;
pub extern fn is_alnum(input: u8) u8;
pub extern fn is_alpha(input: u8) u8;
pub extern fn is_digit(input: u8) u8;
pub extern fn is_hex(input: u8) u8;
pub extern fn is_print(input: u8) u8;
pub extern fn is_space(input: u8) u8;
pub extern fn is_varchar(input: u8) u8;
pub extern fn is_csichar(input: u8) u8;
pub extern fn valid_escape(ses: [*c]struct_session, arg: [*c]u8) c_int;
pub extern fn fuzzy_color_code(ses: [*c]struct_session, pti: [*c]u8) [*c]u8;
pub extern fn dim_color_code(ses: [*c]struct_session, pti: [*c]u8, mod: c_int) [*c]u8;
pub extern fn lit_color_code(ses: [*c]struct_session, pti: [*c]u8, mod: c_int) [*c]u8;
pub extern fn color_gradient(pti: [*c]u8, low: c_int, max: c_int) c_int;
pub extern fn is_tintin_code(pti: [*c]u8) c_int;
pub extern fn is_color_code(str: [*c]u8) c_int;
pub extern fn is_color_name(str: [*c]u8) c_int;
pub extern fn substitute_color(input: [*c]u8, output: [*c]u8, colors: c_int) c_int;
pub extern fn do_suspend(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub const buffer_table: [*c]struct_buffer_type = @extern([*c]struct_buffer_type, .{
    .name = "buffer_table",
});
pub const charset_table: [*c]struct_charset_type = @extern([*c]struct_charset_type, .{
    .name = "charset_table",
});
pub const chat_table: [*c]struct_chat_type = @extern([*c]struct_chat_type, .{
    .name = "chat_table",
});
pub const character_table: [*c]u8 = @extern([*c]u8, .{
    .name = "character_table",
});
pub const color_table: [*c]struct_color_type = @extern([*c]struct_color_type, .{
    .name = "color_table",
});
pub const map_color_table: [*c]struct_color_type = @extern([*c]struct_color_type, .{
    .name = "map_color_table",
});
pub const cursor_table: [*c]struct_cursor_type = @extern([*c]struct_cursor_type, .{
    .name = "cursor_table",
});
pub const daemon_table: [*c]struct_daemon_type = @extern([*c]struct_daemon_type, .{
    .name = "daemon_table",
});
pub const edit_table: [*c]struct_edit_type = @extern([*c]struct_edit_type, .{
    .name = "edit_table",
});
pub const event_table: [*c]struct_event_type = @extern([*c]struct_event_type, .{
    .name = "event_table",
});
pub const history_table: [*c]struct_history_type = @extern([*c]struct_history_type, .{
    .name = "history_table",
});
pub extern var list_table: [22]struct_list_type;
pub const map_table: [*c]struct_map_type = @extern([*c]struct_map_type, .{
    .name = "map_table",
});
pub const path_table: [*c]struct_path_type = @extern([*c]struct_path_type, .{
    .name = "path_table",
});
pub const port_table: [*c]struct_port_type = @extern([*c]struct_port_type, .{
    .name = "port_table",
});
pub const rank_table: [*c]struct_rank_type = @extern([*c]struct_rank_type, .{
    .name = "rank_table",
});
pub const huge_stamp_table: [*c]struct_stamp_type = @extern([*c]struct_stamp_type, .{
    .name = "huge_stamp_table",
});
pub const substitution_table: [*c]struct_substitution_type = @extern([*c]struct_substitution_type, .{
    .name = "substitution_table",
});
pub const telopt_table: [*c]struct_telopt_type = @extern([*c]struct_telopt_type, .{
    .name = "telopt_table",
});
pub const telcmds: [*c][*c]u8 = @extern([*c][*c]u8, .{
    .name = "telcmds",
});
pub const timer_table: [*c]struct_timer_type = @extern([*c]struct_timer_type, .{
    .name = "timer_table",
});
pub const map_legend_table: [*c]struct_map_legend_type = @extern([*c]struct_map_legend_type, .{
    .name = "map_legend_table",
});
pub const map_legend_group_table: [*c]struct_map_legend_group_type = @extern([*c]struct_map_legend_group_type, .{
    .name = "map_legend_group_table",
});
pub extern fn test_gmcp(ses: [*c]struct_session, buf: [*c]u8) void;
pub extern fn get_mtts_val(ses: [*c]struct_session) c_int;
pub extern fn client_translate_telopts(ses: [*c]struct_session, src: [*c]u8, cplen: c_int) c_int;
pub extern fn client_write_compressed(ses: [*c]struct_session, txt: [*c]u8, length: c_int) c_int;
pub extern fn client_send_sb_naws(ses: [*c]struct_session, cplen: c_int, cpsrc: [*c]u8) c_int;
pub extern fn announce_support(ses: [*c]struct_session, buddy: [*c]struct_port_data) void;
pub extern fn server_translate_telopts(ses: [*c]struct_session, buddy: [*c]struct_port_data, src: [*c]u8, srclen: c_int, out: [*c]u8, outlen: c_int) c_int;
pub extern fn write_mccp2(ses: [*c]struct_session, buddy: [*c]struct_port_data, txt: [*c]u8, length: c_int) void;
pub extern fn client_end_mccp2(ses: [*c]struct_session) void;
pub extern fn end_mccp2(ses: [*c]struct_session, buddy: [*c]struct_port_data) void;
pub extern fn client_end_mccp3(ses: [*c]struct_session) void;
pub extern fn end_mccp3(ses: [*c]struct_session, buddy: [*c]struct_port_data) void;
pub extern fn init_terminal(ses: [*c]struct_session) void;
pub extern fn reset_terminal(ses: [*c]struct_session) void;
pub extern fn save_session_terminal(ses: [*c]struct_session) void;
pub extern fn refresh_session_terminal(ses: [*c]struct_session) void;
pub extern fn echo_on(ses: [*c]struct_session) void;
pub extern fn echo_off(ses: [*c]struct_session) void;
pub extern fn init_terminal_size(ses: [*c]struct_session) void;
pub extern fn init_resize(ses: [*c]struct_session, rows: c_int, cols: c_int, height: c_int, width: c_int) void;
pub extern fn get_scroll_rows(ses: [*c]struct_session) c_int;
pub extern fn get_scroll_cols(ses: [*c]struct_session) c_int;
pub extern fn get_charset(ses: [*c]struct_session) [*c]u8;
pub extern fn print_line(ses: [*c]struct_session, str: [*c][*c]u8, isaprompt: c_int) void;
pub extern fn print_stdout(row: c_int, col: c_int, format: [*c]u8, ...) void;
pub extern fn word_wrap(ses: [*c]struct_session, textin: [*c]u8, textout: [*c]u8, display: c_int, height: [*c]c_int, width: [*c]c_int) c_int;
pub extern fn word_wrap_split(ses: [*c]struct_session, textin: [*c]u8, textout: [*c]u8, wrap: c_int, start: c_int, end: c_int, flags: c_int, height: [*c]c_int, width: [*c]c_int) c_int;
pub extern fn do_regexp(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn substitute(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8, flags: c_int) c_int;
pub extern fn match(ses: [*c]struct_session, str: [*c]u8, exp: [*c]u8, flags: c_int) c_int;
pub extern fn find(ses: [*c]struct_session, str: [*c]u8, exp: [*c]u8, sub: c_int, flag: c_int) c_int;
pub extern fn regexp_compare(ses: [*c]struct_session, regex: ?*pcre, str: [*c]u8, exp: [*c]u8, option: c_int, flag: c_int) c_int;
pub extern fn check_one_regexp(ses: [*c]struct_session, node: [*c]struct_listnode, line: [*c]u8, original: [*c]u8, option: c_int) c_int;
pub extern fn tintin_regexp_check(ses: [*c]struct_session, exp: [*c]u8) c_int;
pub extern fn tintin_regexp(ses: [*c]struct_session, pcre: ?*pcre, str: [*c]u8, exp: [*c]u8, option: c_int, flag: c_int) c_int;
pub extern fn regexp_compile(ses: [*c]struct_session, exp: [*c]u8, option: c_int) ?*pcre;
pub extern fn tintin_regexp_compile(ses: [*c]struct_session, node: [*c]struct_listnode, exp: [*c]u8, option: c_int) ?*pcre;
pub extern fn tintin_macro_compile(input: [*c]u8, output: [*c]u8) void;
pub extern fn init_local(ses: [*c]struct_session) void;
pub extern fn push_script_stack(ses: [*c]struct_session, list: c_int) [*c]struct_scriptroot;
pub extern fn pop_script_stack(...) void;
pub extern fn local_list(ses: [*c]struct_session) [*c]struct_listroot;
pub extern fn script_driver(ses: [*c]struct_session, list: c_int, node: [*c]struct_listnode, str: [*c]u8) [*c]struct_session;
pub extern fn view_script(ses: [*c]struct_session, root: [*c]struct_scriptroot) [*c]u8;
pub extern fn script_writer(ses: [*c]struct_session, str: [*c]u8) [*c]u8;
pub extern fn script_viewer(ses: [*c]struct_session, str: [*c]u8) [*c]u8;
pub extern fn do_delay(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn do_function(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn check_all_actions(ses: [*c]struct_session, original: [*c]u8, line: [*c]u8, buf: [*c]u8) void;
pub extern fn check_all_actions_multi(ses: [*c]struct_session, original: [*c]u8, line: [*c]u8, buf: [*c]u8) void;
pub extern fn check_all_aliases(ses: [*c]struct_session, input: [*c]u8) [*c]struct_listnode;
pub extern fn check_all_buttons(ses: [*c]struct_session, row: c_short, col: c_short, arg1: [*c]u8, arg2: [*c]u8, word: [*c]u8, line: [*c]u8) void;
pub extern fn check_all_gags(ses: [*c]struct_session, original: [*c]u8, line: [*c]u8) void;
pub extern fn check_all_highlights(ses: [*c]struct_session, original: [*c]u8, line: [*c]u8) void;
pub extern fn check_all_prompts(ses: [*c]struct_session, original: [*c]u8, line: [*c]u8) c_int;
pub extern fn check_all_substitutions(ses: [*c]struct_session, original: [*c]u8, line: [*c]u8) void;
pub extern fn check_all_substitutions_multi(ses: [*c]struct_session, original: [*c]u8, line: [*c]u8) void;
pub extern fn mainloop() void;
pub extern fn init_cpu() void;
pub extern fn show_cpu(ses: [*c]struct_session) void;
pub export fn is_number(arg_str: [*c]u8) c_int {
    if (arg_str == null or arg_str[0] == 0) return 0;
    
    const str = std.mem.span(arg_str);
    var valid: c_int = 0;
    var d: c_int = 0;
    var i: c_int = 1;

    var idx: usize = str.len;
    while (idx > 0) {
        idx -= 1;
        const char = str[idx];
        
        switch (char) {
            '0'...'9' => {
                valid = 1;
            },
            '.' => {
                if (d != 0) return 0;
                d = 1;
                valid = 0;
            },
            ':' => {
                if (i == 4) return 0;
                i += 1;
                valid = 0;
            },
            '!', '~', '+', '-' => {
                if (idx != 0) return 0;
            },
            else => return 0,
        }
    }
    return valid;
}
pub extern fn hex_number_64bit(str: [*c]u8) c_ulonglong;
pub extern fn hex_number_32bit(str: [*c]u8) c_uint;
pub extern fn hex_number_8bit(str: [*c]u8) c_int;
pub extern fn oct_number(str: [*c]u8) c_int;
pub extern fn unicode_8_bit(str: [*c]u8, out: [*c]u8) c_int;
pub extern fn unicode_12_bit(str: [*c]u8, out: [*c]u8) c_int;
pub extern fn unicode_16_bit(str: [*c]u8, out: [*c]u8) c_int;
pub extern fn unicode_20_bit(str: [*c]u8, out: [*c]u8) c_int;
pub extern fn unicode_21_bit(str: [*c]u8, out: [*c]u8) c_int;
pub extern fn utime() c_ulonglong;
pub extern fn get_time(ses: [*c]struct_session, str: [*c]u8) time_t;
pub extern fn str_time(ses: [*c]struct_session, format: [*c]u8, time: time_t) [*c]u8;
pub extern fn generate_rand(ses: [*c]struct_session) c_ulonglong;
pub extern fn seed_rand(ses: [*c]struct_session, seed: c_ulonglong) void;
pub extern fn capitalize(str: [*c]u8) [*c]u8;
pub extern fn decapitalize(str: [*c]u8) [*c]u8;
pub extern fn ftos(number: f64) [*c]u8;
pub extern fn ntos(number: c_longlong) [*c]u8;
pub extern fn indent_one(len: c_int) [*c]u8;
pub extern fn indent(len: c_int) [*c]u8;
pub extern fn cat_sprintf(dest: [*c]u8, fmt: [*c]u8, ...) c_int;
pub extern fn ins_sprintf(dest: [*c]u8, fmt: [*c]u8, ...) void;
pub extern fn is_suffix(str1: [*c]u8, str2: [*c]u8) c_int;
pub extern fn big5toutf8_info(ses: [*c]struct_session) void;
pub extern fn utf8tobig5_info(ses: [*c]struct_session) void;
pub extern fn get_ascii_width(str: [*c]u8, width: [*c]c_int) c_int;
pub extern fn is_utf8_head(str: [*c]u8) c_int;
pub extern fn is_utf8_tail(str: [*c]u8) c_int;
pub extern fn get_utf8_size(str: [*c]u8) c_int;
pub extern fn get_utf8_width(str: [*c]u8, width: [*c]c_int, index: [*c]c_int) c_int;
pub extern fn get_utf8_index(str: [*c]u8, index: [*c]c_int) c_int;
pub extern fn unicode_to_utf8(index: c_int, out: [*c]u8) c_int;
pub extern fn utf8_strlen(str: [*c]u8, width: [*c]c_int) c_int;
pub extern fn utf8_to_all(ses: [*c]struct_session, in: [*c]u8, out: [*c]u8, size: c_int) c_int;
pub extern fn all_to_utf8(ses: [*c]struct_session, in: [*c]u8, out: [*c]u8) c_int;
pub extern fn cp1251_to_utf8(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn utf8_to_cp1251(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn iso1_to_utf8(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn utf8_to_iso1(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn iso2_to_utf8(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn utf8_to_iso2(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn koi8_to_utf8(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn utf8_to_koi8(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn fansi_to_utf8(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn is_euc_head(ses: [*c]struct_session, str: [*c]u8) c_int;
pub extern fn get_euc_size(ses: [*c]struct_session, str: [*c]u8) c_int;
pub extern fn get_euc_width(ses: [*c]struct_session, str: [*c]u8, width: [*c]c_int) c_int;
pub extern fn is_big5(str: [*c]u8) c_int;
pub extern fn big5_to_utf8(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn utf8_to_big5(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn is_gbk1(str: [*c]u8) c_int;
pub extern fn gbk1_to_utf8(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn utf8_to_gbk1(input: [*c]u8, output: [*c]u8, length: c_int) c_int;
pub extern fn is_cp949(str: [*c]u8) c_int;
pub extern fn cp949_to_utf8(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn utf8_to_cp949(input: [*c]u8, output: [*c]u8) c_int;
pub extern fn do_replace(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn get_variable_def(ses: [*c]struct_session, @"var": [*c]u8, def: [*c]u8) [*c]u8;
pub extern fn valid_variable(ses: [*c]struct_session, arg: [*c]u8) c_int;
pub extern fn string_raw_str_len(ses: [*c]struct_session, str: [*c]u8, start: c_int, end: c_int) c_int;
pub extern fn string_str_raw_len(ses: [*c]struct_session, str: [*c]u8, start: c_int, end: c_int) c_int;
pub extern fn translate_color_names(ses: [*c]struct_session, string: [*c]u8, result: [*c]u8) c_int;
pub extern fn get_color_names(ses: [*c]struct_session, htype: [*c]u8, result: [*c]u8) c_int;
pub extern fn lowerstring(str: [*c]u8) void;
pub extern fn upperstring(str: [*c]u8) void;
pub extern fn numbertocharacter(ses: [*c]struct_session, str: [*c]u8) void;
pub extern fn charactertonumber(ses: [*c]struct_session, str: [*c]u8) void;
pub extern fn delete_variable(ses: [*c]struct_session, variable: [*c]u8) c_int;
pub extern fn justify_string(ses: [*c]struct_session, in: [*c]u8, out: [*c]u8, @"align": c_int, cut: c_int) void;
pub extern fn format_string(ses: [*c]struct_session, format: [*c]u8, arg: [*c]u8, out: [*c]u8) void;
pub extern fn search_variable(ses: [*c]struct_session, variable: [*c]u8) [*c]struct_listnode;
pub extern fn get_variable(ses: [*c]struct_session, variable: [*c]u8, result: [*c]u8) [*c]struct_listnode;
pub extern fn set_variable(ses: [*c]struct_session, variable: [*c]u8, format: [*c]u8, ...) [*c]struct_listnode;
pub extern fn init_pos(ses: [*c]struct_session, row: c_int, col: c_int) void;
pub extern fn hide_cursor(ses: [*c]struct_session) void;
pub extern fn show_cursor(ses: [*c]struct_session) void;
pub extern fn save_pos(ses: [*c]struct_session) void;
pub extern fn goto_pos(ses: [*c]struct_session, row: c_int, col: c_int) void;
pub extern fn restore_pos(ses: [*c]struct_session) void;
pub extern fn erase_cols(cnt: c_int) void;
pub extern fn reset(ses: [*c]struct_session) void;
pub extern fn scroll_region(ses: [*c]struct_session, top: c_int, bottom: c_int) void;
pub extern fn reset_scroll_region(ses: [*c]struct_session) void;
pub extern fn find_color_code(str: [*c]u8) c_int;
pub extern fn find_escaped_color_code(str: [*c]u8) c_int;
pub extern fn find_secure_color_code(str: [*c]u8) c_int;
pub extern fn get_vt102_width(ses: [*c]struct_session, str: [*c]u8, width: [*c]c_int) c_int;
pub extern fn strip_vt102_width(ses: [*c]struct_session, str: [*c]u8, width: [*c]c_int) c_int;
pub extern fn skip_vt102_codes(str: [*c]u8) c_int;
pub extern fn skip_vt102_codes_non_graph(str: [*c]u8) c_int;
pub extern fn strip_vt102_codes(str: [*c]u8, buf: [*c]u8) c_int;
pub extern fn strip_vt102_codes_non_graph(str: [*c]u8, buf: [*c]u8) void;
pub extern fn strip_non_vt102_codes(str: [*c]u8, buf: [*c]u8) void;
pub extern fn get_color_codes(old: [*c]u8, str: [*c]u8, buf: [*c]u8, flags: c_int) void;
pub extern fn strip_vt102_strlen(ses: [*c]struct_session, str: [*c]u8) c_int;
pub extern fn strip_color_strlen(ses: [*c]struct_session, str: [*c]u8) c_int;
pub extern fn strip_vt102_strstr(str: [*c]u8, buf: [*c]u8, len: [*c]c_int) [*c]u8;
pub extern fn interpret_vt102_codes(ses: [*c]struct_session, str: [*c]u8, real: c_int) c_int;
pub extern fn catch_vt102_codes(ses: [*c]struct_session, str: [*c]u8, cplen: c_int) c_int;
pub export var math_head: [*c]struct_math_node = @import("std").mem.zeroes([*c]struct_math_node);
pub export var math_tail: [*c]struct_math_node = @import("std").mem.zeroes([*c]struct_math_node);
pub export var mathnode_s: [*c]struct_math_node = @import("std").mem.zeroes([*c]struct_math_node);
pub export var mathnode_e: [*c]struct_math_node = @import("std").mem.zeroes([*c]struct_math_node);
pub export var precision: c_int = @import("std").mem.zeroes(c_int);
pub export var wonky: c_int = @import("std").mem.zeroes(c_int);
pub export fn mathexp_level(arg_ses: [*c]struct_session, arg_node: [*c]struct_math_node) void {
    var ses = arg_ses;
    _ = &ses;
    var node = arg_node;
    _ = &node;
    var priority: c_int = undefined;
    _ = &priority;
    var lowest: c_int = undefined;
    _ = &lowest;
    mathnode_e = node;
    while (node.*.prev != null) {
        if (@as(c_int, @bitCast(@as(c_uint, node.*.prev.*.level))) < @as(c_int, @bitCast(@as(c_uint, node.*.level)))) {
            break;
        }
        node = node.*.prev;
    }
    mathnode_s = node;
    {
        priority = 0;
        while (priority < @as(c_int, 14)) : (priority = lowest) {
            lowest = 14;
            {
                node = mathnode_s;
                while (node != null) : (node = node.*.next) {
                    if (@as(c_int, @bitCast(@as(c_uint, node.*.priority))) == priority) {
                        mathexp_compute(ses, node);
                    } else if (@as(c_int, @bitCast(@as(c_uint, node.*.priority))) < lowest) {
                        lowest = @as(c_int, @bitCast(@as(c_uint, node.*.priority)));
                    }
                    if (node == mathnode_e) {
                        break;
                    }
                }
            }
        }
    }
    node = mathnode_s;
    while ((node.*.prev != null) and (node.*.next != null)) {
        if ((@as(c_int, @bitCast(@as(c_uint, node.*.prev.*.priority))) == @as(c_int, 15)) and (@as(c_int, @bitCast(@as(c_uint, node.*.next.*.priority))) == @as(c_int, 15))) {
            node.*.level = node.*.next.*.level;
            del_math_node(node.*.next);
            del_math_node(node.*.prev);
        } else {
            break;
        }
    }
    return;
}
pub export fn mathexp_compute(arg_ses: [*c]struct_session, arg_node: [*c]struct_math_node) void {
    var ses = arg_ses;
    _ = &ses;
    var node = arg_node;
    _ = &node;
    var value: c_longdouble = 0;
    _ = &value;
    while (true) {
        switch (@as(c_int, @intFromFloat(node.*.val))) {
            @as(c_int, 5934) => {
                value = @as(c_longdouble, @floatFromInt(((@as(c_longlong, @intFromFloat(node.*.prev.*.val)) + @as(c_longlong, 100000000)) * @as(c_longlong, 1000000000)) + (@as(c_longlong, @intFromFloat(node.*.next.*.val)) + @as(c_longlong, 100000000))));
                break;
            },
            @as(c_int, 100) => {
                if (node.*.next.*.val <= @as(c_longdouble, @floatFromInt(@as(c_int, 0)))) {
                    show_debug(ses, LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast(@volatileCast("#DEBUG MATH: INVALID DICE: %lld")))), @as(c_longlong, @intFromFloat(node.*.next.*.val)));
                    value = 0;
                } else {
                    value = tindice(ses, node.*.prev, node.*.next);
                }
                break;
            },
            @as(c_int, 63) => {
                value = tinternary(node.*.prev, node.*.next);
                break;
            },
            @as(c_int, 42) => {
                value = node.*.prev.*.val * node.*.next.*.val;
                break;
            },
            @as(c_int, 5418) => {
                value = @as(c_longdouble, @floatCast(pow(@as(f64, @floatCast(node.*.prev.*.val)), @as(f64, @floatCast(node.*.next.*.val)))));
                break;
            },
            @as(c_int, 47) => {
                if (node.*.next.*.val == @as(c_longdouble, @floatFromInt(@as(c_int, 0)))) {
                    show_debug(ses, LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast(@volatileCast("#DEBUG MATH: DIVISION BY ZERO.")))));
                    value = 0;
                    precision = 0;
                } else {
                    if (precision != 0) {
                        value = node.*.prev.*.val / node.*.next.*.val;
                    } else {
                        value = @as(c_longdouble, @floatFromInt(@divTrunc(@as(c_longlong, @intFromFloat(node.*.prev.*.val)), @as(c_longlong, @intFromFloat(node.*.next.*.val)))));
                    }
                }
                break;
            },
            @as(c_int, 6063) => {
                if (node.*.next.*.val == @as(c_longdouble, @floatFromInt(@as(c_int, 2)))) {
                    value = @as(c_longdouble, @floatCast(sqrt(@as(f64, @floatCast(node.*.prev.*.val)))));
                } else {
                    value = get_root(node.*.prev.*.val, node.*.next.*.val);
                }
                break;
            },
            @as(c_int, 37) => {
                value = @as(c_longdouble, @floatCast(fmod(@as(f64, @floatCast(node.*.prev.*.val)), @as(f64, @floatCast(node.*.next.*.val)))));
                break;
            },
            @as(c_int, 43) => {
                value = node.*.prev.*.val + node.*.next.*.val;
                break;
            },
            @as(c_int, 45) => {
                value = node.*.prev.*.val - node.*.next.*.val;
                break;
            },
            @as(c_int, 60) => {
                value = @as(c_longdouble, @floatFromInt(@intFromBool(tincmp(node.*.prev, node.*.next) < @as(c_longdouble, @floatFromInt(@as(c_int, 0))))));
                break;
            },
            @as(c_int, 7868) => {
                value = @as(c_longdouble, @floatFromInt(@intFromBool(tincmp(node.*.prev, node.*.next) <= @as(c_longdouble, @floatFromInt(@as(c_int, 0))))));
                break;
            },
            @as(c_int, 7740) => {
                value = @as(c_longdouble, @floatFromInt(@as(c_longlong, @intFromFloat(node.*.prev.*.val)) << @intCast(@as(c_longlong, @intFromFloat(node.*.next.*.val)))));
                break;
            },
            @as(c_int, 62) => {
                value = @as(c_longdouble, @floatFromInt(@intFromBool(tincmp(node.*.prev, node.*.next) > @as(c_longdouble, @floatFromInt(@as(c_int, 0))))));
                break;
            },
            @as(c_int, 7870) => {
                value = @as(c_longdouble, @floatFromInt(@intFromBool(tincmp(node.*.prev, node.*.next) >= @as(c_longdouble, @floatFromInt(@as(c_int, 0))))));
                break;
            },
            @as(c_int, 7998) => {
                value = @as(c_longdouble, @floatFromInt(@as(c_longlong, @intFromFloat(node.*.prev.*.val)) >> @intCast(@as(c_longlong, @intFromFloat(node.*.next.*.val)))));
                break;
            },
            @as(c_int, 38) => {
                value = @as(c_longdouble, @floatFromInt(@as(c_longlong, @intFromFloat(node.*.prev.*.val)) & @as(c_longlong, @intFromFloat(node.*.next.*.val))));
                break;
            },
            @as(c_int, 4902) => {
                value = @as(c_longdouble, @floatFromInt(@intFromBool((node.*.prev.*.val != 0) and (node.*.next.*.val != 0))));
                break;
            },
            @as(c_int, 94) => {
                value = @as(c_longdouble, @floatFromInt(@as(c_longlong, @intFromFloat(node.*.prev.*.val)) ^ @as(c_longlong, @intFromFloat(node.*.next.*.val))));
                break;
            },
            @as(c_int, 12126) => {
                value = @as(c_longdouble, @floatFromInt(@intFromBool(((node.*.prev.*.val != 0) or (node.*.next.*.val != 0)) and (@intFromBool(!(node.*.prev.*.val != 0)) != @intFromBool(!(node.*.next.*.val != 0))))));
                break;
            },
            @as(c_int, 124) => {
                value = @as(c_longdouble, @floatFromInt(@as(c_longlong, @intFromFloat(node.*.prev.*.val)) | @as(c_longlong, @intFromFloat(node.*.next.*.val))));
                break;
            },
            @as(c_int, 15996) => {
                value = @as(c_longdouble, @floatFromInt(@intFromBool((node.*.prev.*.val != 0) or (node.*.next.*.val != 0))));
                break;
            },
            @as(c_int, 7869) => {
                value = @as(c_longdouble, @floatFromInt(@intFromBool(tineval(ses, node.*.prev, node.*.next) != @as(c_longdouble, @floatFromInt(@as(c_int, 0))))));
                break;
            },
            @as(c_int, 1007293) => {
                value = @as(c_longdouble, @floatFromInt(@intFromBool(tincmp(node.*.prev, node.*.next) == @as(c_longdouble, @floatFromInt(@as(c_int, 0))))));
                break;
            },
            @as(c_int, 7841) => {
                value = @as(c_longdouble, @floatFromInt(@intFromBool(tineval(ses, node.*.prev, node.*.next) == @as(c_longdouble, @floatFromInt(@as(c_int, 0))))));
                break;
            },
            @as(c_int, 1007265) => {
                value = @as(c_longdouble, @floatFromInt(@intFromBool(tincmp(node.*.prev, node.*.next) != @as(c_longdouble, @floatFromInt(@as(c_int, 0))))));
                break;
            },
            else => {
                show_debug(ses, LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast(@volatileCast("#DEBUG MATH: UNKNOWN OPERATOR: %c%c%c")))), @rem(@as(c_int, @intFromFloat(node.*.val)), @as(c_int, 128)), @divTrunc(@rem(@as(c_int, @intFromFloat(node.*.val)), @as(c_int, 16384)), @as(c_int, 128)), @divTrunc(@rem(@as(c_int, @intFromFloat(node.*.val)), @as(c_int, 2097152)), @as(c_int, 16384)));
                value = 0;
                break;
            },
        }
        break;
    }
    if (node.*.prev == mathnode_s) {
        mathnode_s = node;
    }
    if (node.*.next == mathnode_e) {
        mathnode_e = node;
    }
    del_math_node(node.*.next);
    del_math_node(node.*.prev);
    node.*.priority = 14;
    node.*.type = 0;
    node.*.val = value;
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h:87:2: warning: TODO implement function '__builtin___sprintf_chk' in std.zig.c_builtins

// src/math.c:352:5: warning: unable to translate function, demoted to extern
pub export fn mathexp_tokenize(arg_ses: [*c]struct_session, arg_str: [*c]u8, arg_seed: c_int, arg_debug: c_int) c_int {
    const ses = arg_ses;
    const str = arg_str;
    const seed = arg_seed;
    const debug = arg_debug;

    tintin_c.push_call(@as([*c]u8, @ptrCast(@constCast("mathexp_tokenize(%p,%s,%d,%d)"))), ses, str, seed, debug);

    const buf3 = tintin_c.str_alloc_stack(0);

    var nest: c_int = 0;
    var level: c_int = 0;
    wonky = 0;
    var point: c_int = -1;
    var status: c_int = EXP_NUMBER;
    precision = seed;

    var pta: [*c]u8 = buf3;
    var pti: [*c]u8 = str;

    while (math_head != null) {
        del_math_node(math_head);
    }

    while (pti.* != 0) {
        switch (status) {
            EXP_NUMBER => {
                switch (pti.*) {
                    '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;

                        if (point >= 0) {
                            point += 1;
                            if (precision < point) {
                                precision = point;
                            }
                        }
                    },
                    '!' => {
                        if (pta != buf3) {
                            pta.* = 0;
                            add_math_node(EXP_NUMBER, level, EXP_PR_VAR, buf3);
                            status = EXP_OPERATOR;
                            pta = buf3;
                            point = -1;
                        } else {
                            add_math_node(EXP_NUMBER, level, EXP_PR_VAR, @as([*c]u8, @ptrCast(@constCast("0"))));
                            add_math_node(EXP_OPERATOR, level, EXP_PR_CONSTANT, @as([*c]u8, @ptrCast(@constCast("=="))));
                            pta.* = pti.*;
                            pta += 1;
                            pti += 1;
                            pta = buf3;
                        }
                    },
                    '~' => {
                        if (pta != buf3) {
                            pta.* = 0;
                            add_math_node(EXP_NUMBER, level, EXP_PR_VAR, buf3);
                            status = EXP_OPERATOR;
                            pta = buf3;
                            point = -1;
                        } else {
                            add_math_node(EXP_NUMBER, level, EXP_PR_VAR, @as([*c]u8, @ptrCast(@constCast("-1"))));
                            add_math_node(EXP_OPERATOR, level, EXP_PR_INTADD, @as([*c]u8, @ptrCast(@constCast("-"))));
                            pta.* = pti.*;
                            pta += 1;
                            pti += 1;
                            pta = buf3;
                        }
                    },
                    '+' => {
                        if (pta != buf3) {
                            pta.* = 0;
                            add_math_node(EXP_NUMBER, level, EXP_PR_VAR, buf3);
                            status = EXP_OPERATOR;
                            pta = buf3;
                            point = -1;
                        } else {
                            pti += 1;
                            pta = buf3;
                        }
                    },
                    '-' => {
                        if (pta != buf3) {
                            pta.* = 0;
                            add_math_node(EXP_NUMBER, level, EXP_PR_VAR, buf3);
                            status = EXP_OPERATOR;
                            pta = buf3;
                            point = -1;
                        } else {
                            add_math_node(EXP_NUMBER, level, EXP_PR_VAR, @as([*c]u8, @ptrCast(@constCast("-1"))));
                            add_math_node(EXP_OPERATOR, level, EXP_PR_INTMUL, @as([*c]u8, @ptrCast(@constCast("*"))));
                            pta.* = pti.*;
                            pta += 1;
                            pti += 1;
                            pta = buf3;
                        }
                    },
                    '{' => {
                        if (pta != buf3) {
                            if (debug != 0) {
                                tintin_c.show_debug(ses, tintin_c.LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast("#DEBUG MATH: \\x7B FOUND INSIDE A NUMBER"))));
                            }
                            tintin_c.pop_call();
                            return 0;
                        }
                        pti += 1;
                        status = EXP_BRACE;
                        nest += 1;
                    },
                    '"' => {
                        if (pta != buf3) {
                            if (debug != 0) {
                                tintin_c.show_debug(ses, tintin_c.LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast("#DEBUG MATH: \" FOUND INSIDE A NUMBER"))));
                            }
                            tintin_c.pop_call();
                            return 0;
                        }
                        pti += 1;
                        nest += 1;
                        status = EXP_STRING;
                    },
                    '(' => {
                        if (pta != buf3) {
                            if (debug != 0) {
                                tintin_c.show_debug(ses, tintin_c.LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast("#DEBUG MATH: PARANTESES FOUND INSIDE A NUMBER"))));
                            }
                            tintin_c.pop_call();
                            return 0;
                        } else {
                            pta.* = pti.*;
                            pta += 1;
                            pti += 1;
                            pta.* = 0;
                            add_math_node(EXP_PARANTHESES, level, EXP_PR_LVL, buf3);
                            status = EXP_NUMBER;
                            pta = buf3;
                            point = -1;
                        }
                        level += 1;
                    },
                    ',' => {
                        pti += 1;
                    },
                    ':' => {
                        if (debug != 0 and wonky == 0) {
                            tintin_c.show_error(tintin_c.gtd.*.ses, tintin_c.LIST_COMMAND, @as([*c]u8, @ptrCast(@constCast("#WARNING: COMPUTING {%s}. THE : TIME OPERATOR IN #MATH WILL BE REMOVED IN FUTURE RELEASES."))), str);
                        }
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;
                    },
                    '.' => {
                        if (pti[1] == '.') {
                            if (pta == buf3) {
                                pta.* = '1';
                                pta += 1;
                            }
                            pta.* = 0;
                            add_math_node(EXP_NUMBER, level, EXP_PR_VAR, buf3);
                            status = EXP_OPERATOR;
                            pta = buf3;
                            point = -1;

                            if (pti[2] == 0) {
                                pta.* = pti.*;
                                pta += 1;
                                pti += 1;
                                pta.* = pti.*;
                                pta += 1;
                                pti += 1;

                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_LOGCOMP, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;

                                pta.* = '-';
                                pta += 1;
                                pta.* = '1';
                                pta += 1;
                            }
                        } else {
                            pta.* = pti.*;
                            pta += 1;
                            pti += 1;
                            if (point >= 0) {
                                if (debug != 0) {
                                    tintin_c.show_debug(ses, tintin_c.LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast("#DEBUG MATH: MORE THAN ONE POINT FOUND INSIDE A NUMBER"))));
                                }
                                precision = 0;
                                tintin_c.pop_call();
                                return 0;
                            }
                            point += 1;
                        }
                    },
                    ' ', '\t' => {
                        pti += 1;
                    },
                    'd', ')', '*', '/', '%', '<', '>', '&', '^', '|', '=', '?' => {
                        if (pti == str) {
                            if (debug != 0) {
                                tintin_c.show_debug(ses, tintin_c.LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast("#DEBUG MATH: EXPRESSION STARTED WITH AN OPERATOR."))));
                            }
                            tintin_c.pop_call();
                            return 0;
                        }

                        if (pta != buf3) {
                            pta.* = 0;
                            add_math_node(EXP_NUMBER, level, EXP_PR_VAR, buf3);
                            status = EXP_OPERATOR;
                            pta = buf3;
                            point = -1;

                            if (pti.* == '?') {
                                wonky = 1;
                            }
                        } else {
                            pta.* = pti.*;
                            pta += 1;
                            pti += 1;
                            pta.* = 0;

                            if (debug != 0) {
                                tintin_c.show_debug(ses, tintin_c.LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast("#DEBUG MATH {%s}: FOUND OPERATOR %s WHILE EXPECTING A VALUE."))), str, buf3);
                            }
                            tintin_c.pop_call();
                            return 0;
                        }
                    },
                    'K', 'M', 'G', 'T' => {
                        if (pta == buf3) {
                            pta.* = pti.*;
                            pta += 1;
                            pti += 1;
                            pta.* = 0;

                            if (debug != 0) {
                                tintin_c.show_debug(ses, tintin_c.LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast("#DEBUG MATH {%s}: INVALID NUMBER %s."))), str, buf3);
                            }

                            tintin_c.pop_call();
                            return 0;
                        } else {
                            pta.* = 0;
                            add_math_node(EXP_NUMBER, level, EXP_PR_VAR, buf3);
                            status = EXP_OPERATOR;
                            pta = buf3;
                            point = -1;

                            pta.* = '*';
                            pta += 1;
                            pta.* = 0;
                            add_math_node(EXP_OPERATOR, level, EXP_PR_CONSTANT, buf3);
                            status = EXP_NUMBER;
                            pta = buf3;
                            point = -1;

                            switch (pti.*) {
                                'K' => {
                                    _ = tintin_c.sprintf(pta, "1000");
                                    pta += 4;
                                },
                                'M' => {
                                    _ = tintin_c.sprintf(pta, "1000000");
                                    pta += 7;
                                },
                                'G' => {
                                    _ = tintin_c.sprintf(pta, "1000000000");
                                    pta += 10;
                                },
                                'T' => {
                                    _ = tintin_c.sprintf(pta, "1000000000000");
                                    pta += 13;
                                },
                                else => {},
                            }
                            pti += 1;
                            
                            pta.* = 0;
                            add_math_node(EXP_NUMBER, level, EXP_PR_VAR, buf3);
                            status = EXP_OPERATOR;
                            pta = buf3;
                            point = -1;
                        }
                    },
                    'm', 'u', 'n', 'p' => {
                        if (pta == buf3) {
                            pta.* = pti.*;
                            pta += 1;
                            pti += 1;
                            pta.* = 0;

                            tintin_c.pop_call();
                            return 0;
                        } else {
                            pta.* = 0;
                            add_math_node(EXP_NUMBER, level, EXP_PR_VAR, buf3);
                            status = EXP_OPERATOR;
                            pta = buf3;
                            point = -1;

                            pta.* = '/';
                            pta += 1;

                            pta.* = 0;
                            add_math_node(EXP_OPERATOR, level, EXP_PR_CONSTANT, buf3);
                            status = EXP_NUMBER;
                            pta = buf3;
                            point = -1;

                            switch (pti.*) {
                                'm' => {
                                    _ = tintin_c.sprintf(pta, "1000");
                                    pta += 4;
                                },
                                'u' => {
                                    _ = tintin_c.sprintf(pta, "1000000");
                                    pta += 7;
                                },
                                'n' => {
                                    _ = tintin_c.sprintf(pta, "1000000000");
                                    pta += 10;
                                },
                                'p' => {
                                    _ = tintin_c.sprintf(pta, "1000000000000");
                                    pta += 13;
                                },
                                else => {},
                            }
                            pti += 1;
                            
                            const val_len = @as(c_int, @intCast(@intFromPtr(pta) - @intFromPtr(buf3) - 1));
                            precision = if (precision > val_len) precision else val_len;

                            pta.* = 0;
                            add_math_node(EXP_NUMBER, level, EXP_PR_VAR, buf3);
                            status = EXP_OPERATOR;
                            pta = buf3;
                            point = -1;
                        }
                    },
                    else => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;
                        pta.* = 0;

                        if (debug != 0) {
                            tintin_c.show_debug(ses, tintin_c.LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast("#DEBUG MATH {%s}: INVALID NUMBER %s."))), str, buf3);
                        }
                        tintin_c.pop_call();
                        return 0;
                    }
                }
            },
            EXP_STRING => {
                switch (pti.*) {
                    '"' => {
                        nest -= 1;
                        if (nest == 0) {
                            pti += 1;
                            pta.* = 0;
                            add_math_node(EXP_STRING, level, EXP_PR_VAR, buf3);
                            status = EXP_OPERATOR;
                            pta = buf3;
                            point = -1;
                        } else {
                            pta.* = pti.*;
                            pta += 1;
                            pti += 1;
                        }
                    },
                    else => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;
                    }
                }
            },
            EXP_BRACE => {
                switch (pti.*) {
                    '{' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;
                        nest += 1;
                    },
                    '}' => {
                        nest -= 1;
                        if (nest == 0) {
                            pti += 1;
                            pta.* = 0;
                            add_math_node(EXP_STRING, level, EXP_PR_VAR, buf3);
                            status = EXP_OPERATOR;
                            pta = buf3;
                            point = -1;
                        } else {
                            pta.* = pti.*;
                            pta += 1;
                            pti += 1;
                        }
                    },
                    else => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;
                    }
                }
            },
            EXP_OPERATOR => {
                switch (pti.*) {
                    ' ' => {
                        pti += 1;
                    },
                    '.' => {
                        if (pti[1] == '.') {
                            pta.* = pti.*;
                            pta += 1;
                            pti += 1;
                            pta.* = pti.*;
                            pta += 1;
                            pti += 1;

                            pta.* = 0;
                            add_math_node(EXP_OPERATOR, level, EXP_PR_LOGCOMP, buf3);
                            status = EXP_NUMBER;
                            pta = buf3;
                            point = -1;
                        } else {
                            if (debug != 0) {
                                tintin_c.show_debug(ses, tintin_c.LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast("#DEBUG MATH: UNKNOWN OPERATOR: %c%c"))), pti[0], pti[1]);
                            }
                            tintin_c.pop_call();
                            return 0;
                        }
                    },
                    ')' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;
                        level -= 1;
                        pta.* = 0;
                        add_math_node(EXP_PARANTHESES, level, EXP_PR_LVL, buf3);
                        status = EXP_OPERATOR;
                        pta = buf3;
                        point = -1;
                    },
                    '?' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;
                        pta.* = 0;
                        add_math_node(EXP_OPERATOR, level, EXP_PR_TERNARY, buf3);
                        status = EXP_NUMBER;
                        pta = buf3;
                        point = -1;
                    },
                    ':' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;
                        pta.* = 0;
                        add_math_node(EXP_OPERATOR, level, EXP_PR_TERNARY, buf3);
                        status = EXP_NUMBER;
                        pta = buf3;
                        point = -1;
                    },
                    'd' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;
                        pta.* = 0;
                        add_math_node(EXP_OPERATOR, level, EXP_PR_DICE, buf3);
                        status = EXP_NUMBER;
                        pta = buf3;
                        point = -1;
                    },
                    '*' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;

                        switch (pti.*) {
                            '*' => {
                                pta.* = pti.*;
                                pta += 1;
                                pti += 1;
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_INTMUL, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            },
                            else => {
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_INTMUL, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            }
                        }
                    },
                    '/' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;

                        switch (pti.*) {
                            '/' => {
                                pta.* = pti.*;
                                pta += 1;
                                pti += 1;
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_INTMUL, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            },
                            else => {
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_INTMUL, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            }
                        }
                    },
                    '%' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;
                        pta.* = 0;
                        add_math_node(EXP_OPERATOR, level, EXP_PR_INTMUL, buf3);
                        status = EXP_NUMBER;
                        pta = buf3;
                        point = -1;
                    },
                    '+', '-' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;
                        pta.* = 0;
                        add_math_node(EXP_OPERATOR, level, EXP_PR_INTADD, buf3);
                        status = EXP_NUMBER;
                        pta = buf3;
                        point = -1;
                    },
                    '<' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;

                        switch (pti.*) {
                            '<' => {
                                pta.* = pti.*;
                                pta += 1;
                                pti += 1;
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_BITSHIFT, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            },
                            '=' => {
                                pta.* = pti.*;
                                pta += 1;
                                pti += 1;
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_LOGLTGT, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            },
                            else => {
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_LOGLTGT, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            }
                        }
                    },
                    '>' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;

                        switch (pti.*) {
                            '>' => {
                                pta.* = pti.*;
                                pta += 1;
                                pti += 1;
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_BITSHIFT, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            },
                            '=' => {
                                pta.* = pti.*;
                                pta += 1;
                                pti += 1;
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_LOGLTGT, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            },
                            else => {
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_LOGLTGT, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            }
                        }
                    },
                    '&' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;

                        switch (pti.*) {
                            '&' => {
                                pta.* = pti.*;
                                pta += 1;
                                pti += 1;
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_LOGAND, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            },
                            else => {
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_BITAND, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            }
                        }
                    },
                    '^' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;

                        switch (pti.*) {
                            '^' => {
                                pta.* = pti.*;
                                pta += 1;
                                pti += 1;
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_LOGXOR, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            },
                            else => {
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_BITXOR, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            }
                        }
                    },
                    '|' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;

                        switch (pti.*) {
                            '|' => {
                                pta.* = pti.*;
                                pta += 1;
                                pti += 1;
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_LOGOR, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            },
                            else => {
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_BITOR, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            }
                        }
                    },
                    '=', '!' => {
                        pta.* = pti.*;
                        pta += 1;
                        pti += 1;
                        switch (pti.*) {
                            '=' => {
                                pta.* = pti.*;
                                pta += 1;
                                pti += 1;
                                if (pti.* == '=') {
                                    pta.* = pti.*;
                                    pta += 1;
                                    pti += 1;
                                }
                                pta.* = 0;
                                add_math_node(EXP_OPERATOR, level, EXP_PR_LOGCOMP, buf3);
                                status = EXP_NUMBER;
                                pta = buf3;
                                point = -1;
                            },
                            else => {
                                if (debug != 0) {
                                    tintin_c.show_debug(ses, tintin_c.LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast("#DEBUG MATH: UNKNOWN OPERATOR: %c%c"))), (pti - 1).*, pti.*);
                                }
                                tintin_c.pop_call();
                                return 0;
                            }
                        }
                    },
                    else => {
                        if (debug != 0) {
                            tintin_c.show_debug(ses, tintin_c.LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast("#DEBUG MATH: UNKNOWN OPERATOR: %c"))), pti.*);
                        }
                        tintin_c.pop_call();
                        return 0;
                    }
                }
            },
            else => unreachable,
        }
    }

    if (level != 0) {
        if (debug != 0) {
            tintin_c.show_debug(ses, tintin_c.LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast("#DEBUG MATH: UNMATCHED PARENTHESES, LEVEL: %d"))), level);
        }
        tintin_c.pop_call();
        return 0;
    }

    if (status != EXP_OPERATOR) {
        if (pta == buf3) {
            tintin_c.pop_call();
            return 0;
        }
        pta.* = 0;
        add_math_node(EXP_NUMBER, level, EXP_PR_VAR, buf3);
    }

    tintin_c.pop_call();
    return 1;
}
pub export fn tinternary(arg_left: [*c]struct_math_node, arg_right: [*c]struct_math_node) c_longdouble {
    var left = arg_left;
    _ = &left;
    var right = arg_right;
    _ = &right;
    var arg3: [*c]u8 = strchr(right.*.str3, @as(c_int, ':'));
    _ = &arg3;
    if (arg3 == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        return 0;
    }
    (blk: {
        const ref = &arg3;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }).* = 0;
    if (left.*.val != 0) {
        return tintoi(right.*.str3);
    } else {
        return tintoi(arg3);
    }
    return 0;
}
pub export fn tincmp(arg_left: [*c]struct_math_node, arg_right: [*c]struct_math_node) c_longdouble {
    var left = arg_left;
    _ = &left;
    var right = arg_right;
    _ = &right;
    if (@as(c_int, @bitCast(@as(c_uint, left.*.type))) != @as(c_int, @bitCast(@as(c_uint, right.*.type)))) {
        show_debug(gtd.*.ses, LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast(@volatileCast("#DEBUG MATH: COMPARING STRING WITH A NUMBER.")))));
        return 0;
    }
    while (true) {
        switch (@as(c_int, @bitCast(@as(c_uint, left.*.type)))) {
            @as(c_int, 1) => return @as(c_longdouble, @floatFromInt(strcmp(left.*.str3, right.*.str3))),
            else => return left.*.val - right.*.val,
        }
        break;
    }
    return 0;
}
pub export fn tineval(arg_ses: [*c]struct_session, arg_left: [*c]struct_math_node, arg_right: [*c]struct_math_node) c_longdouble {
    var ses = arg_ses;
    _ = &ses;
    var left = arg_left;
    _ = &left;
    var right = arg_right;
    _ = &right;
    if (@as(c_int, @bitCast(@as(c_uint, left.*.type))) != @as(c_int, @bitCast(@as(c_uint, right.*.type)))) {
        show_debug(ses, LIST_VARIABLE, null, @as([*c]u8, @ptrCast(@constCast(@volatileCast("#DEBUG MATH: COMPARING %s WITH %s.")))), if (@as(c_int, @bitCast(@as(c_uint, left.*.type))) == @as(c_int, 0)) "NUMBER" else "STRING", if (@as(c_int, @bitCast(@as(c_uint, right.*.type))) == @as(c_int, 0)) "NUMBER" else "STRING");
        return 0;
    }
    while (true) {
        switch (@as(c_int, @bitCast(@as(c_uint, left.*.type)))) {
            @as(c_int, 1) => return @as(c_longdouble, @floatFromInt(match(ses, left.*.str3, right.*.str3, @as(c_int, 0) << @intCast(0)))),
            else => return @as(c_longdouble, @floatFromInt(@intFromBool(left.*.val == right.*.val))),
        }
        break;
    }
    return 0;
}
pub export fn tindice(arg_ses: [*c]struct_session, arg_left: [*c]struct_math_node, arg_right: [*c]struct_math_node) c_longdouble {
    var ses = arg_ses;
    _ = &ses;
    var left = arg_left;
    _ = &left;
    var right = arg_right;
    _ = &right;
    var cnt: c_ulonglong = undefined;
    _ = &cnt;
    var numdice: c_ulonglong = undefined;
    _ = &numdice;
    var sizedice: c_ulonglong = undefined;
    _ = &sizedice;
    var sum: c_ulonglong = undefined;
    _ = &sum;
    var estimate: c_longdouble = undefined;
    _ = &estimate;
    numdice = @as(c_ulonglong, @intFromFloat(left.*.val));
    sizedice = @as(c_ulonglong, @intFromFloat(right.*.val));
    if (sizedice == @as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 0))))) {
        return 0;
    }
    if (numdice > @as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 100))))) {
        estimate = @as(c_longdouble, @floatCast(@as(f64, @floatFromInt(numdice)) / 100.0));
        numdice = 100;
    } else {
        estimate = 1;
    }
    {
        cnt = blk: {
            const tmp = @as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 0))));
            sum = tmp;
            break :blk tmp;
        };
        while (cnt < numdice) : (cnt +%= 1) {
            sum +%= (generate_rand(ses) % sizedice) +% @as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 1))));
        }
    }
    sum *%= @as(c_ulonglong, @intFromFloat(estimate));
    return @as(c_longdouble, @floatFromInt(sum));
}
pub export fn do_math(arg_ses: [*c]struct_session, arg_arg: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8, arg_arg3: [*c]u8, arg_arg4: [*c]u8) [*c]struct_session {
    var ses = arg_ses;
    _ = &ses;
    var arg = arg_arg;
    _ = &arg;
    var arg1 = arg_arg1;
    _ = &arg1;
    var arg2 = arg_arg2;
    _ = &arg2;
    var arg3 = arg_arg3;
    _ = &arg3;
    var arg4 = arg_arg4;
    _ = &arg4;
    var node: [*c]struct_listnode = undefined;
    _ = &node;
    var result: c_longdouble = undefined;
    _ = &result;
    arg = sub_arg_in_braces(ses, arg, arg1, @as(c_int, 2), (@as(c_int, 1) << @intCast(4)) | (@as(c_int, 1) << @intCast(5)));
    arg = get_arg_in_braces(ses, arg, arg2, @as(c_int, 1));
    if ((@as(c_int, @bitCast(@as(c_uint, arg1.*))) == @as(c_int, 0)) or (@as(c_int, @bitCast(@as(c_uint, arg2.*))) == @as(c_int, 0))) {
        show_error(ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@constCast(@volatileCast("#SYNTAX: #MATH <VARIABLE> <EXPRESSION>")))));
    } else {
        result = get_number(ses, arg2);
        node = set_nest_node_ses(ses, arg1, @as([*c]u8, @ptrCast(@constCast(@volatileCast("%.*Lf")))), precision, result);
        show_message(ses, LIST_VARIABLE, @as([*c]u8, @ptrCast(@constCast(@volatileCast("#MATH: VARIABLE {%s} HAS BEEN SET TO {%s}.")))), arg1, node.*.arg2);
    }
    return ses;
}
pub export fn get_root(arg_value: c_longdouble, arg_power: c_longdouble) c_longdouble {
    var value = arg_value;
    _ = &value;
    var power = arg_power;
    _ = &power;
    var bot: c_longdouble = undefined;
    _ = &bot;
    var mid: c_longdouble = undefined;
    _ = &mid;
    var top: c_longdouble = undefined;
    _ = &top;
    var sum: c_longdouble = undefined;
    _ = &sum;
    bot = 0;
    top = 2;
    while (@as(c_longdouble, @floatCast(pow(@as(f64, @floatCast(top)), @as(f64, @floatCast(power))))) < value) {
        top *= @as(c_longdouble, @floatFromInt(@as(c_int, 2)));
    }
    while (top > @as(c_longdouble, @floatCast(0.000000000001))) {
        mid = top / @as(c_longdouble, @floatFromInt(@as(c_int, 2)));
        sum = bot + mid;
        if (powl(sum, power) <= value) {
            bot += mid;
        }
        top -= mid;
    }
    return bot;
}
pub export fn add_math_node(arg_type: c_int, arg_level: c_int, arg_priority: c_int, arg_arg3: [*c]u8) void {
    var @"type" = arg_type;
    _ = &@"type";
    var level = arg_level;
    _ = &level;
    var priority = arg_priority;
    _ = &priority;
    var arg3 = arg_arg3;
    _ = &arg3;
    var link_1: [*c]struct_math_node = undefined;
    _ = &link_1;
    link_1 = @as([*c]struct_math_node, @ptrCast(@alignCast(calloc(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @sizeOf(struct_math_node)))));
    link_1.*.level = @as(c_ushort, @bitCast(@as(c_short, @truncate(level))));
    link_1.*.priority = @as(u8, @bitCast(@as(i8, @truncate(priority))));
    link_1.*.type = @as(u8, @bitCast(@as(i8, @truncate(@"type"))));
    while (true) {
        switch (@"type") {
            @as(c_int, 0) => {
                if (wonky != 0) {
                    link_1.*.val = @as(c_longdouble, @floatFromInt(blk: {
                        const ref = &wonky;
                        ref.* -= 1;
                        break :blk ref.*;
                    }));
                } else {
                    link_1.*.val = tintoi(arg3);
                }
                break;
            },
            @as(c_int, 3) => {
                link_1.*.val = @as(c_longdouble, @floatFromInt(@as(c_int, @bitCast(@as(c_uint, arg3[@as(c_uint, @intCast(@as(c_int, 0)))])))));
                if (arg3[@as(c_uint, @intCast(@as(c_int, 1)))] != 0) {
                    link_1.*.val += @as(c_longdouble, @floatFromInt(@as(c_int, 128) * @as(c_int, @bitCast(@as(c_uint, arg3[@as(c_uint, @intCast(@as(c_int, 1)))])))));
                    if (arg3[@as(c_uint, @intCast(@as(c_int, 2)))] != 0) {
                        link_1.*.val += @as(c_longdouble, @floatFromInt((@as(c_int, 128) * @as(c_int, 128)) * @as(c_int, @bitCast(@as(c_uint, arg3[@as(c_uint, @intCast(@as(c_int, 2)))])))));
                    }
                }
                break;
            },
            else => {},
        }
        break;
    }
    link_1.*.str3 = strdup(arg3);
    {
        if (math_head == @as([*c]struct_math_node, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            math_head = link_1;
        } else {
            math_tail.*.next = link_1;
        }
        link_1.*.next = null;
        link_1.*.prev = math_tail;
        math_tail = link_1;
    }
}
pub export fn del_math_node(arg_node: [*c]struct_math_node) void {
    var node = arg_node;
    _ = &node;
    {
        if (((node.*.prev == @as([*c]struct_math_node, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (node != math_head)) or ((node.*.next == @as([*c]struct_math_node, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (node != math_tail))) {
            tintin_printf2(null, @as([*c]u8, @ptrCast(@constCast(@volatileCast("#UNLINK ERROR in file %s on line %d")))), "src/math.c", @as(c_int, 340));
            dump_stack();
        }
        if (node.*.prev == @as([*c]struct_math_node, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            math_head = node.*.next;
        } else {
            node.*.prev.*.next = node.*.next;
        }
        if (node.*.next == @as([*c]struct_math_node, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            math_tail = node.*.prev;
        } else {
            node.*.next.*.prev = node.*.prev;
        }
        node.*.next = null;
        node.*.prev = null;
    }
    free(@as(?*anyopaque, @ptrCast(node.*.str3)));
    free(@as(?*anyopaque, @ptrCast(node)));
}
pub const __llvm__ = @as(c_int, 1);
