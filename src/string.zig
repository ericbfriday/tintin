const std = @import("std");

pub const tintin_c = @cImport({
    @cInclude("tintin.h");
});

// --- C standard library aliases ---
pub const strlen = tintin_c.strlen;
pub const time_t = tintin_c.time_t;
pub const memcpy = tintin_c.memcpy;
pub const memmove = tintin_c.memmove;

// --- TinTin++ struct type aliases ---
pub const struct_session = tintin_c.struct_session;
pub const struct_listnode = tintin_c.struct_listnode;
pub const struct_listroot = tintin_c.struct_listroot;
pub const struct_scriptroot = tintin_c.struct_scriptroot;
pub const struct_port_data = tintin_c.struct_port_data;
pub const struct_buffer_type = tintin_c.struct_buffer_type;
pub const struct_charset_type = tintin_c.struct_charset_type;
pub const struct_chat_type = tintin_c.struct_chat_type;
pub const struct_color_type = tintin_c.struct_color_type;
pub const struct_cursor_type = tintin_c.struct_cursor_type;
pub const struct_daemon_type = tintin_c.struct_daemon_type;
pub const struct_edit_type = tintin_c.struct_edit_type;
pub const struct_event_type = tintin_c.struct_event_type;
pub const struct_history_type = tintin_c.struct_history_type;
pub const struct_list_type = tintin_c.struct_list_type;
pub const struct_map_type = tintin_c.struct_map_type;
pub const struct_map_legend_type = tintin_c.struct_map_legend_type;
pub const struct_map_legend_group_type = tintin_c.struct_map_legend_group_type;
pub const struct_path_type = tintin_c.struct_path_type;
pub const struct_port_type = tintin_c.struct_port_type;
pub const struct_rank_type = tintin_c.struct_rank_type;
pub const struct_stamp_type = tintin_c.struct_stamp_type;
pub const struct_substitution_type = tintin_c.struct_substitution_type;
pub const struct_telopt_type = tintin_c.struct_telopt_type;
pub const struct_timer_type = tintin_c.struct_timer_type;

// --- TinTin++ global / function aliases ---
pub const gtd = tintin_c.gtd;
pub const ffs = tintin_c.ffs;
pub const str_len = tintin_c.str_len;
pub const pcre = tintin_c.pcre;

// --- Additional extern types referenced by function signatures ---
pub const gnutls_session_t = tintin_c.gnutls_session_t;
pub const fd_set = tintin_c.fd_set;
pub const CMPFUNC = tintin_c.CMPFUNC;

pub const __TINTIN_H__ = "";
pub const FLAG_NONE = @as(c_int, 0);
pub const FALSE = @as(c_int, 0);
pub const TRUE = @as(c_int, 1);
pub const IS_LINE = @as(c_int, 0);
pub const IS_PROMPT = @as(c_int, 1);
pub const GET_ONE = @as(c_int, 0);
pub const GET_ALL = @as(c_int, 1);
pub const GET_NST = @as(c_int, 2);
pub const GET_VBT = @as(c_int, 4);
pub const GET_SPC = @as(c_int, 8);
pub const TEL_N = @as(c_int, 0);
pub const TEL_Y = @as(c_int, 1);
pub const TEL_I = @as(c_int, 2);
pub const SCREEN_WIDTH = @as(c_int, 80);
pub const SCREEN_HEIGHT = @as(c_int, 24);
pub const SORT_PRIORITY = @as(c_int, 0);
pub const SORT_ALPHA = @as(c_int, 1);
pub const SORT_ALNUM = @as(c_int, 2);
pub const SORT_STABLE = @as(c_int, 3);
pub const SORT_APPEND = @as(c_int, 4);
pub const SEEK_MATCH = @as(c_int, 0);
pub const SEEK_REPLACE = @as(c_int, 1);
pub const SEEK_APPEND = @as(c_int, 2);
pub const DEFAULT_OPEN = '{';
pub const DEFAULT_CLOSE = '}';
pub const COMMAND_SEPARATOR = ';';
pub const ASCII_NUL = @as(c_int, 0);
pub const ASCII_ENQ = @as(c_int, 5);
pub const ASCII_HTML_AMP = @as(c_int, 6);
pub const ASCII_BEL = @as(c_int, 7);
pub const ASCII_BS = @as(c_int, 8);
pub const ASCII_HTAB = @as(c_int, 9);
pub const ASCII_LF = @as(c_int, 10);
pub const ASCII_VTAB = @as(c_int, 11);
pub const ASCII_FF = @as(c_int, 12);
pub const ASCII_CR = @as(c_int, 13);
pub const ASCII_ESC = @as(c_int, 27);
pub const ASCII_HTML_OPEN = @as(c_int, 28);
pub const ASCII_HTML_CLOSE = @as(c_int, 30);
pub const CTRL_A = @as(c_int, 1);
pub const CTRL_B = @as(c_int, 2);
pub const CTRL_C = @as(c_int, 3);
pub const CTRL_D = @as(c_int, 4);
pub const CTRL_E = @as(c_int, 5);
pub const CTRL_F = @as(c_int, 6);
pub const CTRL_G = @as(c_int, 7);
pub const CTRL_H = @as(c_int, 8);
pub const CTRL_I = @as(c_int, 9);
pub const CTRL_J = @as(c_int, 10);
pub const CTRL_K = @as(c_int, 11);
pub const CTRL_L = @as(c_int, 12);
pub const CTRL_M = @as(c_int, 13);
pub const CTRL_N = @as(c_int, 14);
pub const CTRL_O = @as(c_int, 15);
pub const CTRL_P = @as(c_int, 16);
pub const CTRL_Q = @as(c_int, 17);
pub const CTRL_R = @as(c_int, 18);
pub const CTRL_S = @as(c_int, 19);
pub const CTRL_T = @as(c_int, 20);
pub const CTRL_U = @as(c_int, 21);
pub const CTRL_V = @as(c_int, 22);
pub const CTRL_W = @as(c_int, 23);
pub const CTRL_X = @as(c_int, 24);
pub const CTRL_Y = @as(c_int, 25);
pub const CTRL_Z = @as(c_int, 26);
pub const ASCII_DEL = @as(c_int, 127);
pub const DAEMON_DIR = "daemons";
pub const TINTIN_DIR = ".tintin";
pub const HISTORY_FILE = "history.txt";
pub const MALLOC_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal);
pub const STRING_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const BUFFER_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const INPUT_SIZE = @as(c_int, 10000);
pub const PATH_SIZE = @as(c_int, 4096);
pub const STACK_SIZE = @as(c_int, 1000);
pub const NAME_SIZE = @as(c_int, 256);
pub const NUMBER_SIZE = @as(c_int, 100);
pub const LEGEND_SIZE = @as(c_int, 50);
pub const COLOR_SIZE = @as(c_int, 50);
pub const CHAR_SIZE = @as(c_int, 5);
pub const LIST_SIZE = @as(c_int, 2);
pub const CLIENT_NAME = "TinTin++";
pub const CLIENT_VERSION = "2.02.51 ";
pub const XT_E = @as(c_int, 0x27);
pub const XT_C = @as(c_int, 0x5B);
pub const XT_O = @as(c_int, 0x5D);
pub const XT_W = @as(c_int, 0x74);
pub const XT_T = @as(c_int, 0x07);
pub const XT_CS = @as(c_int, 0x73);
pub const XT_S = "\x3b";
pub const XT_V = "\x00";
pub const COLOR_BRACE = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:243:9
pub const COLOR_COMMAND = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:244:9
pub const COLOR_CONFIG = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:245:9
pub const COLOR_RESET = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:246:9
pub const COLOR_SEPARATOR = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:247:9
pub const COLOR_SESSION = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:248:9
pub const COLOR_STATEMENT = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:249:9
pub const COLOR_STRING = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:250:9
pub const COLOR_DEBUG = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:251:9
pub const COLOR_TEXT = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:253:9
pub const COLOR_TINTIN = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:254:9
pub const COLOR_REPEAT = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:255:9
pub const COLOR_HELP_DIM = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:256:9
pub const COLOR_HELP_BOLD = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:257:9
pub const COLOR_HELP_TITLE = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:258:9
pub const COLOR_HELP_TABLE = @compileError("macro tokenizing failed: unknown escape sequence");
// src/tintin.h:259:9
pub const BV00 = @as(c_int, 0) << @as(c_int, 0);
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
/// Given a string with VT102 escape codes, compute the raw byte offset
/// to the display-column `start`, and the raw byte width from `start` to `end`.
/// Returns the raw offset; writes the raw width to `raw_width`.
pub export fn get_raw_off_str_range_raw_width(ses: [*c]struct_session, str: [*c]u8, start: c_int, end: c_int, raw_width: [*c]c_int) c_int {
    if (str == null) {
        raw_width.* = 0;
        return 0;
    }
    const slice = std.mem.span(str);
    var raw_off: c_int = 0;
    var raw_cnt: usize = 0;
    var str_cnt: c_int = 0;
    var ret_raw: c_int = 0;

    while (raw_cnt < slice.len) {
        var width: c_int = undefined;
        const current_ptr = &slice[raw_cnt];
        const skip = get_vt102_width(ses, current_ptr, &width);

        if (str_cnt >= start) {
            ret_raw += skip;
        } else {
            raw_off += skip;
        }
        raw_cnt += @intCast(skip);

        if (end >= 0 and (str_cnt + width) > end) break;
        str_cnt += width;
    }
    raw_width.* = ret_raw;
    return raw_off;
}
pub export fn raw_len_str(ses: [*c]struct_session, str: [*c]u8, start: c_int, end: c_int) c_int {
    if (str == null) return 0;
    const slice = std.mem.span(str);
    var raw_cnt: usize = 0;
    var str_cnt: c_int = 0;
    var ret_cnt: c_int = 0;

    while (raw_cnt < slice.len) {
        const current_ptr = &slice[raw_cnt];
        const skip = skip_vt102_codes(current_ptr);

        if (skip != 0) {
            raw_cnt += @intCast(skip);
            if (str_cnt >= start) {
                ret_cnt += @intCast(skip);
            }
            continue;
        }

        var width: c_int = 1;
        var tmp_cnt: c_int = 1;

        if (((ses.*.charset & 1) != 0) and (is_utf8_head(current_ptr) != 0)) {
            tmp_cnt = get_utf8_width(current_ptr, &width, null);
        } else {
            width = 1;
            tmp_cnt = 1;
        }

        if (str_cnt >= start) {
            ret_cnt += tmp_cnt;
        }
        raw_cnt += @intCast(tmp_cnt);

        if (end >= 0 and (str_cnt + width) > end) {
            break;
        }
        str_cnt += width;
    }
    return ret_cnt;
}
pub export fn str_len_raw(ses: [*c]struct_session, str: [*c]u8, start: c_int, end: c_int) c_int {
    if (str == null) return 0;
    const slice = std.mem.span(str);
    var raw_cnt: usize = @intCast(start);
    var ret_cnt: c_int = 0;

    while (raw_cnt < slice.len) {
        if (raw_cnt >= @as(usize, @intCast(end))) {
            break;
        }
        const current_ptr = &slice[raw_cnt];
        const skip = skip_vt102_codes(current_ptr);

        if (skip != 0) {
            raw_cnt += @intCast(skip);
        } else if (((ses.*.charset & 1) != 0) and (is_utf8_head(current_ptr) != 0)) {
            var width: c_int = 0;
            raw_cnt += @intCast(get_utf8_width(current_ptr, &width, null));
            ret_cnt += width;
        } else {
            raw_cnt += 1;
            ret_cnt += 1;
        }
    }
    return ret_cnt;
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:132:3: warning: TODO implement function '__builtin___memmove_chk' in std.zig.c_builtins

pub fn strInsStrIdiomatic(ses: [*c]struct_session, str: [*c][*c]u8, ins: [*c]u8, str_start: c_int, str_end_in: c_int) !void {
    var str_end = str_end_in;
    if (str_end == -1) {
        str_end = str_start + strip_vt102_strlen(ses, ins);
    }

    const len = str_len_str(ses, str.*, 0, str_end);

    if (len < str_end) {
        const space_count = @as(usize, @intCast(str_end - len));
        var spaces_buf: [2048]u8 = undefined;
        const fill_len = @min(space_count, spaces_buf.len - 1);
        @memset(spaces_buf[0..fill_len], ' ');
        spaces_buf[fill_len] = 0;
        _ = tintin_c.str_cat(str, &spaces_buf);
    }

    const ins_raw_len = raw_len_str(ses, ins, 0, str_end - str_start);
    const raw_start = raw_len_str_min(ses, str.*, 0, str_start);
    const raw_len = str_len(str.*);
    const raw_end = raw_len_str_opt(ses, str.*, 0, str_end);

    var old_buf: [COLOR_SIZE]u8 = undefined;
    const old: [*c]u8 = &old_buf;

    const tmp = str.*[@as(usize, @intCast(raw_end))];

    old[0] = 0;
    str.*[@as(usize, @intCast(raw_end))] = 0;

    get_color_codes(old, str.*, old, GET_ALL);

    str.*[@as(usize, @intCast(raw_end))] = tmp;

    const col_len = @as(c_int, @intCast(std.mem.len(old)));

    var new_str = std.ArrayList(u8).empty;
    defer new_str.deinit(std.heap.c_allocator);

    try new_str.appendSlice(std.heap.c_allocator, str.*[0..@as(usize, @intCast(raw_start))]);
    try new_str.appendSlice(std.heap.c_allocator, ins[0..@as(usize, @intCast(ins_raw_len))]);

    if (raw_len < raw_end + ins_raw_len or raw_len > raw_end) {
        try new_str.appendSlice(std.heap.c_allocator, old[0..@as(usize, @intCast(col_len))]);
        if (raw_len > raw_end) {
            try new_str.appendSlice(std.heap.c_allocator, str.*[@as(usize, @intCast(raw_end))..@as(usize, @intCast(raw_len))]);
        }
    } else if (raw_len > raw_end) {
        try new_str.appendSlice(std.heap.c_allocator, str.*[@as(usize, @intCast(raw_end))..@as(usize, @intCast(raw_len))]);
    } else {
        // If len >= str_end, there is no suffix anyway since raw_len == raw_end
    }

    _ = tintin_c.str_resize(str, @as(c_int, @intCast(new_str.items.len)));
    @memcpy(str.*[0..new_str.items.len], new_str.items[0..new_str.items.len]);
    str.*[new_str.items.len] = 0;

    _ = tintin_c.str_fix(str.*);
}

pub export fn str_ins_str(ses: [*c]struct_session, str: [*c][*c]u8, ins: [*c]u8, str_start: c_int, str_end_in: c_int) [*c]u8 {
    strInsStrIdiomatic(ses, str, ins, str_start, str_end_in) catch |err| {
        std.log.err("str_ins_str memory allocation failed: {}", .{err});
    };
    return str.*;
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h:76:2: warning: TODO implement function '__builtin___snprintf_chk' in std.zig.c_builtins

pub extern fn space_out(string: [*c]u8) [*c]u8;

pub export fn calign(ses: [*c]struct_session, in: [*c]u8, out: [*c]u8, width_in: c_int) [*c]u8 {
    var in_ptr = space_out(in);

    if (in_ptr[0] != 0) {
        var len = @as(c_int, @intCast(std.mem.len(in_ptr))) - 1;
        while (len >= 0 and is_space(in_ptr[@as(usize, @intCast(len))]) != 0) {
            in_ptr[@as(usize, @intCast(len))] = 0;
            len -= 1;
        }
    }

    var width_val: c_int = 0;
    _ = strip_vt102_width(ses, in_ptr, &width_val);

    const pad_width = @max(0, width_in - width_val);
    const left_spaces = @as(usize, @intCast(@divTrunc(pad_width, 2)));
    const right_spaces = @as(usize, @intCast(pad_width - @divTrunc(pad_width, 2)));
    const in_len = std.mem.len(in_ptr);

    var out_idx: usize = 0;
    @memset(out[out_idx..out_idx + left_spaces], ' ');
    out_idx += left_spaces;

    @memcpy(out[out_idx..out_idx + in_len], in_ptr[0..in_len]);
    out_idx += in_len;

    @memset(out[out_idx..out_idx + right_spaces], ' ');
    out_idx += right_spaces;

    out[out_idx] = 0;

    return out;
}

pub export fn lalign(ses: [*c]struct_session, in: [*c]u8, out: [*c]u8, width_in: c_int) [*c]u8 {
    var in_ptr = space_out(in);

    if (in_ptr[0] != 0) {
        var len = @as(c_int, @intCast(std.mem.len(in_ptr))) - 1;
        while (len >= 0 and is_space(in_ptr[@as(usize, @intCast(len))]) != 0) {
            in_ptr[@as(usize, @intCast(len))] = 0;
            len -= 1;
        }
    }

    var width_val: c_int = 0;
    _ = strip_vt102_width(ses, in_ptr, &width_val);

    const pad_width = @as(usize, @intCast(@max(0, width_in - width_val)));
    const in_len = std.mem.len(in_ptr);

    var out_idx: usize = 0;
    @memcpy(out[out_idx..out_idx + in_len], in_ptr[0..in_len]);
    out_idx += in_len;

    @memset(out[out_idx..out_idx + pad_width], ' ');
    out_idx += pad_width;

    out[out_idx] = 0;

    return out;
}

pub export fn ralign(ses: [*c]struct_session, in: [*c]u8, out: [*c]u8, width_in: c_int) [*c]u8 {
    var in_ptr = space_out(in);

    if (in_ptr[0] != 0) {
        var len = @as(c_int, @intCast(std.mem.len(in_ptr))) - 1;
        while (len >= 0 and is_space(in_ptr[@as(usize, @intCast(len))]) != 0) {
            in_ptr[@as(usize, @intCast(len))] = 0;
            len -= 1;
        }
    }

    var width_val: c_int = 0;
    _ = strip_vt102_width(ses, in_ptr, &width_val);

    const pad_width = @as(usize, @intCast(@max(0, width_in - width_val)));
    const in_len = std.mem.len(in_ptr);

    var out_idx: usize = 0;
    @memset(out[out_idx..out_idx + pad_width], ' ');
    out_idx += pad_width;

    @memcpy(out[out_idx..out_idx + in_len], in_ptr[0..in_len]);
    out_idx += in_len;

    out[out_idx] = 0;

    return out;
}

pub export fn ualign(ses: [*c]struct_session, in: [*c]u8, out: [*c]u8, width: c_int) [*c]u8 {
    _ = ses;
    _ = width;
    if (in == null or out == null) return out;
    const in_slice = std.mem.span(in);
    var in_idx: usize = 0;
    var out_idx: usize = 0;

    while (in_idx < in_slice.len) {
        if (in_slice[in_idx] == '\n') {
            if (in_idx + 1 == in_slice.len) {
                // Newline followed by NUL: copy the newline and stop
                out[out_idx] = '\n';
                out_idx += 1;
                in_idx += 1;
            } else if (in_slice[in_idx + 1] == '\n') {
                // Consecutive newlines: copy them all
                while (in_idx < in_slice.len and in_slice[in_idx] == '\n') {
                    out[out_idx] = '\n';
                    out_idx += 1;
                    in_idx += 1;
                }
            } else {
                // Single newline: replace with space
                in_idx += 1;
                out[out_idx] = ' ';
                out_idx += 1;
            }
        } else {
            // Normal character: copy verbatim
            out[out_idx] = in_slice[in_idx];
            out_idx += 1;
            in_idx += 1;
        }
    }
    out[out_idx] = 0;
    return out;
}
/// Case-insensitive character comparison.
/// Returns 1 if both chars are in the same 64-char block AND share the same lower 5 bits.
pub export fn char_cmp(left: u8, right: u8) u8 {
    return @intFromBool(
        (left / 64 == right / 64) and (left % 32 == right % 32),
    );
}

/// Returns non-zero if input is alphanumeric (digit or alpha).
pub export fn is_alnum(input: u8) u8 {
    return @truncate(@as(c_uint, character_table[input]) & @as(c_uint, @bitCast(CHAR_FLAG_ALPHA | CHAR_FLAG_DIGIT)));
}

/// Returns non-zero if input is alphabetic.
pub export fn is_alpha(input: u8) u8 {
    return @truncate(@as(c_uint, character_table[input]) & @as(c_uint, @bitCast(CHAR_FLAG_ALPHA)));
}

/// Returns non-zero if input is a digit.
pub export fn is_digit(input: u8) u8 {
    return @truncate(@as(c_uint, character_table[input]) & @as(c_uint, @bitCast(CHAR_FLAG_DIGIT)));
}

/// Returns non-zero if input is a hex digit.
pub export fn is_hex(input: u8) u8 {
    return @truncate(@as(c_uint, character_table[input]) & @as(c_uint, @bitCast(CHAR_FLAG_HEX)));
}

/// Returns non-zero if input is printable.
pub export fn is_print(input: u8) u8 {
    return @truncate(@as(c_uint, character_table[input]) & @as(c_uint, @bitCast(CHAR_FLAG_PRINT)));
}

/// Returns non-zero if input is whitespace.
pub export fn is_space(input: u8) u8 {
    return @truncate(@as(c_uint, character_table[input]) & @as(c_uint, @bitCast(CHAR_FLAG_SPACE)));
}

/// Returns non-zero if input is a valid variable character.
pub export fn is_varchar(input: u8) u8 {
    return @truncate(@as(c_uint, character_table[input]) & @as(c_uint, @bitCast(CHAR_FLAG_VAR)));
}

/// Returns non-zero if input is a CSI (Control Sequence Introducer) character.
pub export fn is_csichar(input: u8) u8 {
    return @truncate(@as(c_uint, character_table[input]) & @as(c_uint, @bitCast(CHAR_FLAG_CSI)));
}
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
pub extern fn is_number(str: [*c]u8) c_int;
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
/// Compute the display width of a string between display columns `start` and `end`.
/// Skips VT102 escape codes and accounts for UTF-8 character widths.
pub export fn str_len_str(ses: [*c]struct_session, str: [*c]u8, start: c_int, end: c_int) c_int {
    if (str == null) return 0;
    const slice = std.mem.span(str);
    var raw_cnt: usize = 0;
    var str_cnt: c_int = 0;
    var ret_cnt: c_int = 0;

    while (raw_cnt < slice.len) {
        if (end >= 0 and str_cnt >= end) break;

        const current_ptr = &slice[raw_cnt];
        const tmp_cnt = skip_vt102_codes(current_ptr);
        if (tmp_cnt != 0) {
            raw_cnt += @intCast(tmp_cnt);
        } else if ((ses.*.charset & CHARSET_FLAG_UTF8) != 0 and is_utf8_head(current_ptr) != 0) {
            var width: c_int = undefined;
            const utf8_len = get_utf8_width(current_ptr, &width, null);
            if (str_cnt >= start) {
                ret_cnt += width;
            }
            str_cnt += width;
            raw_cnt += @intCast(utf8_len);
        } else {
            if (str_cnt >= start) {
                ret_cnt += 1;
            }
            str_cnt += 1;
            raw_cnt += 1;
        }
    }
    return ret_cnt;
}
/// Minimum raw byte length: compute the raw byte count for display columns
/// `start` to `end`. Breaks when str_cnt reaches end BEFORE processing the char.
pub export fn raw_len_str_min(ses: [*c]struct_session, str: [*c]u8, start: c_int, end: c_int) c_int {
    if (str == null) return 0;
    const slice = std.mem.span(str);
    var raw_cnt: usize = 0;
    var str_cnt: c_int = 0;
    var ret_cnt: c_int = 0;

    while (raw_cnt < slice.len) {
        if (str_cnt >= end) break;

        var width: c_int = undefined;
        const current_ptr = &slice[raw_cnt];
        const tmp_cnt = skip_vt102_codes(current_ptr);

        if (tmp_cnt != 0) {
            raw_cnt += @intCast(tmp_cnt);
            if (str_cnt >= start) {
                ret_cnt += tmp_cnt;
            }
            continue;
        } else if ((ses.*.charset & CHARSET_FLAG_UTF8) != 0 and is_utf8_head(current_ptr) != 0) {
            const utf8_len = get_utf8_width(current_ptr, &width, null);
            if (str_cnt >= start) {
                ret_cnt += utf8_len;
            }
            raw_cnt += @intCast(utf8_len);
        } else {
            if (str_cnt >= start) {
                ret_cnt += 1;
            }
            raw_cnt += 1;
            width = 1;
        }

        if (end >= 0 and (str_cnt + width) > end) break;
        str_cnt += width;
    }
    return ret_cnt;
}
/// Like raw_len_str_min but also grabs trailing color/escape codes past `end`.
/// Escape codes are always included in the count when past `start`, even after
/// `str_cnt` reaches `end` — the `end` check happens AFTER escape processing.
pub export fn raw_len_str_opt(ses: [*c]struct_session, str: [*c]u8, start: c_int, end: c_int) c_int {
    if (str == null) return 0;
    const slice = std.mem.span(str);
    var raw_cnt: usize = 0;
    var str_cnt: c_int = 0;
    var ret_cnt: c_int = 0;

    while (raw_cnt < slice.len) {
        const current_ptr = &slice[raw_cnt];
        const tmp_cnt = skip_vt102_codes(current_ptr);

        if (tmp_cnt != 0) {
            raw_cnt += @intCast(tmp_cnt);
            if (str_cnt >= start) {
                ret_cnt += tmp_cnt;
            }
            continue;
        }

        if (str_cnt >= end) break;

        var width: c_int = undefined;
        if ((ses.*.charset & CHARSET_FLAG_UTF8) != 0 and is_utf8_head(current_ptr) != 0) {
            const utf8_len = get_utf8_width(current_ptr, &width, null);
            if (str_cnt >= start) {
                ret_cnt += utf8_len;
            }
            raw_cnt += @intCast(utf8_len);
        } else {
            if (str_cnt >= start) {
                ret_cnt += 1;
            }
            raw_cnt += 1;
            width = 1;
        }

        if (end >= 0 and (str_cnt + width) > end) break;
        str_cnt += width;
    }
    return ret_cnt;
}
/// Raw-to-raw length: simple byte range calculation.
/// If `end` is -1, returns the remaining length from `start` to the end of the string.
pub export fn raw_len_raw(ses: [*c]struct_session, str: [*c]u8, start: c_int, end: c_int) c_int {
    _ = ses;
    if (end == -1) {
        return @as(c_int, @bitCast(@as(c_uint, @truncate(strlen(str) -% @as(c_ulong, @bitCast(@as(c_long, start)))))));
    }
    if (start >= end) return 0;
    return end - start;
}

test "is_alpha" {
    try std.testing.expectEqual(@as(u8, 2), is_alpha('a'));
    try std.testing.expectEqual(@as(u8, 2), is_alpha('Z'));
    try std.testing.expectEqual(@as(u8, 0), is_alpha('1'));
    try std.testing.expectEqual(@as(u8, 0), is_alpha(' '));
}

test "char_cmp" {
    // Same character: should match
    try std.testing.expectEqual(@as(u8, 1), char_cmp('a', 'a'));
    // Case-insensitive: 'a' and 'A' should match (same block, same lower 5 bits)
    try std.testing.expectEqual(@as(u8, 1), char_cmp('a', 'A'));
    try std.testing.expectEqual(@as(u8, 1), char_cmp('Z', 'z'));
    // Different letters: should not match
    try std.testing.expectEqual(@as(u8, 0), char_cmp('a', 'b'));
}

test "is_digit" {
    try std.testing.expectEqual(@as(u8, 1), is_digit('0'));
    try std.testing.expectEqual(@as(u8, 1), is_digit('9'));
    try std.testing.expectEqual(@as(u8, 0), is_digit('a'));
}
