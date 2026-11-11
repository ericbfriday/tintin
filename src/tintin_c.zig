const __root = @This();
pub const __builtin = @import("std").zig.c_translation.builtins;
pub const __helpers = @import("std").zig.c_translation.helpers;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __aro_max_align_ll: c_longlong = 0,
    __aro_max_align_ld: c_longdouble = 0,
};
pub const struct___va_list_tag_1 = extern struct {
    unnamed_0: c_uint = 0,
    unnamed_1: c_uint = 0,
    unnamed_2: ?*anyopaque = null,
    unnamed_3: ?*anyopaque = null,
};
pub const __builtin_va_list = [1]struct___va_list_tag_1;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
const union_unnamed_2 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int = 0,
    __value: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t = 0,
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t = 0,
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int = 0,
    _IO_read_ptr: [*c]u8 = null,
    _IO_read_end: [*c]u8 = null,
    _IO_read_base: [*c]u8 = null,
    _IO_write_base: [*c]u8 = null,
    _IO_write_ptr: [*c]u8 = null,
    _IO_write_end: [*c]u8 = null,
    _IO_buf_base: [*c]u8 = null,
    _IO_buf_end: [*c]u8 = null,
    _IO_save_base: [*c]u8 = null,
    _IO_backup_base: [*c]u8 = null,
    _IO_save_end: [*c]u8 = null,
    _markers: ?*struct__IO_marker = null,
    _chain: [*c]struct__IO_FILE = null,
    _fileno: c_int = 0,
    _flags2: c_int = 0,
    _old_offset: __off_t = 0,
    _cur_column: c_ushort = 0,
    _vtable_offset: i8 = 0,
    _shortbuf: [1]u8 = @import("std").mem.zeroes([1]u8),
    _lock: ?*_IO_lock_t = null,
    _offset: __off64_t = 0,
    _codecvt: ?*struct__IO_codecvt = null,
    _wide_data: ?*struct__IO_wide_data = null,
    _freeres_list: [*c]struct__IO_FILE = null,
    _freeres_buf: ?*anyopaque = null,
    __pad5: usize = 0,
    _mode: c_int = 0,
    _unused2: [20]u8 = @import("std").mem.zeroes([20]u8),
    pub const fclose = __root.fclose;
    pub const fflush = __root.fflush;
    pub const fflush_unlocked = __root.fflush_unlocked;
    pub const setbuf = __root.setbuf;
    pub const setvbuf = __root.setvbuf;
    pub const setbuffer = __root.setbuffer;
    pub const setlinebuf = __root.setlinebuf;
    pub const fprintf = __root.fprintf;
    pub const vfprintf = __root.vfprintf;
    pub const fscanf = __root.fscanf;
    pub const vfscanf = __root.vfscanf;
    pub const fgetc = __root.fgetc;
    pub const getc = __root.getc;
    pub const getc_unlocked = __root.getc_unlocked;
    pub const fgetc_unlocked = __root.fgetc_unlocked;
    pub const getw = __root.getw;
    pub const fseek = __root.fseek;
    pub const ftell = __root.ftell;
    pub const rewind = __root.rewind;
    pub const fseeko = __root.fseeko;
    pub const ftello = __root.ftello;
    pub const fgetpos = __root.fgetpos;
    pub const fsetpos = __root.fsetpos;
    pub const fseeko64 = __root.fseeko64;
    pub const ftello64 = __root.ftello64;
    pub const fgetpos64 = __root.fgetpos64;
    pub const fsetpos64 = __root.fsetpos64;
    pub const clearerr = __root.clearerr;
    pub const feof = __root.feof;
    pub const ferror = __root.ferror;
    pub const clearerr_unlocked = __root.clearerr_unlocked;
    pub const feof_unlocked = __root.feof_unlocked;
    pub const ferror_unlocked = __root.ferror_unlocked;
    pub const fileno = __root.fileno;
    pub const fileno_unlocked = __root.fileno_unlocked;
    pub const pclose = __root.pclose;
    pub const flockfile = __root.flockfile;
    pub const ftrylockfile = __root.ftrylockfile;
    pub const funlockfile = __root.funlockfile;
    pub const __uflow = __root.__uflow;
    pub const __overflow = __root.__overflow;
    pub const unlocked = __root.fflush_unlocked;
    pub const uflow = __root.__uflow;
    pub const overflow = __root.__overflow;
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const cookie_read_function_t = fn (__cookie: ?*anyopaque, __buf: [*c]u8, __nbytes: usize) callconv(.c) __ssize_t;
pub const cookie_write_function_t = fn (__cookie: ?*anyopaque, __buf: [*c]const u8, __nbytes: usize) callconv(.c) __ssize_t;
pub const cookie_seek_function_t = fn (__cookie: ?*anyopaque, __pos: [*c]__off64_t, __w: c_int) callconv(.c) c_int;
pub const cookie_close_function_t = fn (__cookie: ?*anyopaque) callconv(.c) c_int;
pub const struct__IO_cookie_io_functions_t = extern struct {
    read: ?*const cookie_read_function_t = null,
    write: ?*const cookie_write_function_t = null,
    seek: ?*const cookie_seek_function_t = null,
    close: ?*const cookie_close_function_t = null,
};
pub const cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const off_t = __off_t;
pub const off64_t = __off64_t;
pub const fpos_t = __fpos_t;
pub const fpos64_t = __fpos64_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn renameat2(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8, __flags: c_uint) c_int;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpfile64() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fcloseall() c_int;
pub extern fn fopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fopen64(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen64(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fopencookie(noalias __magic_cookie: ?*anyopaque, noalias __modes: [*c]const u8, __io_funcs: cookie_io_functions_t) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn printf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sprintf(noalias __s: [*c]u8, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vprintf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vsprintf(noalias __s: [*c]u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn snprintf(noalias __s: [*c]u8, __maxlen: usize, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(noalias __s: [*c]u8, __maxlen: usize, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vasprintf(noalias __ptr: [*c][*c]u8, noalias __f: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn __asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_1) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn fgetc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar(__c: c_int) c_int;
pub extern fn fputc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar_unlocked(__c: c_int) c_int;
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn fgets_unlocked(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __s: [*c]FILE) usize;
pub extern fn fputs_unlocked(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn fseeko64(__stream: [*c]FILE, __off: __off64_t, __whence: c_int) c_int;
pub extern fn ftello64(__stream: [*c]FILE) __off64_t;
pub extern fn fgetpos64(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos64_t) c_int;
pub extern fn fsetpos64(__stream: [*c]FILE, __pos: [*c]const fpos64_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub extern fn feof_unlocked(__stream: [*c]FILE) c_int;
pub extern fn ferror_unlocked(__stream: [*c]FILE) c_int;
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn cuserid(__s: [*c]u8) [*c]u8;
pub const struct_obstack = opaque {
    pub const obstack_printf = __root.obstack_printf;
    pub const obstack_vprintf = __root.obstack_vprintf;
};
pub extern fn obstack_printf(noalias __obstack: ?*struct_obstack, noalias __format: [*c]const u8, ...) c_int;
pub extern fn obstack_vprintf(noalias __obstack: ?*struct_obstack, noalias __format: [*c]const u8, __args: [*c]struct___va_list_tag_1) c_int;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub const z_size_t = usize;
pub const Byte = u8;
pub const uInt = c_uint;
pub const uLong = c_ulong;
pub const Bytef = Byte;
pub const charf = u8;
pub const intf = c_int;
pub const uIntf = uInt;
pub const uLongf = uLong;
pub const voidpc = ?*const anyopaque;
pub const voidpf = ?*anyopaque;
pub const voidp = ?*anyopaque;
pub extern fn __sysconf(__name: c_int) c_long;
pub const z_crc_t = c_uint;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const ino64_t = __ino64_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const useconds_t = __useconds_t;
pub const suseconds_t = __suseconds_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_int;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.c) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @byteSwap(@as(__uint16_t, __bsx));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.c) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @bitCast(@as(c_int, @byteSwap(@as(c_int, @bitCast(@as(c_uint, @truncate(__bsx)))))));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.c) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @bitCast(@as(c_long, @byteSwap(@as(c_long, @bitCast(@as(c_ulong, @truncate(__bsx)))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.c) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.c) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.c) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t = 0,
    tv_usec: __suseconds_t = 0,
    pub const gettimeofday = __root.gettimeofday;
    pub const settimeofday = __root.settimeofday;
    pub const adjtime = __root.adjtime;
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t = 0,
    tv_nsec: __syscall_slong_t = 0,
    pub const nanosleep = __root.nanosleep;
    pub const timespec_get = __root.timespec_get;
    pub const timespec_getres = __root.timespec_getres;
    pub const get = __root.timespec_get;
    pub const getres = __root.timespec_getres;
};
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
    pub const process_chat_connections = __root.process_chat_connections;
    pub const connections = __root.process_chat_connections;
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
pub const blkcnt64_t = __blkcnt64_t;
pub const fsblkcnt64_t = __fsblkcnt64_t;
pub const fsfilcnt64_t = __fsfilcnt64_t;
const struct_unnamed_3 = extern struct {
    __low: c_uint = 0,
    __high: c_uint = 0,
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_3,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = null,
    __next: [*c]struct___pthread_internal_list = null,
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = null,
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int = 0,
    __count: c_uint = 0,
    __owner: c_int = 0,
    __nusers: c_uint = 0,
    __kind: c_int = 0,
    __spins: c_short = 0,
    __elision: c_short = 0,
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint = 0,
    __writers: c_uint = 0,
    __wrphase_futex: c_uint = 0,
    __writers_futex: c_uint = 0,
    __pad3: c_uint = 0,
    __pad4: c_uint = 0,
    __cur_writer: c_int = 0,
    __shared: c_int = 0,
    __rwelision: i8 = 0,
    __pad1: [7]u8 = @import("std").mem.zeroes([7]u8),
    __pad2: c_ulong = 0,
    __flags: c_uint = 0,
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g1_start: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g_refs: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = 0,
    __wrefs: c_uint = 0,
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int = 0,
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const socklen_t = __socklen_t;
pub extern fn access(__name: [*c]const u8, __type: c_int) c_int;
pub extern fn euidaccess(__name: [*c]const u8, __type: c_int) c_int;
pub extern fn eaccess(__name: [*c]const u8, __type: c_int) c_int;
pub extern fn execveat(__fd: c_int, __path: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8, __flags: c_int) c_int;
pub extern fn faccessat(__fd: c_int, __file: [*c]const u8, __type: c_int, __flag: c_int) c_int;
pub extern fn lseek(__fd: c_int, __offset: __off_t, __whence: c_int) __off_t;
pub extern fn lseek64(__fd: c_int, __offset: __off64_t, __whence: c_int) __off64_t;
pub extern fn close(__fd: c_int) c_int;
pub extern fn closefrom(__lowfd: c_int) void;
pub extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize) isize;
pub extern fn write(__fd: c_int, __buf: ?*const anyopaque, __n: usize) isize;
pub extern fn pread(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize, __offset: __off_t) isize;
pub extern fn pwrite(__fd: c_int, __buf: ?*const anyopaque, __n: usize, __offset: __off_t) isize;
pub extern fn pread64(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize, __offset: __off64_t) isize;
pub extern fn pwrite64(__fd: c_int, __buf: ?*const anyopaque, __n: usize, __offset: __off64_t) isize;
pub extern fn pipe(__pipedes: [*c]c_int) c_int;
pub extern fn pipe2(__pipedes: [*c]c_int, __flags: c_int) c_int;
pub extern fn alarm(__seconds: c_uint) c_uint;
pub extern fn sleep(__seconds: c_uint) c_uint;
pub extern fn ualarm(__value: __useconds_t, __interval: __useconds_t) __useconds_t;
pub extern fn usleep(__useconds: __useconds_t) c_int;
pub extern fn pause() c_int;
pub extern fn chown(__file: [*c]const u8, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn fchown(__fd: c_int, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn lchown(__file: [*c]const u8, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn fchownat(__fd: c_int, __file: [*c]const u8, __owner: __uid_t, __group: __gid_t, __flag: c_int) c_int;
pub extern fn chdir(__path: [*c]const u8) c_int;
pub extern fn fchdir(__fd: c_int) c_int;
pub extern fn getcwd(__buf: [*c]u8, __size: usize) [*c]u8;
pub extern fn get_current_dir_name() [*c]u8;
pub extern fn getwd(__buf: [*c]u8) [*c]u8;
pub extern fn dup(__fd: c_int) c_int;
pub extern fn dup2(__fd: c_int, __fd2: c_int) c_int;
pub extern fn dup3(__fd: c_int, __fd2: c_int, __flags: c_int) c_int;
pub extern var __environ: [*c][*c]u8;
pub extern var environ: [*c][*c]u8;
pub extern fn execve(__path: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn fexecve(__fd: c_int, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn execv(__path: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
pub extern fn execle(__path: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn execl(__path: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn execvp(__file: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
pub extern fn execlp(__file: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn execvpe(__file: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn nice(__inc: c_int) c_int;
pub extern fn _exit(__status: c_int) noreturn;
pub const _PC_LINK_MAX: c_int = 0;
pub const _PC_MAX_CANON: c_int = 1;
pub const _PC_MAX_INPUT: c_int = 2;
pub const _PC_NAME_MAX: c_int = 3;
pub const _PC_PATH_MAX: c_int = 4;
pub const _PC_PIPE_BUF: c_int = 5;
pub const _PC_CHOWN_RESTRICTED: c_int = 6;
pub const _PC_NO_TRUNC: c_int = 7;
pub const _PC_VDISABLE: c_int = 8;
pub const _PC_SYNC_IO: c_int = 9;
pub const _PC_ASYNC_IO: c_int = 10;
pub const _PC_PRIO_IO: c_int = 11;
pub const _PC_SOCK_MAXBUF: c_int = 12;
pub const _PC_FILESIZEBITS: c_int = 13;
pub const _PC_REC_INCR_XFER_SIZE: c_int = 14;
pub const _PC_REC_MAX_XFER_SIZE: c_int = 15;
pub const _PC_REC_MIN_XFER_SIZE: c_int = 16;
pub const _PC_REC_XFER_ALIGN: c_int = 17;
pub const _PC_ALLOC_SIZE_MIN: c_int = 18;
pub const _PC_SYMLINK_MAX: c_int = 19;
pub const _PC_2_SYMLINKS: c_int = 20;
const enum_unnamed_4 = c_uint;
pub const _SC_ARG_MAX: c_int = 0;
pub const _SC_CHILD_MAX: c_int = 1;
pub const _SC_CLK_TCK: c_int = 2;
pub const _SC_NGROUPS_MAX: c_int = 3;
pub const _SC_OPEN_MAX: c_int = 4;
pub const _SC_STREAM_MAX: c_int = 5;
pub const _SC_TZNAME_MAX: c_int = 6;
pub const _SC_JOB_CONTROL: c_int = 7;
pub const _SC_SAVED_IDS: c_int = 8;
pub const _SC_REALTIME_SIGNALS: c_int = 9;
pub const _SC_PRIORITY_SCHEDULING: c_int = 10;
pub const _SC_TIMERS: c_int = 11;
pub const _SC_ASYNCHRONOUS_IO: c_int = 12;
pub const _SC_PRIORITIZED_IO: c_int = 13;
pub const _SC_SYNCHRONIZED_IO: c_int = 14;
pub const _SC_FSYNC: c_int = 15;
pub const _SC_MAPPED_FILES: c_int = 16;
pub const _SC_MEMLOCK: c_int = 17;
pub const _SC_MEMLOCK_RANGE: c_int = 18;
pub const _SC_MEMORY_PROTECTION: c_int = 19;
pub const _SC_MESSAGE_PASSING: c_int = 20;
pub const _SC_SEMAPHORES: c_int = 21;
pub const _SC_SHARED_MEMORY_OBJECTS: c_int = 22;
pub const _SC_AIO_LISTIO_MAX: c_int = 23;
pub const _SC_AIO_MAX: c_int = 24;
pub const _SC_AIO_PRIO_DELTA_MAX: c_int = 25;
pub const _SC_DELAYTIMER_MAX: c_int = 26;
pub const _SC_MQ_OPEN_MAX: c_int = 27;
pub const _SC_MQ_PRIO_MAX: c_int = 28;
pub const _SC_VERSION: c_int = 29;
pub const _SC_PAGESIZE: c_int = 30;
pub const _SC_RTSIG_MAX: c_int = 31;
pub const _SC_SEM_NSEMS_MAX: c_int = 32;
pub const _SC_SEM_VALUE_MAX: c_int = 33;
pub const _SC_SIGQUEUE_MAX: c_int = 34;
pub const _SC_TIMER_MAX: c_int = 35;
pub const _SC_BC_BASE_MAX: c_int = 36;
pub const _SC_BC_DIM_MAX: c_int = 37;
pub const _SC_BC_SCALE_MAX: c_int = 38;
pub const _SC_BC_STRING_MAX: c_int = 39;
pub const _SC_COLL_WEIGHTS_MAX: c_int = 40;
pub const _SC_EQUIV_CLASS_MAX: c_int = 41;
pub const _SC_EXPR_NEST_MAX: c_int = 42;
pub const _SC_LINE_MAX: c_int = 43;
pub const _SC_RE_DUP_MAX: c_int = 44;
pub const _SC_CHARCLASS_NAME_MAX: c_int = 45;
pub const _SC_2_VERSION: c_int = 46;
pub const _SC_2_C_BIND: c_int = 47;
pub const _SC_2_C_DEV: c_int = 48;
pub const _SC_2_FORT_DEV: c_int = 49;
pub const _SC_2_FORT_RUN: c_int = 50;
pub const _SC_2_SW_DEV: c_int = 51;
pub const _SC_2_LOCALEDEF: c_int = 52;
pub const _SC_PII: c_int = 53;
pub const _SC_PII_XTI: c_int = 54;
pub const _SC_PII_SOCKET: c_int = 55;
pub const _SC_PII_INTERNET: c_int = 56;
pub const _SC_PII_OSI: c_int = 57;
pub const _SC_POLL: c_int = 58;
pub const _SC_SELECT: c_int = 59;
pub const _SC_UIO_MAXIOV: c_int = 60;
pub const _SC_IOV_MAX: c_int = 60;
pub const _SC_PII_INTERNET_STREAM: c_int = 61;
pub const _SC_PII_INTERNET_DGRAM: c_int = 62;
pub const _SC_PII_OSI_COTS: c_int = 63;
pub const _SC_PII_OSI_CLTS: c_int = 64;
pub const _SC_PII_OSI_M: c_int = 65;
pub const _SC_T_IOV_MAX: c_int = 66;
pub const _SC_THREADS: c_int = 67;
pub const _SC_THREAD_SAFE_FUNCTIONS: c_int = 68;
pub const _SC_GETGR_R_SIZE_MAX: c_int = 69;
pub const _SC_GETPW_R_SIZE_MAX: c_int = 70;
pub const _SC_LOGIN_NAME_MAX: c_int = 71;
pub const _SC_TTY_NAME_MAX: c_int = 72;
pub const _SC_THREAD_DESTRUCTOR_ITERATIONS: c_int = 73;
pub const _SC_THREAD_KEYS_MAX: c_int = 74;
pub const _SC_THREAD_STACK_MIN: c_int = 75;
pub const _SC_THREAD_THREADS_MAX: c_int = 76;
pub const _SC_THREAD_ATTR_STACKADDR: c_int = 77;
pub const _SC_THREAD_ATTR_STACKSIZE: c_int = 78;
pub const _SC_THREAD_PRIORITY_SCHEDULING: c_int = 79;
pub const _SC_THREAD_PRIO_INHERIT: c_int = 80;
pub const _SC_THREAD_PRIO_PROTECT: c_int = 81;
pub const _SC_THREAD_PROCESS_SHARED: c_int = 82;
pub const _SC_NPROCESSORS_CONF: c_int = 83;
pub const _SC_NPROCESSORS_ONLN: c_int = 84;
pub const _SC_PHYS_PAGES: c_int = 85;
pub const _SC_AVPHYS_PAGES: c_int = 86;
pub const _SC_ATEXIT_MAX: c_int = 87;
pub const _SC_PASS_MAX: c_int = 88;
pub const _SC_XOPEN_VERSION: c_int = 89;
pub const _SC_XOPEN_XCU_VERSION: c_int = 90;
pub const _SC_XOPEN_UNIX: c_int = 91;
pub const _SC_XOPEN_CRYPT: c_int = 92;
pub const _SC_XOPEN_ENH_I18N: c_int = 93;
pub const _SC_XOPEN_SHM: c_int = 94;
pub const _SC_2_CHAR_TERM: c_int = 95;
pub const _SC_2_C_VERSION: c_int = 96;
pub const _SC_2_UPE: c_int = 97;
pub const _SC_XOPEN_XPG2: c_int = 98;
pub const _SC_XOPEN_XPG3: c_int = 99;
pub const _SC_XOPEN_XPG4: c_int = 100;
pub const _SC_CHAR_BIT: c_int = 101;
pub const _SC_CHAR_MAX: c_int = 102;
pub const _SC_CHAR_MIN: c_int = 103;
pub const _SC_INT_MAX: c_int = 104;
pub const _SC_INT_MIN: c_int = 105;
pub const _SC_LONG_BIT: c_int = 106;
pub const _SC_WORD_BIT: c_int = 107;
pub const _SC_MB_LEN_MAX: c_int = 108;
pub const _SC_NZERO: c_int = 109;
pub const _SC_SSIZE_MAX: c_int = 110;
pub const _SC_SCHAR_MAX: c_int = 111;
pub const _SC_SCHAR_MIN: c_int = 112;
pub const _SC_SHRT_MAX: c_int = 113;
pub const _SC_SHRT_MIN: c_int = 114;
pub const _SC_UCHAR_MAX: c_int = 115;
pub const _SC_UINT_MAX: c_int = 116;
pub const _SC_ULONG_MAX: c_int = 117;
pub const _SC_USHRT_MAX: c_int = 118;
pub const _SC_NL_ARGMAX: c_int = 119;
pub const _SC_NL_LANGMAX: c_int = 120;
pub const _SC_NL_MSGMAX: c_int = 121;
pub const _SC_NL_NMAX: c_int = 122;
pub const _SC_NL_SETMAX: c_int = 123;
pub const _SC_NL_TEXTMAX: c_int = 124;
pub const _SC_XBS5_ILP32_OFF32: c_int = 125;
pub const _SC_XBS5_ILP32_OFFBIG: c_int = 126;
pub const _SC_XBS5_LP64_OFF64: c_int = 127;
pub const _SC_XBS5_LPBIG_OFFBIG: c_int = 128;
pub const _SC_XOPEN_LEGACY: c_int = 129;
pub const _SC_XOPEN_REALTIME: c_int = 130;
pub const _SC_XOPEN_REALTIME_THREADS: c_int = 131;
pub const _SC_ADVISORY_INFO: c_int = 132;
pub const _SC_BARRIERS: c_int = 133;
pub const _SC_BASE: c_int = 134;
pub const _SC_C_LANG_SUPPORT: c_int = 135;
pub const _SC_C_LANG_SUPPORT_R: c_int = 136;
pub const _SC_CLOCK_SELECTION: c_int = 137;
pub const _SC_CPUTIME: c_int = 138;
pub const _SC_THREAD_CPUTIME: c_int = 139;
pub const _SC_DEVICE_IO: c_int = 140;
pub const _SC_DEVICE_SPECIFIC: c_int = 141;
pub const _SC_DEVICE_SPECIFIC_R: c_int = 142;
pub const _SC_FD_MGMT: c_int = 143;
pub const _SC_FIFO: c_int = 144;
pub const _SC_PIPE: c_int = 145;
pub const _SC_FILE_ATTRIBUTES: c_int = 146;
pub const _SC_FILE_LOCKING: c_int = 147;
pub const _SC_FILE_SYSTEM: c_int = 148;
pub const _SC_MONOTONIC_CLOCK: c_int = 149;
pub const _SC_MULTI_PROCESS: c_int = 150;
pub const _SC_SINGLE_PROCESS: c_int = 151;
pub const _SC_NETWORKING: c_int = 152;
pub const _SC_READER_WRITER_LOCKS: c_int = 153;
pub const _SC_SPIN_LOCKS: c_int = 154;
pub const _SC_REGEXP: c_int = 155;
pub const _SC_REGEX_VERSION: c_int = 156;
pub const _SC_SHELL: c_int = 157;
pub const _SC_SIGNALS: c_int = 158;
pub const _SC_SPAWN: c_int = 159;
pub const _SC_SPORADIC_SERVER: c_int = 160;
pub const _SC_THREAD_SPORADIC_SERVER: c_int = 161;
pub const _SC_SYSTEM_DATABASE: c_int = 162;
pub const _SC_SYSTEM_DATABASE_R: c_int = 163;
pub const _SC_TIMEOUTS: c_int = 164;
pub const _SC_TYPED_MEMORY_OBJECTS: c_int = 165;
pub const _SC_USER_GROUPS: c_int = 166;
pub const _SC_USER_GROUPS_R: c_int = 167;
pub const _SC_2_PBS: c_int = 168;
pub const _SC_2_PBS_ACCOUNTING: c_int = 169;
pub const _SC_2_PBS_LOCATE: c_int = 170;
pub const _SC_2_PBS_MESSAGE: c_int = 171;
pub const _SC_2_PBS_TRACK: c_int = 172;
pub const _SC_SYMLOOP_MAX: c_int = 173;
pub const _SC_STREAMS: c_int = 174;
pub const _SC_2_PBS_CHECKPOINT: c_int = 175;
pub const _SC_V6_ILP32_OFF32: c_int = 176;
pub const _SC_V6_ILP32_OFFBIG: c_int = 177;
pub const _SC_V6_LP64_OFF64: c_int = 178;
pub const _SC_V6_LPBIG_OFFBIG: c_int = 179;
pub const _SC_HOST_NAME_MAX: c_int = 180;
pub const _SC_TRACE: c_int = 181;
pub const _SC_TRACE_EVENT_FILTER: c_int = 182;
pub const _SC_TRACE_INHERIT: c_int = 183;
pub const _SC_TRACE_LOG: c_int = 184;
pub const _SC_LEVEL1_ICACHE_SIZE: c_int = 185;
pub const _SC_LEVEL1_ICACHE_ASSOC: c_int = 186;
pub const _SC_LEVEL1_ICACHE_LINESIZE: c_int = 187;
pub const _SC_LEVEL1_DCACHE_SIZE: c_int = 188;
pub const _SC_LEVEL1_DCACHE_ASSOC: c_int = 189;
pub const _SC_LEVEL1_DCACHE_LINESIZE: c_int = 190;
pub const _SC_LEVEL2_CACHE_SIZE: c_int = 191;
pub const _SC_LEVEL2_CACHE_ASSOC: c_int = 192;
pub const _SC_LEVEL2_CACHE_LINESIZE: c_int = 193;
pub const _SC_LEVEL3_CACHE_SIZE: c_int = 194;
pub const _SC_LEVEL3_CACHE_ASSOC: c_int = 195;
pub const _SC_LEVEL3_CACHE_LINESIZE: c_int = 196;
pub const _SC_LEVEL4_CACHE_SIZE: c_int = 197;
pub const _SC_LEVEL4_CACHE_ASSOC: c_int = 198;
pub const _SC_LEVEL4_CACHE_LINESIZE: c_int = 199;
pub const _SC_IPV6: c_int = 235;
pub const _SC_RAW_SOCKETS: c_int = 236;
pub const _SC_V7_ILP32_OFF32: c_int = 237;
pub const _SC_V7_ILP32_OFFBIG: c_int = 238;
pub const _SC_V7_LP64_OFF64: c_int = 239;
pub const _SC_V7_LPBIG_OFFBIG: c_int = 240;
pub const _SC_SS_REPL_MAX: c_int = 241;
pub const _SC_TRACE_EVENT_NAME_MAX: c_int = 242;
pub const _SC_TRACE_NAME_MAX: c_int = 243;
pub const _SC_TRACE_SYS_MAX: c_int = 244;
pub const _SC_TRACE_USER_EVENT_MAX: c_int = 245;
pub const _SC_XOPEN_STREAMS: c_int = 246;
pub const _SC_THREAD_ROBUST_PRIO_INHERIT: c_int = 247;
pub const _SC_THREAD_ROBUST_PRIO_PROTECT: c_int = 248;
pub const _SC_MINSIGSTKSZ: c_int = 249;
pub const _SC_SIGSTKSZ: c_int = 250;
const enum_unnamed_5 = c_uint;
pub const _CS_PATH: c_int = 0;
pub const _CS_V6_WIDTH_RESTRICTED_ENVS: c_int = 1;
pub const _CS_GNU_LIBC_VERSION: c_int = 2;
pub const _CS_GNU_LIBPTHREAD_VERSION: c_int = 3;
pub const _CS_V5_WIDTH_RESTRICTED_ENVS: c_int = 4;
pub const _CS_V7_WIDTH_RESTRICTED_ENVS: c_int = 5;
pub const _CS_LFS_CFLAGS: c_int = 1000;
pub const _CS_LFS_LDFLAGS: c_int = 1001;
pub const _CS_LFS_LIBS: c_int = 1002;
pub const _CS_LFS_LINTFLAGS: c_int = 1003;
pub const _CS_LFS64_CFLAGS: c_int = 1004;
pub const _CS_LFS64_LDFLAGS: c_int = 1005;
pub const _CS_LFS64_LIBS: c_int = 1006;
pub const _CS_LFS64_LINTFLAGS: c_int = 1007;
pub const _CS_XBS5_ILP32_OFF32_CFLAGS: c_int = 1100;
pub const _CS_XBS5_ILP32_OFF32_LDFLAGS: c_int = 1101;
pub const _CS_XBS5_ILP32_OFF32_LIBS: c_int = 1102;
pub const _CS_XBS5_ILP32_OFF32_LINTFLAGS: c_int = 1103;
pub const _CS_XBS5_ILP32_OFFBIG_CFLAGS: c_int = 1104;
pub const _CS_XBS5_ILP32_OFFBIG_LDFLAGS: c_int = 1105;
pub const _CS_XBS5_ILP32_OFFBIG_LIBS: c_int = 1106;
pub const _CS_XBS5_ILP32_OFFBIG_LINTFLAGS: c_int = 1107;
pub const _CS_XBS5_LP64_OFF64_CFLAGS: c_int = 1108;
pub const _CS_XBS5_LP64_OFF64_LDFLAGS: c_int = 1109;
pub const _CS_XBS5_LP64_OFF64_LIBS: c_int = 1110;
pub const _CS_XBS5_LP64_OFF64_LINTFLAGS: c_int = 1111;
pub const _CS_XBS5_LPBIG_OFFBIG_CFLAGS: c_int = 1112;
pub const _CS_XBS5_LPBIG_OFFBIG_LDFLAGS: c_int = 1113;
pub const _CS_XBS5_LPBIG_OFFBIG_LIBS: c_int = 1114;
pub const _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS: c_int = 1115;
pub const _CS_POSIX_V6_ILP32_OFF32_CFLAGS: c_int = 1116;
pub const _CS_POSIX_V6_ILP32_OFF32_LDFLAGS: c_int = 1117;
pub const _CS_POSIX_V6_ILP32_OFF32_LIBS: c_int = 1118;
pub const _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS: c_int = 1119;
pub const _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS: c_int = 1120;
pub const _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS: c_int = 1121;
pub const _CS_POSIX_V6_ILP32_OFFBIG_LIBS: c_int = 1122;
pub const _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS: c_int = 1123;
pub const _CS_POSIX_V6_LP64_OFF64_CFLAGS: c_int = 1124;
pub const _CS_POSIX_V6_LP64_OFF64_LDFLAGS: c_int = 1125;
pub const _CS_POSIX_V6_LP64_OFF64_LIBS: c_int = 1126;
pub const _CS_POSIX_V6_LP64_OFF64_LINTFLAGS: c_int = 1127;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS: c_int = 1128;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS: c_int = 1129;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LIBS: c_int = 1130;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS: c_int = 1131;
pub const _CS_POSIX_V7_ILP32_OFF32_CFLAGS: c_int = 1132;
pub const _CS_POSIX_V7_ILP32_OFF32_LDFLAGS: c_int = 1133;
pub const _CS_POSIX_V7_ILP32_OFF32_LIBS: c_int = 1134;
pub const _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS: c_int = 1135;
pub const _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS: c_int = 1136;
pub const _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS: c_int = 1137;
pub const _CS_POSIX_V7_ILP32_OFFBIG_LIBS: c_int = 1138;
pub const _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS: c_int = 1139;
pub const _CS_POSIX_V7_LP64_OFF64_CFLAGS: c_int = 1140;
pub const _CS_POSIX_V7_LP64_OFF64_LDFLAGS: c_int = 1141;
pub const _CS_POSIX_V7_LP64_OFF64_LIBS: c_int = 1142;
pub const _CS_POSIX_V7_LP64_OFF64_LINTFLAGS: c_int = 1143;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS: c_int = 1144;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS: c_int = 1145;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LIBS: c_int = 1146;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS: c_int = 1147;
pub const _CS_V6_ENV: c_int = 1148;
pub const _CS_V7_ENV: c_int = 1149;
const enum_unnamed_6 = c_uint;
pub extern fn pathconf(__path: [*c]const u8, __name: c_int) c_long;
pub extern fn fpathconf(__fd: c_int, __name: c_int) c_long;
pub extern fn sysconf(__name: c_int) c_long;
pub extern fn confstr(__name: c_int, __buf: [*c]u8, __len: usize) usize;
pub extern fn getpid() __pid_t;
pub extern fn getppid() __pid_t;
pub extern fn getpgrp() __pid_t;
pub extern fn __getpgid(__pid: __pid_t) __pid_t;
pub extern fn getpgid(__pid: __pid_t) __pid_t;
pub extern fn setpgid(__pid: __pid_t, __pgid: __pid_t) c_int;
pub extern fn setpgrp() c_int;
pub extern fn setsid() __pid_t;
pub extern fn getsid(__pid: __pid_t) __pid_t;
pub extern fn getuid() __uid_t;
pub extern fn geteuid() __uid_t;
pub extern fn getgid() __gid_t;
pub extern fn getegid() __gid_t;
pub extern fn getgroups(__size: c_int, __list: [*c]__gid_t) c_int;
pub extern fn group_member(__gid: __gid_t) c_int;
pub extern fn setuid(__uid: __uid_t) c_int;
pub extern fn setreuid(__ruid: __uid_t, __euid: __uid_t) c_int;
pub extern fn seteuid(__uid: __uid_t) c_int;
pub extern fn setgid(__gid: __gid_t) c_int;
pub extern fn setregid(__rgid: __gid_t, __egid: __gid_t) c_int;
pub extern fn setegid(__gid: __gid_t) c_int;
pub extern fn getresuid(__ruid: [*c]__uid_t, __euid: [*c]__uid_t, __suid: [*c]__uid_t) c_int;
pub extern fn getresgid(__rgid: [*c]__gid_t, __egid: [*c]__gid_t, __sgid: [*c]__gid_t) c_int;
pub extern fn setresuid(__ruid: __uid_t, __euid: __uid_t, __suid: __uid_t) c_int;
pub extern fn setresgid(__rgid: __gid_t, __egid: __gid_t, __sgid: __gid_t) c_int;
pub extern fn fork() __pid_t;
pub extern fn vfork() __pid_t;
pub extern fn _Fork() __pid_t;
pub extern fn ttyname(__fd: c_int) [*c]u8;
pub extern fn ttyname_r(__fd: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn isatty(__fd: c_int) c_int;
pub extern fn ttyslot() c_int;
pub extern fn link(__from: [*c]const u8, __to: [*c]const u8) c_int;
pub extern fn linkat(__fromfd: c_int, __from: [*c]const u8, __tofd: c_int, __to: [*c]const u8, __flags: c_int) c_int;
pub extern fn symlink(__from: [*c]const u8, __to: [*c]const u8) c_int;
pub extern fn readlink(noalias __path: [*c]const u8, noalias __buf: [*c]u8, __len: usize) isize;
pub extern fn symlinkat(__from: [*c]const u8, __tofd: c_int, __to: [*c]const u8) c_int;
pub extern fn readlinkat(__fd: c_int, noalias __path: [*c]const u8, noalias __buf: [*c]u8, __len: usize) isize;
pub extern fn unlink(__name: [*c]const u8) c_int;
pub extern fn unlinkat(__fd: c_int, __name: [*c]const u8, __flag: c_int) c_int;
pub extern fn rmdir(__path: [*c]const u8) c_int;
pub extern fn tcgetpgrp(__fd: c_int) __pid_t;
pub extern fn tcsetpgrp(__fd: c_int, __pgrp_id: __pid_t) c_int;
pub extern fn getlogin() [*c]u8;
pub extern fn getlogin_r(__name: [*c]u8, __name_len: usize) c_int;
pub extern fn setlogin(__name: [*c]const u8) c_int;
pub extern var optarg: [*c]u8;
pub extern var optind: c_int;
pub extern var opterr: c_int;
pub extern var optopt: c_int;
pub extern fn getopt(___argc: c_int, ___argv: [*c]const [*c]u8, __shortopts: [*c]const u8) c_int;
pub extern fn gethostname(__name: [*c]u8, __len: usize) c_int;
pub extern fn sethostname(__name: [*c]const u8, __len: usize) c_int;
pub extern fn sethostid(__id: c_long) c_int;
pub extern fn getdomainname(__name: [*c]u8, __len: usize) c_int;
pub extern fn setdomainname(__name: [*c]const u8, __len: usize) c_int;
pub extern fn vhangup() c_int;
pub extern fn revoke(__file: [*c]const u8) c_int;
pub extern fn profil(__sample_buffer: [*c]c_ushort, __size: usize, __offset: usize, __scale: c_uint) c_int;
pub extern fn acct(__name: [*c]const u8) c_int;
pub extern fn getusershell() [*c]u8;
pub extern fn endusershell() void;
pub extern fn setusershell() void;
pub extern fn daemon(__nochdir: c_int, __noclose: c_int) c_int;
pub extern fn chroot(__path: [*c]const u8) c_int;
pub extern fn getpass(__prompt: [*c]const u8) [*c]u8;
pub extern fn fsync(__fd: c_int) c_int;
pub extern fn syncfs(__fd: c_int) c_int;
pub extern fn gethostid() c_long;
pub extern fn sync() void;
pub extern fn getpagesize() c_int;
pub extern fn getdtablesize() c_int;
pub extern fn truncate(__file: [*c]const u8, __length: __off_t) c_int;
pub extern fn truncate64(__file: [*c]const u8, __length: __off64_t) c_int;
pub extern fn ftruncate(__fd: c_int, __length: __off_t) c_int;
pub extern fn ftruncate64(__fd: c_int, __length: __off64_t) c_int;
pub extern fn brk(__addr: ?*anyopaque) c_int;
pub extern fn sbrk(__delta: isize) ?*anyopaque;
pub extern fn syscall(__sysno: c_long, ...) c_long;
pub extern fn lockf(__fd: c_int, __cmd: c_int, __len: __off_t) c_int;
pub extern fn lockf64(__fd: c_int, __cmd: c_int, __len: __off64_t) c_int;
pub extern fn copy_file_range(__infd: c_int, __pinoff: [*c]__off64_t, __outfd: c_int, __poutoff: [*c]__off64_t, __length: usize, __flags: c_uint) isize;
pub extern fn fdatasync(__fildes: c_int) c_int;
pub extern fn crypt(__key: [*c]const u8, __salt: [*c]const u8) [*c]u8;
pub extern fn swab(noalias __from: ?*const anyopaque, noalias __to: ?*anyopaque, __n: isize) void;
pub extern fn getentropy(__buffer: ?*anyopaque, __length: usize) c_int;
pub extern fn close_range(__fd: c_uint, __max_fd: c_uint, __flags: c_int) c_int;
pub extern fn gettid() __pid_t;
pub const alloc_func = ?*const fn (@"opaque": voidpf, items: uInt, size: uInt) callconv(.c) voidpf;
pub const free_func = ?*const fn (@"opaque": voidpf, address: voidpf) callconv(.c) void;
pub const struct_internal_state = opaque {};
pub const struct_z_stream_s = extern struct {
    next_in: [*c]Bytef = null,
    avail_in: uInt = 0,
    total_in: uLong = 0,
    next_out: [*c]Bytef = null,
    avail_out: uInt = 0,
    total_out: uLong = 0,
    msg: [*c]u8 = null,
    state: ?*struct_internal_state = null,
    zalloc: alloc_func = null,
    zfree: free_func = null,
    @"opaque": voidpf = null,
    data_type: c_int = 0,
    adler: uLong = 0,
    reserved: uLong = 0,
    pub const deflate = __root.deflate;
    pub const deflateEnd = __root.deflateEnd;
    pub const inflate = __root.inflate;
    pub const inflateEnd = __root.inflateEnd;
    pub const deflateSetDictionary = __root.deflateSetDictionary;
    pub const deflateGetDictionary = __root.deflateGetDictionary;
    pub const deflateCopy = __root.deflateCopy;
    pub const deflateReset = __root.deflateReset;
    pub const deflateParams = __root.deflateParams;
    pub const deflateTune = __root.deflateTune;
    pub const deflateBound = __root.deflateBound;
    pub const deflatePending = __root.deflatePending;
    pub const deflatePrime = __root.deflatePrime;
    pub const deflateSetHeader = __root.deflateSetHeader;
    pub const inflateSetDictionary = __root.inflateSetDictionary;
    pub const inflateGetDictionary = __root.inflateGetDictionary;
    pub const inflateSync = __root.inflateSync;
    pub const inflateCopy = __root.inflateCopy;
    pub const inflateReset = __root.inflateReset;
    pub const inflateReset2 = __root.inflateReset2;
    pub const inflatePrime = __root.inflatePrime;
    pub const inflateMark = __root.inflateMark;
    pub const inflateGetHeader = __root.inflateGetHeader;
    pub const inflateBack = __root.inflateBack;
    pub const inflateBackEnd = __root.inflateBackEnd;
    pub const deflateInit_ = __root.deflateInit_;
    pub const inflateInit_ = __root.inflateInit_;
    pub const deflateInit2_ = __root.deflateInit2_;
    pub const inflateInit2_ = __root.inflateInit2_;
    pub const inflateBackInit_ = __root.inflateBackInit_;
    pub const inflateSyncPoint = __root.inflateSyncPoint;
    pub const inflateUndermine = __root.inflateUndermine;
    pub const inflateValidate = __root.inflateValidate;
    pub const inflateCodesUsed = __root.inflateCodesUsed;
    pub const inflateResetKeep = __root.inflateResetKeep;
    pub const deflateResetKeep = __root.deflateResetKeep;
};
pub const z_stream = struct_z_stream_s;
pub const z_streamp = [*c]z_stream;
pub const struct_gz_header_s = extern struct {
    text: c_int = 0,
    time: uLong = 0,
    xflags: c_int = 0,
    os: c_int = 0,
    extra: [*c]Bytef = null,
    extra_len: uInt = 0,
    extra_max: uInt = 0,
    name: [*c]Bytef = null,
    name_max: uInt = 0,
    comment: [*c]Bytef = null,
    comm_max: uInt = 0,
    hcrc: c_int = 0,
    done: c_int = 0,
};
pub const gz_header = struct_gz_header_s;
pub const gz_headerp = [*c]gz_header;
pub extern fn zlibVersion() [*c]const u8;
pub extern fn deflate(strm: z_streamp, flush: c_int) c_int;
pub extern fn deflateEnd(strm: z_streamp) c_int;
pub extern fn inflate(strm: z_streamp, flush: c_int) c_int;
pub extern fn inflateEnd(strm: z_streamp) c_int;
pub extern fn deflateSetDictionary(strm: z_streamp, dictionary: [*c]const Bytef, dictLength: uInt) c_int;
pub extern fn deflateGetDictionary(strm: z_streamp, dictionary: [*c]Bytef, dictLength: [*c]uInt) c_int;
pub extern fn deflateCopy(dest: z_streamp, source: z_streamp) c_int;
pub extern fn deflateReset(strm: z_streamp) c_int;
pub extern fn deflateParams(strm: z_streamp, level: c_int, strategy: c_int) c_int;
pub extern fn deflateTune(strm: z_streamp, good_length: c_int, max_lazy: c_int, nice_length: c_int, max_chain: c_int) c_int;
pub extern fn deflateBound(strm: z_streamp, sourceLen: uLong) uLong;
pub extern fn deflatePending(strm: z_streamp, pending: [*c]c_uint, bits: [*c]c_int) c_int;
pub extern fn deflatePrime(strm: z_streamp, bits: c_int, value: c_int) c_int;
pub extern fn deflateSetHeader(strm: z_streamp, head: gz_headerp) c_int;
pub extern fn inflateSetDictionary(strm: z_streamp, dictionary: [*c]const Bytef, dictLength: uInt) c_int;
pub extern fn inflateGetDictionary(strm: z_streamp, dictionary: [*c]Bytef, dictLength: [*c]uInt) c_int;
pub extern fn inflateSync(strm: z_streamp) c_int;
pub extern fn inflateCopy(dest: z_streamp, source: z_streamp) c_int;
pub extern fn inflateReset(strm: z_streamp) c_int;
pub extern fn inflateReset2(strm: z_streamp, windowBits: c_int) c_int;
pub extern fn inflatePrime(strm: z_streamp, bits: c_int, value: c_int) c_int;
pub extern fn inflateMark(strm: z_streamp) c_long;
pub extern fn inflateGetHeader(strm: z_streamp, head: gz_headerp) c_int;
pub const in_func = ?*const fn (?*anyopaque, [*c][*c]u8) callconv(.c) c_uint;
pub const out_func = ?*const fn (?*anyopaque, [*c]u8, c_uint) callconv(.c) c_int;
pub extern fn inflateBack(strm: z_streamp, in: in_func, in_desc: ?*anyopaque, out: out_func, out_desc: ?*anyopaque) c_int;
pub extern fn inflateBackEnd(strm: z_streamp) c_int;
pub extern fn zlibCompileFlags() uLong;
pub extern fn compress(dest: [*c]Bytef, destLen: [*c]uLongf, source: [*c]const Bytef, sourceLen: uLong) c_int;
pub extern fn compress2(dest: [*c]Bytef, destLen: [*c]uLongf, source: [*c]const Bytef, sourceLen: uLong, level: c_int) c_int;
pub extern fn compressBound(sourceLen: uLong) uLong;
pub extern fn uncompress(dest: [*c]Bytef, destLen: [*c]uLongf, source: [*c]const Bytef, sourceLen: uLong) c_int;
pub extern fn uncompress2(dest: [*c]Bytef, destLen: [*c]uLongf, source: [*c]const Bytef, sourceLen: [*c]uLong) c_int;
pub const struct_gzFile_s = extern struct {
    have: c_uint = 0,
    next: [*c]u8 = null,
    pos: off64_t = 0,
    pub const gzbuffer = __root.gzbuffer;
    pub const gzsetparams = __root.gzsetparams;
    pub const gzread = __root.gzread;
    pub const gzwrite = __root.gzwrite;
    pub const gzprintf = __root.gzprintf;
    pub const gzputs = __root.gzputs;
    pub const gzgets = __root.gzgets;
    pub const gzputc = __root.gzputc;
    pub const gzgetc = __root.gzgetc;
    pub const gzflush = __root.gzflush;
    pub const gzrewind = __root.gzrewind;
    pub const gzeof = __root.gzeof;
    pub const gzdirect = __root.gzdirect;
    pub const gzclose = __root.gzclose;
    pub const gzclose_r = __root.gzclose_r;
    pub const gzclose_w = __root.gzclose_w;
    pub const gzerror = __root.gzerror;
    pub const gzclearerr = __root.gzclearerr;
    pub const gzgetc_ = __root.gzgetc_;
    pub const gzseek64 = __root.gzseek64;
    pub const gztell64 = __root.gztell64;
    pub const gzoffset64 = __root.gzoffset64;
    pub const gzseek = __root.gzseek;
    pub const gztell = __root.gztell;
    pub const gzoffset = __root.gzoffset;
    pub const gzvprintf = __root.gzvprintf;
    pub const r = __root.gzclose_r;
    pub const w = __root.gzclose_w;
};
pub const gzFile = [*c]struct_gzFile_s;
pub extern fn gzdopen(fd: c_int, mode: [*c]const u8) gzFile;
pub extern fn gzbuffer(file: gzFile, size: c_uint) c_int;
pub extern fn gzsetparams(file: gzFile, level: c_int, strategy: c_int) c_int;
pub extern fn gzread(file: gzFile, buf: voidp, len: c_uint) c_int;
pub extern fn gzfread(buf: voidp, size: z_size_t, nitems: z_size_t, file: gzFile) z_size_t;
pub extern fn gzwrite(file: gzFile, buf: voidpc, len: c_uint) c_int;
pub extern fn gzfwrite(buf: voidpc, size: z_size_t, nitems: z_size_t, file: gzFile) z_size_t;
pub extern fn gzprintf(file: gzFile, format: [*c]const u8, ...) c_int;
pub extern fn gzputs(file: gzFile, s: [*c]const u8) c_int;
pub extern fn gzgets(file: gzFile, buf: [*c]u8, len: c_int) [*c]u8;
pub extern fn gzputc(file: gzFile, c: c_int) c_int;
pub extern fn gzgetc(file: gzFile) c_int;
pub extern fn gzungetc(c: c_int, file: gzFile) c_int;
pub extern fn gzflush(file: gzFile, flush: c_int) c_int;
pub extern fn gzrewind(file: gzFile) c_int;
pub extern fn gzeof(file: gzFile) c_int;
pub extern fn gzdirect(file: gzFile) c_int;
pub extern fn gzclose(file: gzFile) c_int;
pub extern fn gzclose_r(file: gzFile) c_int;
pub extern fn gzclose_w(file: gzFile) c_int;
pub extern fn gzerror(file: gzFile, errnum: [*c]c_int) [*c]const u8;
pub extern fn gzclearerr(file: gzFile) void;
pub extern fn adler32(adler: uLong, buf: [*c]const Bytef, len: uInt) uLong;
pub extern fn adler32_z(adler: uLong, buf: [*c]const Bytef, len: z_size_t) uLong;
pub extern fn crc32(crc: uLong, buf: [*c]const Bytef, len: uInt) uLong;
pub extern fn crc32_z(adler: uLong, buf: [*c]const Bytef, len: z_size_t) uLong;
pub extern fn deflateInit_(strm: z_streamp, level: c_int, version: [*c]const u8, stream_size: c_int) c_int;
pub extern fn inflateInit_(strm: z_streamp, version: [*c]const u8, stream_size: c_int) c_int;
pub extern fn deflateInit2_(strm: z_streamp, level: c_int, method: c_int, windowBits: c_int, memLevel: c_int, strategy: c_int, version: [*c]const u8, stream_size: c_int) c_int;
pub extern fn inflateInit2_(strm: z_streamp, windowBits: c_int, version: [*c]const u8, stream_size: c_int) c_int;
pub extern fn inflateBackInit_(strm: z_streamp, windowBits: c_int, window: [*c]u8, version: [*c]const u8, stream_size: c_int) c_int;
pub extern fn gzgetc_(file: gzFile) c_int;
pub extern fn gzopen64([*c]const u8, [*c]const u8) gzFile;
pub extern fn gzseek64(gzFile, off64_t, c_int) off64_t;
pub extern fn gztell64(gzFile) off64_t;
pub extern fn gzoffset64(gzFile) off64_t;
pub extern fn adler32_combine64(uLong, uLong, off64_t) uLong;
pub extern fn crc32_combine64(uLong, uLong, off64_t) uLong;
pub extern fn gzopen([*c]const u8, [*c]const u8) gzFile;
pub extern fn gzseek(gzFile, off_t, c_int) off_t;
pub extern fn gztell(gzFile) off_t;
pub extern fn gzoffset(gzFile) off_t;
pub extern fn adler32_combine(uLong, uLong, off_t) uLong;
pub extern fn crc32_combine(uLong, uLong, off_t) uLong;
pub extern fn zError(c_int) [*c]const u8;
pub extern fn inflateSyncPoint(z_streamp) c_int;
pub extern fn get_crc_table() [*c]const z_crc_t;
pub extern fn inflateUndermine(z_streamp, c_int) c_int;
pub extern fn inflateValidate(z_streamp, c_int) c_int;
pub extern fn inflateCodesUsed(z_streamp) c_ulong;
pub extern fn inflateResetKeep(z_streamp) c_int;
pub extern fn deflateResetKeep(z_streamp) c_int;
pub extern fn gzvprintf(file: gzFile, format: [*c]const u8, va: [*c]struct___va_list_tag_1) c_int;
pub const _ISupper: c_int = 256;
pub const _ISlower: c_int = 512;
pub const _ISalpha: c_int = 1024;
pub const _ISdigit: c_int = 2048;
pub const _ISxdigit: c_int = 4096;
pub const _ISspace: c_int = 8192;
pub const _ISprint: c_int = 16384;
pub const _ISgraph: c_int = 32768;
pub const _ISblank: c_int = 1;
pub const _IScntrl: c_int = 2;
pub const _ISpunct: c_int = 4;
pub const _ISalnum: c_int = 8;
const enum_unnamed_7 = c_uint;
pub extern fn __ctype_b_loc() [*c][*c]const c_ushort;
pub extern fn __ctype_tolower_loc() [*c][*c]const __int32_t;
pub extern fn __ctype_toupper_loc() [*c][*c]const __int32_t;
pub extern fn isalnum(c_int) c_int;
pub extern fn isalpha(c_int) c_int;
pub extern fn iscntrl(c_int) c_int;
pub extern fn isdigit(c_int) c_int;
pub extern fn islower(c_int) c_int;
pub extern fn isgraph(c_int) c_int;
pub extern fn isprint(c_int) c_int;
pub extern fn ispunct(c_int) c_int;
pub extern fn isspace(c_int) c_int;
pub extern fn isupper(c_int) c_int;
pub extern fn isxdigit(c_int) c_int;
pub extern fn tolower(__c: c_int) c_int;
pub extern fn toupper(__c: c_int) c_int;
pub extern fn isblank(c_int) c_int;
pub extern fn isctype(__c: c_int, __mask: c_int) c_int;
pub extern fn isascii(__c: c_int) c_int;
pub extern fn toascii(__c: c_int) c_int;
pub extern fn _toupper(c_int) c_int;
pub extern fn _tolower(c_int) c_int;
pub const struct___locale_data_8 = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_8 = @import("std").mem.zeroes([13]?*struct___locale_data_8),
    __ctype_b: [*c]const c_ushort = null,
    __ctype_tolower: [*c]const c_int = null,
    __ctype_toupper: [*c]const c_int = null,
    __names: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn isalnum_l(c_int, locale_t) c_int;
pub extern fn isalpha_l(c_int, locale_t) c_int;
pub extern fn iscntrl_l(c_int, locale_t) c_int;
pub extern fn isdigit_l(c_int, locale_t) c_int;
pub extern fn islower_l(c_int, locale_t) c_int;
pub extern fn isgraph_l(c_int, locale_t) c_int;
pub extern fn isprint_l(c_int, locale_t) c_int;
pub extern fn ispunct_l(c_int, locale_t) c_int;
pub extern fn isspace_l(c_int, locale_t) c_int;
pub extern fn isupper_l(c_int, locale_t) c_int;
pub extern fn isxdigit_l(c_int, locale_t) c_int;
pub extern fn isblank_l(c_int, locale_t) c_int;
pub extern fn __tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn __toupper_l(__c: c_int, __l: locale_t) c_int;
pub extern fn toupper_l(__c: c_int, __l: locale_t) c_int;
pub const cc_t = u8;
pub const speed_t = c_uint;
pub const tcflag_t = c_uint;
pub const struct_termios = extern struct {
    c_iflag: tcflag_t = 0,
    c_oflag: tcflag_t = 0,
    c_cflag: tcflag_t = 0,
    c_lflag: tcflag_t = 0,
    c_line: cc_t = 0,
    c_cc: [32]cc_t = @import("std").mem.zeroes([32]cc_t),
    c_ispeed: speed_t = 0,
    c_ospeed: speed_t = 0,
    pub const cfgetospeed = __root.cfgetospeed;
    pub const cfgetispeed = __root.cfgetispeed;
    pub const cfsetospeed = __root.cfsetospeed;
    pub const cfsetispeed = __root.cfsetispeed;
    pub const cfsetspeed = __root.cfsetspeed;
    pub const cfmakeraw = __root.cfmakeraw;
};
pub extern fn cfgetospeed(__termios_p: [*c]const struct_termios) speed_t;
pub extern fn cfgetispeed(__termios_p: [*c]const struct_termios) speed_t;
pub extern fn cfsetospeed(__termios_p: [*c]struct_termios, __speed: speed_t) c_int;
pub extern fn cfsetispeed(__termios_p: [*c]struct_termios, __speed: speed_t) c_int;
pub extern fn cfsetspeed(__termios_p: [*c]struct_termios, __speed: speed_t) c_int;
pub extern fn tcgetattr(__fd: c_int, __termios_p: [*c]struct_termios) c_int;
pub extern fn tcsetattr(__fd: c_int, __optional_actions: c_int, __termios_p: [*c]const struct_termios) c_int;
pub extern fn cfmakeraw(__termios_p: [*c]struct_termios) void;
pub extern fn tcsendbreak(__fd: c_int, __duration: c_int) c_int;
pub extern fn tcdrain(__fd: c_int) c_int;
pub extern fn tcflush(__fd: c_int, __queue_selector: c_int) c_int;
pub extern fn tcflow(__fd: c_int, __action: c_int) c_int;
pub extern fn tcgetsid(__fd: c_int) __pid_t;
pub const div_t = extern struct {
    quot: c_int = 0,
    rem: c_int = 0,
};
pub const ldiv_t = extern struct {
    quot: c_long = 0,
    rem: c_long = 0,
};
pub const lldiv_t = extern struct {
    quot: c_longlong = 0,
    rem: c_longlong = 0,
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: [*c]const u8) f64;
pub extern fn atoi(__nptr: [*c]const u8) c_int;
pub extern fn atol(__nptr: [*c]const u8) c_long;
pub extern fn atoll(__nptr: [*c]const u8) c_longlong;
pub extern fn strtod(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) f64;
pub extern fn strtof(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) f32;
pub extern fn strtold(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtof32(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) f32;
pub extern fn strtof64(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) f64;
pub extern fn strtof128(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) f128;
pub extern fn strtof32x(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) f64;
pub extern fn strtof64x(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strfromd(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: f64) c_int;
pub extern fn strfromf(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: f32) c_int;
pub extern fn strfroml(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: c_longdouble) c_int;
pub extern fn strfromf32(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: f32) c_int;
pub extern fn strfromf64(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: f64) c_int;
pub extern fn strfromf128(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: f128) c_int;
pub extern fn strfromf32x(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: f64) c_int;
pub extern fn strfromf64x(__dest: [*c]u8, __size: usize, __format: [*c]const u8, __f: c_longdouble) c_int;
pub extern fn strtol_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_long;
pub extern fn strtoul_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_ulong;
pub extern fn strtoll_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_longlong;
pub extern fn strtoull_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int, __loc: locale_t) c_ulonglong;
pub extern fn strtod_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) f64;
pub extern fn strtof_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) f32;
pub extern fn strtold_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) c_longdouble;
pub extern fn strtof32_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) f32;
pub extern fn strtof64_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) f64;
pub extern fn strtof128_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) f128;
pub extern fn strtof32x_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) f64;
pub extern fn strtof64x_l(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __loc: locale_t) c_longdouble;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32 = null,
    rptr: [*c]i32 = null,
    state: [*c]i32 = null,
    rand_type: c_int = 0,
    rand_deg: c_int = 0,
    rand_sep: c_int = 0,
    end_ptr: [*c]i32 = null,
    pub const random_r = __root.random_r;
    pub const r = __root.random_r;
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __old_x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __c: c_ushort = 0,
    __init: c_ushort = 0,
    __a: c_ulonglong = 0,
    pub const drand48_r = __root.drand48_r;
    pub const lrand48_r = __root.lrand48_r;
    pub const mrand48_r = __root.mrand48_r;
    pub const r = __root.drand48_r;
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn malloc(__size: usize) ?*anyopaque;
pub extern fn calloc(__nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: usize) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn alloca(__size: usize) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: usize, __size: usize) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?*const fn () callconv(.c) void) c_int;
pub extern fn at_quick_exit(__func: ?*const fn () callconv(.c) void) c_int;
pub extern fn on_exit(__func: ?*const fn (__status: c_int, __arg: ?*anyopaque) callconv(.c) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn secure_getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemp64(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkstemps64(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn mkostemp(__template: [*c]u8, __flags: c_int) c_int;
pub extern fn mkostemp64(__template: [*c]u8, __flags: c_int) c_int;
pub extern fn mkostemps(__template: [*c]u8, __suffixlen: c_int, __flags: c_int) c_int;
pub extern fn mkostemps64(__template: [*c]u8, __suffixlen: c_int, __flags: c_int) c_int;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn canonicalize_file_name(__name: [*c]const u8) [*c]u8;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int;
pub const comparison_fn_t = __compar_fn_t;
pub const __compar_d_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque, ?*anyopaque) callconv(.c) c_int;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*anyopaque;
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn qsort_r(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_d_fn_t, __arg: ?*anyopaque) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn posix_openpt(__oflag: c_int) c_int;
pub extern fn grantpt(__fd: c_int) c_int;
pub extern fn unlockpt(__fd: c_int) c_int;
pub extern fn ptsname(__fd: c_int) [*c]u8;
pub extern fn ptsname_r(__fd: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn getpt() c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const __gwchar_t = c_int;
pub const imaxdiv_t = extern struct {
    quot: c_long = 0,
    rem: c_long = 0,
};
pub extern fn imaxabs(__n: intmax_t) intmax_t;
pub extern fn imaxdiv(__numer: intmax_t, __denom: intmax_t) imaxdiv_t;
pub extern fn strtoimax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) intmax_t;
pub extern fn strtoumax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) uintmax_t;
pub extern fn wcstoimax(noalias __nptr: [*c]const __gwchar_t, noalias __endptr: [*c][*c]__gwchar_t, __base: c_int) intmax_t;
pub extern fn wcstoumax(noalias __nptr: [*c]const __gwchar_t, noalias __endptr: [*c][*c]__gwchar_t, __base: c_int) uintmax_t;
pub const PCRE2_UCHAR8 = u8;
pub const PCRE2_UCHAR16 = u16;
pub const PCRE2_UCHAR32 = u32;
pub const PCRE2_SPTR8 = [*c]const PCRE2_UCHAR8;
pub const PCRE2_SPTR16 = [*c]const PCRE2_UCHAR16;
pub const PCRE2_SPTR32 = [*c]const PCRE2_UCHAR32;
pub const struct_pcre2_real_general_context_8 = opaque {
    pub const pcre2_general_context_copy_8 = __root.pcre2_general_context_copy_8;
    pub const pcre2_general_context_free_8 = __root.pcre2_general_context_free_8;
    pub const pcre2_compile_context_create_8 = __root.pcre2_compile_context_create_8;
    pub const pcre2_convert_context_create_8 = __root.pcre2_convert_context_create_8;
    pub const pcre2_match_context_create_8 = __root.pcre2_match_context_create_8;
    pub const pcre2_jit_free_unused_memory_8 = __root.pcre2_jit_free_unused_memory_8;
    pub const pcre2_maketables_8 = __root.pcre2_maketables_8;
    pub const pcre2_maketables_free_8 = __root.pcre2_maketables_free_8;
    pub const @"8" = __root.pcre2_general_context_copy_8;
};
pub const pcre2_general_context_8 = struct_pcre2_real_general_context_8;
pub const struct_pcre2_real_compile_context_8 = opaque {
    pub const pcre2_compile_context_copy_8 = __root.pcre2_compile_context_copy_8;
    pub const pcre2_compile_context_free_8 = __root.pcre2_compile_context_free_8;
    pub const pcre2_set_bsr_8 = __root.pcre2_set_bsr_8;
    pub const pcre2_set_character_tables_8 = __root.pcre2_set_character_tables_8;
    pub const pcre2_set_compile_extra_options_8 = __root.pcre2_set_compile_extra_options_8;
    pub const pcre2_set_max_pattern_length_8 = __root.pcre2_set_max_pattern_length_8;
    pub const pcre2_set_newline_8 = __root.pcre2_set_newline_8;
    pub const pcre2_set_parens_nest_limit_8 = __root.pcre2_set_parens_nest_limit_8;
    pub const pcre2_set_compile_recursion_guard_8 = __root.pcre2_set_compile_recursion_guard_8;
    pub const @"8" = __root.pcre2_compile_context_copy_8;
};
pub const pcre2_compile_context_8 = struct_pcre2_real_compile_context_8;
pub const struct_pcre2_real_match_context_8 = opaque {
    pub const pcre2_match_context_copy_8 = __root.pcre2_match_context_copy_8;
    pub const pcre2_match_context_free_8 = __root.pcre2_match_context_free_8;
    pub const pcre2_set_callout_8 = __root.pcre2_set_callout_8;
    pub const pcre2_set_substitute_callout_8 = __root.pcre2_set_substitute_callout_8;
    pub const pcre2_set_depth_limit_8 = __root.pcre2_set_depth_limit_8;
    pub const pcre2_set_heap_limit_8 = __root.pcre2_set_heap_limit_8;
    pub const pcre2_set_match_limit_8 = __root.pcre2_set_match_limit_8;
    pub const pcre2_set_offset_limit_8 = __root.pcre2_set_offset_limit_8;
    pub const pcre2_set_recursion_limit_8 = __root.pcre2_set_recursion_limit_8;
    pub const pcre2_set_recursion_memory_management_8 = __root.pcre2_set_recursion_memory_management_8;
    pub const pcre2_jit_stack_assign_8 = __root.pcre2_jit_stack_assign_8;
    pub const @"8" = __root.pcre2_match_context_copy_8;
};
pub const pcre2_match_context_8 = struct_pcre2_real_match_context_8;
pub const struct_pcre2_real_convert_context_8 = opaque {
    pub const pcre2_convert_context_copy_8 = __root.pcre2_convert_context_copy_8;
    pub const pcre2_convert_context_free_8 = __root.pcre2_convert_context_free_8;
    pub const pcre2_set_glob_escape_8 = __root.pcre2_set_glob_escape_8;
    pub const pcre2_set_glob_separator_8 = __root.pcre2_set_glob_separator_8;
    pub const @"8" = __root.pcre2_convert_context_copy_8;
};
pub const pcre2_convert_context_8 = struct_pcre2_real_convert_context_8;
pub const struct_pcre2_real_code_8 = opaque {
    pub const pcre2_code_free_8 = __root.pcre2_code_free_8;
    pub const pcre2_code_copy_8 = __root.pcre2_code_copy_8;
    pub const pcre2_code_copy_with_tables_8 = __root.pcre2_code_copy_with_tables_8;
    pub const pcre2_pattern_info_8 = __root.pcre2_pattern_info_8;
    pub const pcre2_callout_enumerate_8 = __root.pcre2_callout_enumerate_8;
    pub const pcre2_match_data_create_from_pattern_8 = __root.pcre2_match_data_create_from_pattern_8;
    pub const pcre2_dfa_match_8 = __root.pcre2_dfa_match_8;
    pub const pcre2_match_8 = __root.pcre2_match_8;
    pub const pcre2_substring_nametable_scan_8 = __root.pcre2_substring_nametable_scan_8;
    pub const pcre2_substring_number_from_name_8 = __root.pcre2_substring_number_from_name_8;
    pub const pcre2_substitute_8 = __root.pcre2_substitute_8;
    pub const pcre2_jit_compile_8 = __root.pcre2_jit_compile_8;
    pub const pcre2_jit_match_8 = __root.pcre2_jit_match_8;
    pub const @"8" = __root.pcre2_code_free_8;
};
pub const pcre2_code_8 = struct_pcre2_real_code_8;
pub const struct_pcre2_real_match_data_8 = opaque {
    pub const pcre2_match_data_free_8 = __root.pcre2_match_data_free_8;
    pub const pcre2_get_mark_8 = __root.pcre2_get_mark_8;
    pub const pcre2_get_match_data_size_8 = __root.pcre2_get_match_data_size_8;
    pub const pcre2_get_ovector_count_8 = __root.pcre2_get_ovector_count_8;
    pub const pcre2_get_ovector_pointer_8 = __root.pcre2_get_ovector_pointer_8;
    pub const pcre2_get_startchar_8 = __root.pcre2_get_startchar_8;
    pub const pcre2_substring_copy_byname_8 = __root.pcre2_substring_copy_byname_8;
    pub const pcre2_substring_copy_bynumber_8 = __root.pcre2_substring_copy_bynumber_8;
    pub const pcre2_substring_get_byname_8 = __root.pcre2_substring_get_byname_8;
    pub const pcre2_substring_get_bynumber_8 = __root.pcre2_substring_get_bynumber_8;
    pub const pcre2_substring_length_byname_8 = __root.pcre2_substring_length_byname_8;
    pub const pcre2_substring_length_bynumber_8 = __root.pcre2_substring_length_bynumber_8;
    pub const pcre2_substring_list_get_8 = __root.pcre2_substring_list_get_8;
    pub const @"8" = __root.pcre2_match_data_free_8;
};
pub const pcre2_match_data_8 = struct_pcre2_real_match_data_8;
pub const struct_pcre2_real_jit_stack_8 = opaque {
    pub const pcre2_jit_stack_free_8 = __root.pcre2_jit_stack_free_8;
    pub const @"8" = __root.pcre2_jit_stack_free_8;
};
pub const pcre2_jit_stack_8 = struct_pcre2_real_jit_stack_8;
pub const pcre2_jit_callback_8 = ?*const fn (?*anyopaque) callconv(.c) ?*pcre2_jit_stack_8;
pub const struct_pcre2_callout_block_8 = extern struct {
    version: u32 = 0,
    callout_number: u32 = 0,
    capture_top: u32 = 0,
    capture_last: u32 = 0,
    offset_vector: [*c]usize = null,
    mark: PCRE2_SPTR8 = null,
    subject: PCRE2_SPTR8 = null,
    subject_length: usize = 0,
    start_match: usize = 0,
    current_position: usize = 0,
    pattern_position: usize = 0,
    next_item_length: usize = 0,
    callout_string_offset: usize = 0,
    callout_string_length: usize = 0,
    callout_string: PCRE2_SPTR8 = null,
    callout_flags: u32 = 0,
};
pub const pcre2_callout_block_8 = struct_pcre2_callout_block_8;
pub const struct_pcre2_callout_enumerate_block_8 = extern struct {
    version: u32 = 0,
    pattern_position: usize = 0,
    next_item_length: usize = 0,
    callout_number: u32 = 0,
    callout_string_offset: usize = 0,
    callout_string_length: usize = 0,
    callout_string: PCRE2_SPTR8 = null,
};
pub const pcre2_callout_enumerate_block_8 = struct_pcre2_callout_enumerate_block_8;
pub const struct_pcre2_substitute_callout_block_8 = extern struct {
    version: u32 = 0,
    input: PCRE2_SPTR8 = null,
    output: PCRE2_SPTR8 = null,
    output_offsets: [2]usize = @import("std").mem.zeroes([2]usize),
    ovector: [*c]usize = null,
    oveccount: u32 = 0,
    subscount: u32 = 0,
};
pub const pcre2_substitute_callout_block_8 = struct_pcre2_substitute_callout_block_8;
pub extern fn pcre2_config_8(u32, ?*anyopaque) c_int;
pub extern fn pcre2_general_context_copy_8(?*pcre2_general_context_8) ?*pcre2_general_context_8;
pub extern fn pcre2_general_context_create_8(?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque, ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void, ?*anyopaque) ?*pcre2_general_context_8;
pub extern fn pcre2_general_context_free_8(?*pcre2_general_context_8) void;
pub extern fn pcre2_compile_context_copy_8(?*pcre2_compile_context_8) ?*pcre2_compile_context_8;
pub extern fn pcre2_compile_context_create_8(?*pcre2_general_context_8) ?*pcre2_compile_context_8;
pub extern fn pcre2_compile_context_free_8(?*pcre2_compile_context_8) void;
pub extern fn pcre2_set_bsr_8(?*pcre2_compile_context_8, u32) c_int;
pub extern fn pcre2_set_character_tables_8(?*pcre2_compile_context_8, [*c]const u8) c_int;
pub extern fn pcre2_set_compile_extra_options_8(?*pcre2_compile_context_8, u32) c_int;
pub extern fn pcre2_set_max_pattern_length_8(?*pcre2_compile_context_8, usize) c_int;
pub extern fn pcre2_set_newline_8(?*pcre2_compile_context_8, u32) c_int;
pub extern fn pcre2_set_parens_nest_limit_8(?*pcre2_compile_context_8, u32) c_int;
pub extern fn pcre2_set_compile_recursion_guard_8(?*pcre2_compile_context_8, ?*const fn (u32, ?*anyopaque) callconv(.c) c_int, ?*anyopaque) c_int;
pub extern fn pcre2_convert_context_copy_8(?*pcre2_convert_context_8) ?*pcre2_convert_context_8;
pub extern fn pcre2_convert_context_create_8(?*pcre2_general_context_8) ?*pcre2_convert_context_8;
pub extern fn pcre2_convert_context_free_8(?*pcre2_convert_context_8) void;
pub extern fn pcre2_set_glob_escape_8(?*pcre2_convert_context_8, u32) c_int;
pub extern fn pcre2_set_glob_separator_8(?*pcre2_convert_context_8, u32) c_int;
pub extern fn pcre2_pattern_convert_8(PCRE2_SPTR8, usize, u32, [*c][*c]PCRE2_UCHAR8, [*c]usize, ?*pcre2_convert_context_8) c_int;
pub extern fn pcre2_converted_pattern_free_8([*c]PCRE2_UCHAR8) void;
pub extern fn pcre2_match_context_copy_8(?*pcre2_match_context_8) ?*pcre2_match_context_8;
pub extern fn pcre2_match_context_create_8(?*pcre2_general_context_8) ?*pcre2_match_context_8;
pub extern fn pcre2_match_context_free_8(?*pcre2_match_context_8) void;
pub extern fn pcre2_set_callout_8(?*pcre2_match_context_8, ?*const fn ([*c]pcre2_callout_block_8, ?*anyopaque) callconv(.c) c_int, ?*anyopaque) c_int;
pub extern fn pcre2_set_substitute_callout_8(?*pcre2_match_context_8, ?*const fn ([*c]pcre2_substitute_callout_block_8, ?*anyopaque) callconv(.c) c_int, ?*anyopaque) c_int;
pub extern fn pcre2_set_depth_limit_8(?*pcre2_match_context_8, u32) c_int;
pub extern fn pcre2_set_heap_limit_8(?*pcre2_match_context_8, u32) c_int;
pub extern fn pcre2_set_match_limit_8(?*pcre2_match_context_8, u32) c_int;
pub extern fn pcre2_set_offset_limit_8(?*pcre2_match_context_8, usize) c_int;
pub extern fn pcre2_set_recursion_limit_8(?*pcre2_match_context_8, u32) c_int;
pub extern fn pcre2_set_recursion_memory_management_8(?*pcre2_match_context_8, ?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque, ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void, ?*anyopaque) c_int;
pub extern fn pcre2_compile_8(PCRE2_SPTR8, usize, u32, [*c]c_int, [*c]usize, ?*pcre2_compile_context_8) ?*pcre2_code_8;
pub extern fn pcre2_code_free_8(?*pcre2_code_8) void;
pub extern fn pcre2_code_copy_8(?*const pcre2_code_8) ?*pcre2_code_8;
pub extern fn pcre2_code_copy_with_tables_8(?*const pcre2_code_8) ?*pcre2_code_8;
pub extern fn pcre2_pattern_info_8(?*const pcre2_code_8, u32, ?*anyopaque) c_int;
pub extern fn pcre2_callout_enumerate_8(?*const pcre2_code_8, ?*const fn ([*c]pcre2_callout_enumerate_block_8, ?*anyopaque) callconv(.c) c_int, ?*anyopaque) c_int;
pub extern fn pcre2_match_data_create_8(u32, ?*pcre2_general_context_8) ?*pcre2_match_data_8;
pub extern fn pcre2_match_data_create_from_pattern_8(?*const pcre2_code_8, ?*pcre2_general_context_8) ?*pcre2_match_data_8;
pub extern fn pcre2_dfa_match_8(?*const pcre2_code_8, PCRE2_SPTR8, usize, usize, u32, ?*pcre2_match_data_8, ?*pcre2_match_context_8, [*c]c_int, usize) c_int;
pub extern fn pcre2_match_8(?*const pcre2_code_8, PCRE2_SPTR8, usize, usize, u32, ?*pcre2_match_data_8, ?*pcre2_match_context_8) c_int;
pub extern fn pcre2_match_data_free_8(?*pcre2_match_data_8) void;
pub extern fn pcre2_get_mark_8(?*pcre2_match_data_8) PCRE2_SPTR8;
pub extern fn pcre2_get_match_data_size_8(?*pcre2_match_data_8) usize;
pub extern fn pcre2_get_ovector_count_8(?*pcre2_match_data_8) u32;
pub extern fn pcre2_get_ovector_pointer_8(?*pcre2_match_data_8) [*c]usize;
pub extern fn pcre2_get_startchar_8(?*pcre2_match_data_8) usize;
pub extern fn pcre2_substring_copy_byname_8(?*pcre2_match_data_8, PCRE2_SPTR8, [*c]PCRE2_UCHAR8, [*c]usize) c_int;
pub extern fn pcre2_substring_copy_bynumber_8(?*pcre2_match_data_8, u32, [*c]PCRE2_UCHAR8, [*c]usize) c_int;
pub extern fn pcre2_substring_free_8([*c]PCRE2_UCHAR8) void;
pub extern fn pcre2_substring_get_byname_8(?*pcre2_match_data_8, PCRE2_SPTR8, [*c][*c]PCRE2_UCHAR8, [*c]usize) c_int;
pub extern fn pcre2_substring_get_bynumber_8(?*pcre2_match_data_8, u32, [*c][*c]PCRE2_UCHAR8, [*c]usize) c_int;
pub extern fn pcre2_substring_length_byname_8(?*pcre2_match_data_8, PCRE2_SPTR8, [*c]usize) c_int;
pub extern fn pcre2_substring_length_bynumber_8(?*pcre2_match_data_8, u32, [*c]usize) c_int;
pub extern fn pcre2_substring_nametable_scan_8(?*const pcre2_code_8, PCRE2_SPTR8, [*c]PCRE2_SPTR8, [*c]PCRE2_SPTR8) c_int;
pub extern fn pcre2_substring_number_from_name_8(?*const pcre2_code_8, PCRE2_SPTR8) c_int;
pub extern fn pcre2_substring_list_free_8([*c]PCRE2_SPTR8) void;
pub extern fn pcre2_substring_list_get_8(?*pcre2_match_data_8, [*c][*c][*c]PCRE2_UCHAR8, [*c][*c]usize) c_int;
pub extern fn pcre2_serialize_encode_8([*c]?*const pcre2_code_8, i32, [*c][*c]u8, [*c]usize, ?*pcre2_general_context_8) i32;
pub extern fn pcre2_serialize_decode_8([*c]?*pcre2_code_8, i32, [*c]const u8, ?*pcre2_general_context_8) i32;
pub extern fn pcre2_serialize_get_number_of_codes_8([*c]const u8) i32;
pub extern fn pcre2_serialize_free_8([*c]u8) void;
pub extern fn pcre2_substitute_8(?*const pcre2_code_8, PCRE2_SPTR8, usize, usize, u32, ?*pcre2_match_data_8, ?*pcre2_match_context_8, PCRE2_SPTR8, usize, [*c]PCRE2_UCHAR8, [*c]usize) c_int;
pub extern fn pcre2_jit_compile_8(?*pcre2_code_8, u32) c_int;
pub extern fn pcre2_jit_match_8(?*const pcre2_code_8, PCRE2_SPTR8, usize, usize, u32, ?*pcre2_match_data_8, ?*pcre2_match_context_8) c_int;
pub extern fn pcre2_jit_free_unused_memory_8(?*pcre2_general_context_8) void;
pub extern fn pcre2_jit_stack_create_8(usize, usize, ?*pcre2_general_context_8) ?*pcre2_jit_stack_8;
pub extern fn pcre2_jit_stack_assign_8(?*pcre2_match_context_8, pcre2_jit_callback_8, ?*anyopaque) void;
pub extern fn pcre2_jit_stack_free_8(?*pcre2_jit_stack_8) void;
pub extern fn pcre2_get_error_message_8(c_int, [*c]PCRE2_UCHAR8, usize) c_int;
pub extern fn pcre2_maketables_8(?*pcre2_general_context_8) [*c]const u8;
pub extern fn pcre2_maketables_free_8(?*pcre2_general_context_8, [*c]const u8) void;
pub const struct_pcre2_real_general_context_16 = opaque {
    pub const pcre2_general_context_copy_16 = __root.pcre2_general_context_copy_16;
    pub const pcre2_general_context_free_16 = __root.pcre2_general_context_free_16;
    pub const pcre2_compile_context_create_16 = __root.pcre2_compile_context_create_16;
    pub const pcre2_convert_context_create_16 = __root.pcre2_convert_context_create_16;
    pub const pcre2_match_context_create_16 = __root.pcre2_match_context_create_16;
    pub const pcre2_jit_free_unused_memory_16 = __root.pcre2_jit_free_unused_memory_16;
    pub const pcre2_maketables_16 = __root.pcre2_maketables_16;
    pub const pcre2_maketables_free_16 = __root.pcre2_maketables_free_16;
    pub const @"16" = __root.pcre2_general_context_copy_16;
};
pub const pcre2_general_context_16 = struct_pcre2_real_general_context_16;
pub const struct_pcre2_real_compile_context_16 = opaque {
    pub const pcre2_compile_context_copy_16 = __root.pcre2_compile_context_copy_16;
    pub const pcre2_compile_context_free_16 = __root.pcre2_compile_context_free_16;
    pub const pcre2_set_bsr_16 = __root.pcre2_set_bsr_16;
    pub const pcre2_set_character_tables_16 = __root.pcre2_set_character_tables_16;
    pub const pcre2_set_compile_extra_options_16 = __root.pcre2_set_compile_extra_options_16;
    pub const pcre2_set_max_pattern_length_16 = __root.pcre2_set_max_pattern_length_16;
    pub const pcre2_set_newline_16 = __root.pcre2_set_newline_16;
    pub const pcre2_set_parens_nest_limit_16 = __root.pcre2_set_parens_nest_limit_16;
    pub const pcre2_set_compile_recursion_guard_16 = __root.pcre2_set_compile_recursion_guard_16;
    pub const @"16" = __root.pcre2_compile_context_copy_16;
};
pub const pcre2_compile_context_16 = struct_pcre2_real_compile_context_16;
pub const struct_pcre2_real_match_context_16 = opaque {
    pub const pcre2_match_context_copy_16 = __root.pcre2_match_context_copy_16;
    pub const pcre2_match_context_free_16 = __root.pcre2_match_context_free_16;
    pub const pcre2_set_callout_16 = __root.pcre2_set_callout_16;
    pub const pcre2_set_substitute_callout_16 = __root.pcre2_set_substitute_callout_16;
    pub const pcre2_set_depth_limit_16 = __root.pcre2_set_depth_limit_16;
    pub const pcre2_set_heap_limit_16 = __root.pcre2_set_heap_limit_16;
    pub const pcre2_set_match_limit_16 = __root.pcre2_set_match_limit_16;
    pub const pcre2_set_offset_limit_16 = __root.pcre2_set_offset_limit_16;
    pub const pcre2_set_recursion_limit_16 = __root.pcre2_set_recursion_limit_16;
    pub const pcre2_set_recursion_memory_management_16 = __root.pcre2_set_recursion_memory_management_16;
    pub const pcre2_jit_stack_assign_16 = __root.pcre2_jit_stack_assign_16;
    pub const @"16" = __root.pcre2_match_context_copy_16;
};
pub const pcre2_match_context_16 = struct_pcre2_real_match_context_16;
pub const struct_pcre2_real_convert_context_16 = opaque {
    pub const pcre2_convert_context_copy_16 = __root.pcre2_convert_context_copy_16;
    pub const pcre2_convert_context_free_16 = __root.pcre2_convert_context_free_16;
    pub const pcre2_set_glob_escape_16 = __root.pcre2_set_glob_escape_16;
    pub const pcre2_set_glob_separator_16 = __root.pcre2_set_glob_separator_16;
    pub const @"16" = __root.pcre2_convert_context_copy_16;
};
pub const pcre2_convert_context_16 = struct_pcre2_real_convert_context_16;
pub const struct_pcre2_real_code_16 = opaque {
    pub const pcre2_code_free_16 = __root.pcre2_code_free_16;
    pub const pcre2_code_copy_16 = __root.pcre2_code_copy_16;
    pub const pcre2_code_copy_with_tables_16 = __root.pcre2_code_copy_with_tables_16;
    pub const pcre2_pattern_info_16 = __root.pcre2_pattern_info_16;
    pub const pcre2_callout_enumerate_16 = __root.pcre2_callout_enumerate_16;
    pub const pcre2_match_data_create_from_pattern_16 = __root.pcre2_match_data_create_from_pattern_16;
    pub const pcre2_dfa_match_16 = __root.pcre2_dfa_match_16;
    pub const pcre2_match_16 = __root.pcre2_match_16;
    pub const pcre2_substring_nametable_scan_16 = __root.pcre2_substring_nametable_scan_16;
    pub const pcre2_substring_number_from_name_16 = __root.pcre2_substring_number_from_name_16;
    pub const pcre2_substitute_16 = __root.pcre2_substitute_16;
    pub const pcre2_jit_compile_16 = __root.pcre2_jit_compile_16;
    pub const pcre2_jit_match_16 = __root.pcre2_jit_match_16;
    pub const @"16" = __root.pcre2_code_free_16;
};
pub const pcre2_code_16 = struct_pcre2_real_code_16;
pub const struct_pcre2_real_match_data_16 = opaque {
    pub const pcre2_match_data_free_16 = __root.pcre2_match_data_free_16;
    pub const pcre2_get_mark_16 = __root.pcre2_get_mark_16;
    pub const pcre2_get_match_data_size_16 = __root.pcre2_get_match_data_size_16;
    pub const pcre2_get_ovector_count_16 = __root.pcre2_get_ovector_count_16;
    pub const pcre2_get_ovector_pointer_16 = __root.pcre2_get_ovector_pointer_16;
    pub const pcre2_get_startchar_16 = __root.pcre2_get_startchar_16;
    pub const pcre2_substring_copy_byname_16 = __root.pcre2_substring_copy_byname_16;
    pub const pcre2_substring_copy_bynumber_16 = __root.pcre2_substring_copy_bynumber_16;
    pub const pcre2_substring_get_byname_16 = __root.pcre2_substring_get_byname_16;
    pub const pcre2_substring_get_bynumber_16 = __root.pcre2_substring_get_bynumber_16;
    pub const pcre2_substring_length_byname_16 = __root.pcre2_substring_length_byname_16;
    pub const pcre2_substring_length_bynumber_16 = __root.pcre2_substring_length_bynumber_16;
    pub const pcre2_substring_list_get_16 = __root.pcre2_substring_list_get_16;
    pub const @"16" = __root.pcre2_match_data_free_16;
};
pub const pcre2_match_data_16 = struct_pcre2_real_match_data_16;
pub const struct_pcre2_real_jit_stack_16 = opaque {
    pub const pcre2_jit_stack_free_16 = __root.pcre2_jit_stack_free_16;
    pub const @"16" = __root.pcre2_jit_stack_free_16;
};
pub const pcre2_jit_stack_16 = struct_pcre2_real_jit_stack_16;
pub const pcre2_jit_callback_16 = ?*const fn (?*anyopaque) callconv(.c) ?*pcre2_jit_stack_16;
pub const struct_pcre2_callout_block_16 = extern struct {
    version: u32 = 0,
    callout_number: u32 = 0,
    capture_top: u32 = 0,
    capture_last: u32 = 0,
    offset_vector: [*c]usize = null,
    mark: PCRE2_SPTR16 = null,
    subject: PCRE2_SPTR16 = null,
    subject_length: usize = 0,
    start_match: usize = 0,
    current_position: usize = 0,
    pattern_position: usize = 0,
    next_item_length: usize = 0,
    callout_string_offset: usize = 0,
    callout_string_length: usize = 0,
    callout_string: PCRE2_SPTR16 = null,
    callout_flags: u32 = 0,
};
pub const pcre2_callout_block_16 = struct_pcre2_callout_block_16;
pub const struct_pcre2_callout_enumerate_block_16 = extern struct {
    version: u32 = 0,
    pattern_position: usize = 0,
    next_item_length: usize = 0,
    callout_number: u32 = 0,
    callout_string_offset: usize = 0,
    callout_string_length: usize = 0,
    callout_string: PCRE2_SPTR16 = null,
};
pub const pcre2_callout_enumerate_block_16 = struct_pcre2_callout_enumerate_block_16;
pub const struct_pcre2_substitute_callout_block_16 = extern struct {
    version: u32 = 0,
    input: PCRE2_SPTR16 = null,
    output: PCRE2_SPTR16 = null,
    output_offsets: [2]usize = @import("std").mem.zeroes([2]usize),
    ovector: [*c]usize = null,
    oveccount: u32 = 0,
    subscount: u32 = 0,
};
pub const pcre2_substitute_callout_block_16 = struct_pcre2_substitute_callout_block_16;
pub extern fn pcre2_config_16(u32, ?*anyopaque) c_int;
pub extern fn pcre2_general_context_copy_16(?*pcre2_general_context_16) ?*pcre2_general_context_16;
pub extern fn pcre2_general_context_create_16(?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque, ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void, ?*anyopaque) ?*pcre2_general_context_16;
pub extern fn pcre2_general_context_free_16(?*pcre2_general_context_16) void;
pub extern fn pcre2_compile_context_copy_16(?*pcre2_compile_context_16) ?*pcre2_compile_context_16;
pub extern fn pcre2_compile_context_create_16(?*pcre2_general_context_16) ?*pcre2_compile_context_16;
pub extern fn pcre2_compile_context_free_16(?*pcre2_compile_context_16) void;
pub extern fn pcre2_set_bsr_16(?*pcre2_compile_context_16, u32) c_int;
pub extern fn pcre2_set_character_tables_16(?*pcre2_compile_context_16, [*c]const u8) c_int;
pub extern fn pcre2_set_compile_extra_options_16(?*pcre2_compile_context_16, u32) c_int;
pub extern fn pcre2_set_max_pattern_length_16(?*pcre2_compile_context_16, usize) c_int;
pub extern fn pcre2_set_newline_16(?*pcre2_compile_context_16, u32) c_int;
pub extern fn pcre2_set_parens_nest_limit_16(?*pcre2_compile_context_16, u32) c_int;
pub extern fn pcre2_set_compile_recursion_guard_16(?*pcre2_compile_context_16, ?*const fn (u32, ?*anyopaque) callconv(.c) c_int, ?*anyopaque) c_int;
pub extern fn pcre2_convert_context_copy_16(?*pcre2_convert_context_16) ?*pcre2_convert_context_16;
pub extern fn pcre2_convert_context_create_16(?*pcre2_general_context_16) ?*pcre2_convert_context_16;
pub extern fn pcre2_convert_context_free_16(?*pcre2_convert_context_16) void;
pub extern fn pcre2_set_glob_escape_16(?*pcre2_convert_context_16, u32) c_int;
pub extern fn pcre2_set_glob_separator_16(?*pcre2_convert_context_16, u32) c_int;
pub extern fn pcre2_pattern_convert_16(PCRE2_SPTR16, usize, u32, [*c][*c]PCRE2_UCHAR16, [*c]usize, ?*pcre2_convert_context_16) c_int;
pub extern fn pcre2_converted_pattern_free_16([*c]PCRE2_UCHAR16) void;
pub extern fn pcre2_match_context_copy_16(?*pcre2_match_context_16) ?*pcre2_match_context_16;
pub extern fn pcre2_match_context_create_16(?*pcre2_general_context_16) ?*pcre2_match_context_16;
pub extern fn pcre2_match_context_free_16(?*pcre2_match_context_16) void;
pub extern fn pcre2_set_callout_16(?*pcre2_match_context_16, ?*const fn ([*c]pcre2_callout_block_16, ?*anyopaque) callconv(.c) c_int, ?*anyopaque) c_int;
pub extern fn pcre2_set_substitute_callout_16(?*pcre2_match_context_16, ?*const fn ([*c]pcre2_substitute_callout_block_16, ?*anyopaque) callconv(.c) c_int, ?*anyopaque) c_int;
pub extern fn pcre2_set_depth_limit_16(?*pcre2_match_context_16, u32) c_int;
pub extern fn pcre2_set_heap_limit_16(?*pcre2_match_context_16, u32) c_int;
pub extern fn pcre2_set_match_limit_16(?*pcre2_match_context_16, u32) c_int;
pub extern fn pcre2_set_offset_limit_16(?*pcre2_match_context_16, usize) c_int;
pub extern fn pcre2_set_recursion_limit_16(?*pcre2_match_context_16, u32) c_int;
pub extern fn pcre2_set_recursion_memory_management_16(?*pcre2_match_context_16, ?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque, ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void, ?*anyopaque) c_int;
pub extern fn pcre2_compile_16(PCRE2_SPTR16, usize, u32, [*c]c_int, [*c]usize, ?*pcre2_compile_context_16) ?*pcre2_code_16;
pub extern fn pcre2_code_free_16(?*pcre2_code_16) void;
pub extern fn pcre2_code_copy_16(?*const pcre2_code_16) ?*pcre2_code_16;
pub extern fn pcre2_code_copy_with_tables_16(?*const pcre2_code_16) ?*pcre2_code_16;
pub extern fn pcre2_pattern_info_16(?*const pcre2_code_16, u32, ?*anyopaque) c_int;
pub extern fn pcre2_callout_enumerate_16(?*const pcre2_code_16, ?*const fn ([*c]pcre2_callout_enumerate_block_16, ?*anyopaque) callconv(.c) c_int, ?*anyopaque) c_int;
pub extern fn pcre2_match_data_create_16(u32, ?*pcre2_general_context_16) ?*pcre2_match_data_16;
pub extern fn pcre2_match_data_create_from_pattern_16(?*const pcre2_code_16, ?*pcre2_general_context_16) ?*pcre2_match_data_16;
pub extern fn pcre2_dfa_match_16(?*const pcre2_code_16, PCRE2_SPTR16, usize, usize, u32, ?*pcre2_match_data_16, ?*pcre2_match_context_16, [*c]c_int, usize) c_int;
pub extern fn pcre2_match_16(?*const pcre2_code_16, PCRE2_SPTR16, usize, usize, u32, ?*pcre2_match_data_16, ?*pcre2_match_context_16) c_int;
pub extern fn pcre2_match_data_free_16(?*pcre2_match_data_16) void;
pub extern fn pcre2_get_mark_16(?*pcre2_match_data_16) PCRE2_SPTR16;
pub extern fn pcre2_get_match_data_size_16(?*pcre2_match_data_16) usize;
pub extern fn pcre2_get_ovector_count_16(?*pcre2_match_data_16) u32;
pub extern fn pcre2_get_ovector_pointer_16(?*pcre2_match_data_16) [*c]usize;
pub extern fn pcre2_get_startchar_16(?*pcre2_match_data_16) usize;
pub extern fn pcre2_substring_copy_byname_16(?*pcre2_match_data_16, PCRE2_SPTR16, [*c]PCRE2_UCHAR16, [*c]usize) c_int;
pub extern fn pcre2_substring_copy_bynumber_16(?*pcre2_match_data_16, u32, [*c]PCRE2_UCHAR16, [*c]usize) c_int;
pub extern fn pcre2_substring_free_16([*c]PCRE2_UCHAR16) void;
pub extern fn pcre2_substring_get_byname_16(?*pcre2_match_data_16, PCRE2_SPTR16, [*c][*c]PCRE2_UCHAR16, [*c]usize) c_int;
pub extern fn pcre2_substring_get_bynumber_16(?*pcre2_match_data_16, u32, [*c][*c]PCRE2_UCHAR16, [*c]usize) c_int;
pub extern fn pcre2_substring_length_byname_16(?*pcre2_match_data_16, PCRE2_SPTR16, [*c]usize) c_int;
pub extern fn pcre2_substring_length_bynumber_16(?*pcre2_match_data_16, u32, [*c]usize) c_int;
pub extern fn pcre2_substring_nametable_scan_16(?*const pcre2_code_16, PCRE2_SPTR16, [*c]PCRE2_SPTR16, [*c]PCRE2_SPTR16) c_int;
pub extern fn pcre2_substring_number_from_name_16(?*const pcre2_code_16, PCRE2_SPTR16) c_int;
pub extern fn pcre2_substring_list_free_16([*c]PCRE2_SPTR16) void;
pub extern fn pcre2_substring_list_get_16(?*pcre2_match_data_16, [*c][*c][*c]PCRE2_UCHAR16, [*c][*c]usize) c_int;
pub extern fn pcre2_serialize_encode_16([*c]?*const pcre2_code_16, i32, [*c][*c]u8, [*c]usize, ?*pcre2_general_context_16) i32;
pub extern fn pcre2_serialize_decode_16([*c]?*pcre2_code_16, i32, [*c]const u8, ?*pcre2_general_context_16) i32;
pub extern fn pcre2_serialize_get_number_of_codes_16([*c]const u8) i32;
pub extern fn pcre2_serialize_free_16([*c]u8) void;
pub extern fn pcre2_substitute_16(?*const pcre2_code_16, PCRE2_SPTR16, usize, usize, u32, ?*pcre2_match_data_16, ?*pcre2_match_context_16, PCRE2_SPTR16, usize, [*c]PCRE2_UCHAR16, [*c]usize) c_int;
pub extern fn pcre2_jit_compile_16(?*pcre2_code_16, u32) c_int;
pub extern fn pcre2_jit_match_16(?*const pcre2_code_16, PCRE2_SPTR16, usize, usize, u32, ?*pcre2_match_data_16, ?*pcre2_match_context_16) c_int;
pub extern fn pcre2_jit_free_unused_memory_16(?*pcre2_general_context_16) void;
pub extern fn pcre2_jit_stack_create_16(usize, usize, ?*pcre2_general_context_16) ?*pcre2_jit_stack_16;
pub extern fn pcre2_jit_stack_assign_16(?*pcre2_match_context_16, pcre2_jit_callback_16, ?*anyopaque) void;
pub extern fn pcre2_jit_stack_free_16(?*pcre2_jit_stack_16) void;
pub extern fn pcre2_get_error_message_16(c_int, [*c]PCRE2_UCHAR16, usize) c_int;
pub extern fn pcre2_maketables_16(?*pcre2_general_context_16) [*c]const u8;
pub extern fn pcre2_maketables_free_16(?*pcre2_general_context_16, [*c]const u8) void;
pub const struct_pcre2_real_general_context_32 = opaque {
    pub const pcre2_general_context_copy_32 = __root.pcre2_general_context_copy_32;
    pub const pcre2_general_context_free_32 = __root.pcre2_general_context_free_32;
    pub const pcre2_compile_context_create_32 = __root.pcre2_compile_context_create_32;
    pub const pcre2_convert_context_create_32 = __root.pcre2_convert_context_create_32;
    pub const pcre2_match_context_create_32 = __root.pcre2_match_context_create_32;
    pub const pcre2_jit_free_unused_memory_32 = __root.pcre2_jit_free_unused_memory_32;
    pub const pcre2_maketables_32 = __root.pcre2_maketables_32;
    pub const pcre2_maketables_free_32 = __root.pcre2_maketables_free_32;
    pub const @"32" = __root.pcre2_general_context_copy_32;
};
pub const pcre2_general_context_32 = struct_pcre2_real_general_context_32;
pub const struct_pcre2_real_compile_context_32 = opaque {
    pub const pcre2_compile_context_copy_32 = __root.pcre2_compile_context_copy_32;
    pub const pcre2_compile_context_free_32 = __root.pcre2_compile_context_free_32;
    pub const pcre2_set_bsr_32 = __root.pcre2_set_bsr_32;
    pub const pcre2_set_character_tables_32 = __root.pcre2_set_character_tables_32;
    pub const pcre2_set_compile_extra_options_32 = __root.pcre2_set_compile_extra_options_32;
    pub const pcre2_set_max_pattern_length_32 = __root.pcre2_set_max_pattern_length_32;
    pub const pcre2_set_newline_32 = __root.pcre2_set_newline_32;
    pub const pcre2_set_parens_nest_limit_32 = __root.pcre2_set_parens_nest_limit_32;
    pub const pcre2_set_compile_recursion_guard_32 = __root.pcre2_set_compile_recursion_guard_32;
    pub const @"32" = __root.pcre2_compile_context_copy_32;
};
pub const pcre2_compile_context_32 = struct_pcre2_real_compile_context_32;
pub const struct_pcre2_real_match_context_32 = opaque {
    pub const pcre2_match_context_copy_32 = __root.pcre2_match_context_copy_32;
    pub const pcre2_match_context_free_32 = __root.pcre2_match_context_free_32;
    pub const pcre2_set_callout_32 = __root.pcre2_set_callout_32;
    pub const pcre2_set_substitute_callout_32 = __root.pcre2_set_substitute_callout_32;
    pub const pcre2_set_depth_limit_32 = __root.pcre2_set_depth_limit_32;
    pub const pcre2_set_heap_limit_32 = __root.pcre2_set_heap_limit_32;
    pub const pcre2_set_match_limit_32 = __root.pcre2_set_match_limit_32;
    pub const pcre2_set_offset_limit_32 = __root.pcre2_set_offset_limit_32;
    pub const pcre2_set_recursion_limit_32 = __root.pcre2_set_recursion_limit_32;
    pub const pcre2_set_recursion_memory_management_32 = __root.pcre2_set_recursion_memory_management_32;
    pub const pcre2_jit_stack_assign_32 = __root.pcre2_jit_stack_assign_32;
    pub const @"32" = __root.pcre2_match_context_copy_32;
};
pub const pcre2_match_context_32 = struct_pcre2_real_match_context_32;
pub const struct_pcre2_real_convert_context_32 = opaque {
    pub const pcre2_convert_context_copy_32 = __root.pcre2_convert_context_copy_32;
    pub const pcre2_convert_context_free_32 = __root.pcre2_convert_context_free_32;
    pub const pcre2_set_glob_escape_32 = __root.pcre2_set_glob_escape_32;
    pub const pcre2_set_glob_separator_32 = __root.pcre2_set_glob_separator_32;
    pub const @"32" = __root.pcre2_convert_context_copy_32;
};
pub const pcre2_convert_context_32 = struct_pcre2_real_convert_context_32;
pub const struct_pcre2_real_code_32 = opaque {
    pub const pcre2_code_free_32 = __root.pcre2_code_free_32;
    pub const pcre2_code_copy_32 = __root.pcre2_code_copy_32;
    pub const pcre2_code_copy_with_tables_32 = __root.pcre2_code_copy_with_tables_32;
    pub const pcre2_pattern_info_32 = __root.pcre2_pattern_info_32;
    pub const pcre2_callout_enumerate_32 = __root.pcre2_callout_enumerate_32;
    pub const pcre2_match_data_create_from_pattern_32 = __root.pcre2_match_data_create_from_pattern_32;
    pub const pcre2_dfa_match_32 = __root.pcre2_dfa_match_32;
    pub const pcre2_match_32 = __root.pcre2_match_32;
    pub const pcre2_substring_nametable_scan_32 = __root.pcre2_substring_nametable_scan_32;
    pub const pcre2_substring_number_from_name_32 = __root.pcre2_substring_number_from_name_32;
    pub const pcre2_substitute_32 = __root.pcre2_substitute_32;
    pub const pcre2_jit_compile_32 = __root.pcre2_jit_compile_32;
    pub const pcre2_jit_match_32 = __root.pcre2_jit_match_32;
    pub const @"32" = __root.pcre2_code_free_32;
};
pub const pcre2_code_32 = struct_pcre2_real_code_32;
pub const struct_pcre2_real_match_data_32 = opaque {
    pub const pcre2_match_data_free_32 = __root.pcre2_match_data_free_32;
    pub const pcre2_get_mark_32 = __root.pcre2_get_mark_32;
    pub const pcre2_get_match_data_size_32 = __root.pcre2_get_match_data_size_32;
    pub const pcre2_get_ovector_count_32 = __root.pcre2_get_ovector_count_32;
    pub const pcre2_get_ovector_pointer_32 = __root.pcre2_get_ovector_pointer_32;
    pub const pcre2_get_startchar_32 = __root.pcre2_get_startchar_32;
    pub const pcre2_substring_copy_byname_32 = __root.pcre2_substring_copy_byname_32;
    pub const pcre2_substring_copy_bynumber_32 = __root.pcre2_substring_copy_bynumber_32;
    pub const pcre2_substring_get_byname_32 = __root.pcre2_substring_get_byname_32;
    pub const pcre2_substring_get_bynumber_32 = __root.pcre2_substring_get_bynumber_32;
    pub const pcre2_substring_length_byname_32 = __root.pcre2_substring_length_byname_32;
    pub const pcre2_substring_length_bynumber_32 = __root.pcre2_substring_length_bynumber_32;
    pub const pcre2_substring_list_get_32 = __root.pcre2_substring_list_get_32;
    pub const @"32" = __root.pcre2_match_data_free_32;
};
pub const pcre2_match_data_32 = struct_pcre2_real_match_data_32;
pub const struct_pcre2_real_jit_stack_32 = opaque {
    pub const pcre2_jit_stack_free_32 = __root.pcre2_jit_stack_free_32;
    pub const @"32" = __root.pcre2_jit_stack_free_32;
};
pub const pcre2_jit_stack_32 = struct_pcre2_real_jit_stack_32;
pub const pcre2_jit_callback_32 = ?*const fn (?*anyopaque) callconv(.c) ?*pcre2_jit_stack_32;
pub const struct_pcre2_callout_block_32 = extern struct {
    version: u32 = 0,
    callout_number: u32 = 0,
    capture_top: u32 = 0,
    capture_last: u32 = 0,
    offset_vector: [*c]usize = null,
    mark: PCRE2_SPTR32 = null,
    subject: PCRE2_SPTR32 = null,
    subject_length: usize = 0,
    start_match: usize = 0,
    current_position: usize = 0,
    pattern_position: usize = 0,
    next_item_length: usize = 0,
    callout_string_offset: usize = 0,
    callout_string_length: usize = 0,
    callout_string: PCRE2_SPTR32 = null,
    callout_flags: u32 = 0,
};
pub const pcre2_callout_block_32 = struct_pcre2_callout_block_32;
pub const struct_pcre2_callout_enumerate_block_32 = extern struct {
    version: u32 = 0,
    pattern_position: usize = 0,
    next_item_length: usize = 0,
    callout_number: u32 = 0,
    callout_string_offset: usize = 0,
    callout_string_length: usize = 0,
    callout_string: PCRE2_SPTR32 = null,
};
pub const pcre2_callout_enumerate_block_32 = struct_pcre2_callout_enumerate_block_32;
pub const struct_pcre2_substitute_callout_block_32 = extern struct {
    version: u32 = 0,
    input: PCRE2_SPTR32 = null,
    output: PCRE2_SPTR32 = null,
    output_offsets: [2]usize = @import("std").mem.zeroes([2]usize),
    ovector: [*c]usize = null,
    oveccount: u32 = 0,
    subscount: u32 = 0,
};
pub const pcre2_substitute_callout_block_32 = struct_pcre2_substitute_callout_block_32;
pub extern fn pcre2_config_32(u32, ?*anyopaque) c_int;
pub extern fn pcre2_general_context_copy_32(?*pcre2_general_context_32) ?*pcre2_general_context_32;
pub extern fn pcre2_general_context_create_32(?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque, ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void, ?*anyopaque) ?*pcre2_general_context_32;
pub extern fn pcre2_general_context_free_32(?*pcre2_general_context_32) void;
pub extern fn pcre2_compile_context_copy_32(?*pcre2_compile_context_32) ?*pcre2_compile_context_32;
pub extern fn pcre2_compile_context_create_32(?*pcre2_general_context_32) ?*pcre2_compile_context_32;
pub extern fn pcre2_compile_context_free_32(?*pcre2_compile_context_32) void;
pub extern fn pcre2_set_bsr_32(?*pcre2_compile_context_32, u32) c_int;
pub extern fn pcre2_set_character_tables_32(?*pcre2_compile_context_32, [*c]const u8) c_int;
pub extern fn pcre2_set_compile_extra_options_32(?*pcre2_compile_context_32, u32) c_int;
pub extern fn pcre2_set_max_pattern_length_32(?*pcre2_compile_context_32, usize) c_int;
pub extern fn pcre2_set_newline_32(?*pcre2_compile_context_32, u32) c_int;
pub extern fn pcre2_set_parens_nest_limit_32(?*pcre2_compile_context_32, u32) c_int;
pub extern fn pcre2_set_compile_recursion_guard_32(?*pcre2_compile_context_32, ?*const fn (u32, ?*anyopaque) callconv(.c) c_int, ?*anyopaque) c_int;
pub extern fn pcre2_convert_context_copy_32(?*pcre2_convert_context_32) ?*pcre2_convert_context_32;
pub extern fn pcre2_convert_context_create_32(?*pcre2_general_context_32) ?*pcre2_convert_context_32;
pub extern fn pcre2_convert_context_free_32(?*pcre2_convert_context_32) void;
pub extern fn pcre2_set_glob_escape_32(?*pcre2_convert_context_32, u32) c_int;
pub extern fn pcre2_set_glob_separator_32(?*pcre2_convert_context_32, u32) c_int;
pub extern fn pcre2_pattern_convert_32(PCRE2_SPTR32, usize, u32, [*c][*c]PCRE2_UCHAR32, [*c]usize, ?*pcre2_convert_context_32) c_int;
pub extern fn pcre2_converted_pattern_free_32([*c]PCRE2_UCHAR32) void;
pub extern fn pcre2_match_context_copy_32(?*pcre2_match_context_32) ?*pcre2_match_context_32;
pub extern fn pcre2_match_context_create_32(?*pcre2_general_context_32) ?*pcre2_match_context_32;
pub extern fn pcre2_match_context_free_32(?*pcre2_match_context_32) void;
pub extern fn pcre2_set_callout_32(?*pcre2_match_context_32, ?*const fn ([*c]pcre2_callout_block_32, ?*anyopaque) callconv(.c) c_int, ?*anyopaque) c_int;
pub extern fn pcre2_set_substitute_callout_32(?*pcre2_match_context_32, ?*const fn ([*c]pcre2_substitute_callout_block_32, ?*anyopaque) callconv(.c) c_int, ?*anyopaque) c_int;
pub extern fn pcre2_set_depth_limit_32(?*pcre2_match_context_32, u32) c_int;
pub extern fn pcre2_set_heap_limit_32(?*pcre2_match_context_32, u32) c_int;
pub extern fn pcre2_set_match_limit_32(?*pcre2_match_context_32, u32) c_int;
pub extern fn pcre2_set_offset_limit_32(?*pcre2_match_context_32, usize) c_int;
pub extern fn pcre2_set_recursion_limit_32(?*pcre2_match_context_32, u32) c_int;
pub extern fn pcre2_set_recursion_memory_management_32(?*pcre2_match_context_32, ?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque, ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void, ?*anyopaque) c_int;
pub extern fn pcre2_compile_32(PCRE2_SPTR32, usize, u32, [*c]c_int, [*c]usize, ?*pcre2_compile_context_32) ?*pcre2_code_32;
pub extern fn pcre2_code_free_32(?*pcre2_code_32) void;
pub extern fn pcre2_code_copy_32(?*const pcre2_code_32) ?*pcre2_code_32;
pub extern fn pcre2_code_copy_with_tables_32(?*const pcre2_code_32) ?*pcre2_code_32;
pub extern fn pcre2_pattern_info_32(?*const pcre2_code_32, u32, ?*anyopaque) c_int;
pub extern fn pcre2_callout_enumerate_32(?*const pcre2_code_32, ?*const fn ([*c]pcre2_callout_enumerate_block_32, ?*anyopaque) callconv(.c) c_int, ?*anyopaque) c_int;
pub extern fn pcre2_match_data_create_32(u32, ?*pcre2_general_context_32) ?*pcre2_match_data_32;
pub extern fn pcre2_match_data_create_from_pattern_32(?*const pcre2_code_32, ?*pcre2_general_context_32) ?*pcre2_match_data_32;
pub extern fn pcre2_dfa_match_32(?*const pcre2_code_32, PCRE2_SPTR32, usize, usize, u32, ?*pcre2_match_data_32, ?*pcre2_match_context_32, [*c]c_int, usize) c_int;
pub extern fn pcre2_match_32(?*const pcre2_code_32, PCRE2_SPTR32, usize, usize, u32, ?*pcre2_match_data_32, ?*pcre2_match_context_32) c_int;
pub extern fn pcre2_match_data_free_32(?*pcre2_match_data_32) void;
pub extern fn pcre2_get_mark_32(?*pcre2_match_data_32) PCRE2_SPTR32;
pub extern fn pcre2_get_match_data_size_32(?*pcre2_match_data_32) usize;
pub extern fn pcre2_get_ovector_count_32(?*pcre2_match_data_32) u32;
pub extern fn pcre2_get_ovector_pointer_32(?*pcre2_match_data_32) [*c]usize;
pub extern fn pcre2_get_startchar_32(?*pcre2_match_data_32) usize;
pub extern fn pcre2_substring_copy_byname_32(?*pcre2_match_data_32, PCRE2_SPTR32, [*c]PCRE2_UCHAR32, [*c]usize) c_int;
pub extern fn pcre2_substring_copy_bynumber_32(?*pcre2_match_data_32, u32, [*c]PCRE2_UCHAR32, [*c]usize) c_int;
pub extern fn pcre2_substring_free_32([*c]PCRE2_UCHAR32) void;
pub extern fn pcre2_substring_get_byname_32(?*pcre2_match_data_32, PCRE2_SPTR32, [*c][*c]PCRE2_UCHAR32, [*c]usize) c_int;
pub extern fn pcre2_substring_get_bynumber_32(?*pcre2_match_data_32, u32, [*c][*c]PCRE2_UCHAR32, [*c]usize) c_int;
pub extern fn pcre2_substring_length_byname_32(?*pcre2_match_data_32, PCRE2_SPTR32, [*c]usize) c_int;
pub extern fn pcre2_substring_length_bynumber_32(?*pcre2_match_data_32, u32, [*c]usize) c_int;
pub extern fn pcre2_substring_nametable_scan_32(?*const pcre2_code_32, PCRE2_SPTR32, [*c]PCRE2_SPTR32, [*c]PCRE2_SPTR32) c_int;
pub extern fn pcre2_substring_number_from_name_32(?*const pcre2_code_32, PCRE2_SPTR32) c_int;
pub extern fn pcre2_substring_list_free_32([*c]PCRE2_SPTR32) void;
pub extern fn pcre2_substring_list_get_32(?*pcre2_match_data_32, [*c][*c][*c]PCRE2_UCHAR32, [*c][*c]usize) c_int;
pub extern fn pcre2_serialize_encode_32([*c]?*const pcre2_code_32, i32, [*c][*c]u8, [*c]usize, ?*pcre2_general_context_32) i32;
pub extern fn pcre2_serialize_decode_32([*c]?*pcre2_code_32, i32, [*c]const u8, ?*pcre2_general_context_32) i32;
pub extern fn pcre2_serialize_get_number_of_codes_32([*c]const u8) i32;
pub extern fn pcre2_serialize_free_32([*c]u8) void;
pub extern fn pcre2_substitute_32(?*const pcre2_code_32, PCRE2_SPTR32, usize, usize, u32, ?*pcre2_match_data_32, ?*pcre2_match_context_32, PCRE2_SPTR32, usize, [*c]PCRE2_UCHAR32, [*c]usize) c_int;
pub extern fn pcre2_jit_compile_32(?*pcre2_code_32, u32) c_int;
pub extern fn pcre2_jit_match_32(?*const pcre2_code_32, PCRE2_SPTR32, usize, usize, u32, ?*pcre2_match_data_32, ?*pcre2_match_context_32) c_int;
pub extern fn pcre2_jit_free_unused_memory_32(?*pcre2_general_context_32) void;
pub extern fn pcre2_jit_stack_create_32(usize, usize, ?*pcre2_general_context_32) ?*pcre2_jit_stack_32;
pub extern fn pcre2_jit_stack_assign_32(?*pcre2_match_context_32, pcre2_jit_callback_32, ?*anyopaque) void;
pub extern fn pcre2_jit_stack_free_32(?*pcre2_jit_stack_32) void;
pub extern fn pcre2_get_error_message_32(c_int, [*c]PCRE2_UCHAR32, usize) c_int;
pub extern fn pcre2_maketables_32(?*pcre2_general_context_32) [*c]const u8;
pub extern fn pcre2_maketables_free_32(?*pcre2_general_context_32, [*c]const u8) void;
pub extern fn __errno_location() [*c]c_int;
pub extern var program_invocation_name: [*c]u8;
pub extern var program_invocation_short_name: [*c]u8;
pub const error_t = c_int;
pub const float_t = f32;
pub const double_t = f64;
pub const FP_INT_UPWARD: c_int = 0;
pub const FP_INT_DOWNWARD: c_int = 1;
pub const FP_INT_TOWARDZERO: c_int = 2;
pub const FP_INT_TONEARESTFROMZERO: c_int = 3;
pub const FP_INT_TONEAREST: c_int = 4;
const enum_unnamed_9 = c_uint;
pub extern fn __fpclassify(__value: f64) c_int;
pub extern fn __signbit(__value: f64) c_int;
pub extern fn __isinf(__value: f64) c_int;
pub extern fn __finite(__value: f64) c_int;
pub extern fn __isnan(__value: f64) c_int;
pub extern fn __iseqsig(__x: f64, __y: f64) c_int;
pub extern fn __issignaling(__value: f64) c_int;
pub extern fn acos(__x: f64) f64;
pub extern fn __acos(__x: f64) f64;
pub extern fn asin(__x: f64) f64;
pub extern fn __asin(__x: f64) f64;
pub extern fn atan(__x: f64) f64;
pub extern fn __atan(__x: f64) f64;
pub extern fn atan2(__y: f64, __x: f64) f64;
pub extern fn __atan2(__y: f64, __x: f64) f64;
pub extern fn cos(__x: f64) f64;
pub extern fn __cos(__x: f64) f64;
pub extern fn sin(__x: f64) f64;
pub extern fn __sin(__x: f64) f64;
pub extern fn tan(__x: f64) f64;
pub extern fn __tan(__x: f64) f64;
pub extern fn cosh(__x: f64) f64;
pub extern fn __cosh(__x: f64) f64;
pub extern fn sinh(__x: f64) f64;
pub extern fn __sinh(__x: f64) f64;
pub extern fn tanh(__x: f64) f64;
pub extern fn __tanh(__x: f64) f64;
pub extern fn sincos(__x: f64, __sinx: [*c]f64, __cosx: [*c]f64) void;
pub extern fn __sincos(__x: f64, __sinx: [*c]f64, __cosx: [*c]f64) void;
pub extern fn acosh(__x: f64) f64;
pub extern fn __acosh(__x: f64) f64;
pub extern fn asinh(__x: f64) f64;
pub extern fn __asinh(__x: f64) f64;
pub extern fn atanh(__x: f64) f64;
pub extern fn __atanh(__x: f64) f64;
pub extern fn exp(__x: f64) f64;
pub extern fn __exp(__x: f64) f64;
pub extern fn frexp(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn __frexp(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn ldexp(__x: f64, __exponent: c_int) f64;
pub extern fn __ldexp(__x: f64, __exponent: c_int) f64;
pub extern fn log(__x: f64) f64;
pub extern fn __log(__x: f64) f64;
pub extern fn log10(__x: f64) f64;
pub extern fn __log10(__x: f64) f64;
pub extern fn modf(__x: f64, __iptr: [*c]f64) f64;
pub extern fn __modf(__x: f64, __iptr: [*c]f64) f64;
pub extern fn exp10(__x: f64) f64;
pub extern fn __exp10(__x: f64) f64;
pub extern fn expm1(__x: f64) f64;
pub extern fn __expm1(__x: f64) f64;
pub extern fn log1p(__x: f64) f64;
pub extern fn __log1p(__x: f64) f64;
pub extern fn logb(__x: f64) f64;
pub extern fn __logb(__x: f64) f64;
pub extern fn exp2(__x: f64) f64;
pub extern fn __exp2(__x: f64) f64;
pub extern fn log2(__x: f64) f64;
pub extern fn __log2(__x: f64) f64;
pub extern fn pow(__x: f64, __y: f64) f64;
pub extern fn __pow(__x: f64, __y: f64) f64;
pub extern fn sqrt(__x: f64) f64;
pub extern fn __sqrt(__x: f64) f64;
pub extern fn hypot(__x: f64, __y: f64) f64;
pub extern fn __hypot(__x: f64, __y: f64) f64;
pub extern fn cbrt(__x: f64) f64;
pub extern fn __cbrt(__x: f64) f64;
pub extern fn ceil(__x: f64) f64;
pub extern fn __ceil(__x: f64) f64;
pub extern fn fabs(__x: f64) f64;
pub extern fn __fabs(__x: f64) f64;
pub extern fn floor(__x: f64) f64;
pub extern fn __floor(__x: f64) f64;
pub extern fn fmod(__x: f64, __y: f64) f64;
pub extern fn __fmod(__x: f64, __y: f64) f64;
pub extern fn isinf(__value: f64) c_int;
pub extern fn finite(__value: f64) c_int;
pub extern fn drem(__x: f64, __y: f64) f64;
pub extern fn __drem(__x: f64, __y: f64) f64;
pub extern fn significand(__x: f64) f64;
pub extern fn __significand(__x: f64) f64;
pub extern fn copysign(__x: f64, __y: f64) f64;
pub extern fn __copysign(__x: f64, __y: f64) f64;
pub extern fn nan(__tagb: [*c]const u8) f64;
pub extern fn __nan(__tagb: [*c]const u8) f64;
pub extern fn isnan(__value: f64) c_int;
pub extern fn j0(f64) f64;
pub extern fn __j0(f64) f64;
pub extern fn j1(f64) f64;
pub extern fn __j1(f64) f64;
pub extern fn jn(c_int, f64) f64;
pub extern fn __jn(c_int, f64) f64;
pub extern fn y0(f64) f64;
pub extern fn __y0(f64) f64;
pub extern fn y1(f64) f64;
pub extern fn __y1(f64) f64;
pub extern fn yn(c_int, f64) f64;
pub extern fn __yn(c_int, f64) f64;
pub extern fn erf(f64) f64;
pub extern fn __erf(f64) f64;
pub extern fn erfc(f64) f64;
pub extern fn __erfc(f64) f64;
pub extern fn lgamma(f64) f64;
pub extern fn __lgamma(f64) f64;
pub extern fn tgamma(f64) f64;
pub extern fn __tgamma(f64) f64;
pub extern fn gamma(f64) f64;
pub extern fn __gamma(f64) f64;
pub extern fn lgamma_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn __lgamma_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn rint(__x: f64) f64;
pub extern fn __rint(__x: f64) f64;
pub extern fn nextafter(__x: f64, __y: f64) f64;
pub extern fn __nextafter(__x: f64, __y: f64) f64;
pub extern fn nexttoward(__x: f64, __y: c_longdouble) f64;
pub extern fn __nexttoward(__x: f64, __y: c_longdouble) f64;
pub extern fn nextdown(__x: f64) f64;
pub extern fn __nextdown(__x: f64) f64;
pub extern fn nextup(__x: f64) f64;
pub extern fn __nextup(__x: f64) f64;
pub extern fn remainder(__x: f64, __y: f64) f64;
pub extern fn __remainder(__x: f64, __y: f64) f64;
pub extern fn scalbn(__x: f64, __n: c_int) f64;
pub extern fn __scalbn(__x: f64, __n: c_int) f64;
pub extern fn ilogb(__x: f64) c_int;
pub extern fn __ilogb(__x: f64) c_int;
pub extern fn llogb(__x: f64) c_long;
pub extern fn __llogb(__x: f64) c_long;
pub extern fn scalbln(__x: f64, __n: c_long) f64;
pub extern fn __scalbln(__x: f64, __n: c_long) f64;
pub extern fn nearbyint(__x: f64) f64;
pub extern fn __nearbyint(__x: f64) f64;
pub extern fn round(__x: f64) f64;
pub extern fn __round(__x: f64) f64;
pub extern fn trunc(__x: f64) f64;
pub extern fn __trunc(__x: f64) f64;
pub extern fn remquo(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn __remquo(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn lrint(__x: f64) c_long;
pub extern fn __lrint(__x: f64) c_long;
pub extern fn llrint(__x: f64) c_longlong;
pub extern fn __llrint(__x: f64) c_longlong;
pub extern fn lround(__x: f64) c_long;
pub extern fn __lround(__x: f64) c_long;
pub extern fn llround(__x: f64) c_longlong;
pub extern fn __llround(__x: f64) c_longlong;
pub extern fn fdim(__x: f64, __y: f64) f64;
pub extern fn __fdim(__x: f64, __y: f64) f64;
pub extern fn fmax(__x: f64, __y: f64) f64;
pub extern fn __fmax(__x: f64, __y: f64) f64;
pub extern fn fmin(__x: f64, __y: f64) f64;
pub extern fn __fmin(__x: f64, __y: f64) f64;
pub extern fn fma(__x: f64, __y: f64, __z: f64) f64;
pub extern fn __fma(__x: f64, __y: f64, __z: f64) f64;
pub extern fn roundeven(__x: f64) f64;
pub extern fn __roundeven(__x: f64) f64;
pub extern fn fromfp(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfp(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfp(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfp(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpx(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpx(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpx(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpx(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalize(__cx: [*c]f64, __x: [*c]const f64) c_int;
pub extern fn fmaxmag(__x: f64, __y: f64) f64;
pub extern fn __fmaxmag(__x: f64, __y: f64) f64;
pub extern fn fminmag(__x: f64, __y: f64) f64;
pub extern fn __fminmag(__x: f64, __y: f64) f64;
pub extern fn fmaximum(__x: f64, __y: f64) f64;
pub extern fn __fmaximum(__x: f64, __y: f64) f64;
pub extern fn fminimum(__x: f64, __y: f64) f64;
pub extern fn __fminimum(__x: f64, __y: f64) f64;
pub extern fn fmaximum_num(__x: f64, __y: f64) f64;
pub extern fn __fmaximum_num(__x: f64, __y: f64) f64;
pub extern fn fminimum_num(__x: f64, __y: f64) f64;
pub extern fn __fminimum_num(__x: f64, __y: f64) f64;
pub extern fn fmaximum_mag(__x: f64, __y: f64) f64;
pub extern fn __fmaximum_mag(__x: f64, __y: f64) f64;
pub extern fn fminimum_mag(__x: f64, __y: f64) f64;
pub extern fn __fminimum_mag(__x: f64, __y: f64) f64;
pub extern fn fmaximum_mag_num(__x: f64, __y: f64) f64;
pub extern fn __fmaximum_mag_num(__x: f64, __y: f64) f64;
pub extern fn fminimum_mag_num(__x: f64, __y: f64) f64;
pub extern fn __fminimum_mag_num(__x: f64, __y: f64) f64;
pub extern fn totalorder(__x: [*c]const f64, __y: [*c]const f64) c_int;
pub extern fn totalordermag(__x: [*c]const f64, __y: [*c]const f64) c_int;
pub extern fn getpayload(__x: [*c]const f64) f64;
pub extern fn __getpayload(__x: [*c]const f64) f64;
pub extern fn setpayload(__x: [*c]f64, __payload: f64) c_int;
pub extern fn setpayloadsig(__x: [*c]f64, __payload: f64) c_int;
pub extern fn scalb(__x: f64, __n: f64) f64;
pub extern fn __scalb(__x: f64, __n: f64) f64;
pub extern fn __fpclassifyf(__value: f32) c_int;
pub extern fn __signbitf(__value: f32) c_int;
pub extern fn __isinff(__value: f32) c_int;
pub extern fn __finitef(__value: f32) c_int;
pub extern fn __isnanf(__value: f32) c_int;
pub extern fn __iseqsigf(__x: f32, __y: f32) c_int;
pub extern fn __issignalingf(__value: f32) c_int;
pub extern fn acosf(__x: f32) f32;
pub extern fn __acosf(__x: f32) f32;
pub extern fn asinf(__x: f32) f32;
pub extern fn __asinf(__x: f32) f32;
pub extern fn atanf(__x: f32) f32;
pub extern fn __atanf(__x: f32) f32;
pub extern fn atan2f(__y: f32, __x: f32) f32;
pub extern fn __atan2f(__y: f32, __x: f32) f32;
pub extern fn cosf(__x: f32) f32;
pub extern fn __cosf(__x: f32) f32;
pub extern fn sinf(__x: f32) f32;
pub extern fn __sinf(__x: f32) f32;
pub extern fn tanf(__x: f32) f32;
pub extern fn __tanf(__x: f32) f32;
pub extern fn coshf(__x: f32) f32;
pub extern fn __coshf(__x: f32) f32;
pub extern fn sinhf(__x: f32) f32;
pub extern fn __sinhf(__x: f32) f32;
pub extern fn tanhf(__x: f32) f32;
pub extern fn __tanhf(__x: f32) f32;
pub extern fn sincosf(__x: f32, __sinx: [*c]f32, __cosx: [*c]f32) void;
pub extern fn __sincosf(__x: f32, __sinx: [*c]f32, __cosx: [*c]f32) void;
pub extern fn acoshf(__x: f32) f32;
pub extern fn __acoshf(__x: f32) f32;
pub extern fn asinhf(__x: f32) f32;
pub extern fn __asinhf(__x: f32) f32;
pub extern fn atanhf(__x: f32) f32;
pub extern fn __atanhf(__x: f32) f32;
pub extern fn expf(__x: f32) f32;
pub extern fn __expf(__x: f32) f32;
pub extern fn frexpf(__x: f32, __exponent: [*c]c_int) f32;
pub extern fn __frexpf(__x: f32, __exponent: [*c]c_int) f32;
pub extern fn ldexpf(__x: f32, __exponent: c_int) f32;
pub extern fn __ldexpf(__x: f32, __exponent: c_int) f32;
pub extern fn logf(__x: f32) f32;
pub extern fn __logf(__x: f32) f32;
pub extern fn log10f(__x: f32) f32;
pub extern fn __log10f(__x: f32) f32;
pub extern fn modff(__x: f32, __iptr: [*c]f32) f32;
pub extern fn __modff(__x: f32, __iptr: [*c]f32) f32;
pub extern fn exp10f(__x: f32) f32;
pub extern fn __exp10f(__x: f32) f32;
pub extern fn expm1f(__x: f32) f32;
pub extern fn __expm1f(__x: f32) f32;
pub extern fn log1pf(__x: f32) f32;
pub extern fn __log1pf(__x: f32) f32;
pub extern fn logbf(__x: f32) f32;
pub extern fn __logbf(__x: f32) f32;
pub extern fn exp2f(__x: f32) f32;
pub extern fn __exp2f(__x: f32) f32;
pub extern fn log2f(__x: f32) f32;
pub extern fn __log2f(__x: f32) f32;
pub extern fn powf(__x: f32, __y: f32) f32;
pub extern fn __powf(__x: f32, __y: f32) f32;
pub extern fn sqrtf(__x: f32) f32;
pub extern fn __sqrtf(__x: f32) f32;
pub extern fn hypotf(__x: f32, __y: f32) f32;
pub extern fn __hypotf(__x: f32, __y: f32) f32;
pub extern fn cbrtf(__x: f32) f32;
pub extern fn __cbrtf(__x: f32) f32;
pub extern fn ceilf(__x: f32) f32;
pub extern fn __ceilf(__x: f32) f32;
pub extern fn fabsf(__x: f32) f32;
pub extern fn __fabsf(__x: f32) f32;
pub extern fn floorf(__x: f32) f32;
pub extern fn __floorf(__x: f32) f32;
pub extern fn fmodf(__x: f32, __y: f32) f32;
pub extern fn __fmodf(__x: f32, __y: f32) f32;
pub extern fn isinff(__value: f32) c_int;
pub extern fn finitef(__value: f32) c_int;
pub extern fn dremf(__x: f32, __y: f32) f32;
pub extern fn __dremf(__x: f32, __y: f32) f32;
pub extern fn significandf(__x: f32) f32;
pub extern fn __significandf(__x: f32) f32;
pub extern fn copysignf(__x: f32, __y: f32) f32;
pub extern fn __copysignf(__x: f32, __y: f32) f32;
pub extern fn nanf(__tagb: [*c]const u8) f32;
pub extern fn __nanf(__tagb: [*c]const u8) f32;
pub extern fn isnanf(__value: f32) c_int;
pub extern fn j0f(f32) f32;
pub extern fn __j0f(f32) f32;
pub extern fn j1f(f32) f32;
pub extern fn __j1f(f32) f32;
pub extern fn jnf(c_int, f32) f32;
pub extern fn __jnf(c_int, f32) f32;
pub extern fn y0f(f32) f32;
pub extern fn __y0f(f32) f32;
pub extern fn y1f(f32) f32;
pub extern fn __y1f(f32) f32;
pub extern fn ynf(c_int, f32) f32;
pub extern fn __ynf(c_int, f32) f32;
pub extern fn erff(f32) f32;
pub extern fn __erff(f32) f32;
pub extern fn erfcf(f32) f32;
pub extern fn __erfcf(f32) f32;
pub extern fn lgammaf(f32) f32;
pub extern fn __lgammaf(f32) f32;
pub extern fn tgammaf(f32) f32;
pub extern fn __tgammaf(f32) f32;
pub extern fn gammaf(f32) f32;
pub extern fn __gammaf(f32) f32;
pub extern fn lgammaf_r(f32, __signgamp: [*c]c_int) f32;
pub extern fn __lgammaf_r(f32, __signgamp: [*c]c_int) f32;
pub extern fn rintf(__x: f32) f32;
pub extern fn __rintf(__x: f32) f32;
pub extern fn nextafterf(__x: f32, __y: f32) f32;
pub extern fn __nextafterf(__x: f32, __y: f32) f32;
pub extern fn nexttowardf(__x: f32, __y: c_longdouble) f32;
pub extern fn __nexttowardf(__x: f32, __y: c_longdouble) f32;
pub extern fn nextdownf(__x: f32) f32;
pub extern fn __nextdownf(__x: f32) f32;
pub extern fn nextupf(__x: f32) f32;
pub extern fn __nextupf(__x: f32) f32;
pub extern fn remainderf(__x: f32, __y: f32) f32;
pub extern fn __remainderf(__x: f32, __y: f32) f32;
pub extern fn scalbnf(__x: f32, __n: c_int) f32;
pub extern fn __scalbnf(__x: f32, __n: c_int) f32;
pub extern fn ilogbf(__x: f32) c_int;
pub extern fn __ilogbf(__x: f32) c_int;
pub extern fn llogbf(__x: f32) c_long;
pub extern fn __llogbf(__x: f32) c_long;
pub extern fn scalblnf(__x: f32, __n: c_long) f32;
pub extern fn __scalblnf(__x: f32, __n: c_long) f32;
pub extern fn nearbyintf(__x: f32) f32;
pub extern fn __nearbyintf(__x: f32) f32;
pub extern fn roundf(__x: f32) f32;
pub extern fn __roundf(__x: f32) f32;
pub extern fn truncf(__x: f32) f32;
pub extern fn __truncf(__x: f32) f32;
pub extern fn remquof(__x: f32, __y: f32, __quo: [*c]c_int) f32;
pub extern fn __remquof(__x: f32, __y: f32, __quo: [*c]c_int) f32;
pub extern fn lrintf(__x: f32) c_long;
pub extern fn __lrintf(__x: f32) c_long;
pub extern fn llrintf(__x: f32) c_longlong;
pub extern fn __llrintf(__x: f32) c_longlong;
pub extern fn lroundf(__x: f32) c_long;
pub extern fn __lroundf(__x: f32) c_long;
pub extern fn llroundf(__x: f32) c_longlong;
pub extern fn __llroundf(__x: f32) c_longlong;
pub extern fn fdimf(__x: f32, __y: f32) f32;
pub extern fn __fdimf(__x: f32, __y: f32) f32;
pub extern fn fmaxf(__x: f32, __y: f32) f32;
pub extern fn __fmaxf(__x: f32, __y: f32) f32;
pub extern fn fminf(__x: f32, __y: f32) f32;
pub extern fn __fminf(__x: f32, __y: f32) f32;
pub extern fn fmaf(__x: f32, __y: f32, __z: f32) f32;
pub extern fn __fmaf(__x: f32, __y: f32, __z: f32) f32;
pub extern fn roundevenf(__x: f32) f32;
pub extern fn __roundevenf(__x: f32) f32;
pub extern fn fromfpf(__x: f32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpf(__x: f32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpf(__x: f32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpf(__x: f32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpxf(__x: f32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpxf(__x: f32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpxf(__x: f32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpxf(__x: f32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalizef(__cx: [*c]f32, __x: [*c]const f32) c_int;
pub extern fn fmaxmagf(__x: f32, __y: f32) f32;
pub extern fn __fmaxmagf(__x: f32, __y: f32) f32;
pub extern fn fminmagf(__x: f32, __y: f32) f32;
pub extern fn __fminmagf(__x: f32, __y: f32) f32;
pub extern fn fmaximumf(__x: f32, __y: f32) f32;
pub extern fn __fmaximumf(__x: f32, __y: f32) f32;
pub extern fn fminimumf(__x: f32, __y: f32) f32;
pub extern fn __fminimumf(__x: f32, __y: f32) f32;
pub extern fn fmaximum_numf(__x: f32, __y: f32) f32;
pub extern fn __fmaximum_numf(__x: f32, __y: f32) f32;
pub extern fn fminimum_numf(__x: f32, __y: f32) f32;
pub extern fn __fminimum_numf(__x: f32, __y: f32) f32;
pub extern fn fmaximum_magf(__x: f32, __y: f32) f32;
pub extern fn __fmaximum_magf(__x: f32, __y: f32) f32;
pub extern fn fminimum_magf(__x: f32, __y: f32) f32;
pub extern fn __fminimum_magf(__x: f32, __y: f32) f32;
pub extern fn fmaximum_mag_numf(__x: f32, __y: f32) f32;
pub extern fn __fmaximum_mag_numf(__x: f32, __y: f32) f32;
pub extern fn fminimum_mag_numf(__x: f32, __y: f32) f32;
pub extern fn __fminimum_mag_numf(__x: f32, __y: f32) f32;
pub extern fn totalorderf(__x: [*c]const f32, __y: [*c]const f32) c_int;
pub extern fn totalordermagf(__x: [*c]const f32, __y: [*c]const f32) c_int;
pub extern fn getpayloadf(__x: [*c]const f32) f32;
pub extern fn __getpayloadf(__x: [*c]const f32) f32;
pub extern fn setpayloadf(__x: [*c]f32, __payload: f32) c_int;
pub extern fn setpayloadsigf(__x: [*c]f32, __payload: f32) c_int;
pub extern fn scalbf(__x: f32, __n: f32) f32;
pub extern fn __scalbf(__x: f32, __n: f32) f32;
pub extern fn __fpclassifyl(__value: c_longdouble) c_int;
pub extern fn __signbitl(__value: c_longdouble) c_int;
pub extern fn __isinfl(__value: c_longdouble) c_int;
pub extern fn __finitel(__value: c_longdouble) c_int;
pub extern fn __isnanl(__value: c_longdouble) c_int;
pub extern fn __iseqsigl(__x: c_longdouble, __y: c_longdouble) c_int;
pub extern fn __issignalingl(__value: c_longdouble) c_int;
pub extern fn acosl(__x: c_longdouble) c_longdouble;
pub extern fn __acosl(__x: c_longdouble) c_longdouble;
pub extern fn asinl(__x: c_longdouble) c_longdouble;
pub extern fn __asinl(__x: c_longdouble) c_longdouble;
pub extern fn atanl(__x: c_longdouble) c_longdouble;
pub extern fn __atanl(__x: c_longdouble) c_longdouble;
pub extern fn atan2l(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn __atan2l(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn cosl(__x: c_longdouble) c_longdouble;
pub extern fn __cosl(__x: c_longdouble) c_longdouble;
pub extern fn sinl(__x: c_longdouble) c_longdouble;
pub extern fn __sinl(__x: c_longdouble) c_longdouble;
pub extern fn tanl(__x: c_longdouble) c_longdouble;
pub extern fn __tanl(__x: c_longdouble) c_longdouble;
pub extern fn coshl(__x: c_longdouble) c_longdouble;
pub extern fn __coshl(__x: c_longdouble) c_longdouble;
pub extern fn sinhl(__x: c_longdouble) c_longdouble;
pub extern fn __sinhl(__x: c_longdouble) c_longdouble;
pub extern fn tanhl(__x: c_longdouble) c_longdouble;
pub extern fn __tanhl(__x: c_longdouble) c_longdouble;
pub extern fn sincosl(__x: c_longdouble, __sinx: [*c]c_longdouble, __cosx: [*c]c_longdouble) void;
pub extern fn __sincosl(__x: c_longdouble, __sinx: [*c]c_longdouble, __cosx: [*c]c_longdouble) void;
pub extern fn acoshl(__x: c_longdouble) c_longdouble;
pub extern fn __acoshl(__x: c_longdouble) c_longdouble;
pub extern fn asinhl(__x: c_longdouble) c_longdouble;
pub extern fn __asinhl(__x: c_longdouble) c_longdouble;
pub extern fn atanhl(__x: c_longdouble) c_longdouble;
pub extern fn __atanhl(__x: c_longdouble) c_longdouble;
pub extern fn expl(__x: c_longdouble) c_longdouble;
pub extern fn __expl(__x: c_longdouble) c_longdouble;
pub extern fn frexpl(__x: c_longdouble, __exponent: [*c]c_int) c_longdouble;
pub extern fn __frexpl(__x: c_longdouble, __exponent: [*c]c_int) c_longdouble;
pub extern fn ldexpl(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn __ldexpl(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn logl(__x: c_longdouble) c_longdouble;
pub extern fn __logl(__x: c_longdouble) c_longdouble;
pub extern fn log10l(__x: c_longdouble) c_longdouble;
pub extern fn __log10l(__x: c_longdouble) c_longdouble;
pub extern fn modfl(__x: c_longdouble, __iptr: [*c]c_longdouble) c_longdouble;
pub extern fn __modfl(__x: c_longdouble, __iptr: [*c]c_longdouble) c_longdouble;
pub extern fn exp10l(__x: c_longdouble) c_longdouble;
pub extern fn __exp10l(__x: c_longdouble) c_longdouble;
pub extern fn expm1l(__x: c_longdouble) c_longdouble;
pub extern fn __expm1l(__x: c_longdouble) c_longdouble;
pub extern fn log1pl(__x: c_longdouble) c_longdouble;
pub extern fn __log1pl(__x: c_longdouble) c_longdouble;
pub extern fn logbl(__x: c_longdouble) c_longdouble;
pub extern fn __logbl(__x: c_longdouble) c_longdouble;
pub extern fn exp2l(__x: c_longdouble) c_longdouble;
pub extern fn __exp2l(__x: c_longdouble) c_longdouble;
pub extern fn log2l(__x: c_longdouble) c_longdouble;
pub extern fn __log2l(__x: c_longdouble) c_longdouble;
pub extern fn powl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __powl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn sqrtl(__x: c_longdouble) c_longdouble;
pub extern fn __sqrtl(__x: c_longdouble) c_longdouble;
pub extern fn hypotl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __hypotl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn cbrtl(__x: c_longdouble) c_longdouble;
pub extern fn __cbrtl(__x: c_longdouble) c_longdouble;
pub extern fn ceill(__x: c_longdouble) c_longdouble;
pub extern fn __ceill(__x: c_longdouble) c_longdouble;
pub extern fn fabsl(__x: c_longdouble) c_longdouble;
pub extern fn __fabsl(__x: c_longdouble) c_longdouble;
pub extern fn floorl(__x: c_longdouble) c_longdouble;
pub extern fn __floorl(__x: c_longdouble) c_longdouble;
pub extern fn fmodl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmodl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn isinfl(__value: c_longdouble) c_int;
pub extern fn finitel(__value: c_longdouble) c_int;
pub extern fn dreml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __dreml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn significandl(__x: c_longdouble) c_longdouble;
pub extern fn __significandl(__x: c_longdouble) c_longdouble;
pub extern fn copysignl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __copysignl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nanl(__tagb: [*c]const u8) c_longdouble;
pub extern fn __nanl(__tagb: [*c]const u8) c_longdouble;
pub extern fn isnanl(__value: c_longdouble) c_int;
pub extern fn j0l(c_longdouble) c_longdouble;
pub extern fn __j0l(c_longdouble) c_longdouble;
pub extern fn j1l(c_longdouble) c_longdouble;
pub extern fn __j1l(c_longdouble) c_longdouble;
pub extern fn jnl(c_int, c_longdouble) c_longdouble;
pub extern fn __jnl(c_int, c_longdouble) c_longdouble;
pub extern fn y0l(c_longdouble) c_longdouble;
pub extern fn __y0l(c_longdouble) c_longdouble;
pub extern fn y1l(c_longdouble) c_longdouble;
pub extern fn __y1l(c_longdouble) c_longdouble;
pub extern fn ynl(c_int, c_longdouble) c_longdouble;
pub extern fn __ynl(c_int, c_longdouble) c_longdouble;
pub extern fn erfl(c_longdouble) c_longdouble;
pub extern fn __erfl(c_longdouble) c_longdouble;
pub extern fn erfcl(c_longdouble) c_longdouble;
pub extern fn __erfcl(c_longdouble) c_longdouble;
pub extern fn lgammal(c_longdouble) c_longdouble;
pub extern fn __lgammal(c_longdouble) c_longdouble;
pub extern fn tgammal(c_longdouble) c_longdouble;
pub extern fn __tgammal(c_longdouble) c_longdouble;
pub extern fn gammal(c_longdouble) c_longdouble;
pub extern fn __gammal(c_longdouble) c_longdouble;
pub extern fn lgammal_r(c_longdouble, __signgamp: [*c]c_int) c_longdouble;
pub extern fn __lgammal_r(c_longdouble, __signgamp: [*c]c_int) c_longdouble;
pub extern fn rintl(__x: c_longdouble) c_longdouble;
pub extern fn __rintl(__x: c_longdouble) c_longdouble;
pub extern fn nextafterl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __nextafterl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nexttowardl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __nexttowardl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nextdownl(__x: c_longdouble) c_longdouble;
pub extern fn __nextdownl(__x: c_longdouble) c_longdouble;
pub extern fn nextupl(__x: c_longdouble) c_longdouble;
pub extern fn __nextupl(__x: c_longdouble) c_longdouble;
pub extern fn remainderl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __remainderl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn scalbnl(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn __scalbnl(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn ilogbl(__x: c_longdouble) c_int;
pub extern fn __ilogbl(__x: c_longdouble) c_int;
pub extern fn llogbl(__x: c_longdouble) c_long;
pub extern fn __llogbl(__x: c_longdouble) c_long;
pub extern fn scalblnl(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn __scalblnl(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn nearbyintl(__x: c_longdouble) c_longdouble;
pub extern fn __nearbyintl(__x: c_longdouble) c_longdouble;
pub extern fn roundl(__x: c_longdouble) c_longdouble;
pub extern fn __roundl(__x: c_longdouble) c_longdouble;
pub extern fn truncl(__x: c_longdouble) c_longdouble;
pub extern fn __truncl(__x: c_longdouble) c_longdouble;
pub extern fn remquol(__x: c_longdouble, __y: c_longdouble, __quo: [*c]c_int) c_longdouble;
pub extern fn __remquol(__x: c_longdouble, __y: c_longdouble, __quo: [*c]c_int) c_longdouble;
pub extern fn lrintl(__x: c_longdouble) c_long;
pub extern fn __lrintl(__x: c_longdouble) c_long;
pub extern fn llrintl(__x: c_longdouble) c_longlong;
pub extern fn __llrintl(__x: c_longdouble) c_longlong;
pub extern fn lroundl(__x: c_longdouble) c_long;
pub extern fn __lroundl(__x: c_longdouble) c_long;
pub extern fn llroundl(__x: c_longdouble) c_longlong;
pub extern fn __llroundl(__x: c_longdouble) c_longlong;
pub extern fn fdiml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fdiml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaxl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaxl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn __fmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn roundevenl(__x: c_longdouble) c_longdouble;
pub extern fn __roundevenl(__x: c_longdouble) c_longdouble;
pub extern fn fromfpl(__x: c_longdouble, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpl(__x: c_longdouble, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpl(__x: c_longdouble, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpl(__x: c_longdouble, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpxl(__x: c_longdouble, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpxl(__x: c_longdouble, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpxl(__x: c_longdouble, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpxl(__x: c_longdouble, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalizel(__cx: [*c]c_longdouble, __x: [*c]const c_longdouble) c_int;
pub extern fn fmaxmagl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaxmagl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminmagl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminmagl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaximuml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaximuml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminimuml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminimuml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaximum_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaximum_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminimum_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminimum_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaximum_magl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaximum_magl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminimum_magl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminimum_magl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaximum_mag_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaximum_mag_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminimum_mag_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminimum_mag_numl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn totalorderl(__x: [*c]const c_longdouble, __y: [*c]const c_longdouble) c_int;
pub extern fn totalordermagl(__x: [*c]const c_longdouble, __y: [*c]const c_longdouble) c_int;
pub extern fn getpayloadl(__x: [*c]const c_longdouble) c_longdouble;
pub extern fn __getpayloadl(__x: [*c]const c_longdouble) c_longdouble;
pub extern fn setpayloadl(__x: [*c]c_longdouble, __payload: c_longdouble) c_int;
pub extern fn setpayloadsigl(__x: [*c]c_longdouble, __payload: c_longdouble) c_int;
pub extern fn scalbl(__x: c_longdouble, __n: c_longdouble) c_longdouble;
pub extern fn __scalbl(__x: c_longdouble, __n: c_longdouble) c_longdouble;
pub extern fn acosf32(__x: f32) f32;
pub extern fn __acosf32(__x: f32) f32;
pub extern fn asinf32(__x: f32) f32;
pub extern fn __asinf32(__x: f32) f32;
pub extern fn atanf32(__x: f32) f32;
pub extern fn __atanf32(__x: f32) f32;
pub extern fn atan2f32(__y: f32, __x: f32) f32;
pub extern fn __atan2f32(__y: f32, __x: f32) f32;
pub extern fn cosf32(__x: f32) f32;
pub extern fn __cosf32(__x: f32) f32;
pub extern fn sinf32(__x: f32) f32;
pub extern fn __sinf32(__x: f32) f32;
pub extern fn tanf32(__x: f32) f32;
pub extern fn __tanf32(__x: f32) f32;
pub extern fn coshf32(__x: f32) f32;
pub extern fn __coshf32(__x: f32) f32;
pub extern fn sinhf32(__x: f32) f32;
pub extern fn __sinhf32(__x: f32) f32;
pub extern fn tanhf32(__x: f32) f32;
pub extern fn __tanhf32(__x: f32) f32;
pub extern fn sincosf32(__x: f32, __sinx: [*c]f32, __cosx: [*c]f32) void;
pub extern fn __sincosf32(__x: f32, __sinx: [*c]f32, __cosx: [*c]f32) void;
pub extern fn acoshf32(__x: f32) f32;
pub extern fn __acoshf32(__x: f32) f32;
pub extern fn asinhf32(__x: f32) f32;
pub extern fn __asinhf32(__x: f32) f32;
pub extern fn atanhf32(__x: f32) f32;
pub extern fn __atanhf32(__x: f32) f32;
pub extern fn expf32(__x: f32) f32;
pub extern fn __expf32(__x: f32) f32;
pub extern fn frexpf32(__x: f32, __exponent: [*c]c_int) f32;
pub extern fn __frexpf32(__x: f32, __exponent: [*c]c_int) f32;
pub extern fn ldexpf32(__x: f32, __exponent: c_int) f32;
pub extern fn __ldexpf32(__x: f32, __exponent: c_int) f32;
pub extern fn logf32(__x: f32) f32;
pub extern fn __logf32(__x: f32) f32;
pub extern fn log10f32(__x: f32) f32;
pub extern fn __log10f32(__x: f32) f32;
pub extern fn modff32(__x: f32, __iptr: [*c]f32) f32;
pub extern fn __modff32(__x: f32, __iptr: [*c]f32) f32;
pub extern fn exp10f32(__x: f32) f32;
pub extern fn __exp10f32(__x: f32) f32;
pub extern fn expm1f32(__x: f32) f32;
pub extern fn __expm1f32(__x: f32) f32;
pub extern fn log1pf32(__x: f32) f32;
pub extern fn __log1pf32(__x: f32) f32;
pub extern fn logbf32(__x: f32) f32;
pub extern fn __logbf32(__x: f32) f32;
pub extern fn exp2f32(__x: f32) f32;
pub extern fn __exp2f32(__x: f32) f32;
pub extern fn log2f32(__x: f32) f32;
pub extern fn __log2f32(__x: f32) f32;
pub extern fn powf32(__x: f32, __y: f32) f32;
pub extern fn __powf32(__x: f32, __y: f32) f32;
pub extern fn sqrtf32(__x: f32) f32;
pub extern fn __sqrtf32(__x: f32) f32;
pub extern fn hypotf32(__x: f32, __y: f32) f32;
pub extern fn __hypotf32(__x: f32, __y: f32) f32;
pub extern fn cbrtf32(__x: f32) f32;
pub extern fn __cbrtf32(__x: f32) f32;
pub extern fn ceilf32(__x: f32) f32;
pub extern fn __ceilf32(__x: f32) f32;
pub extern fn fabsf32(__x: f32) f32;
pub extern fn __fabsf32(__x: f32) f32;
pub extern fn floorf32(__x: f32) f32;
pub extern fn __floorf32(__x: f32) f32;
pub extern fn fmodf32(__x: f32, __y: f32) f32;
pub extern fn __fmodf32(__x: f32, __y: f32) f32;
pub extern fn copysignf32(__x: f32, __y: f32) f32;
pub extern fn __copysignf32(__x: f32, __y: f32) f32;
pub extern fn nanf32(__tagb: [*c]const u8) f32;
pub extern fn __nanf32(__tagb: [*c]const u8) f32;
pub extern fn j0f32(f32) f32;
pub extern fn __j0f32(f32) f32;
pub extern fn j1f32(f32) f32;
pub extern fn __j1f32(f32) f32;
pub extern fn jnf32(c_int, f32) f32;
pub extern fn __jnf32(c_int, f32) f32;
pub extern fn y0f32(f32) f32;
pub extern fn __y0f32(f32) f32;
pub extern fn y1f32(f32) f32;
pub extern fn __y1f32(f32) f32;
pub extern fn ynf32(c_int, f32) f32;
pub extern fn __ynf32(c_int, f32) f32;
pub extern fn erff32(f32) f32;
pub extern fn __erff32(f32) f32;
pub extern fn erfcf32(f32) f32;
pub extern fn __erfcf32(f32) f32;
pub extern fn lgammaf32(f32) f32;
pub extern fn __lgammaf32(f32) f32;
pub extern fn tgammaf32(f32) f32;
pub extern fn __tgammaf32(f32) f32;
pub extern fn lgammaf32_r(f32, __signgamp: [*c]c_int) f32;
pub extern fn __lgammaf32_r(f32, __signgamp: [*c]c_int) f32;
pub extern fn rintf32(__x: f32) f32;
pub extern fn __rintf32(__x: f32) f32;
pub extern fn nextafterf32(__x: f32, __y: f32) f32;
pub extern fn __nextafterf32(__x: f32, __y: f32) f32;
pub extern fn nextdownf32(__x: f32) f32;
pub extern fn __nextdownf32(__x: f32) f32;
pub extern fn nextupf32(__x: f32) f32;
pub extern fn __nextupf32(__x: f32) f32;
pub extern fn remainderf32(__x: f32, __y: f32) f32;
pub extern fn __remainderf32(__x: f32, __y: f32) f32;
pub extern fn scalbnf32(__x: f32, __n: c_int) f32;
pub extern fn __scalbnf32(__x: f32, __n: c_int) f32;
pub extern fn ilogbf32(__x: f32) c_int;
pub extern fn __ilogbf32(__x: f32) c_int;
pub extern fn llogbf32(__x: f32) c_long;
pub extern fn __llogbf32(__x: f32) c_long;
pub extern fn scalblnf32(__x: f32, __n: c_long) f32;
pub extern fn __scalblnf32(__x: f32, __n: c_long) f32;
pub extern fn nearbyintf32(__x: f32) f32;
pub extern fn __nearbyintf32(__x: f32) f32;
pub extern fn roundf32(__x: f32) f32;
pub extern fn __roundf32(__x: f32) f32;
pub extern fn truncf32(__x: f32) f32;
pub extern fn __truncf32(__x: f32) f32;
pub extern fn remquof32(__x: f32, __y: f32, __quo: [*c]c_int) f32;
pub extern fn __remquof32(__x: f32, __y: f32, __quo: [*c]c_int) f32;
pub extern fn lrintf32(__x: f32) c_long;
pub extern fn __lrintf32(__x: f32) c_long;
pub extern fn llrintf32(__x: f32) c_longlong;
pub extern fn __llrintf32(__x: f32) c_longlong;
pub extern fn lroundf32(__x: f32) c_long;
pub extern fn __lroundf32(__x: f32) c_long;
pub extern fn llroundf32(__x: f32) c_longlong;
pub extern fn __llroundf32(__x: f32) c_longlong;
pub extern fn fdimf32(__x: f32, __y: f32) f32;
pub extern fn __fdimf32(__x: f32, __y: f32) f32;
pub extern fn fmaxf32(__x: f32, __y: f32) f32;
pub extern fn __fmaxf32(__x: f32, __y: f32) f32;
pub extern fn fminf32(__x: f32, __y: f32) f32;
pub extern fn __fminf32(__x: f32, __y: f32) f32;
pub extern fn fmaf32(__x: f32, __y: f32, __z: f32) f32;
pub extern fn __fmaf32(__x: f32, __y: f32, __z: f32) f32;
pub extern fn roundevenf32(__x: f32) f32;
pub extern fn __roundevenf32(__x: f32) f32;
pub extern fn fromfpf32(__x: f32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpf32(__x: f32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpf32(__x: f32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpf32(__x: f32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpxf32(__x: f32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpxf32(__x: f32, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpxf32(__x: f32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpxf32(__x: f32, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalizef32(__cx: [*c]f32, __x: [*c]const f32) c_int;
pub extern fn fmaxmagf32(__x: f32, __y: f32) f32;
pub extern fn __fmaxmagf32(__x: f32, __y: f32) f32;
pub extern fn fminmagf32(__x: f32, __y: f32) f32;
pub extern fn __fminmagf32(__x: f32, __y: f32) f32;
pub extern fn fmaximumf32(__x: f32, __y: f32) f32;
pub extern fn __fmaximumf32(__x: f32, __y: f32) f32;
pub extern fn fminimumf32(__x: f32, __y: f32) f32;
pub extern fn __fminimumf32(__x: f32, __y: f32) f32;
pub extern fn fmaximum_numf32(__x: f32, __y: f32) f32;
pub extern fn __fmaximum_numf32(__x: f32, __y: f32) f32;
pub extern fn fminimum_numf32(__x: f32, __y: f32) f32;
pub extern fn __fminimum_numf32(__x: f32, __y: f32) f32;
pub extern fn fmaximum_magf32(__x: f32, __y: f32) f32;
pub extern fn __fmaximum_magf32(__x: f32, __y: f32) f32;
pub extern fn fminimum_magf32(__x: f32, __y: f32) f32;
pub extern fn __fminimum_magf32(__x: f32, __y: f32) f32;
pub extern fn fmaximum_mag_numf32(__x: f32, __y: f32) f32;
pub extern fn __fmaximum_mag_numf32(__x: f32, __y: f32) f32;
pub extern fn fminimum_mag_numf32(__x: f32, __y: f32) f32;
pub extern fn __fminimum_mag_numf32(__x: f32, __y: f32) f32;
pub extern fn totalorderf32(__x: [*c]const f32, __y: [*c]const f32) c_int;
pub extern fn totalordermagf32(__x: [*c]const f32, __y: [*c]const f32) c_int;
pub extern fn getpayloadf32(__x: [*c]const f32) f32;
pub extern fn __getpayloadf32(__x: [*c]const f32) f32;
pub extern fn setpayloadf32(__x: [*c]f32, __payload: f32) c_int;
pub extern fn setpayloadsigf32(__x: [*c]f32, __payload: f32) c_int;
pub extern fn acosf64(__x: f64) f64;
pub extern fn __acosf64(__x: f64) f64;
pub extern fn asinf64(__x: f64) f64;
pub extern fn __asinf64(__x: f64) f64;
pub extern fn atanf64(__x: f64) f64;
pub extern fn __atanf64(__x: f64) f64;
pub extern fn atan2f64(__y: f64, __x: f64) f64;
pub extern fn __atan2f64(__y: f64, __x: f64) f64;
pub extern fn cosf64(__x: f64) f64;
pub extern fn __cosf64(__x: f64) f64;
pub extern fn sinf64(__x: f64) f64;
pub extern fn __sinf64(__x: f64) f64;
pub extern fn tanf64(__x: f64) f64;
pub extern fn __tanf64(__x: f64) f64;
pub extern fn coshf64(__x: f64) f64;
pub extern fn __coshf64(__x: f64) f64;
pub extern fn sinhf64(__x: f64) f64;
pub extern fn __sinhf64(__x: f64) f64;
pub extern fn tanhf64(__x: f64) f64;
pub extern fn __tanhf64(__x: f64) f64;
pub extern fn sincosf64(__x: f64, __sinx: [*c]f64, __cosx: [*c]f64) void;
pub extern fn __sincosf64(__x: f64, __sinx: [*c]f64, __cosx: [*c]f64) void;
pub extern fn acoshf64(__x: f64) f64;
pub extern fn __acoshf64(__x: f64) f64;
pub extern fn asinhf64(__x: f64) f64;
pub extern fn __asinhf64(__x: f64) f64;
pub extern fn atanhf64(__x: f64) f64;
pub extern fn __atanhf64(__x: f64) f64;
pub extern fn expf64(__x: f64) f64;
pub extern fn __expf64(__x: f64) f64;
pub extern fn frexpf64(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn __frexpf64(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn ldexpf64(__x: f64, __exponent: c_int) f64;
pub extern fn __ldexpf64(__x: f64, __exponent: c_int) f64;
pub extern fn logf64(__x: f64) f64;
pub extern fn __logf64(__x: f64) f64;
pub extern fn log10f64(__x: f64) f64;
pub extern fn __log10f64(__x: f64) f64;
pub extern fn modff64(__x: f64, __iptr: [*c]f64) f64;
pub extern fn __modff64(__x: f64, __iptr: [*c]f64) f64;
pub extern fn exp10f64(__x: f64) f64;
pub extern fn __exp10f64(__x: f64) f64;
pub extern fn expm1f64(__x: f64) f64;
pub extern fn __expm1f64(__x: f64) f64;
pub extern fn log1pf64(__x: f64) f64;
pub extern fn __log1pf64(__x: f64) f64;
pub extern fn logbf64(__x: f64) f64;
pub extern fn __logbf64(__x: f64) f64;
pub extern fn exp2f64(__x: f64) f64;
pub extern fn __exp2f64(__x: f64) f64;
pub extern fn log2f64(__x: f64) f64;
pub extern fn __log2f64(__x: f64) f64;
pub extern fn powf64(__x: f64, __y: f64) f64;
pub extern fn __powf64(__x: f64, __y: f64) f64;
pub extern fn sqrtf64(__x: f64) f64;
pub extern fn __sqrtf64(__x: f64) f64;
pub extern fn hypotf64(__x: f64, __y: f64) f64;
pub extern fn __hypotf64(__x: f64, __y: f64) f64;
pub extern fn cbrtf64(__x: f64) f64;
pub extern fn __cbrtf64(__x: f64) f64;
pub extern fn ceilf64(__x: f64) f64;
pub extern fn __ceilf64(__x: f64) f64;
pub extern fn fabsf64(__x: f64) f64;
pub extern fn __fabsf64(__x: f64) f64;
pub extern fn floorf64(__x: f64) f64;
pub extern fn __floorf64(__x: f64) f64;
pub extern fn fmodf64(__x: f64, __y: f64) f64;
pub extern fn __fmodf64(__x: f64, __y: f64) f64;
pub extern fn copysignf64(__x: f64, __y: f64) f64;
pub extern fn __copysignf64(__x: f64, __y: f64) f64;
pub extern fn nanf64(__tagb: [*c]const u8) f64;
pub extern fn __nanf64(__tagb: [*c]const u8) f64;
pub extern fn j0f64(f64) f64;
pub extern fn __j0f64(f64) f64;
pub extern fn j1f64(f64) f64;
pub extern fn __j1f64(f64) f64;
pub extern fn jnf64(c_int, f64) f64;
pub extern fn __jnf64(c_int, f64) f64;
pub extern fn y0f64(f64) f64;
pub extern fn __y0f64(f64) f64;
pub extern fn y1f64(f64) f64;
pub extern fn __y1f64(f64) f64;
pub extern fn ynf64(c_int, f64) f64;
pub extern fn __ynf64(c_int, f64) f64;
pub extern fn erff64(f64) f64;
pub extern fn __erff64(f64) f64;
pub extern fn erfcf64(f64) f64;
pub extern fn __erfcf64(f64) f64;
pub extern fn lgammaf64(f64) f64;
pub extern fn __lgammaf64(f64) f64;
pub extern fn tgammaf64(f64) f64;
pub extern fn __tgammaf64(f64) f64;
pub extern fn lgammaf64_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn __lgammaf64_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn rintf64(__x: f64) f64;
pub extern fn __rintf64(__x: f64) f64;
pub extern fn nextafterf64(__x: f64, __y: f64) f64;
pub extern fn __nextafterf64(__x: f64, __y: f64) f64;
pub extern fn nextdownf64(__x: f64) f64;
pub extern fn __nextdownf64(__x: f64) f64;
pub extern fn nextupf64(__x: f64) f64;
pub extern fn __nextupf64(__x: f64) f64;
pub extern fn remainderf64(__x: f64, __y: f64) f64;
pub extern fn __remainderf64(__x: f64, __y: f64) f64;
pub extern fn scalbnf64(__x: f64, __n: c_int) f64;
pub extern fn __scalbnf64(__x: f64, __n: c_int) f64;
pub extern fn ilogbf64(__x: f64) c_int;
pub extern fn __ilogbf64(__x: f64) c_int;
pub extern fn llogbf64(__x: f64) c_long;
pub extern fn __llogbf64(__x: f64) c_long;
pub extern fn scalblnf64(__x: f64, __n: c_long) f64;
pub extern fn __scalblnf64(__x: f64, __n: c_long) f64;
pub extern fn nearbyintf64(__x: f64) f64;
pub extern fn __nearbyintf64(__x: f64) f64;
pub extern fn roundf64(__x: f64) f64;
pub extern fn __roundf64(__x: f64) f64;
pub extern fn truncf64(__x: f64) f64;
pub extern fn __truncf64(__x: f64) f64;
pub extern fn remquof64(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn __remquof64(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn lrintf64(__x: f64) c_long;
pub extern fn __lrintf64(__x: f64) c_long;
pub extern fn llrintf64(__x: f64) c_longlong;
pub extern fn __llrintf64(__x: f64) c_longlong;
pub extern fn lroundf64(__x: f64) c_long;
pub extern fn __lroundf64(__x: f64) c_long;
pub extern fn llroundf64(__x: f64) c_longlong;
pub extern fn __llroundf64(__x: f64) c_longlong;
pub extern fn fdimf64(__x: f64, __y: f64) f64;
pub extern fn __fdimf64(__x: f64, __y: f64) f64;
pub extern fn fmaxf64(__x: f64, __y: f64) f64;
pub extern fn __fmaxf64(__x: f64, __y: f64) f64;
pub extern fn fminf64(__x: f64, __y: f64) f64;
pub extern fn __fminf64(__x: f64, __y: f64) f64;
pub extern fn fmaf64(__x: f64, __y: f64, __z: f64) f64;
pub extern fn __fmaf64(__x: f64, __y: f64, __z: f64) f64;
pub extern fn roundevenf64(__x: f64) f64;
pub extern fn __roundevenf64(__x: f64) f64;
pub extern fn fromfpf64(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpf64(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpf64(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpf64(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpxf64(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpxf64(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpxf64(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpxf64(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalizef64(__cx: [*c]f64, __x: [*c]const f64) c_int;
pub extern fn fmaxmagf64(__x: f64, __y: f64) f64;
pub extern fn __fmaxmagf64(__x: f64, __y: f64) f64;
pub extern fn fminmagf64(__x: f64, __y: f64) f64;
pub extern fn __fminmagf64(__x: f64, __y: f64) f64;
pub extern fn fmaximumf64(__x: f64, __y: f64) f64;
pub extern fn __fmaximumf64(__x: f64, __y: f64) f64;
pub extern fn fminimumf64(__x: f64, __y: f64) f64;
pub extern fn __fminimumf64(__x: f64, __y: f64) f64;
pub extern fn fmaximum_numf64(__x: f64, __y: f64) f64;
pub extern fn __fmaximum_numf64(__x: f64, __y: f64) f64;
pub extern fn fminimum_numf64(__x: f64, __y: f64) f64;
pub extern fn __fminimum_numf64(__x: f64, __y: f64) f64;
pub extern fn fmaximum_magf64(__x: f64, __y: f64) f64;
pub extern fn __fmaximum_magf64(__x: f64, __y: f64) f64;
pub extern fn fminimum_magf64(__x: f64, __y: f64) f64;
pub extern fn __fminimum_magf64(__x: f64, __y: f64) f64;
pub extern fn fmaximum_mag_numf64(__x: f64, __y: f64) f64;
pub extern fn __fmaximum_mag_numf64(__x: f64, __y: f64) f64;
pub extern fn fminimum_mag_numf64(__x: f64, __y: f64) f64;
pub extern fn __fminimum_mag_numf64(__x: f64, __y: f64) f64;
pub extern fn totalorderf64(__x: [*c]const f64, __y: [*c]const f64) c_int;
pub extern fn totalordermagf64(__x: [*c]const f64, __y: [*c]const f64) c_int;
pub extern fn getpayloadf64(__x: [*c]const f64) f64;
pub extern fn __getpayloadf64(__x: [*c]const f64) f64;
pub extern fn setpayloadf64(__x: [*c]f64, __payload: f64) c_int;
pub extern fn setpayloadsigf64(__x: [*c]f64, __payload: f64) c_int;
pub extern fn __fpclassifyf128(__value: f128) c_int;
pub extern fn __signbitf128(__value: f128) c_int;
pub extern fn __isinff128(__value: f128) c_int;
pub extern fn __finitef128(__value: f128) c_int;
pub extern fn __isnanf128(__value: f128) c_int;
pub extern fn __iseqsigf128(__x: f128, __y: f128) c_int;
pub extern fn __issignalingf128(__value: f128) c_int;
pub extern fn acosf128(__x: f128) f128;
pub extern fn __acosf128(__x: f128) f128;
pub extern fn asinf128(__x: f128) f128;
pub extern fn __asinf128(__x: f128) f128;
pub extern fn atanf128(__x: f128) f128;
pub extern fn __atanf128(__x: f128) f128;
pub extern fn atan2f128(__y: f128, __x: f128) f128;
pub extern fn __atan2f128(__y: f128, __x: f128) f128;
pub extern fn cosf128(__x: f128) f128;
pub extern fn __cosf128(__x: f128) f128;
pub extern fn sinf128(__x: f128) f128;
pub extern fn __sinf128(__x: f128) f128;
pub extern fn tanf128(__x: f128) f128;
pub extern fn __tanf128(__x: f128) f128;
pub extern fn coshf128(__x: f128) f128;
pub extern fn __coshf128(__x: f128) f128;
pub extern fn sinhf128(__x: f128) f128;
pub extern fn __sinhf128(__x: f128) f128;
pub extern fn tanhf128(__x: f128) f128;
pub extern fn __tanhf128(__x: f128) f128;
pub extern fn sincosf128(__x: f128, __sinx: [*c]f128, __cosx: [*c]f128) void;
pub extern fn __sincosf128(__x: f128, __sinx: [*c]f128, __cosx: [*c]f128) void;
pub extern fn acoshf128(__x: f128) f128;
pub extern fn __acoshf128(__x: f128) f128;
pub extern fn asinhf128(__x: f128) f128;
pub extern fn __asinhf128(__x: f128) f128;
pub extern fn atanhf128(__x: f128) f128;
pub extern fn __atanhf128(__x: f128) f128;
pub extern fn expf128(__x: f128) f128;
pub extern fn __expf128(__x: f128) f128;
pub extern fn frexpf128(__x: f128, __exponent: [*c]c_int) f128;
pub extern fn __frexpf128(__x: f128, __exponent: [*c]c_int) f128;
pub extern fn ldexpf128(__x: f128, __exponent: c_int) f128;
pub extern fn __ldexpf128(__x: f128, __exponent: c_int) f128;
pub extern fn logf128(__x: f128) f128;
pub extern fn __logf128(__x: f128) f128;
pub extern fn log10f128(__x: f128) f128;
pub extern fn __log10f128(__x: f128) f128;
pub extern fn modff128(__x: f128, __iptr: [*c]f128) f128;
pub extern fn __modff128(__x: f128, __iptr: [*c]f128) f128;
pub extern fn exp10f128(__x: f128) f128;
pub extern fn __exp10f128(__x: f128) f128;
pub extern fn expm1f128(__x: f128) f128;
pub extern fn __expm1f128(__x: f128) f128;
pub extern fn log1pf128(__x: f128) f128;
pub extern fn __log1pf128(__x: f128) f128;
pub extern fn logbf128(__x: f128) f128;
pub extern fn __logbf128(__x: f128) f128;
pub extern fn exp2f128(__x: f128) f128;
pub extern fn __exp2f128(__x: f128) f128;
pub extern fn log2f128(__x: f128) f128;
pub extern fn __log2f128(__x: f128) f128;
pub extern fn powf128(__x: f128, __y: f128) f128;
pub extern fn __powf128(__x: f128, __y: f128) f128;
pub extern fn sqrtf128(__x: f128) f128;
pub extern fn __sqrtf128(__x: f128) f128;
pub extern fn hypotf128(__x: f128, __y: f128) f128;
pub extern fn __hypotf128(__x: f128, __y: f128) f128;
pub extern fn cbrtf128(__x: f128) f128;
pub extern fn __cbrtf128(__x: f128) f128;
pub extern fn ceilf128(__x: f128) f128;
pub extern fn __ceilf128(__x: f128) f128;
pub extern fn fabsf128(__x: f128) f128;
pub extern fn __fabsf128(__x: f128) f128;
pub extern fn floorf128(__x: f128) f128;
pub extern fn __floorf128(__x: f128) f128;
pub extern fn fmodf128(__x: f128, __y: f128) f128;
pub extern fn __fmodf128(__x: f128, __y: f128) f128;
pub extern fn copysignf128(__x: f128, __y: f128) f128;
pub extern fn __copysignf128(__x: f128, __y: f128) f128;
pub extern fn nanf128(__tagb: [*c]const u8) f128;
pub extern fn __nanf128(__tagb: [*c]const u8) f128;
pub extern fn j0f128(f128) f128;
pub extern fn __j0f128(f128) f128;
pub extern fn j1f128(f128) f128;
pub extern fn __j1f128(f128) f128;
pub extern fn jnf128(c_int, f128) f128;
pub extern fn __jnf128(c_int, f128) f128;
pub extern fn y0f128(f128) f128;
pub extern fn __y0f128(f128) f128;
pub extern fn y1f128(f128) f128;
pub extern fn __y1f128(f128) f128;
pub extern fn ynf128(c_int, f128) f128;
pub extern fn __ynf128(c_int, f128) f128;
pub extern fn erff128(f128) f128;
pub extern fn __erff128(f128) f128;
pub extern fn erfcf128(f128) f128;
pub extern fn __erfcf128(f128) f128;
pub extern fn lgammaf128(f128) f128;
pub extern fn __lgammaf128(f128) f128;
pub extern fn tgammaf128(f128) f128;
pub extern fn __tgammaf128(f128) f128;
pub extern fn lgammaf128_r(f128, __signgamp: [*c]c_int) f128;
pub extern fn __lgammaf128_r(f128, __signgamp: [*c]c_int) f128;
pub extern fn rintf128(__x: f128) f128;
pub extern fn __rintf128(__x: f128) f128;
pub extern fn nextafterf128(__x: f128, __y: f128) f128;
pub extern fn __nextafterf128(__x: f128, __y: f128) f128;
pub extern fn nextdownf128(__x: f128) f128;
pub extern fn __nextdownf128(__x: f128) f128;
pub extern fn nextupf128(__x: f128) f128;
pub extern fn __nextupf128(__x: f128) f128;
pub extern fn remainderf128(__x: f128, __y: f128) f128;
pub extern fn __remainderf128(__x: f128, __y: f128) f128;
pub extern fn scalbnf128(__x: f128, __n: c_int) f128;
pub extern fn __scalbnf128(__x: f128, __n: c_int) f128;
pub extern fn ilogbf128(__x: f128) c_int;
pub extern fn __ilogbf128(__x: f128) c_int;
pub extern fn llogbf128(__x: f128) c_long;
pub extern fn __llogbf128(__x: f128) c_long;
pub extern fn scalblnf128(__x: f128, __n: c_long) f128;
pub extern fn __scalblnf128(__x: f128, __n: c_long) f128;
pub extern fn nearbyintf128(__x: f128) f128;
pub extern fn __nearbyintf128(__x: f128) f128;
pub extern fn roundf128(__x: f128) f128;
pub extern fn __roundf128(__x: f128) f128;
pub extern fn truncf128(__x: f128) f128;
pub extern fn __truncf128(__x: f128) f128;
pub extern fn remquof128(__x: f128, __y: f128, __quo: [*c]c_int) f128;
pub extern fn __remquof128(__x: f128, __y: f128, __quo: [*c]c_int) f128;
pub extern fn lrintf128(__x: f128) c_long;
pub extern fn __lrintf128(__x: f128) c_long;
pub extern fn llrintf128(__x: f128) c_longlong;
pub extern fn __llrintf128(__x: f128) c_longlong;
pub extern fn lroundf128(__x: f128) c_long;
pub extern fn __lroundf128(__x: f128) c_long;
pub extern fn llroundf128(__x: f128) c_longlong;
pub extern fn __llroundf128(__x: f128) c_longlong;
pub extern fn fdimf128(__x: f128, __y: f128) f128;
pub extern fn __fdimf128(__x: f128, __y: f128) f128;
pub extern fn fmaxf128(__x: f128, __y: f128) f128;
pub extern fn __fmaxf128(__x: f128, __y: f128) f128;
pub extern fn fminf128(__x: f128, __y: f128) f128;
pub extern fn __fminf128(__x: f128, __y: f128) f128;
pub extern fn fmaf128(__x: f128, __y: f128, __z: f128) f128;
pub extern fn __fmaf128(__x: f128, __y: f128, __z: f128) f128;
pub extern fn roundevenf128(__x: f128) f128;
pub extern fn __roundevenf128(__x: f128) f128;
pub extern fn fromfpf128(__x: f128, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpf128(__x: f128, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpf128(__x: f128, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpf128(__x: f128, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpxf128(__x: f128, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpxf128(__x: f128, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpxf128(__x: f128, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpxf128(__x: f128, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalizef128(__cx: [*c]f128, __x: [*c]const f128) c_int;
pub extern fn fmaxmagf128(__x: f128, __y: f128) f128;
pub extern fn __fmaxmagf128(__x: f128, __y: f128) f128;
pub extern fn fminmagf128(__x: f128, __y: f128) f128;
pub extern fn __fminmagf128(__x: f128, __y: f128) f128;
pub extern fn fmaximumf128(__x: f128, __y: f128) f128;
pub extern fn __fmaximumf128(__x: f128, __y: f128) f128;
pub extern fn fminimumf128(__x: f128, __y: f128) f128;
pub extern fn __fminimumf128(__x: f128, __y: f128) f128;
pub extern fn fmaximum_numf128(__x: f128, __y: f128) f128;
pub extern fn __fmaximum_numf128(__x: f128, __y: f128) f128;
pub extern fn fminimum_numf128(__x: f128, __y: f128) f128;
pub extern fn __fminimum_numf128(__x: f128, __y: f128) f128;
pub extern fn fmaximum_magf128(__x: f128, __y: f128) f128;
pub extern fn __fmaximum_magf128(__x: f128, __y: f128) f128;
pub extern fn fminimum_magf128(__x: f128, __y: f128) f128;
pub extern fn __fminimum_magf128(__x: f128, __y: f128) f128;
pub extern fn fmaximum_mag_numf128(__x: f128, __y: f128) f128;
pub extern fn __fmaximum_mag_numf128(__x: f128, __y: f128) f128;
pub extern fn fminimum_mag_numf128(__x: f128, __y: f128) f128;
pub extern fn __fminimum_mag_numf128(__x: f128, __y: f128) f128;
pub extern fn totalorderf128(__x: [*c]const f128, __y: [*c]const f128) c_int;
pub extern fn totalordermagf128(__x: [*c]const f128, __y: [*c]const f128) c_int;
pub extern fn getpayloadf128(__x: [*c]const f128) f128;
pub extern fn __getpayloadf128(__x: [*c]const f128) f128;
pub extern fn setpayloadf128(__x: [*c]f128, __payload: f128) c_int;
pub extern fn setpayloadsigf128(__x: [*c]f128, __payload: f128) c_int;
pub extern fn acosf32x(__x: f64) f64;
pub extern fn __acosf32x(__x: f64) f64;
pub extern fn asinf32x(__x: f64) f64;
pub extern fn __asinf32x(__x: f64) f64;
pub extern fn atanf32x(__x: f64) f64;
pub extern fn __atanf32x(__x: f64) f64;
pub extern fn atan2f32x(__y: f64, __x: f64) f64;
pub extern fn __atan2f32x(__y: f64, __x: f64) f64;
pub extern fn cosf32x(__x: f64) f64;
pub extern fn __cosf32x(__x: f64) f64;
pub extern fn sinf32x(__x: f64) f64;
pub extern fn __sinf32x(__x: f64) f64;
pub extern fn tanf32x(__x: f64) f64;
pub extern fn __tanf32x(__x: f64) f64;
pub extern fn coshf32x(__x: f64) f64;
pub extern fn __coshf32x(__x: f64) f64;
pub extern fn sinhf32x(__x: f64) f64;
pub extern fn __sinhf32x(__x: f64) f64;
pub extern fn tanhf32x(__x: f64) f64;
pub extern fn __tanhf32x(__x: f64) f64;
pub extern fn sincosf32x(__x: f64, __sinx: [*c]f64, __cosx: [*c]f64) void;
pub extern fn __sincosf32x(__x: f64, __sinx: [*c]f64, __cosx: [*c]f64) void;
pub extern fn acoshf32x(__x: f64) f64;
pub extern fn __acoshf32x(__x: f64) f64;
pub extern fn asinhf32x(__x: f64) f64;
pub extern fn __asinhf32x(__x: f64) f64;
pub extern fn atanhf32x(__x: f64) f64;
pub extern fn __atanhf32x(__x: f64) f64;
pub extern fn expf32x(__x: f64) f64;
pub extern fn __expf32x(__x: f64) f64;
pub extern fn frexpf32x(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn __frexpf32x(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn ldexpf32x(__x: f64, __exponent: c_int) f64;
pub extern fn __ldexpf32x(__x: f64, __exponent: c_int) f64;
pub extern fn logf32x(__x: f64) f64;
pub extern fn __logf32x(__x: f64) f64;
pub extern fn log10f32x(__x: f64) f64;
pub extern fn __log10f32x(__x: f64) f64;
pub extern fn modff32x(__x: f64, __iptr: [*c]f64) f64;
pub extern fn __modff32x(__x: f64, __iptr: [*c]f64) f64;
pub extern fn exp10f32x(__x: f64) f64;
pub extern fn __exp10f32x(__x: f64) f64;
pub extern fn expm1f32x(__x: f64) f64;
pub extern fn __expm1f32x(__x: f64) f64;
pub extern fn log1pf32x(__x: f64) f64;
pub extern fn __log1pf32x(__x: f64) f64;
pub extern fn logbf32x(__x: f64) f64;
pub extern fn __logbf32x(__x: f64) f64;
pub extern fn exp2f32x(__x: f64) f64;
pub extern fn __exp2f32x(__x: f64) f64;
pub extern fn log2f32x(__x: f64) f64;
pub extern fn __log2f32x(__x: f64) f64;
pub extern fn powf32x(__x: f64, __y: f64) f64;
pub extern fn __powf32x(__x: f64, __y: f64) f64;
pub extern fn sqrtf32x(__x: f64) f64;
pub extern fn __sqrtf32x(__x: f64) f64;
pub extern fn hypotf32x(__x: f64, __y: f64) f64;
pub extern fn __hypotf32x(__x: f64, __y: f64) f64;
pub extern fn cbrtf32x(__x: f64) f64;
pub extern fn __cbrtf32x(__x: f64) f64;
pub extern fn ceilf32x(__x: f64) f64;
pub extern fn __ceilf32x(__x: f64) f64;
pub extern fn fabsf32x(__x: f64) f64;
pub extern fn __fabsf32x(__x: f64) f64;
pub extern fn floorf32x(__x: f64) f64;
pub extern fn __floorf32x(__x: f64) f64;
pub extern fn fmodf32x(__x: f64, __y: f64) f64;
pub extern fn __fmodf32x(__x: f64, __y: f64) f64;
pub extern fn copysignf32x(__x: f64, __y: f64) f64;
pub extern fn __copysignf32x(__x: f64, __y: f64) f64;
pub extern fn nanf32x(__tagb: [*c]const u8) f64;
pub extern fn __nanf32x(__tagb: [*c]const u8) f64;
pub extern fn j0f32x(f64) f64;
pub extern fn __j0f32x(f64) f64;
pub extern fn j1f32x(f64) f64;
pub extern fn __j1f32x(f64) f64;
pub extern fn jnf32x(c_int, f64) f64;
pub extern fn __jnf32x(c_int, f64) f64;
pub extern fn y0f32x(f64) f64;
pub extern fn __y0f32x(f64) f64;
pub extern fn y1f32x(f64) f64;
pub extern fn __y1f32x(f64) f64;
pub extern fn ynf32x(c_int, f64) f64;
pub extern fn __ynf32x(c_int, f64) f64;
pub extern fn erff32x(f64) f64;
pub extern fn __erff32x(f64) f64;
pub extern fn erfcf32x(f64) f64;
pub extern fn __erfcf32x(f64) f64;
pub extern fn lgammaf32x(f64) f64;
pub extern fn __lgammaf32x(f64) f64;
pub extern fn tgammaf32x(f64) f64;
pub extern fn __tgammaf32x(f64) f64;
pub extern fn lgammaf32x_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn __lgammaf32x_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn rintf32x(__x: f64) f64;
pub extern fn __rintf32x(__x: f64) f64;
pub extern fn nextafterf32x(__x: f64, __y: f64) f64;
pub extern fn __nextafterf32x(__x: f64, __y: f64) f64;
pub extern fn nextdownf32x(__x: f64) f64;
pub extern fn __nextdownf32x(__x: f64) f64;
pub extern fn nextupf32x(__x: f64) f64;
pub extern fn __nextupf32x(__x: f64) f64;
pub extern fn remainderf32x(__x: f64, __y: f64) f64;
pub extern fn __remainderf32x(__x: f64, __y: f64) f64;
pub extern fn scalbnf32x(__x: f64, __n: c_int) f64;
pub extern fn __scalbnf32x(__x: f64, __n: c_int) f64;
pub extern fn ilogbf32x(__x: f64) c_int;
pub extern fn __ilogbf32x(__x: f64) c_int;
pub extern fn llogbf32x(__x: f64) c_long;
pub extern fn __llogbf32x(__x: f64) c_long;
pub extern fn scalblnf32x(__x: f64, __n: c_long) f64;
pub extern fn __scalblnf32x(__x: f64, __n: c_long) f64;
pub extern fn nearbyintf32x(__x: f64) f64;
pub extern fn __nearbyintf32x(__x: f64) f64;
pub extern fn roundf32x(__x: f64) f64;
pub extern fn __roundf32x(__x: f64) f64;
pub extern fn truncf32x(__x: f64) f64;
pub extern fn __truncf32x(__x: f64) f64;
pub extern fn remquof32x(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn __remquof32x(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn lrintf32x(__x: f64) c_long;
pub extern fn __lrintf32x(__x: f64) c_long;
pub extern fn llrintf32x(__x: f64) c_longlong;
pub extern fn __llrintf32x(__x: f64) c_longlong;
pub extern fn lroundf32x(__x: f64) c_long;
pub extern fn __lroundf32x(__x: f64) c_long;
pub extern fn llroundf32x(__x: f64) c_longlong;
pub extern fn __llroundf32x(__x: f64) c_longlong;
pub extern fn fdimf32x(__x: f64, __y: f64) f64;
pub extern fn __fdimf32x(__x: f64, __y: f64) f64;
pub extern fn fmaxf32x(__x: f64, __y: f64) f64;
pub extern fn __fmaxf32x(__x: f64, __y: f64) f64;
pub extern fn fminf32x(__x: f64, __y: f64) f64;
pub extern fn __fminf32x(__x: f64, __y: f64) f64;
pub extern fn fmaf32x(__x: f64, __y: f64, __z: f64) f64;
pub extern fn __fmaf32x(__x: f64, __y: f64, __z: f64) f64;
pub extern fn roundevenf32x(__x: f64) f64;
pub extern fn __roundevenf32x(__x: f64) f64;
pub extern fn fromfpf32x(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpf32x(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpf32x(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpf32x(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpxf32x(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpxf32x(__x: f64, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpxf32x(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpxf32x(__x: f64, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalizef32x(__cx: [*c]f64, __x: [*c]const f64) c_int;
pub extern fn fmaxmagf32x(__x: f64, __y: f64) f64;
pub extern fn __fmaxmagf32x(__x: f64, __y: f64) f64;
pub extern fn fminmagf32x(__x: f64, __y: f64) f64;
pub extern fn __fminmagf32x(__x: f64, __y: f64) f64;
pub extern fn fmaximumf32x(__x: f64, __y: f64) f64;
pub extern fn __fmaximumf32x(__x: f64, __y: f64) f64;
pub extern fn fminimumf32x(__x: f64, __y: f64) f64;
pub extern fn __fminimumf32x(__x: f64, __y: f64) f64;
pub extern fn fmaximum_numf32x(__x: f64, __y: f64) f64;
pub extern fn __fmaximum_numf32x(__x: f64, __y: f64) f64;
pub extern fn fminimum_numf32x(__x: f64, __y: f64) f64;
pub extern fn __fminimum_numf32x(__x: f64, __y: f64) f64;
pub extern fn fmaximum_magf32x(__x: f64, __y: f64) f64;
pub extern fn __fmaximum_magf32x(__x: f64, __y: f64) f64;
pub extern fn fminimum_magf32x(__x: f64, __y: f64) f64;
pub extern fn __fminimum_magf32x(__x: f64, __y: f64) f64;
pub extern fn fmaximum_mag_numf32x(__x: f64, __y: f64) f64;
pub extern fn __fmaximum_mag_numf32x(__x: f64, __y: f64) f64;
pub extern fn fminimum_mag_numf32x(__x: f64, __y: f64) f64;
pub extern fn __fminimum_mag_numf32x(__x: f64, __y: f64) f64;
pub extern fn totalorderf32x(__x: [*c]const f64, __y: [*c]const f64) c_int;
pub extern fn totalordermagf32x(__x: [*c]const f64, __y: [*c]const f64) c_int;
pub extern fn getpayloadf32x(__x: [*c]const f64) f64;
pub extern fn __getpayloadf32x(__x: [*c]const f64) f64;
pub extern fn setpayloadf32x(__x: [*c]f64, __payload: f64) c_int;
pub extern fn setpayloadsigf32x(__x: [*c]f64, __payload: f64) c_int;
pub extern fn acosf64x(__x: c_longdouble) c_longdouble;
pub extern fn __acosf64x(__x: c_longdouble) c_longdouble;
pub extern fn asinf64x(__x: c_longdouble) c_longdouble;
pub extern fn __asinf64x(__x: c_longdouble) c_longdouble;
pub extern fn atanf64x(__x: c_longdouble) c_longdouble;
pub extern fn __atanf64x(__x: c_longdouble) c_longdouble;
pub extern fn atan2f64x(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn __atan2f64x(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn cosf64x(__x: c_longdouble) c_longdouble;
pub extern fn __cosf64x(__x: c_longdouble) c_longdouble;
pub extern fn sinf64x(__x: c_longdouble) c_longdouble;
pub extern fn __sinf64x(__x: c_longdouble) c_longdouble;
pub extern fn tanf64x(__x: c_longdouble) c_longdouble;
pub extern fn __tanf64x(__x: c_longdouble) c_longdouble;
pub extern fn coshf64x(__x: c_longdouble) c_longdouble;
pub extern fn __coshf64x(__x: c_longdouble) c_longdouble;
pub extern fn sinhf64x(__x: c_longdouble) c_longdouble;
pub extern fn __sinhf64x(__x: c_longdouble) c_longdouble;
pub extern fn tanhf64x(__x: c_longdouble) c_longdouble;
pub extern fn __tanhf64x(__x: c_longdouble) c_longdouble;
pub extern fn sincosf64x(__x: c_longdouble, __sinx: [*c]c_longdouble, __cosx: [*c]c_longdouble) void;
pub extern fn __sincosf64x(__x: c_longdouble, __sinx: [*c]c_longdouble, __cosx: [*c]c_longdouble) void;
pub extern fn acoshf64x(__x: c_longdouble) c_longdouble;
pub extern fn __acoshf64x(__x: c_longdouble) c_longdouble;
pub extern fn asinhf64x(__x: c_longdouble) c_longdouble;
pub extern fn __asinhf64x(__x: c_longdouble) c_longdouble;
pub extern fn atanhf64x(__x: c_longdouble) c_longdouble;
pub extern fn __atanhf64x(__x: c_longdouble) c_longdouble;
pub extern fn expf64x(__x: c_longdouble) c_longdouble;
pub extern fn __expf64x(__x: c_longdouble) c_longdouble;
pub extern fn frexpf64x(__x: c_longdouble, __exponent: [*c]c_int) c_longdouble;
pub extern fn __frexpf64x(__x: c_longdouble, __exponent: [*c]c_int) c_longdouble;
pub extern fn ldexpf64x(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn __ldexpf64x(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn logf64x(__x: c_longdouble) c_longdouble;
pub extern fn __logf64x(__x: c_longdouble) c_longdouble;
pub extern fn log10f64x(__x: c_longdouble) c_longdouble;
pub extern fn __log10f64x(__x: c_longdouble) c_longdouble;
pub extern fn modff64x(__x: c_longdouble, __iptr: [*c]c_longdouble) c_longdouble;
pub extern fn __modff64x(__x: c_longdouble, __iptr: [*c]c_longdouble) c_longdouble;
pub extern fn exp10f64x(__x: c_longdouble) c_longdouble;
pub extern fn __exp10f64x(__x: c_longdouble) c_longdouble;
pub extern fn expm1f64x(__x: c_longdouble) c_longdouble;
pub extern fn __expm1f64x(__x: c_longdouble) c_longdouble;
pub extern fn log1pf64x(__x: c_longdouble) c_longdouble;
pub extern fn __log1pf64x(__x: c_longdouble) c_longdouble;
pub extern fn logbf64x(__x: c_longdouble) c_longdouble;
pub extern fn __logbf64x(__x: c_longdouble) c_longdouble;
pub extern fn exp2f64x(__x: c_longdouble) c_longdouble;
pub extern fn __exp2f64x(__x: c_longdouble) c_longdouble;
pub extern fn log2f64x(__x: c_longdouble) c_longdouble;
pub extern fn __log2f64x(__x: c_longdouble) c_longdouble;
pub extern fn powf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __powf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn sqrtf64x(__x: c_longdouble) c_longdouble;
pub extern fn __sqrtf64x(__x: c_longdouble) c_longdouble;
pub extern fn hypotf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __hypotf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn cbrtf64x(__x: c_longdouble) c_longdouble;
pub extern fn __cbrtf64x(__x: c_longdouble) c_longdouble;
pub extern fn ceilf64x(__x: c_longdouble) c_longdouble;
pub extern fn __ceilf64x(__x: c_longdouble) c_longdouble;
pub extern fn fabsf64x(__x: c_longdouble) c_longdouble;
pub extern fn __fabsf64x(__x: c_longdouble) c_longdouble;
pub extern fn floorf64x(__x: c_longdouble) c_longdouble;
pub extern fn __floorf64x(__x: c_longdouble) c_longdouble;
pub extern fn fmodf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmodf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn copysignf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __copysignf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nanf64x(__tagb: [*c]const u8) c_longdouble;
pub extern fn __nanf64x(__tagb: [*c]const u8) c_longdouble;
pub extern fn j0f64x(c_longdouble) c_longdouble;
pub extern fn __j0f64x(c_longdouble) c_longdouble;
pub extern fn j1f64x(c_longdouble) c_longdouble;
pub extern fn __j1f64x(c_longdouble) c_longdouble;
pub extern fn jnf64x(c_int, c_longdouble) c_longdouble;
pub extern fn __jnf64x(c_int, c_longdouble) c_longdouble;
pub extern fn y0f64x(c_longdouble) c_longdouble;
pub extern fn __y0f64x(c_longdouble) c_longdouble;
pub extern fn y1f64x(c_longdouble) c_longdouble;
pub extern fn __y1f64x(c_longdouble) c_longdouble;
pub extern fn ynf64x(c_int, c_longdouble) c_longdouble;
pub extern fn __ynf64x(c_int, c_longdouble) c_longdouble;
pub extern fn erff64x(c_longdouble) c_longdouble;
pub extern fn __erff64x(c_longdouble) c_longdouble;
pub extern fn erfcf64x(c_longdouble) c_longdouble;
pub extern fn __erfcf64x(c_longdouble) c_longdouble;
pub extern fn lgammaf64x(c_longdouble) c_longdouble;
pub extern fn __lgammaf64x(c_longdouble) c_longdouble;
pub extern fn tgammaf64x(c_longdouble) c_longdouble;
pub extern fn __tgammaf64x(c_longdouble) c_longdouble;
pub extern fn lgammaf64x_r(c_longdouble, __signgamp: [*c]c_int) c_longdouble;
pub extern fn __lgammaf64x_r(c_longdouble, __signgamp: [*c]c_int) c_longdouble;
pub extern fn rintf64x(__x: c_longdouble) c_longdouble;
pub extern fn __rintf64x(__x: c_longdouble) c_longdouble;
pub extern fn nextafterf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __nextafterf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nextdownf64x(__x: c_longdouble) c_longdouble;
pub extern fn __nextdownf64x(__x: c_longdouble) c_longdouble;
pub extern fn nextupf64x(__x: c_longdouble) c_longdouble;
pub extern fn __nextupf64x(__x: c_longdouble) c_longdouble;
pub extern fn remainderf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __remainderf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn scalbnf64x(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn __scalbnf64x(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn ilogbf64x(__x: c_longdouble) c_int;
pub extern fn __ilogbf64x(__x: c_longdouble) c_int;
pub extern fn llogbf64x(__x: c_longdouble) c_long;
pub extern fn __llogbf64x(__x: c_longdouble) c_long;
pub extern fn scalblnf64x(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn __scalblnf64x(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn nearbyintf64x(__x: c_longdouble) c_longdouble;
pub extern fn __nearbyintf64x(__x: c_longdouble) c_longdouble;
pub extern fn roundf64x(__x: c_longdouble) c_longdouble;
pub extern fn __roundf64x(__x: c_longdouble) c_longdouble;
pub extern fn truncf64x(__x: c_longdouble) c_longdouble;
pub extern fn __truncf64x(__x: c_longdouble) c_longdouble;
pub extern fn remquof64x(__x: c_longdouble, __y: c_longdouble, __quo: [*c]c_int) c_longdouble;
pub extern fn __remquof64x(__x: c_longdouble, __y: c_longdouble, __quo: [*c]c_int) c_longdouble;
pub extern fn lrintf64x(__x: c_longdouble) c_long;
pub extern fn __lrintf64x(__x: c_longdouble) c_long;
pub extern fn llrintf64x(__x: c_longdouble) c_longlong;
pub extern fn __llrintf64x(__x: c_longdouble) c_longlong;
pub extern fn lroundf64x(__x: c_longdouble) c_long;
pub extern fn __lroundf64x(__x: c_longdouble) c_long;
pub extern fn llroundf64x(__x: c_longdouble) c_longlong;
pub extern fn __llroundf64x(__x: c_longdouble) c_longlong;
pub extern fn fdimf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fdimf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaxf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaxf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaf64x(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn __fmaf64x(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn roundevenf64x(__x: c_longdouble) c_longdouble;
pub extern fn __roundevenf64x(__x: c_longdouble) c_longdouble;
pub extern fn fromfpf64x(__x: c_longdouble, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpf64x(__x: c_longdouble, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpf64x(__x: c_longdouble, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpf64x(__x: c_longdouble, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn fromfpxf64x(__x: c_longdouble, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn __fromfpxf64x(__x: c_longdouble, __round: c_int, __width: c_uint) __intmax_t;
pub extern fn ufromfpxf64x(__x: c_longdouble, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn __ufromfpxf64x(__x: c_longdouble, __round: c_int, __width: c_uint) __uintmax_t;
pub extern fn canonicalizef64x(__cx: [*c]c_longdouble, __x: [*c]const c_longdouble) c_int;
pub extern fn fmaxmagf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaxmagf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminmagf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminmagf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaximumf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaximumf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminimumf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminimumf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaximum_numf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaximum_numf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminimum_numf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminimum_numf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaximum_magf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaximum_magf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminimum_magf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminimum_magf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaximum_mag_numf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaximum_mag_numf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminimum_mag_numf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminimum_mag_numf64x(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn totalorderf64x(__x: [*c]const c_longdouble, __y: [*c]const c_longdouble) c_int;
pub extern fn totalordermagf64x(__x: [*c]const c_longdouble, __y: [*c]const c_longdouble) c_int;
pub extern fn getpayloadf64x(__x: [*c]const c_longdouble) c_longdouble;
pub extern fn __getpayloadf64x(__x: [*c]const c_longdouble) c_longdouble;
pub extern fn setpayloadf64x(__x: [*c]c_longdouble, __payload: c_longdouble) c_int;
pub extern fn setpayloadsigf64x(__x: [*c]c_longdouble, __payload: c_longdouble) c_int;
pub extern fn fadd(__x: f64, __y: f64) f32;
pub extern fn fdiv(__x: f64, __y: f64) f32;
pub extern fn ffma(__x: f64, __y: f64, __z: f64) f32;
pub extern fn fmul(__x: f64, __y: f64) f32;
pub extern fn fsqrt(__x: f64) f32;
pub extern fn fsub(__x: f64, __y: f64) f32;
pub extern fn faddl(__x: c_longdouble, __y: c_longdouble) f32;
pub extern fn fdivl(__x: c_longdouble, __y: c_longdouble) f32;
pub extern fn ffmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) f32;
pub extern fn fmull(__x: c_longdouble, __y: c_longdouble) f32;
pub extern fn fsqrtl(__x: c_longdouble) f32;
pub extern fn fsubl(__x: c_longdouble, __y: c_longdouble) f32;
pub extern fn daddl(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn ddivl(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn dfmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) f64;
pub extern fn dmull(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn dsqrtl(__x: c_longdouble) f64;
pub extern fn dsubl(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn f32addf32x(__x: f64, __y: f64) f32;
pub extern fn f32divf32x(__x: f64, __y: f64) f32;
pub extern fn f32fmaf32x(__x: f64, __y: f64, __z: f64) f32;
pub extern fn f32mulf32x(__x: f64, __y: f64) f32;
pub extern fn f32sqrtf32x(__x: f64) f32;
pub extern fn f32subf32x(__x: f64, __y: f64) f32;
pub extern fn f32addf64(__x: f64, __y: f64) f32;
pub extern fn f32divf64(__x: f64, __y: f64) f32;
pub extern fn f32fmaf64(__x: f64, __y: f64, __z: f64) f32;
pub extern fn f32mulf64(__x: f64, __y: f64) f32;
pub extern fn f32sqrtf64(__x: f64) f32;
pub extern fn f32subf64(__x: f64, __y: f64) f32;
pub extern fn f32addf64x(__x: c_longdouble, __y: c_longdouble) f32;
pub extern fn f32divf64x(__x: c_longdouble, __y: c_longdouble) f32;
pub extern fn f32fmaf64x(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) f32;
pub extern fn f32mulf64x(__x: c_longdouble, __y: c_longdouble) f32;
pub extern fn f32sqrtf64x(__x: c_longdouble) f32;
pub extern fn f32subf64x(__x: c_longdouble, __y: c_longdouble) f32;
pub extern fn f32addf128(__x: f128, __y: f128) f32;
pub extern fn f32divf128(__x: f128, __y: f128) f32;
pub extern fn f32fmaf128(__x: f128, __y: f128, __z: f128) f32;
pub extern fn f32mulf128(__x: f128, __y: f128) f32;
pub extern fn f32sqrtf128(__x: f128) f32;
pub extern fn f32subf128(__x: f128, __y: f128) f32;
pub extern fn f32xaddf64(__x: f64, __y: f64) f64;
pub extern fn f32xdivf64(__x: f64, __y: f64) f64;
pub extern fn f32xfmaf64(__x: f64, __y: f64, __z: f64) f64;
pub extern fn f32xmulf64(__x: f64, __y: f64) f64;
pub extern fn f32xsqrtf64(__x: f64) f64;
pub extern fn f32xsubf64(__x: f64, __y: f64) f64;
pub extern fn f32xaddf64x(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn f32xdivf64x(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn f32xfmaf64x(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) f64;
pub extern fn f32xmulf64x(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn f32xsqrtf64x(__x: c_longdouble) f64;
pub extern fn f32xsubf64x(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn f32xaddf128(__x: f128, __y: f128) f64;
pub extern fn f32xdivf128(__x: f128, __y: f128) f64;
pub extern fn f32xfmaf128(__x: f128, __y: f128, __z: f128) f64;
pub extern fn f32xmulf128(__x: f128, __y: f128) f64;
pub extern fn f32xsqrtf128(__x: f128) f64;
pub extern fn f32xsubf128(__x: f128, __y: f128) f64;
pub extern fn f64addf64x(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn f64divf64x(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn f64fmaf64x(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) f64;
pub extern fn f64mulf64x(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn f64sqrtf64x(__x: c_longdouble) f64;
pub extern fn f64subf64x(__x: c_longdouble, __y: c_longdouble) f64;
pub extern fn f64addf128(__x: f128, __y: f128) f64;
pub extern fn f64divf128(__x: f128, __y: f128) f64;
pub extern fn f64fmaf128(__x: f128, __y: f128, __z: f128) f64;
pub extern fn f64mulf128(__x: f128, __y: f128) f64;
pub extern fn f64sqrtf128(__x: f128) f64;
pub extern fn f64subf128(__x: f128, __y: f128) f64;
pub extern fn f64xaddf128(__x: f128, __y: f128) c_longdouble;
pub extern fn f64xdivf128(__x: f128, __y: f128) c_longdouble;
pub extern fn f64xfmaf128(__x: f128, __y: f128, __z: f128) c_longdouble;
pub extern fn f64xmulf128(__x: f128, __y: f128) c_longdouble;
pub extern fn f64xsqrtf128(__x: f128) c_longdouble;
pub extern fn f64xsubf128(__x: f128, __y: f128) c_longdouble;
pub extern var signgam: c_int;
pub const FP_NAN: c_int = 0;
pub const FP_INFINITE: c_int = 1;
pub const FP_ZERO: c_int = 2;
pub const FP_SUBNORMAL: c_int = 3;
pub const FP_NORMAL: c_int = 4;
const enum_unnamed_10 = c_uint;
pub extern fn __iscanonicall(__x: c_longdouble) c_int;
pub extern fn memcpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
pub extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: usize) ?*anyopaque;
pub extern fn memccpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __c: c_int, __n: usize) ?*anyopaque;
pub extern fn memset(__s: ?*anyopaque, __c: c_int, __n: usize) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
pub extern fn __memcmpeq(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: usize) ?*anyopaque;
pub extern fn rawmemchr(__s: ?*const anyopaque, __c: c_int) ?*anyopaque;
pub extern fn memrchr(__s: ?*const anyopaque, __c: c_int, __n: usize) ?*anyopaque;
pub extern fn strcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn strcat(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn strncat(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) usize;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: usize) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strchrnul(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) usize;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) usize;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(noalias __s: [*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strcasestr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn memmem(__haystack: ?*const anyopaque, __haystacklen: usize, __needle: ?*const anyopaque, __needlelen: usize) ?*anyopaque;
pub extern fn __mempcpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
pub extern fn mempcpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
pub extern fn strlen(__s: [*c]const u8) usize;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) [*c]u8;
pub extern fn strerrordesc_np(__err: c_int) [*c]const u8;
pub extern fn strerrorname_np(__err: c_int) [*c]const u8;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
pub extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: usize) void;
pub extern fn bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn sigabbrev_np(__sig: c_int) [*c]const u8;
pub extern fn sigdescr_np(__sig: c_int) [*c]const u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn strverscmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strfry(__string: [*c]u8) [*c]u8;
pub extern fn memfrob(__s: ?*anyopaque, __n: usize) ?*anyopaque;
pub extern fn basename(__filename: [*c]const u8) [*c]u8; // /opt/zig-x86_64-linux-0.16.0/lib/compiler/aro/include/stddef.h:3:2: warning: struct demoted to opaque type - has bitfield
pub const struct_timex = opaque {};
pub extern fn clock_adjtime(__clock_id: __clockid_t, __utx: ?*struct_timex) c_int;
pub const struct_tm = extern struct {
    tm_sec: c_int = 0,
    tm_min: c_int = 0,
    tm_hour: c_int = 0,
    tm_mday: c_int = 0,
    tm_mon: c_int = 0,
    tm_year: c_int = 0,
    tm_wday: c_int = 0,
    tm_yday: c_int = 0,
    tm_isdst: c_int = 0,
    tm_gmtoff: c_long = 0,
    tm_zone: [*c]const u8 = null,
    pub const mktime = __root.mktime;
    pub const asctime = __root.asctime;
    pub const asctime_r = __root.asctime_r;
    pub const timegm = __root.timegm;
    pub const timelocal = __root.timelocal;
    pub const r = __root.asctime_r;
};
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    it_value: struct_timespec = @import("std").mem.zeroes(struct_timespec),
};
pub const struct_sigevent = opaque {};
pub extern fn clock() clock_t;
pub extern fn time(__timer: [*c]time_t) time_t;
pub extern fn difftime(__time1: time_t, __time0: time_t) f64;
pub extern fn mktime(__tp: [*c]struct_tm) time_t;
pub extern fn strftime(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm) usize;
pub extern fn strptime(noalias __s: [*c]const u8, noalias __fmt: [*c]const u8, __tp: [*c]struct_tm) [*c]u8;
pub extern fn strftime_l(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm, __loc: locale_t) usize;
pub extern fn strptime_l(noalias __s: [*c]const u8, noalias __fmt: [*c]const u8, __tp: [*c]struct_tm, __loc: locale_t) [*c]u8;
pub extern fn gmtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn localtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn gmtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn asctime(__tp: [*c]const struct_tm) [*c]u8;
pub extern fn ctime(__timer: [*c]const time_t) [*c]u8;
pub extern fn asctime_r(noalias __tp: [*c]const struct_tm, noalias __buf: [*c]u8) [*c]u8;
pub extern fn ctime_r(noalias __timer: [*c]const time_t, noalias __buf: [*c]u8) [*c]u8;
pub extern var __tzname: [2][*c]u8;
pub extern var __daylight: c_int;
pub extern var __timezone: c_long;
pub extern var tzname: [2][*c]u8;
pub extern fn tzset() void;
pub extern var daylight: c_int;
pub extern var timezone: c_long;
pub extern fn timegm(__tp: [*c]struct_tm) time_t;
pub extern fn timelocal(__tp: [*c]struct_tm) time_t;
pub extern fn dysize(__year: c_int) c_int;
pub extern fn nanosleep(__requested_time: [*c]const struct_timespec, __remaining: [*c]struct_timespec) c_int;
pub extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
pub extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
pub extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
pub extern fn clock_nanosleep(__clock_id: clockid_t, __flags: c_int, __req: [*c]const struct_timespec, __rem: [*c]struct_timespec) c_int;
pub extern fn clock_getcpuclockid(__pid: pid_t, __clock_id: [*c]clockid_t) c_int;
pub extern fn timer_create(__clock_id: clockid_t, noalias __evp: ?*struct_sigevent, noalias __timerid: [*c]timer_t) c_int;
pub extern fn timer_delete(__timerid: timer_t) c_int;
pub extern fn timer_settime(__timerid: timer_t, __flags: c_int, noalias __value: [*c]const struct_itimerspec, noalias __ovalue: [*c]struct_itimerspec) c_int;
pub extern fn timer_gettime(__timerid: timer_t, __value: [*c]struct_itimerspec) c_int;
pub extern fn timer_getoverrun(__timerid: timer_t) c_int;
pub extern fn timespec_get(__ts: [*c]struct_timespec, __base: c_int) c_int;
pub extern fn timespec_getres(__ts: [*c]struct_timespec, __base: c_int) c_int;
pub extern var getdate_err: c_int;
pub extern fn getdate(__string: [*c]const u8) [*c]struct_tm;
pub extern fn getdate_r(noalias __string: [*c]const u8, noalias __resbufp: [*c]struct_tm) c_int;
pub const struct_timezone = extern struct {
    tz_minuteswest: c_int = 0,
    tz_dsttime: c_int = 0,
};
pub extern fn gettimeofday(noalias __tv: [*c]struct_timeval, noalias __tz: ?*anyopaque) c_int;
pub extern fn settimeofday(__tv: [*c]const struct_timeval, __tz: [*c]const struct_timezone) c_int;
pub extern fn adjtime(__delta: [*c]const struct_timeval, __olddelta: [*c]struct_timeval) c_int;
pub const ITIMER_REAL: c_int = 0;
pub const ITIMER_VIRTUAL: c_int = 1;
pub const ITIMER_PROF: c_int = 2;
pub const enum___itimer_which = c_uint;
pub const struct_itimerval = extern struct {
    it_interval: struct_timeval = @import("std").mem.zeroes(struct_timeval),
    it_value: struct_timeval = @import("std").mem.zeroes(struct_timeval),
};
pub const __itimer_which_t = enum___itimer_which;
pub extern fn getitimer(__which: __itimer_which_t, __value: [*c]struct_itimerval) c_int;
pub extern fn setitimer(__which: __itimer_which_t, noalias __new: [*c]const struct_itimerval, noalias __old: [*c]struct_itimerval) c_int;
pub extern fn utimes(__file: [*c]const u8, __tvp: [*c]const struct_timeval) c_int;
pub extern fn lutimes(__file: [*c]const u8, __tvp: [*c]const struct_timeval) c_int;
pub extern fn futimes(__fd: c_int, __tvp: [*c]const struct_timeval) c_int;
pub extern fn futimesat(__fd: c_int, __file: [*c]const u8, __tvp: [*c]const struct_timeval) c_int;
pub const GNUTLS_CIPHER_UNKNOWN: c_int = 0;
pub const GNUTLS_CIPHER_NULL: c_int = 1;
pub const GNUTLS_CIPHER_ARCFOUR_128: c_int = 2;
pub const GNUTLS_CIPHER_3DES_CBC: c_int = 3;
pub const GNUTLS_CIPHER_AES_128_CBC: c_int = 4;
pub const GNUTLS_CIPHER_AES_256_CBC: c_int = 5;
pub const GNUTLS_CIPHER_ARCFOUR_40: c_int = 6;
pub const GNUTLS_CIPHER_CAMELLIA_128_CBC: c_int = 7;
pub const GNUTLS_CIPHER_CAMELLIA_256_CBC: c_int = 8;
pub const GNUTLS_CIPHER_AES_192_CBC: c_int = 9;
pub const GNUTLS_CIPHER_AES_128_GCM: c_int = 10;
pub const GNUTLS_CIPHER_AES_256_GCM: c_int = 11;
pub const GNUTLS_CIPHER_CAMELLIA_192_CBC: c_int = 12;
pub const GNUTLS_CIPHER_SALSA20_256: c_int = 13;
pub const GNUTLS_CIPHER_ESTREAM_SALSA20_256: c_int = 14;
pub const GNUTLS_CIPHER_CAMELLIA_128_GCM: c_int = 15;
pub const GNUTLS_CIPHER_CAMELLIA_256_GCM: c_int = 16;
pub const GNUTLS_CIPHER_RC2_40_CBC: c_int = 17;
pub const GNUTLS_CIPHER_DES_CBC: c_int = 18;
pub const GNUTLS_CIPHER_AES_128_CCM: c_int = 19;
pub const GNUTLS_CIPHER_AES_256_CCM: c_int = 20;
pub const GNUTLS_CIPHER_AES_128_CCM_8: c_int = 21;
pub const GNUTLS_CIPHER_AES_256_CCM_8: c_int = 22;
pub const GNUTLS_CIPHER_CHACHA20_POLY1305: c_int = 23;
pub const GNUTLS_CIPHER_GOST28147_TC26Z_CFB: c_int = 24;
pub const GNUTLS_CIPHER_GOST28147_CPA_CFB: c_int = 25;
pub const GNUTLS_CIPHER_GOST28147_CPB_CFB: c_int = 26;
pub const GNUTLS_CIPHER_GOST28147_CPC_CFB: c_int = 27;
pub const GNUTLS_CIPHER_GOST28147_CPD_CFB: c_int = 28;
pub const GNUTLS_CIPHER_AES_128_CFB8: c_int = 29;
pub const GNUTLS_CIPHER_AES_192_CFB8: c_int = 30;
pub const GNUTLS_CIPHER_AES_256_CFB8: c_int = 31;
pub const GNUTLS_CIPHER_AES_128_XTS: c_int = 32;
pub const GNUTLS_CIPHER_AES_256_XTS: c_int = 33;
pub const GNUTLS_CIPHER_GOST28147_TC26Z_CNT: c_int = 34;
pub const GNUTLS_CIPHER_CHACHA20_64: c_int = 35;
pub const GNUTLS_CIPHER_CHACHA20_32: c_int = 36;
pub const GNUTLS_CIPHER_AES_128_SIV: c_int = 37;
pub const GNUTLS_CIPHER_AES_256_SIV: c_int = 38;
pub const GNUTLS_CIPHER_AES_192_GCM: c_int = 39;
pub const GNUTLS_CIPHER_MAGMA_CTR_ACPKM: c_int = 40;
pub const GNUTLS_CIPHER_KUZNYECHIK_CTR_ACPKM: c_int = 41;
pub const GNUTLS_CIPHER_IDEA_PGP_CFB: c_int = 200;
pub const GNUTLS_CIPHER_3DES_PGP_CFB: c_int = 201;
pub const GNUTLS_CIPHER_CAST5_PGP_CFB: c_int = 202;
pub const GNUTLS_CIPHER_BLOWFISH_PGP_CFB: c_int = 203;
pub const GNUTLS_CIPHER_SAFER_SK128_PGP_CFB: c_int = 204;
pub const GNUTLS_CIPHER_AES128_PGP_CFB: c_int = 205;
pub const GNUTLS_CIPHER_AES192_PGP_CFB: c_int = 206;
pub const GNUTLS_CIPHER_AES256_PGP_CFB: c_int = 207;
pub const GNUTLS_CIPHER_TWOFISH_PGP_CFB: c_int = 208;
pub const enum_gnutls_cipher_algorithm = c_uint;
pub const gnutls_cipher_algorithm_t = enum_gnutls_cipher_algorithm;
pub const GNUTLS_KX_UNKNOWN: c_int = 0;
pub const GNUTLS_KX_RSA: c_int = 1;
pub const GNUTLS_KX_DHE_DSS: c_int = 2;
pub const GNUTLS_KX_DHE_RSA: c_int = 3;
pub const GNUTLS_KX_ANON_DH: c_int = 4;
pub const GNUTLS_KX_SRP: c_int = 5;
pub const GNUTLS_KX_RSA_EXPORT: c_int = 6;
pub const GNUTLS_KX_SRP_RSA: c_int = 7;
pub const GNUTLS_KX_SRP_DSS: c_int = 8;
pub const GNUTLS_KX_PSK: c_int = 9;
pub const GNUTLS_KX_DHE_PSK: c_int = 10;
pub const GNUTLS_KX_ANON_ECDH: c_int = 11;
pub const GNUTLS_KX_ECDHE_RSA: c_int = 12;
pub const GNUTLS_KX_ECDHE_ECDSA: c_int = 13;
pub const GNUTLS_KX_ECDHE_PSK: c_int = 14;
pub const GNUTLS_KX_RSA_PSK: c_int = 15;
pub const GNUTLS_KX_VKO_GOST_12: c_int = 16;
pub const gnutls_kx_algorithm_t = c_uint;
pub const GNUTLS_PARAMS_RSA_EXPORT: c_int = 1;
pub const GNUTLS_PARAMS_DH: c_int = 2;
pub const GNUTLS_PARAMS_ECDH: c_int = 3;
pub const gnutls_params_type_t = c_uint;
pub const GNUTLS_CRD_CERTIFICATE: c_int = 1;
pub const GNUTLS_CRD_ANON: c_int = 2;
pub const GNUTLS_CRD_SRP: c_int = 3;
pub const GNUTLS_CRD_PSK: c_int = 4;
pub const GNUTLS_CRD_IA: c_int = 5;
pub const gnutls_credentials_type_t = c_uint;
pub const GNUTLS_MAC_UNKNOWN: c_int = 0;
pub const GNUTLS_MAC_NULL: c_int = 1;
pub const GNUTLS_MAC_MD5: c_int = 2;
pub const GNUTLS_MAC_SHA1: c_int = 3;
pub const GNUTLS_MAC_RMD160: c_int = 4;
pub const GNUTLS_MAC_MD2: c_int = 5;
pub const GNUTLS_MAC_SHA256: c_int = 6;
pub const GNUTLS_MAC_SHA384: c_int = 7;
pub const GNUTLS_MAC_SHA512: c_int = 8;
pub const GNUTLS_MAC_SHA224: c_int = 9;
pub const GNUTLS_MAC_SHA3_224: c_int = 10;
pub const GNUTLS_MAC_SHA3_256: c_int = 11;
pub const GNUTLS_MAC_SHA3_384: c_int = 12;
pub const GNUTLS_MAC_SHA3_512: c_int = 13;
pub const GNUTLS_MAC_MD5_SHA1: c_int = 14;
pub const GNUTLS_MAC_GOSTR_94: c_int = 15;
pub const GNUTLS_MAC_STREEBOG_256: c_int = 16;
pub const GNUTLS_MAC_STREEBOG_512: c_int = 17;
pub const GNUTLS_MAC_AEAD: c_int = 200;
pub const GNUTLS_MAC_UMAC_96: c_int = 201;
pub const GNUTLS_MAC_UMAC_128: c_int = 202;
pub const GNUTLS_MAC_AES_CMAC_128: c_int = 203;
pub const GNUTLS_MAC_AES_CMAC_256: c_int = 204;
pub const GNUTLS_MAC_AES_GMAC_128: c_int = 205;
pub const GNUTLS_MAC_AES_GMAC_192: c_int = 206;
pub const GNUTLS_MAC_AES_GMAC_256: c_int = 207;
pub const GNUTLS_MAC_GOST28147_TC26Z_IMIT: c_int = 208;
pub const GNUTLS_MAC_SHAKE_128: c_int = 209;
pub const GNUTLS_MAC_SHAKE_256: c_int = 210;
pub const GNUTLS_MAC_MAGMA_OMAC: c_int = 211;
pub const GNUTLS_MAC_KUZNYECHIK_OMAC: c_int = 212;
pub const gnutls_mac_algorithm_t = c_uint;
pub const GNUTLS_DIG_UNKNOWN: c_int = 0;
pub const GNUTLS_DIG_NULL: c_int = 1;
pub const GNUTLS_DIG_MD5: c_int = 2;
pub const GNUTLS_DIG_SHA1: c_int = 3;
pub const GNUTLS_DIG_RMD160: c_int = 4;
pub const GNUTLS_DIG_MD2: c_int = 5;
pub const GNUTLS_DIG_SHA256: c_int = 6;
pub const GNUTLS_DIG_SHA384: c_int = 7;
pub const GNUTLS_DIG_SHA512: c_int = 8;
pub const GNUTLS_DIG_SHA224: c_int = 9;
pub const GNUTLS_DIG_SHA3_224: c_int = 10;
pub const GNUTLS_DIG_SHA3_256: c_int = 11;
pub const GNUTLS_DIG_SHA3_384: c_int = 12;
pub const GNUTLS_DIG_SHA3_512: c_int = 13;
pub const GNUTLS_DIG_MD5_SHA1: c_int = 14;
pub const GNUTLS_DIG_GOSTR_94: c_int = 15;
pub const GNUTLS_DIG_STREEBOG_256: c_int = 16;
pub const GNUTLS_DIG_STREEBOG_512: c_int = 17;
pub const GNUTLS_DIG_SHAKE_128: c_int = 209;
pub const GNUTLS_DIG_SHAKE_256: c_int = 210;
pub const gnutls_digest_algorithm_t = c_uint;
pub const GNUTLS_COMP_UNKNOWN: c_int = 0;
pub const GNUTLS_COMP_NULL: c_int = 1;
pub const GNUTLS_COMP_DEFLATE: c_int = 2;
pub const GNUTLS_COMP_ZLIB: c_int = 2;
pub const gnutls_compression_method_t = c_uint;
pub const GNUTLS_SERVER: c_int = 1;
pub const GNUTLS_CLIENT: c_int = 2;
pub const GNUTLS_DATAGRAM: c_int = 4;
pub const GNUTLS_NONBLOCK: c_int = 8;
pub const GNUTLS_NO_EXTENSIONS: c_int = 16;
pub const GNUTLS_NO_REPLAY_PROTECTION: c_int = 32;
pub const GNUTLS_NO_SIGNAL: c_int = 64;
pub const GNUTLS_ALLOW_ID_CHANGE: c_int = 128;
pub const GNUTLS_ENABLE_FALSE_START: c_int = 256;
pub const GNUTLS_FORCE_CLIENT_CERT: c_int = 512;
pub const GNUTLS_NO_TICKETS: c_int = 1024;
pub const GNUTLS_KEY_SHARE_TOP: c_int = 2048;
pub const GNUTLS_KEY_SHARE_TOP2: c_int = 4096;
pub const GNUTLS_KEY_SHARE_TOP3: c_int = 8192;
pub const GNUTLS_POST_HANDSHAKE_AUTH: c_int = 16384;
pub const GNUTLS_NO_AUTO_REKEY: c_int = 32768;
pub const GNUTLS_SAFE_PADDING_CHECK: c_int = 65536;
pub const GNUTLS_ENABLE_EARLY_START: c_int = 131072;
pub const GNUTLS_ENABLE_RAWPK: c_int = 262144;
pub const GNUTLS_AUTO_REAUTH: c_int = 524288;
pub const GNUTLS_ENABLE_EARLY_DATA: c_int = 1048576;
pub const GNUTLS_NO_AUTO_SEND_TICKET: c_int = 2097152;
pub const GNUTLS_NO_END_OF_EARLY_DATA: c_int = 4194304;
pub const gnutls_init_flags_t = c_uint;
pub const GNUTLS_AL_WARNING: c_int = 1;
pub const GNUTLS_AL_FATAL: c_int = 2;
pub const gnutls_alert_level_t = c_uint;
pub const GNUTLS_A_CLOSE_NOTIFY: c_int = 0;
pub const GNUTLS_A_UNEXPECTED_MESSAGE: c_int = 10;
pub const GNUTLS_A_BAD_RECORD_MAC: c_int = 20;
pub const GNUTLS_A_DECRYPTION_FAILED: c_int = 21;
pub const GNUTLS_A_RECORD_OVERFLOW: c_int = 22;
pub const GNUTLS_A_DECOMPRESSION_FAILURE: c_int = 30;
pub const GNUTLS_A_HANDSHAKE_FAILURE: c_int = 40;
pub const GNUTLS_A_SSL3_NO_CERTIFICATE: c_int = 41;
pub const GNUTLS_A_BAD_CERTIFICATE: c_int = 42;
pub const GNUTLS_A_UNSUPPORTED_CERTIFICATE: c_int = 43;
pub const GNUTLS_A_CERTIFICATE_REVOKED: c_int = 44;
pub const GNUTLS_A_CERTIFICATE_EXPIRED: c_int = 45;
pub const GNUTLS_A_CERTIFICATE_UNKNOWN: c_int = 46;
pub const GNUTLS_A_ILLEGAL_PARAMETER: c_int = 47;
pub const GNUTLS_A_UNKNOWN_CA: c_int = 48;
pub const GNUTLS_A_ACCESS_DENIED: c_int = 49;
pub const GNUTLS_A_DECODE_ERROR: c_int = 50;
pub const GNUTLS_A_DECRYPT_ERROR: c_int = 51;
pub const GNUTLS_A_EXPORT_RESTRICTION: c_int = 60;
pub const GNUTLS_A_PROTOCOL_VERSION: c_int = 70;
pub const GNUTLS_A_INSUFFICIENT_SECURITY: c_int = 71;
pub const GNUTLS_A_INTERNAL_ERROR: c_int = 80;
pub const GNUTLS_A_INAPPROPRIATE_FALLBACK: c_int = 86;
pub const GNUTLS_A_USER_CANCELED: c_int = 90;
pub const GNUTLS_A_NO_RENEGOTIATION: c_int = 100;
pub const GNUTLS_A_MISSING_EXTENSION: c_int = 109;
pub const GNUTLS_A_UNSUPPORTED_EXTENSION: c_int = 110;
pub const GNUTLS_A_CERTIFICATE_UNOBTAINABLE: c_int = 111;
pub const GNUTLS_A_UNRECOGNIZED_NAME: c_int = 112;
pub const GNUTLS_A_UNKNOWN_PSK_IDENTITY: c_int = 115;
pub const GNUTLS_A_CERTIFICATE_REQUIRED: c_int = 116;
pub const GNUTLS_A_NO_APPLICATION_PROTOCOL: c_int = 120;
pub const GNUTLS_A_MAX: c_int = 120;
pub const gnutls_alert_description_t = c_uint;
pub const GNUTLS_HANDSHAKE_HELLO_REQUEST: c_int = 0;
pub const GNUTLS_HANDSHAKE_CLIENT_HELLO: c_int = 1;
pub const GNUTLS_HANDSHAKE_SERVER_HELLO: c_int = 2;
pub const GNUTLS_HANDSHAKE_HELLO_VERIFY_REQUEST: c_int = 3;
pub const GNUTLS_HANDSHAKE_NEW_SESSION_TICKET: c_int = 4;
pub const GNUTLS_HANDSHAKE_END_OF_EARLY_DATA: c_int = 5;
pub const GNUTLS_HANDSHAKE_ENCRYPTED_EXTENSIONS: c_int = 8;
pub const GNUTLS_HANDSHAKE_CERTIFICATE_PKT: c_int = 11;
pub const GNUTLS_HANDSHAKE_SERVER_KEY_EXCHANGE: c_int = 12;
pub const GNUTLS_HANDSHAKE_CERTIFICATE_REQUEST: c_int = 13;
pub const GNUTLS_HANDSHAKE_SERVER_HELLO_DONE: c_int = 14;
pub const GNUTLS_HANDSHAKE_CERTIFICATE_VERIFY: c_int = 15;
pub const GNUTLS_HANDSHAKE_CLIENT_KEY_EXCHANGE: c_int = 16;
pub const GNUTLS_HANDSHAKE_FINISHED: c_int = 20;
pub const GNUTLS_HANDSHAKE_CERTIFICATE_STATUS: c_int = 22;
pub const GNUTLS_HANDSHAKE_SUPPLEMENTAL: c_int = 23;
pub const GNUTLS_HANDSHAKE_KEY_UPDATE: c_int = 24;
pub const GNUTLS_HANDSHAKE_CHANGE_CIPHER_SPEC: c_int = 254;
pub const GNUTLS_HANDSHAKE_CLIENT_HELLO_V2: c_int = 1024;
pub const GNUTLS_HANDSHAKE_HELLO_RETRY_REQUEST: c_int = 1025;
pub const gnutls_handshake_description_t = c_uint;
pub extern fn gnutls_handshake_description_get_name(@"type": gnutls_handshake_description_t) [*c]const u8;
pub const GNUTLS_CERT_INVALID: c_int = 2;
pub const GNUTLS_CERT_REVOKED: c_int = 32;
pub const GNUTLS_CERT_SIGNER_NOT_FOUND: c_int = 64;
pub const GNUTLS_CERT_SIGNER_NOT_CA: c_int = 128;
pub const GNUTLS_CERT_INSECURE_ALGORITHM: c_int = 256;
pub const GNUTLS_CERT_NOT_ACTIVATED: c_int = 512;
pub const GNUTLS_CERT_EXPIRED: c_int = 1024;
pub const GNUTLS_CERT_SIGNATURE_FAILURE: c_int = 2048;
pub const GNUTLS_CERT_REVOCATION_DATA_SUPERSEDED: c_int = 4096;
pub const GNUTLS_CERT_UNEXPECTED_OWNER: c_int = 16384;
pub const GNUTLS_CERT_REVOCATION_DATA_ISSUED_IN_FUTURE: c_int = 32768;
pub const GNUTLS_CERT_SIGNER_CONSTRAINTS_FAILURE: c_int = 65536;
pub const GNUTLS_CERT_MISMATCH: c_int = 131072;
pub const GNUTLS_CERT_PURPOSE_MISMATCH: c_int = 262144;
pub const GNUTLS_CERT_MISSING_OCSP_STATUS: c_int = 524288;
pub const GNUTLS_CERT_INVALID_OCSP_STATUS: c_int = 1048576;
pub const GNUTLS_CERT_UNKNOWN_CRIT_EXTENSIONS: c_int = 2097152;
pub const gnutls_certificate_status_t = c_uint;
pub const GNUTLS_CERT_IGNORE: c_int = 0;
pub const GNUTLS_CERT_REQUEST: c_int = 1;
pub const GNUTLS_CERT_REQUIRE: c_int = 2;
pub const gnutls_certificate_request_t = c_uint;
pub const GNUTLS_OPENPGP_CERT: c_int = 0;
pub const GNUTLS_OPENPGP_CERT_FINGERPRINT: c_int = 1;
pub const gnutls_openpgp_crt_status_t = c_uint;
pub const GNUTLS_SHUT_RDWR: c_int = 0;
pub const GNUTLS_SHUT_WR: c_int = 1;
pub const gnutls_close_request_t = c_uint;
pub const GNUTLS_SSL3: c_int = 1;
pub const GNUTLS_TLS1_0: c_int = 2;
pub const GNUTLS_TLS1: c_int = 2;
pub const GNUTLS_TLS1_1: c_int = 3;
pub const GNUTLS_TLS1_2: c_int = 4;
pub const GNUTLS_TLS1_3: c_int = 5;
pub const GNUTLS_DTLS0_9: c_int = 200;
pub const GNUTLS_DTLS1_0: c_int = 201;
pub const GNUTLS_DTLS1_2: c_int = 202;
pub const GNUTLS_DTLS_VERSION_MIN: c_int = 200;
pub const GNUTLS_DTLS_VERSION_MAX: c_int = 202;
pub const GNUTLS_TLS_VERSION_MAX: c_int = 5;
pub const GNUTLS_VERSION_UNKNOWN: c_int = 255;
pub const gnutls_protocol_t = c_uint;
pub const GNUTLS_CRT_UNKNOWN: c_int = 0;
pub const GNUTLS_CRT_X509: c_int = 1;
pub const GNUTLS_CRT_OPENPGP: c_int = 2;
pub const GNUTLS_CRT_RAWPK: c_int = 3;
pub const GNUTLS_CRT_MAX: c_int = 3;
pub const gnutls_certificate_type_t = c_uint;
pub const GNUTLS_X509_FMT_DER: c_int = 0;
pub const GNUTLS_X509_FMT_PEM: c_int = 1;
pub const gnutls_x509_crt_fmt_t = c_uint;
pub const GNUTLS_CRT_PRINT_FULL: c_int = 0;
pub const GNUTLS_CRT_PRINT_ONELINE: c_int = 1;
pub const GNUTLS_CRT_PRINT_UNSIGNED_FULL: c_int = 2;
pub const GNUTLS_CRT_PRINT_COMPACT: c_int = 3;
pub const GNUTLS_CRT_PRINT_FULL_NUMBERS: c_int = 4;
pub const enum_gnutls_certificate_print_formats = c_uint;
pub const gnutls_certificate_print_formats_t = enum_gnutls_certificate_print_formats;
pub const GNUTLS_PK_UNKNOWN: c_int = 0;
pub const GNUTLS_PK_RSA: c_int = 1;
pub const GNUTLS_PK_DSA: c_int = 2;
pub const GNUTLS_PK_DH: c_int = 3;
pub const GNUTLS_PK_ECDSA: c_int = 4;
pub const GNUTLS_PK_ECDH_X25519: c_int = 5;
pub const GNUTLS_PK_RSA_PSS: c_int = 6;
pub const GNUTLS_PK_EDDSA_ED25519: c_int = 7;
pub const GNUTLS_PK_GOST_01: c_int = 8;
pub const GNUTLS_PK_GOST_12_256: c_int = 9;
pub const GNUTLS_PK_GOST_12_512: c_int = 10;
pub const GNUTLS_PK_ECDH_X448: c_int = 11;
pub const GNUTLS_PK_EDDSA_ED448: c_int = 12;
pub const GNUTLS_PK_MAX: c_int = 12;
pub const gnutls_pk_algorithm_t = c_uint;
pub extern fn gnutls_pk_algorithm_get_name(algorithm: gnutls_pk_algorithm_t) [*c]const u8;
pub const GNUTLS_SIGN_UNKNOWN: c_int = 0;
pub const GNUTLS_SIGN_RSA_SHA1: c_int = 1;
pub const GNUTLS_SIGN_RSA_SHA: c_int = 1;
pub const GNUTLS_SIGN_DSA_SHA1: c_int = 2;
pub const GNUTLS_SIGN_DSA_SHA: c_int = 2;
pub const GNUTLS_SIGN_RSA_MD5: c_int = 3;
pub const GNUTLS_SIGN_RSA_MD2: c_int = 4;
pub const GNUTLS_SIGN_RSA_RMD160: c_int = 5;
pub const GNUTLS_SIGN_RSA_SHA256: c_int = 6;
pub const GNUTLS_SIGN_RSA_SHA384: c_int = 7;
pub const GNUTLS_SIGN_RSA_SHA512: c_int = 8;
pub const GNUTLS_SIGN_RSA_SHA224: c_int = 9;
pub const GNUTLS_SIGN_DSA_SHA224: c_int = 10;
pub const GNUTLS_SIGN_DSA_SHA256: c_int = 11;
pub const GNUTLS_SIGN_ECDSA_SHA1: c_int = 12;
pub const GNUTLS_SIGN_ECDSA_SHA224: c_int = 13;
pub const GNUTLS_SIGN_ECDSA_SHA256: c_int = 14;
pub const GNUTLS_SIGN_ECDSA_SHA384: c_int = 15;
pub const GNUTLS_SIGN_ECDSA_SHA512: c_int = 16;
pub const GNUTLS_SIGN_DSA_SHA384: c_int = 17;
pub const GNUTLS_SIGN_DSA_SHA512: c_int = 18;
pub const GNUTLS_SIGN_ECDSA_SHA3_224: c_int = 20;
pub const GNUTLS_SIGN_ECDSA_SHA3_256: c_int = 21;
pub const GNUTLS_SIGN_ECDSA_SHA3_384: c_int = 22;
pub const GNUTLS_SIGN_ECDSA_SHA3_512: c_int = 23;
pub const GNUTLS_SIGN_DSA_SHA3_224: c_int = 24;
pub const GNUTLS_SIGN_DSA_SHA3_256: c_int = 25;
pub const GNUTLS_SIGN_DSA_SHA3_384: c_int = 26;
pub const GNUTLS_SIGN_DSA_SHA3_512: c_int = 27;
pub const GNUTLS_SIGN_RSA_SHA3_224: c_int = 28;
pub const GNUTLS_SIGN_RSA_SHA3_256: c_int = 29;
pub const GNUTLS_SIGN_RSA_SHA3_384: c_int = 30;
pub const GNUTLS_SIGN_RSA_SHA3_512: c_int = 31;
pub const GNUTLS_SIGN_RSA_PSS_SHA256: c_int = 32;
pub const GNUTLS_SIGN_RSA_PSS_SHA384: c_int = 33;
pub const GNUTLS_SIGN_RSA_PSS_SHA512: c_int = 34;
pub const GNUTLS_SIGN_EDDSA_ED25519: c_int = 35;
pub const GNUTLS_SIGN_RSA_RAW: c_int = 36;
pub const GNUTLS_SIGN_ECDSA_SECP256R1_SHA256: c_int = 37;
pub const GNUTLS_SIGN_ECDSA_SECP384R1_SHA384: c_int = 38;
pub const GNUTLS_SIGN_ECDSA_SECP521R1_SHA512: c_int = 39;
pub const GNUTLS_SIGN_RSA_PSS_RSAE_SHA256: c_int = 40;
pub const GNUTLS_SIGN_RSA_PSS_RSAE_SHA384: c_int = 41;
pub const GNUTLS_SIGN_RSA_PSS_RSAE_SHA512: c_int = 42;
pub const GNUTLS_SIGN_GOST_94: c_int = 43;
pub const GNUTLS_SIGN_GOST_256: c_int = 44;
pub const GNUTLS_SIGN_GOST_512: c_int = 45;
pub const GNUTLS_SIGN_EDDSA_ED448: c_int = 46;
pub const GNUTLS_SIGN_MAX: c_int = 46;
pub const gnutls_sign_algorithm_t = c_uint;
pub const GNUTLS_ECC_CURVE_INVALID: c_int = 0;
pub const GNUTLS_ECC_CURVE_SECP224R1: c_int = 1;
pub const GNUTLS_ECC_CURVE_SECP256R1: c_int = 2;
pub const GNUTLS_ECC_CURVE_SECP384R1: c_int = 3;
pub const GNUTLS_ECC_CURVE_SECP521R1: c_int = 4;
pub const GNUTLS_ECC_CURVE_SECP192R1: c_int = 5;
pub const GNUTLS_ECC_CURVE_X25519: c_int = 6;
pub const GNUTLS_ECC_CURVE_ED25519: c_int = 7;
pub const GNUTLS_ECC_CURVE_GOST256CPA: c_int = 8;
pub const GNUTLS_ECC_CURVE_GOST256CPB: c_int = 9;
pub const GNUTLS_ECC_CURVE_GOST256CPC: c_int = 10;
pub const GNUTLS_ECC_CURVE_GOST256CPXA: c_int = 11;
pub const GNUTLS_ECC_CURVE_GOST256CPXB: c_int = 12;
pub const GNUTLS_ECC_CURVE_GOST512A: c_int = 13;
pub const GNUTLS_ECC_CURVE_GOST512B: c_int = 14;
pub const GNUTLS_ECC_CURVE_GOST512C: c_int = 15;
pub const GNUTLS_ECC_CURVE_GOST256A: c_int = 16;
pub const GNUTLS_ECC_CURVE_GOST256B: c_int = 17;
pub const GNUTLS_ECC_CURVE_GOST256C: c_int = 18;
pub const GNUTLS_ECC_CURVE_GOST256D: c_int = 19;
pub const GNUTLS_ECC_CURVE_X448: c_int = 20;
pub const GNUTLS_ECC_CURVE_ED448: c_int = 21;
pub const GNUTLS_ECC_CURVE_MAX: c_int = 21;
pub const gnutls_ecc_curve_t = c_uint;
pub const GNUTLS_GROUP_INVALID: c_int = 0;
pub const GNUTLS_GROUP_SECP192R1: c_int = 5;
pub const GNUTLS_GROUP_SECP224R1: c_int = 1;
pub const GNUTLS_GROUP_SECP256R1: c_int = 2;
pub const GNUTLS_GROUP_SECP384R1: c_int = 3;
pub const GNUTLS_GROUP_SECP521R1: c_int = 4;
pub const GNUTLS_GROUP_X25519: c_int = 6;
pub const GNUTLS_GROUP_X448: c_int = 20;
pub const GNUTLS_GROUP_GC256A: c_int = 16;
pub const GNUTLS_GROUP_GC256B: c_int = 17;
pub const GNUTLS_GROUP_GC256C: c_int = 18;
pub const GNUTLS_GROUP_GC256D: c_int = 19;
pub const GNUTLS_GROUP_GC512A: c_int = 13;
pub const GNUTLS_GROUP_GC512B: c_int = 14;
pub const GNUTLS_GROUP_GC512C: c_int = 15;
pub const GNUTLS_GROUP_FFDHE2048: c_int = 256;
pub const GNUTLS_GROUP_FFDHE3072: c_int = 257;
pub const GNUTLS_GROUP_FFDHE4096: c_int = 258;
pub const GNUTLS_GROUP_FFDHE8192: c_int = 259;
pub const GNUTLS_GROUP_FFDHE6144: c_int = 260;
pub const GNUTLS_GROUP_MAX: c_int = 260;
pub const gnutls_group_t = c_uint;
pub const GNUTLS_SEC_PARAM_UNKNOWN: c_int = 0;
pub const GNUTLS_SEC_PARAM_INSECURE: c_int = 5;
pub const GNUTLS_SEC_PARAM_EXPORT: c_int = 10;
pub const GNUTLS_SEC_PARAM_VERY_WEAK: c_int = 15;
pub const GNUTLS_SEC_PARAM_WEAK: c_int = 20;
pub const GNUTLS_SEC_PARAM_LOW: c_int = 25;
pub const GNUTLS_SEC_PARAM_LEGACY: c_int = 30;
pub const GNUTLS_SEC_PARAM_MEDIUM: c_int = 35;
pub const GNUTLS_SEC_PARAM_HIGH: c_int = 40;
pub const GNUTLS_SEC_PARAM_ULTRA: c_int = 45;
pub const GNUTLS_SEC_PARAM_FUTURE: c_int = 50;
pub const GNUTLS_SEC_PARAM_MAX: c_int = 50;
pub const gnutls_sec_param_t = c_uint;
pub const GNUTLS_CB_TLS_UNIQUE: c_int = 0;
pub const GNUTLS_CB_TLS_SERVER_END_POINT: c_int = 1;
pub const GNUTLS_CB_TLS_EXPORTER: c_int = 2;
pub const gnutls_channel_binding_t = c_uint;
pub const GNUTLS_GOST_PARAMSET_UNKNOWN: c_int = 0;
pub const GNUTLS_GOST_PARAMSET_TC26_Z: c_int = 1;
pub const GNUTLS_GOST_PARAMSET_CP_A: c_int = 2;
pub const GNUTLS_GOST_PARAMSET_CP_B: c_int = 3;
pub const GNUTLS_GOST_PARAMSET_CP_C: c_int = 4;
pub const GNUTLS_GOST_PARAMSET_CP_D: c_int = 5;
pub const gnutls_gost_paramset_t = c_uint;
pub const GNUTLS_CTYPE_CLIENT: c_int = 0;
pub const GNUTLS_CTYPE_SERVER: c_int = 1;
pub const GNUTLS_CTYPE_OURS: c_int = 2;
pub const GNUTLS_CTYPE_PEERS: c_int = 3;
pub const gnutls_ctype_target_t = c_uint;
pub const gnutls_transport_ptr_t = ?*anyopaque;
pub const struct_gnutls_session_int = opaque {
    pub const gnutls_deinit = __root.gnutls_deinit;
    pub const gnutls_bye = __root.gnutls_bye;
    pub const gnutls_handshake = __root.gnutls_handshake;
    pub const gnutls_reauth = __root.gnutls_reauth;
    pub const gnutls_handshake_set_timeout = __root.gnutls_handshake_set_timeout;
    pub const gnutls_rehandshake = __root.gnutls_rehandshake;
    pub const gnutls_session_key_update = __root.gnutls_session_key_update;
    pub const gnutls_alert_get = __root.gnutls_alert_get;
    pub const gnutls_alert_send = __root.gnutls_alert_send;
    pub const gnutls_alert_send_appropriate = __root.gnutls_alert_send_appropriate;
    pub const gnutls_ecc_curve_get = __root.gnutls_ecc_curve_get;
    pub const gnutls_group_get = __root.gnutls_group_get;
    pub const gnutls_cipher_get = __root.gnutls_cipher_get;
    pub const gnutls_early_cipher_get = __root.gnutls_early_cipher_get;
    pub const gnutls_kx_get = __root.gnutls_kx_get;
    pub const gnutls_mac_get = __root.gnutls_mac_get;
    pub const gnutls_prf_hash_get = __root.gnutls_prf_hash_get;
    pub const gnutls_early_prf_hash_get = __root.gnutls_early_prf_hash_get;
    pub const gnutls_certificate_type_get = __root.gnutls_certificate_type_get;
    pub const gnutls_certificate_type_get2 = __root.gnutls_certificate_type_get2;
    pub const gnutls_sign_algorithm_get = __root.gnutls_sign_algorithm_get;
    pub const gnutls_sign_algorithm_get_client = __root.gnutls_sign_algorithm_get_client;
    pub const gnutls_sign_algorithm_get_requested = __root.gnutls_sign_algorithm_get_requested;
    pub const gnutls_handshake_set_private_extensions = __root.gnutls_handshake_set_private_extensions;
    pub const gnutls_handshake_set_random = __root.gnutls_handshake_set_random;
    pub const gnutls_handshake_get_last_out = __root.gnutls_handshake_get_last_out;
    pub const gnutls_handshake_get_last_in = __root.gnutls_handshake_get_last_in;
    pub const gnutls_heartbeat_ping = __root.gnutls_heartbeat_ping;
    pub const gnutls_heartbeat_pong = __root.gnutls_heartbeat_pong;
    pub const gnutls_record_set_timeout = __root.gnutls_record_set_timeout;
    pub const gnutls_record_disable_padding = __root.gnutls_record_disable_padding;
    pub const gnutls_record_cork = __root.gnutls_record_cork;
    pub const gnutls_record_uncork = __root.gnutls_record_uncork;
    pub const gnutls_record_discard_queued = __root.gnutls_record_discard_queued;
    pub const gnutls_record_get_state = __root.gnutls_record_get_state;
    pub const gnutls_record_set_state = __root.gnutls_record_set_state;
    pub const gnutls_range_split = __root.gnutls_range_split;
    pub const gnutls_record_send = __root.gnutls_record_send;
    pub const gnutls_record_send2 = __root.gnutls_record_send2;
    pub const gnutls_record_send_range = __root.gnutls_record_send_range;
    pub const gnutls_record_recv = __root.gnutls_record_recv;
    pub const gnutls_record_recv_packet = __root.gnutls_record_recv_packet;
    pub const gnutls_record_recv_seq = __root.gnutls_record_recv_seq;
    pub const gnutls_record_overhead_size = __root.gnutls_record_overhead_size;
    pub const gnutls_session_enable_compatibility_mode = __root.gnutls_session_enable_compatibility_mode;
    pub const gnutls_record_can_use_length_hiding = __root.gnutls_record_can_use_length_hiding;
    pub const gnutls_record_get_direction = __root.gnutls_record_get_direction;
    pub const gnutls_record_get_max_size = __root.gnutls_record_get_max_size;
    pub const gnutls_record_set_max_size = __root.gnutls_record_set_max_size;
    pub const gnutls_record_set_max_recv_size = __root.gnutls_record_set_max_recv_size;
    pub const gnutls_record_check_pending = __root.gnutls_record_check_pending;
    pub const gnutls_record_check_corked = __root.gnutls_record_check_corked;
    pub const gnutls_record_get_max_early_data_size = __root.gnutls_record_get_max_early_data_size;
    pub const gnutls_record_set_max_early_data_size = __root.gnutls_record_set_max_early_data_size;
    pub const gnutls_record_send_early_data = __root.gnutls_record_send_early_data;
    pub const gnutls_record_recv_early_data = __root.gnutls_record_recv_early_data;
    pub const gnutls_session_force_valid = __root.gnutls_session_force_valid;
    pub const gnutls_prf = __root.gnutls_prf;
    pub const gnutls_prf_rfc5705 = __root.gnutls_prf_rfc5705;
    pub const gnutls_prf_early = __root.gnutls_prf_early;
    pub const gnutls_prf_raw = __root.gnutls_prf_raw;
    pub const gnutls_server_name_set = __root.gnutls_server_name_set;
    pub const gnutls_server_name_get = __root.gnutls_server_name_get;
    pub const gnutls_heartbeat_get_timeout = __root.gnutls_heartbeat_get_timeout;
    pub const gnutls_heartbeat_set_timeouts = __root.gnutls_heartbeat_set_timeouts;
    pub const gnutls_heartbeat_enable = __root.gnutls_heartbeat_enable;
    pub const gnutls_heartbeat_allowed = __root.gnutls_heartbeat_allowed;
    pub const gnutls_safe_renegotiation_status = __root.gnutls_safe_renegotiation_status;
    pub const gnutls_session_ext_master_secret_status = __root.gnutls_session_ext_master_secret_status;
    pub const gnutls_session_etm_status = __root.gnutls_session_etm_status;
    pub const gnutls_session_get_flags = __root.gnutls_session_get_flags;
    pub const gnutls_session_ticket_enable_client = __root.gnutls_session_ticket_enable_client;
    pub const gnutls_session_ticket_enable_server = __root.gnutls_session_ticket_enable_server;
    pub const gnutls_session_ticket_send = __root.gnutls_session_ticket_send;
    pub const gnutls_srtp_set_profile = __root.gnutls_srtp_set_profile;
    pub const gnutls_srtp_set_profile_direct = __root.gnutls_srtp_set_profile_direct;
    pub const gnutls_srtp_get_selected_profile = __root.gnutls_srtp_get_selected_profile;
    pub const gnutls_srtp_get_keys = __root.gnutls_srtp_get_keys;
    pub const gnutls_srtp_set_mki = __root.gnutls_srtp_set_mki;
    pub const gnutls_srtp_get_mki = __root.gnutls_srtp_get_mki;
    pub const gnutls_alpn_get_selected_protocol = __root.gnutls_alpn_get_selected_protocol;
    pub const gnutls_alpn_set_protocols = __root.gnutls_alpn_set_protocols;
    pub const gnutls_priority_set = __root.gnutls_priority_set;
    pub const gnutls_priority_set_direct = __root.gnutls_priority_set_direct;
    pub const gnutls_set_default_priority = __root.gnutls_set_default_priority;
    pub const gnutls_set_default_priority_append = __root.gnutls_set_default_priority_append;
    pub const gnutls_protocol_get_version = __root.gnutls_protocol_get_version;
    pub const gnutls_session_set_data = __root.gnutls_session_set_data;
    pub const gnutls_session_get_data = __root.gnutls_session_get_data;
    pub const gnutls_session_get_data2 = __root.gnutls_session_get_data2;
    pub const gnutls_session_get_random = __root.gnutls_session_get_random;
    pub const gnutls_session_get_master_secret = __root.gnutls_session_get_master_secret;
    pub const gnutls_session_get_desc = __root.gnutls_session_get_desc;
    pub const gnutls_session_set_verify_function = __root.gnutls_session_set_verify_function;
    pub const gnutls_session_set_verify_cert = __root.gnutls_session_set_verify_cert;
    pub const gnutls_session_set_verify_cert2 = __root.gnutls_session_set_verify_cert2;
    pub const gnutls_session_get_verify_cert_status = __root.gnutls_session_get_verify_cert_status;
    pub const gnutls_session_set_premaster = __root.gnutls_session_set_premaster;
    pub const gnutls_session_get_id = __root.gnutls_session_get_id;
    pub const gnutls_session_get_id2 = __root.gnutls_session_get_id2;
    pub const gnutls_session_set_id = __root.gnutls_session_set_id;
    pub const gnutls_session_channel_binding = __root.gnutls_session_channel_binding;
    pub const gnutls_session_is_resumed = __root.gnutls_session_is_resumed;
    pub const gnutls_session_resumption_requested = __root.gnutls_session_resumption_requested;
    pub const gnutls_db_set_cache_expiration = __root.gnutls_db_set_cache_expiration;
    pub const gnutls_db_remove_session = __root.gnutls_db_remove_session;
    pub const gnutls_db_set_retrieve_function = __root.gnutls_db_set_retrieve_function;
    pub const gnutls_db_set_remove_function = __root.gnutls_db_set_remove_function;
    pub const gnutls_db_set_store_function = __root.gnutls_db_set_store_function;
    pub const gnutls_db_set_ptr = __root.gnutls_db_set_ptr;
    pub const gnutls_db_get_ptr = __root.gnutls_db_get_ptr;
    pub const gnutls_db_check_entry = __root.gnutls_db_check_entry;
    pub const gnutls_handshake_set_hook_function = __root.gnutls_handshake_set_hook_function;
    pub const gnutls_handshake_set_post_client_hello_function = __root.gnutls_handshake_set_post_client_hello_function;
    pub const gnutls_handshake_set_max_packet_length = __root.gnutls_handshake_set_max_packet_length;
    pub const gnutls_credentials_clear = __root.gnutls_credentials_clear;
    pub const gnutls_credentials_set = __root.gnutls_credentials_set;
    pub const gnutls_credentials_get = __root.gnutls_credentials_get;
    pub const gnutls_certificate_send_x509_rdn_sequence = __root.gnutls_certificate_send_x509_rdn_sequence;
    pub const gnutls_ocsp_status_request_enable_client = __root.gnutls_ocsp_status_request_enable_client;
    pub const gnutls_ocsp_status_request_get = __root.gnutls_ocsp_status_request_get;
    pub const gnutls_ocsp_status_request_is_checked = __root.gnutls_ocsp_status_request_is_checked;
    pub const gnutls_ocsp_status_request_get2 = __root.gnutls_ocsp_status_request_get2;
    pub const gnutls_session_get_keylog_function = __root.gnutls_session_get_keylog_function;
    pub const gnutls_session_set_keylog_function = __root.gnutls_session_set_keylog_function;
    pub const gnutls_transport_set_int2 = __root.gnutls_transport_set_int2;
    pub const gnutls_transport_get_int2 = __root.gnutls_transport_get_int2;
    pub const gnutls_transport_get_int = __root.gnutls_transport_get_int;
    pub const gnutls_transport_set_ptr = __root.gnutls_transport_set_ptr;
    pub const gnutls_transport_set_ptr2 = __root.gnutls_transport_set_ptr2;
    pub const gnutls_transport_get_ptr = __root.gnutls_transport_get_ptr;
    pub const gnutls_transport_get_ptr2 = __root.gnutls_transport_get_ptr2;
    pub const gnutls_transport_set_vec_push_function = __root.gnutls_transport_set_vec_push_function;
    pub const gnutls_transport_set_push_function = __root.gnutls_transport_set_push_function;
    pub const gnutls_transport_set_pull_function = __root.gnutls_transport_set_pull_function;
    pub const gnutls_transport_set_pull_timeout_function = __root.gnutls_transport_set_pull_timeout_function;
    pub const gnutls_transport_set_errno_function = __root.gnutls_transport_set_errno_function;
    pub const gnutls_transport_set_errno = __root.gnutls_transport_set_errno;
    pub const gnutls_session_set_ptr = __root.gnutls_session_set_ptr;
    pub const gnutls_session_get_ptr = __root.gnutls_session_get_ptr;
    pub const gnutls_openpgp_send_cert = __root.gnutls_openpgp_send_cert;
    pub const gnutls_srp_server_get_username = __root.gnutls_srp_server_get_username;
    pub const gnutls_srp_set_prime_bits = __root.gnutls_srp_set_prime_bits;
    pub const gnutls_psk_server_get_username = __root.gnutls_psk_server_get_username;
    pub const gnutls_psk_server_get_username2 = __root.gnutls_psk_server_get_username2;
    pub const gnutls_psk_client_get_hint = __root.gnutls_psk_client_get_hint;
    pub const gnutls_auth_get_type = __root.gnutls_auth_get_type;
    pub const gnutls_auth_server_get_type = __root.gnutls_auth_server_get_type;
    pub const gnutls_auth_client_get_type = __root.gnutls_auth_client_get_type;
    pub const gnutls_dh_set_prime_bits = __root.gnutls_dh_set_prime_bits;
    pub const gnutls_dh_get_secret_bits = __root.gnutls_dh_get_secret_bits;
    pub const gnutls_dh_get_peers_public_bits = __root.gnutls_dh_get_peers_public_bits;
    pub const gnutls_dh_get_prime_bits = __root.gnutls_dh_get_prime_bits;
    pub const gnutls_dh_get_group = __root.gnutls_dh_get_group;
    pub const gnutls_dh_get_pubkey = __root.gnutls_dh_get_pubkey;
    pub const gnutls_certificate_server_set_request = __root.gnutls_certificate_server_set_request;
    pub const gnutls_certificate_get_peers = __root.gnutls_certificate_get_peers;
    pub const gnutls_certificate_get_ours = __root.gnutls_certificate_get_ours;
    pub const gnutls_certificate_get_peers_subkey_id = __root.gnutls_certificate_get_peers_subkey_id;
    pub const gnutls_certificate_activation_time_peers = __root.gnutls_certificate_activation_time_peers;
    pub const gnutls_certificate_expiration_time_peers = __root.gnutls_certificate_expiration_time_peers;
    pub const gnutls_certificate_client_get_request_status = __root.gnutls_certificate_client_get_request_status;
    pub const gnutls_certificate_verify_peers2 = __root.gnutls_certificate_verify_peers2;
    pub const gnutls_certificate_verify_peers3 = __root.gnutls_certificate_verify_peers3;
    pub const gnutls_certificate_verify_peers = __root.gnutls_certificate_verify_peers;
    pub const gnutls_ext_set_data = __root.gnutls_ext_set_data;
    pub const gnutls_ext_get_data = __root.gnutls_ext_get_data;
    pub const gnutls_ext_get_current_msg = __root.gnutls_ext_get_current_msg;
    pub const gnutls_session_ext_register = __root.gnutls_session_ext_register;
    pub const gnutls_ext_get_name2 = __root.gnutls_ext_get_name2;
    pub const gnutls_session_supplemental_register = __root.gnutls_session_supplemental_register;
    pub const gnutls_supplemental_recv = __root.gnutls_supplemental_recv;
    pub const gnutls_supplemental_send = __root.gnutls_supplemental_send;
    pub const gnutls_anti_replay_enable = __root.gnutls_anti_replay_enable;
    pub const gnutls_handshake_set_read_function = __root.gnutls_handshake_set_read_function;
    pub const gnutls_handshake_write = __root.gnutls_handshake_write;
    pub const gnutls_handshake_set_secret_function = __root.gnutls_handshake_set_secret_function;
    pub const gnutls_alert_set_read_function = __root.gnutls_alert_set_read_function;
    pub const gnutls_session_get_server_random = __root.gnutls_session_get_server_random;
    pub const gnutls_session_get_client_random = __root.gnutls_session_get_client_random;
    pub const gnutls_compression_get = __root.gnutls_compression_get;
    pub const gnutls_session_set_verify_output_function = __root.gnutls_session_set_verify_output_function;
    pub const deinit = __root.gnutls_deinit;
    pub const bye = __root.gnutls_bye;
    pub const handshake = __root.gnutls_handshake;
    pub const reauth = __root.gnutls_reauth;
    pub const timeout = __root.gnutls_handshake_set_timeout;
    pub const rehandshake = __root.gnutls_rehandshake;
    pub const update = __root.gnutls_session_key_update;
    pub const get = __root.gnutls_alert_get;
    pub const appropriate = __root.gnutls_alert_send_appropriate;
    pub const get2 = __root.gnutls_certificate_type_get2;
    pub const client = __root.gnutls_sign_algorithm_get_client;
    pub const requested = __root.gnutls_sign_algorithm_get_requested;
    pub const extensions = __root.gnutls_handshake_set_private_extensions;
    pub const out = __root.gnutls_handshake_get_last_out;
    pub const in = __root.gnutls_handshake_get_last_in;
    pub const ping = __root.gnutls_heartbeat_ping;
    pub const pong = __root.gnutls_heartbeat_pong;
    pub const padding = __root.gnutls_record_disable_padding;
    pub const cork = __root.gnutls_record_cork;
    pub const uncork = __root.gnutls_record_uncork;
    pub const queued = __root.gnutls_record_discard_queued;
    pub const state = __root.gnutls_record_get_state;
    pub const split = __root.gnutls_range_split;
    pub const send2 = __root.gnutls_record_send2;
    pub const range = __root.gnutls_record_send_range;
    pub const packet = __root.gnutls_record_recv_packet;
    pub const seq = __root.gnutls_record_recv_seq;
    pub const size = __root.gnutls_record_overhead_size;
    pub const mode = __root.gnutls_session_enable_compatibility_mode;
    pub const hiding = __root.gnutls_record_can_use_length_hiding;
    pub const direction = __root.gnutls_record_get_direction;
    pub const pending = __root.gnutls_record_check_pending;
    pub const corked = __root.gnutls_record_check_corked;
    pub const data = __root.gnutls_record_send_early_data;
    pub const valid = __root.gnutls_session_force_valid;
    pub const prf = __root.gnutls_prf;
    pub const rfc5705 = __root.gnutls_prf_rfc5705;
    pub const early = __root.gnutls_prf_early;
    pub const raw = __root.gnutls_prf_raw;
    pub const set = __root.gnutls_server_name_set;
    pub const timeouts = __root.gnutls_heartbeat_set_timeouts;
    pub const enable = __root.gnutls_heartbeat_enable;
    pub const allowed = __root.gnutls_heartbeat_allowed;
    pub const status = __root.gnutls_safe_renegotiation_status;
    pub const flags = __root.gnutls_session_get_flags;
    pub const server = __root.gnutls_session_ticket_enable_server;
    pub const profile = __root.gnutls_srtp_set_profile;
    pub const direct = __root.gnutls_srtp_set_profile_direct;
    pub const keys = __root.gnutls_srtp_get_keys;
    pub const mki = __root.gnutls_srtp_set_mki;
    pub const protocol = __root.gnutls_alpn_get_selected_protocol;
    pub const protocols = __root.gnutls_alpn_set_protocols;
    pub const priority = __root.gnutls_set_default_priority;
    pub const append = __root.gnutls_set_default_priority_append;
    pub const version = __root.gnutls_protocol_get_version;
    pub const data2 = __root.gnutls_session_get_data2;
    pub const secret = __root.gnutls_session_get_master_secret;
    pub const desc = __root.gnutls_session_get_desc;
    pub const function = __root.gnutls_session_set_verify_function;
    pub const cert = __root.gnutls_session_set_verify_cert;
    pub const cert2 = __root.gnutls_session_set_verify_cert2;
    pub const premaster = __root.gnutls_session_set_premaster;
    pub const id = __root.gnutls_session_get_id;
    pub const id2 = __root.gnutls_session_get_id2;
    pub const binding = __root.gnutls_session_channel_binding;
    pub const resumed = __root.gnutls_session_is_resumed;
    pub const expiration = __root.gnutls_db_set_cache_expiration;
    pub const ptr = __root.gnutls_db_set_ptr;
    pub const entry = __root.gnutls_db_check_entry;
    pub const length = __root.gnutls_handshake_set_max_packet_length;
    pub const clear = __root.gnutls_credentials_clear;
    pub const sequence = __root.gnutls_certificate_send_x509_rdn_sequence;
    pub const checked = __root.gnutls_ocsp_status_request_is_checked;
    pub const int2 = __root.gnutls_transport_set_int2;
    pub const int = __root.gnutls_transport_get_int;
    pub const ptr2 = __root.gnutls_transport_set_ptr2;
    pub const username = __root.gnutls_srp_server_get_username;
    pub const bits = __root.gnutls_srp_set_prime_bits;
    pub const username2 = __root.gnutls_psk_server_get_username2;
    pub const hint = __root.gnutls_psk_client_get_hint;
    pub const @"type" = __root.gnutls_auth_get_type;
    pub const group = __root.gnutls_dh_get_group;
    pub const pubkey = __root.gnutls_dh_get_pubkey;
    pub const request = __root.gnutls_certificate_server_set_request;
    pub const peers = __root.gnutls_certificate_get_peers;
    pub const ours = __root.gnutls_certificate_get_ours;
    pub const peers2 = __root.gnutls_certificate_verify_peers2;
    pub const peers3 = __root.gnutls_certificate_verify_peers3;
    pub const msg = __root.gnutls_ext_get_current_msg;
    pub const register = __root.gnutls_session_ext_register;
    pub const name2 = __root.gnutls_ext_get_name2;
};
pub const gnutls_session_t = ?*struct_gnutls_session_int;
pub const struct_gnutls_dh_params_int = opaque {
    pub const gnutls_dh_params_deinit = __root.gnutls_dh_params_deinit;
    pub const gnutls_dh_params_import_raw = __root.gnutls_dh_params_import_raw;
    pub const gnutls_dh_params_import_dsa = __root.gnutls_dh_params_import_dsa;
    pub const gnutls_dh_params_import_raw2 = __root.gnutls_dh_params_import_raw2;
    pub const gnutls_dh_params_import_raw3 = __root.gnutls_dh_params_import_raw3;
    pub const gnutls_dh_params_import_pkcs3 = __root.gnutls_dh_params_import_pkcs3;
    pub const gnutls_dh_params_generate2 = __root.gnutls_dh_params_generate2;
    pub const gnutls_dh_params_export_pkcs3 = __root.gnutls_dh_params_export_pkcs3;
    pub const gnutls_dh_params_export2_pkcs3 = __root.gnutls_dh_params_export2_pkcs3;
    pub const gnutls_dh_params_export_raw = __root.gnutls_dh_params_export_raw;
    pub const gnutls_dh_params_cpy = __root.gnutls_dh_params_cpy;
    pub const deinit = __root.gnutls_dh_params_deinit;
    pub const raw = __root.gnutls_dh_params_import_raw;
    pub const dsa = __root.gnutls_dh_params_import_dsa;
    pub const raw2 = __root.gnutls_dh_params_import_raw2;
    pub const raw3 = __root.gnutls_dh_params_import_raw3;
    pub const pkcs3 = __root.gnutls_dh_params_import_pkcs3;
    pub const generate2 = __root.gnutls_dh_params_generate2;
    pub const cpy = __root.gnutls_dh_params_cpy;
};
pub const gnutls_dh_params_t = ?*struct_gnutls_dh_params_int;
pub const struct_gnutls_x509_privkey_int = opaque {
    pub const gnutls_x509_privkey_sign_hash = __root.gnutls_x509_privkey_sign_hash;
    pub const gnutls_x509_privkey_deinit = __root.gnutls_x509_privkey_deinit;
    pub const gnutls_x509_privkey_sec_param = __root.gnutls_x509_privkey_sec_param;
    pub const gnutls_x509_privkey_set_pin_function = __root.gnutls_x509_privkey_set_pin_function;
    pub const gnutls_x509_privkey_cpy = __root.gnutls_x509_privkey_cpy;
    pub const gnutls_x509_privkey_import = __root.gnutls_x509_privkey_import;
    pub const gnutls_x509_privkey_import_pkcs8 = __root.gnutls_x509_privkey_import_pkcs8;
    pub const gnutls_x509_privkey_import_openssl = __root.gnutls_x509_privkey_import_openssl;
    pub const gnutls_x509_privkey_import2 = __root.gnutls_x509_privkey_import2;
    pub const gnutls_x509_privkey_import_rsa_raw = __root.gnutls_x509_privkey_import_rsa_raw;
    pub const gnutls_x509_privkey_import_rsa_raw2 = __root.gnutls_x509_privkey_import_rsa_raw2;
    pub const gnutls_x509_privkey_import_ecc_raw = __root.gnutls_x509_privkey_import_ecc_raw;
    pub const gnutls_x509_privkey_import_gost_raw = __root.gnutls_x509_privkey_import_gost_raw;
    pub const gnutls_x509_privkey_fix = __root.gnutls_x509_privkey_fix;
    pub const gnutls_x509_privkey_export_dsa_raw = __root.gnutls_x509_privkey_export_dsa_raw;
    pub const gnutls_x509_privkey_import_dsa_raw = __root.gnutls_x509_privkey_import_dsa_raw;
    pub const gnutls_x509_privkey_get_pk_algorithm = __root.gnutls_x509_privkey_get_pk_algorithm;
    pub const gnutls_x509_privkey_get_pk_algorithm2 = __root.gnutls_x509_privkey_get_pk_algorithm2;
    pub const gnutls_x509_privkey_get_spki = __root.gnutls_x509_privkey_get_spki;
    pub const gnutls_x509_privkey_set_spki = __root.gnutls_x509_privkey_set_spki;
    pub const gnutls_x509_privkey_get_key_id = __root.gnutls_x509_privkey_get_key_id;
    pub const gnutls_x509_privkey_generate = __root.gnutls_x509_privkey_generate;
    pub const gnutls_x509_privkey_set_flags = __root.gnutls_x509_privkey_set_flags;
    pub const gnutls_x509_privkey_generate2 = __root.gnutls_x509_privkey_generate2;
    pub const gnutls_x509_privkey_verify_seed = __root.gnutls_x509_privkey_verify_seed;
    pub const gnutls_x509_privkey_get_seed = __root.gnutls_x509_privkey_get_seed;
    pub const gnutls_x509_privkey_verify_params = __root.gnutls_x509_privkey_verify_params;
    pub const gnutls_x509_privkey_export = __root.gnutls_x509_privkey_export;
    pub const gnutls_x509_privkey_export2 = __root.gnutls_x509_privkey_export2;
    pub const gnutls_x509_privkey_export_pkcs8 = __root.gnutls_x509_privkey_export_pkcs8;
    pub const gnutls_x509_privkey_export2_pkcs8 = __root.gnutls_x509_privkey_export2_pkcs8;
    pub const gnutls_x509_privkey_export_rsa_raw2 = __root.gnutls_x509_privkey_export_rsa_raw2;
    pub const gnutls_x509_privkey_export_rsa_raw = __root.gnutls_x509_privkey_export_rsa_raw;
    pub const gnutls_x509_privkey_export_ecc_raw = __root.gnutls_x509_privkey_export_ecc_raw;
    pub const gnutls_x509_privkey_export_gost_raw = __root.gnutls_x509_privkey_export_gost_raw;
    pub const gnutls_x509_privkey_sign_data = __root.gnutls_x509_privkey_sign_data;
    pub const hash = __root.gnutls_x509_privkey_sign_hash;
    pub const deinit = __root.gnutls_x509_privkey_deinit;
    pub const param = __root.gnutls_x509_privkey_sec_param;
    pub const function = __root.gnutls_x509_privkey_set_pin_function;
    pub const cpy = __root.gnutls_x509_privkey_cpy;
    pub const import = __root.gnutls_x509_privkey_import;
    pub const pkcs8 = __root.gnutls_x509_privkey_import_pkcs8;
    pub const openssl = __root.gnutls_x509_privkey_import_openssl;
    pub const import2 = __root.gnutls_x509_privkey_import2;
    pub const raw = __root.gnutls_x509_privkey_import_rsa_raw;
    pub const raw2 = __root.gnutls_x509_privkey_import_rsa_raw2;
    pub const fix = __root.gnutls_x509_privkey_fix;
    pub const algorithm = __root.gnutls_x509_privkey_get_pk_algorithm;
    pub const algorithm2 = __root.gnutls_x509_privkey_get_pk_algorithm2;
    pub const spki = __root.gnutls_x509_privkey_get_spki;
    pub const id = __root.gnutls_x509_privkey_get_key_id;
    pub const generate = __root.gnutls_x509_privkey_generate;
    pub const flags = __root.gnutls_x509_privkey_set_flags;
    pub const generate2 = __root.gnutls_x509_privkey_generate2;
    pub const seed = __root.gnutls_x509_privkey_verify_seed;
    pub const params = __root.gnutls_x509_privkey_verify_params;
    pub const @"export" = __root.gnutls_x509_privkey_export;
    pub const export2 = __root.gnutls_x509_privkey_export2;
    pub const data = __root.gnutls_x509_privkey_sign_data;
};
pub const gnutls_rsa_params_t = ?*struct_gnutls_x509_privkey_int;
pub const struct_gnutls_priority_st = opaque {
    pub const gnutls_priority_deinit = __root.gnutls_priority_deinit;
    pub const gnutls_priority_get_cipher_suite_index = __root.gnutls_priority_get_cipher_suite_index;
    pub const gnutls_priority_certificate_type_list = __root.gnutls_priority_certificate_type_list;
    pub const gnutls_priority_certificate_type_list2 = __root.gnutls_priority_certificate_type_list2;
    pub const gnutls_priority_sign_list = __root.gnutls_priority_sign_list;
    pub const gnutls_priority_protocol_list = __root.gnutls_priority_protocol_list;
    pub const gnutls_priority_ecc_curve_list = __root.gnutls_priority_ecc_curve_list;
    pub const gnutls_priority_group_list = __root.gnutls_priority_group_list;
    pub const gnutls_priority_kx_list = __root.gnutls_priority_kx_list;
    pub const gnutls_priority_cipher_list = __root.gnutls_priority_cipher_list;
    pub const gnutls_priority_mac_list = __root.gnutls_priority_mac_list;
    pub const gnutls_priority_compression_list = __root.gnutls_priority_compression_list;
    pub const deinit = __root.gnutls_priority_deinit;
    pub const list = __root.gnutls_priority_certificate_type_list;
    pub const list2 = __root.gnutls_priority_certificate_type_list2;
};
pub const gnutls_priority_t = ?*struct_gnutls_priority_st;
pub const gnutls_datum_t = extern struct {
    data: [*c]u8 = null,
    size: c_uint = 0,
    pub const gnutls_session_ticket_key_generate = __root.gnutls_session_ticket_key_generate;
    pub const gnutls_key_generate = __root.gnutls_key_generate;
    pub const gnutls_db_check_entry_time = __root.gnutls_db_check_entry_time;
    pub const gnutls_db_check_entry_expire_time = __root.gnutls_db_check_entry_expire_time;
    pub const gnutls_srp_base64_encode = __root.gnutls_srp_base64_encode;
    pub const gnutls_srp_base64_encode2 = __root.gnutls_srp_base64_encode2;
    pub const gnutls_srp_base64_decode = __root.gnutls_srp_base64_decode;
    pub const gnutls_srp_base64_decode2 = __root.gnutls_srp_base64_decode2;
    pub const gnutls_hex_encode = __root.gnutls_hex_encode;
    pub const gnutls_hex_decode = __root.gnutls_hex_decode;
    pub const gnutls_hex_encode2 = __root.gnutls_hex_encode2;
    pub const gnutls_hex_decode2 = __root.gnutls_hex_decode2;
    pub const gnutls_base64_encode2 = __root.gnutls_base64_encode2;
    pub const gnutls_base64_decode2 = __root.gnutls_base64_decode2;
    pub const gnutls_x509_rdn_get = __root.gnutls_x509_rdn_get;
    pub const gnutls_x509_rdn_get2 = __root.gnutls_x509_rdn_get2;
    pub const gnutls_x509_rdn_get_oid = __root.gnutls_x509_rdn_get_oid;
    pub const gnutls_x509_rdn_get_by_oid = __root.gnutls_x509_rdn_get_by_oid;
    pub const gnutls_pkcs8_info = __root.gnutls_pkcs8_info;
    pub const generate = __root.gnutls_session_ticket_key_generate;
    pub const encode = __root.gnutls_srp_base64_encode;
    pub const encode2 = __root.gnutls_srp_base64_encode2;
    pub const decode = __root.gnutls_srp_base64_decode;
    pub const decode2 = __root.gnutls_srp_base64_decode2;
    pub const get = __root.gnutls_x509_rdn_get;
    pub const get2 = __root.gnutls_x509_rdn_get2;
    pub const oid = __root.gnutls_x509_rdn_get_oid;
    pub const info = __root.gnutls_pkcs8_info;
};
pub const struct_gnutls_library_config_st = extern struct {
    name: [*c]const u8 = null,
    value: [*c]const u8 = null,
};
pub const gnutls_library_config_st = struct_gnutls_library_config_st;
pub const union_params_11 = extern union {
    dh: gnutls_dh_params_t,
    rsa_export: gnutls_rsa_params_t,
};
pub const struct_gnutls_params_st = extern struct {
    type: gnutls_params_type_t = @import("std").mem.zeroes(gnutls_params_type_t),
    params: union_params_11 = @import("std").mem.zeroes(union_params_11),
    deinit: c_int = 0,
};
pub const gnutls_params_st = struct_gnutls_params_st;
pub const gnutls_params_function = fn (gnutls_session_t, gnutls_params_type_t, [*c]gnutls_params_st) callconv(.c) c_int;
pub extern fn gnutls_init(session: [*c]gnutls_session_t, flags: c_uint) c_int;
pub extern fn gnutls_deinit(session: gnutls_session_t) void;
pub extern fn gnutls_bye(session: gnutls_session_t, how: gnutls_close_request_t) c_int;
pub extern fn gnutls_handshake(session: gnutls_session_t) c_int;
pub extern fn gnutls_reauth(session: gnutls_session_t, flags: c_uint) c_int;
pub extern fn gnutls_handshake_set_timeout(session: gnutls_session_t, ms: c_uint) void;
pub extern fn gnutls_rehandshake(session: gnutls_session_t) c_int;
pub extern fn gnutls_session_key_update(session: gnutls_session_t, flags: c_uint) c_int;
pub extern fn gnutls_alert_get(session: gnutls_session_t) gnutls_alert_description_t;
pub extern fn gnutls_alert_send(session: gnutls_session_t, level: gnutls_alert_level_t, desc: gnutls_alert_description_t) c_int;
pub extern fn gnutls_alert_send_appropriate(session: gnutls_session_t, err: c_int) c_int;
pub extern fn gnutls_alert_get_name(alert: gnutls_alert_description_t) [*c]const u8;
pub extern fn gnutls_alert_get_strname(alert: gnutls_alert_description_t) [*c]const u8;
pub extern fn gnutls_pk_bits_to_sec_param(algo: gnutls_pk_algorithm_t, bits: c_uint) gnutls_sec_param_t;
pub extern fn gnutls_sec_param_get_name(param: gnutls_sec_param_t) [*c]const u8;
pub extern fn gnutls_sec_param_to_pk_bits(algo: gnutls_pk_algorithm_t, param: gnutls_sec_param_t) c_uint;
pub extern fn gnutls_sec_param_to_symmetric_bits(param: gnutls_sec_param_t) c_uint;
pub extern fn gnutls_ecc_curve_get_name(curve: gnutls_ecc_curve_t) [*c]const u8;
pub extern fn gnutls_ecc_curve_get_oid(curve: gnutls_ecc_curve_t) [*c]const u8;
pub extern fn gnutls_group_get_name(group: gnutls_group_t) [*c]const u8;
pub extern fn gnutls_ecc_curve_get_size(curve: gnutls_ecc_curve_t) c_int;
pub extern fn gnutls_ecc_curve_get(session: gnutls_session_t) gnutls_ecc_curve_t;
pub extern fn gnutls_group_get(session: gnutls_session_t) gnutls_group_t;
pub extern fn gnutls_cipher_get(session: gnutls_session_t) gnutls_cipher_algorithm_t;
pub extern fn gnutls_early_cipher_get(session: gnutls_session_t) gnutls_cipher_algorithm_t;
pub extern fn gnutls_kx_get(session: gnutls_session_t) gnutls_kx_algorithm_t;
pub extern fn gnutls_mac_get(session: gnutls_session_t) gnutls_mac_algorithm_t;
pub extern fn gnutls_prf_hash_get(session: gnutls_session_t) gnutls_digest_algorithm_t;
pub extern fn gnutls_early_prf_hash_get(session: gnutls_session_t) gnutls_digest_algorithm_t;
pub extern fn gnutls_certificate_type_get(session: gnutls_session_t) gnutls_certificate_type_t;
pub extern fn gnutls_certificate_type_get2(session: gnutls_session_t, target: gnutls_ctype_target_t) gnutls_certificate_type_t;
pub extern fn gnutls_sign_algorithm_get(session: gnutls_session_t) c_int;
pub extern fn gnutls_sign_algorithm_get_client(session: gnutls_session_t) c_int;
pub extern fn gnutls_sign_algorithm_get_requested(session: gnutls_session_t, indx: usize, algo: [*c]gnutls_sign_algorithm_t) c_int;
pub extern fn gnutls_cipher_get_name(algorithm: gnutls_cipher_algorithm_t) [*c]const u8;
pub extern fn gnutls_mac_get_name(algorithm: gnutls_mac_algorithm_t) [*c]const u8;
pub extern fn gnutls_digest_get_name(algorithm: gnutls_digest_algorithm_t) [*c]const u8;
pub extern fn gnutls_digest_get_oid(algorithm: gnutls_digest_algorithm_t) [*c]const u8;
pub extern fn gnutls_kx_get_name(algorithm: gnutls_kx_algorithm_t) [*c]const u8;
pub extern fn gnutls_certificate_type_get_name(@"type": gnutls_certificate_type_t) [*c]const u8;
pub extern fn gnutls_pk_get_name(algorithm: gnutls_pk_algorithm_t) [*c]const u8;
pub extern fn gnutls_pk_get_oid(algorithm: gnutls_pk_algorithm_t) [*c]const u8;
pub extern fn gnutls_sign_get_name(algorithm: gnutls_sign_algorithm_t) [*c]const u8;
pub extern fn gnutls_sign_get_oid(sign: gnutls_sign_algorithm_t) [*c]const u8;
pub extern fn gnutls_gost_paramset_get_name(param: gnutls_gost_paramset_t) [*c]const u8;
pub extern fn gnutls_gost_paramset_get_oid(param: gnutls_gost_paramset_t) [*c]const u8;
pub extern fn gnutls_cipher_get_key_size(algorithm: gnutls_cipher_algorithm_t) usize;
pub extern fn gnutls_mac_get_key_size(algorithm: gnutls_mac_algorithm_t) usize;
pub extern fn gnutls_sign_is_secure(algorithm: gnutls_sign_algorithm_t) c_uint;
pub extern fn gnutls_sign_is_secure2(algorithm: gnutls_sign_algorithm_t, flags: c_uint) c_uint;
pub extern fn gnutls_sign_get_hash_algorithm(sign: gnutls_sign_algorithm_t) gnutls_digest_algorithm_t;
pub extern fn gnutls_sign_get_pk_algorithm(sign: gnutls_sign_algorithm_t) gnutls_pk_algorithm_t;
pub extern fn gnutls_pk_to_sign(pk: gnutls_pk_algorithm_t, hash: gnutls_digest_algorithm_t) gnutls_sign_algorithm_t;
pub extern fn gnutls_sign_supports_pk_algorithm(sign: gnutls_sign_algorithm_t, pk: gnutls_pk_algorithm_t) c_uint;
pub extern fn gnutls_mac_get_id(name: [*c]const u8) gnutls_mac_algorithm_t;
pub extern fn gnutls_digest_get_id(name: [*c]const u8) gnutls_digest_algorithm_t;
pub extern fn gnutls_cipher_get_id(name: [*c]const u8) gnutls_cipher_algorithm_t;
pub extern fn gnutls_kx_get_id(name: [*c]const u8) gnutls_kx_algorithm_t;
pub extern fn gnutls_protocol_get_id(name: [*c]const u8) gnutls_protocol_t;
pub extern fn gnutls_certificate_type_get_id(name: [*c]const u8) gnutls_certificate_type_t;
pub extern fn gnutls_pk_get_id(name: [*c]const u8) gnutls_pk_algorithm_t;
pub extern fn gnutls_sign_get_id(name: [*c]const u8) gnutls_sign_algorithm_t;
pub extern fn gnutls_ecc_curve_get_id(name: [*c]const u8) gnutls_ecc_curve_t;
pub extern fn gnutls_ecc_curve_get_pk(curve: gnutls_ecc_curve_t) gnutls_pk_algorithm_t;
pub extern fn gnutls_group_get_id(name: [*c]const u8) gnutls_group_t;
pub extern fn gnutls_oid_to_digest(oid: [*c]const u8) gnutls_digest_algorithm_t;
pub extern fn gnutls_oid_to_mac(oid: [*c]const u8) gnutls_mac_algorithm_t;
pub extern fn gnutls_oid_to_pk(oid: [*c]const u8) gnutls_pk_algorithm_t;
pub extern fn gnutls_oid_to_sign(oid: [*c]const u8) gnutls_sign_algorithm_t;
pub extern fn gnutls_oid_to_ecc_curve(oid: [*c]const u8) gnutls_ecc_curve_t;
pub extern fn gnutls_oid_to_gost_paramset(oid: [*c]const u8) gnutls_gost_paramset_t;
pub extern fn gnutls_ecc_curve_list() [*c]const gnutls_ecc_curve_t;
pub extern fn gnutls_group_list() [*c]const gnutls_group_t;
pub extern fn gnutls_cipher_list() [*c]const gnutls_cipher_algorithm_t;
pub extern fn gnutls_mac_list() [*c]const gnutls_mac_algorithm_t;
pub extern fn gnutls_digest_list() [*c]const gnutls_digest_algorithm_t;
pub extern fn gnutls_protocol_list() [*c]const gnutls_protocol_t;
pub extern fn gnutls_certificate_type_list() [*c]const gnutls_certificate_type_t;
pub extern fn gnutls_kx_list() [*c]const gnutls_kx_algorithm_t;
pub extern fn gnutls_pk_list() [*c]const gnutls_pk_algorithm_t;
pub extern fn gnutls_sign_list() [*c]const gnutls_sign_algorithm_t;
pub extern fn gnutls_cipher_suite_info(idx: usize, cs_id: [*c]u8, kx: [*c]gnutls_kx_algorithm_t, cipher: [*c]gnutls_cipher_algorithm_t, mac: [*c]gnutls_mac_algorithm_t, min_version: [*c]gnutls_protocol_t) [*c]const u8;
pub extern fn gnutls_ecc_curve_set_enabled(curve: gnutls_ecc_curve_t, enabled: c_uint) c_int;
pub extern fn gnutls_sign_set_secure(sign: gnutls_sign_algorithm_t, secure: c_uint) c_int;
pub extern fn gnutls_sign_set_secure_for_certs(sign: gnutls_sign_algorithm_t, secure: c_uint) c_int;
pub extern fn gnutls_digest_set_secure(dig: gnutls_digest_algorithm_t, secure: c_uint) c_int;
pub extern fn gnutls_protocol_set_enabled(version: gnutls_protocol_t, enabled: c_uint) c_int;
pub extern fn gnutls_error_is_fatal(@"error": c_int) c_int;
pub extern fn gnutls_error_to_alert(err: c_int, level: [*c]c_int) c_int;
pub extern fn gnutls_perror(@"error": c_int) void;
pub extern fn gnutls_strerror(@"error": c_int) [*c]const u8;
pub extern fn gnutls_strerror_name(@"error": c_int) [*c]const u8;
pub extern fn gnutls_handshake_set_private_extensions(session: gnutls_session_t, allow: c_int) void;
pub extern fn gnutls_handshake_set_random(session: gnutls_session_t, random: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_handshake_get_last_out(session: gnutls_session_t) gnutls_handshake_description_t;
pub extern fn gnutls_handshake_get_last_in(session: gnutls_session_t) gnutls_handshake_description_t;
pub extern fn gnutls_heartbeat_ping(session: gnutls_session_t, data_size: usize, max_tries: c_uint, flags: c_uint) c_int;
pub extern fn gnutls_heartbeat_pong(session: gnutls_session_t, flags: c_uint) c_int;
pub extern fn gnutls_record_set_timeout(session: gnutls_session_t, ms: c_uint) void;
pub extern fn gnutls_record_disable_padding(session: gnutls_session_t) void;
pub extern fn gnutls_record_cork(session: gnutls_session_t) void;
pub extern fn gnutls_record_uncork(session: gnutls_session_t, flags: c_uint) c_int;
pub extern fn gnutls_record_discard_queued(session: gnutls_session_t) usize;
pub extern fn gnutls_record_get_state(session: gnutls_session_t, read: c_uint, mac_key: [*c]gnutls_datum_t, IV: [*c]gnutls_datum_t, cipher_key: [*c]gnutls_datum_t, seq_number: [*c]u8) c_int;
pub extern fn gnutls_record_set_state(session: gnutls_session_t, read: c_uint, seq_number: [*c]const u8) c_int;
pub const gnutls_range_st = extern struct {
    low: usize = 0,
    high: usize = 0,
};
pub extern fn gnutls_range_split(session: gnutls_session_t, orig: [*c]const gnutls_range_st, small_range: [*c]gnutls_range_st, rem_range: [*c]gnutls_range_st) c_int;
pub extern fn gnutls_record_send(session: gnutls_session_t, data: ?*const anyopaque, data_size: usize) isize;
pub extern fn gnutls_record_send2(session: gnutls_session_t, data: ?*const anyopaque, data_size: usize, pad: usize, flags: c_uint) isize;
pub extern fn gnutls_record_send_range(session: gnutls_session_t, data: ?*const anyopaque, data_size: usize, range: [*c]const gnutls_range_st) isize;
pub extern fn gnutls_record_recv(session: gnutls_session_t, data: ?*anyopaque, data_size: usize) isize;
pub const struct_mbuffer_st = opaque {
    pub const gnutls_packet_get = __root.gnutls_packet_get;
    pub const gnutls_packet_deinit = __root.gnutls_packet_deinit;
    pub const get = __root.gnutls_packet_get;
    pub const deinit = __root.gnutls_packet_deinit;
};
pub const gnutls_packet_t = ?*struct_mbuffer_st;
pub extern fn gnutls_record_recv_packet(session: gnutls_session_t, packet: [*c]gnutls_packet_t) isize;
pub extern fn gnutls_packet_get(packet: gnutls_packet_t, data: [*c]gnutls_datum_t, sequence: [*c]u8) void;
pub extern fn gnutls_packet_deinit(packet: gnutls_packet_t) void;
pub extern fn gnutls_record_recv_seq(session: gnutls_session_t, data: ?*anyopaque, data_size: usize, seq: [*c]u8) isize;
pub extern fn gnutls_record_overhead_size(session: gnutls_session_t) usize;
pub extern fn gnutls_est_record_overhead_size(version: gnutls_protocol_t, cipher: gnutls_cipher_algorithm_t, mac: gnutls_mac_algorithm_t, comp: gnutls_compression_method_t, flags: c_uint) usize;
pub extern fn gnutls_session_enable_compatibility_mode(session: gnutls_session_t) void;
pub extern fn gnutls_record_can_use_length_hiding(session: gnutls_session_t) c_uint;
pub extern fn gnutls_record_get_direction(session: gnutls_session_t) c_int;
pub extern fn gnutls_record_get_max_size(session: gnutls_session_t) usize;
pub extern fn gnutls_record_set_max_size(session: gnutls_session_t, size: usize) isize;
pub extern fn gnutls_record_set_max_recv_size(session: gnutls_session_t, size: usize) isize;
pub extern fn gnutls_record_check_pending(session: gnutls_session_t) usize;
pub extern fn gnutls_record_check_corked(session: gnutls_session_t) usize;
pub extern fn gnutls_record_get_max_early_data_size(session: gnutls_session_t) usize;
pub extern fn gnutls_record_set_max_early_data_size(session: gnutls_session_t, size: usize) c_int;
pub extern fn gnutls_record_send_early_data(session: gnutls_session_t, data: ?*const anyopaque, length: usize) isize;
pub extern fn gnutls_record_recv_early_data(session: gnutls_session_t, data: ?*anyopaque, data_size: usize) isize;
pub extern fn gnutls_session_force_valid(session: gnutls_session_t) void;
pub extern fn gnutls_prf(session: gnutls_session_t, label_size: usize, label: [*c]const u8, server_random_first: c_int, extra_size: usize, extra: [*c]const u8, outsize: usize, out: [*c]u8) c_int;
pub extern fn gnutls_prf_rfc5705(session: gnutls_session_t, label_size: usize, label: [*c]const u8, context_size: usize, context: [*c]const u8, outsize: usize, out: [*c]u8) c_int;
pub extern fn gnutls_prf_early(session: gnutls_session_t, label_size: usize, label: [*c]const u8, context_size: usize, context: [*c]const u8, outsize: usize, out: [*c]u8) c_int;
pub extern fn gnutls_prf_raw(session: gnutls_session_t, label_size: usize, label: [*c]const u8, seed_size: usize, seed: [*c]const u8, outsize: usize, out: [*c]u8) c_int;
pub const GNUTLS_NAME_DNS: c_int = 1;
pub const gnutls_server_name_type_t = c_uint;
pub extern fn gnutls_server_name_set(session: gnutls_session_t, @"type": gnutls_server_name_type_t, name: ?*const anyopaque, name_length: usize) c_int;
pub extern fn gnutls_server_name_get(session: gnutls_session_t, data: ?*anyopaque, data_length: [*c]usize, @"type": [*c]c_uint, indx: c_uint) c_int;
pub extern fn gnutls_heartbeat_get_timeout(session: gnutls_session_t) c_uint;
pub extern fn gnutls_heartbeat_set_timeouts(session: gnutls_session_t, retrans_timeout: c_uint, total_timeout: c_uint) void;
pub extern fn gnutls_heartbeat_enable(session: gnutls_session_t, @"type": c_uint) void;
pub extern fn gnutls_heartbeat_allowed(session: gnutls_session_t, @"type": c_uint) c_uint;
pub extern fn gnutls_safe_renegotiation_status(session: gnutls_session_t) c_uint;
pub extern fn gnutls_session_ext_master_secret_status(session: gnutls_session_t) c_uint;
pub extern fn gnutls_session_etm_status(session: gnutls_session_t) c_uint;
pub const GNUTLS_SFLAGS_SAFE_RENEGOTIATION: c_int = 1;
pub const GNUTLS_SFLAGS_EXT_MASTER_SECRET: c_int = 2;
pub const GNUTLS_SFLAGS_ETM: c_int = 4;
pub const GNUTLS_SFLAGS_HB_LOCAL_SEND: c_int = 8;
pub const GNUTLS_SFLAGS_HB_PEER_SEND: c_int = 16;
pub const GNUTLS_SFLAGS_FALSE_START: c_int = 32;
pub const GNUTLS_SFLAGS_RFC7919: c_int = 64;
pub const GNUTLS_SFLAGS_SESSION_TICKET: c_int = 128;
pub const GNUTLS_SFLAGS_POST_HANDSHAKE_AUTH: c_int = 256;
pub const GNUTLS_SFLAGS_EARLY_START: c_int = 512;
pub const GNUTLS_SFLAGS_EARLY_DATA: c_int = 1024;
pub const GNUTLS_SFLAGS_CLI_REQUESTED_OCSP: c_int = 2048;
pub const GNUTLS_SFLAGS_SERV_REQUESTED_OCSP: c_int = 4096;
pub const gnutls_session_flags_t = c_uint;
pub extern fn gnutls_session_get_flags(session: gnutls_session_t) c_uint;
pub const GNUTLS_SUPPLEMENTAL_UNKNOWN: c_int = 0;
pub const gnutls_supplemental_data_format_type_t = c_uint;
pub extern fn gnutls_supplemental_get_name(@"type": gnutls_supplemental_data_format_type_t) [*c]const u8;
pub extern fn gnutls_session_ticket_key_generate(key: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_session_ticket_enable_client(session: gnutls_session_t) c_int;
pub extern fn gnutls_session_ticket_enable_server(session: gnutls_session_t, key: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_session_ticket_send(session: gnutls_session_t, nr: c_uint, flags: c_uint) c_int;
pub const GNUTLS_SRTP_AES128_CM_HMAC_SHA1_80: c_int = 1;
pub const GNUTLS_SRTP_AES128_CM_HMAC_SHA1_32: c_int = 2;
pub const GNUTLS_SRTP_NULL_HMAC_SHA1_80: c_int = 5;
pub const GNUTLS_SRTP_NULL_HMAC_SHA1_32: c_int = 6;
pub const gnutls_srtp_profile_t = c_uint;
pub extern fn gnutls_srtp_set_profile(session: gnutls_session_t, profile: gnutls_srtp_profile_t) c_int;
pub extern fn gnutls_srtp_set_profile_direct(session: gnutls_session_t, profiles: [*c]const u8, err_pos: [*c][*c]const u8) c_int;
pub extern fn gnutls_srtp_get_selected_profile(session: gnutls_session_t, profile: [*c]gnutls_srtp_profile_t) c_int;
pub extern fn gnutls_srtp_get_profile_name(profile: gnutls_srtp_profile_t) [*c]const u8;
pub extern fn gnutls_srtp_get_profile_id(name: [*c]const u8, profile: [*c]gnutls_srtp_profile_t) c_int;
pub extern fn gnutls_srtp_get_keys(session: gnutls_session_t, key_material: ?*anyopaque, key_material_size: c_uint, client_key: [*c]gnutls_datum_t, client_salt: [*c]gnutls_datum_t, server_key: [*c]gnutls_datum_t, server_salt: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_srtp_set_mki(session: gnutls_session_t, mki: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_srtp_get_mki(session: gnutls_session_t, mki: [*c]gnutls_datum_t) c_int;
pub const GNUTLS_ALPN_MANDATORY: c_int = 1;
pub const GNUTLS_ALPN_SERVER_PRECEDENCE: c_int = 2;
pub const gnutls_alpn_flags_t = c_uint;
pub extern fn gnutls_alpn_get_selected_protocol(session: gnutls_session_t, protocol: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_alpn_set_protocols(session: gnutls_session_t, protocols: [*c]const gnutls_datum_t, protocols_size: c_uint, flags: c_uint) c_int;
pub extern fn gnutls_key_generate(key: [*c]gnutls_datum_t, key_size: c_uint) c_int;
pub extern fn gnutls_priority_init(priority_cache: [*c]gnutls_priority_t, priorities: [*c]const u8, err_pos: [*c][*c]const u8) c_int;
pub extern fn gnutls_priority_init2(priority_cache: [*c]gnutls_priority_t, priorities: [*c]const u8, err_pos: [*c][*c]const u8, flags: c_uint) c_int;
pub extern fn gnutls_priority_deinit(priority_cache: gnutls_priority_t) void;
pub extern fn gnutls_priority_get_cipher_suite_index(pcache: gnutls_priority_t, idx: c_uint, sidx: [*c]c_uint) c_int;
pub extern fn gnutls_priority_string_list(iter: c_uint, flags: c_uint) [*c]const u8;
pub extern fn gnutls_priority_set(session: gnutls_session_t, priority: gnutls_priority_t) c_int;
pub extern fn gnutls_priority_set_direct(session: gnutls_session_t, priorities: [*c]const u8, err_pos: [*c][*c]const u8) c_int;
pub extern fn gnutls_priority_certificate_type_list(pcache: gnutls_priority_t, list: [*c][*c]const c_uint) c_int;
pub extern fn gnutls_priority_certificate_type_list2(pcache: gnutls_priority_t, list: [*c][*c]const c_uint, target: gnutls_ctype_target_t) c_int;
pub extern fn gnutls_priority_sign_list(pcache: gnutls_priority_t, list: [*c][*c]const c_uint) c_int;
pub extern fn gnutls_priority_protocol_list(pcache: gnutls_priority_t, list: [*c][*c]const c_uint) c_int;
pub extern fn gnutls_priority_ecc_curve_list(pcache: gnutls_priority_t, list: [*c][*c]const c_uint) c_int;
pub extern fn gnutls_priority_group_list(pcache: gnutls_priority_t, list: [*c][*c]const c_uint) c_int;
pub extern fn gnutls_priority_kx_list(pcache: gnutls_priority_t, list: [*c][*c]const c_uint) c_int;
pub extern fn gnutls_priority_cipher_list(pcache: gnutls_priority_t, list: [*c][*c]const c_uint) c_int;
pub extern fn gnutls_priority_mac_list(pcache: gnutls_priority_t, list: [*c][*c]const c_uint) c_int;
pub extern fn gnutls_get_system_config_file() [*c]const u8;
pub extern fn gnutls_set_default_priority(session: gnutls_session_t) c_int;
pub extern fn gnutls_set_default_priority_append(session: gnutls_session_t, add_prio: [*c]const u8, err_pos: [*c][*c]const u8, flags: c_uint) c_int;
pub extern fn gnutls_cipher_suite_get_name(kx_algorithm: gnutls_kx_algorithm_t, cipher_algorithm: gnutls_cipher_algorithm_t, mac_algorithm: gnutls_mac_algorithm_t) [*c]const u8;
pub extern fn gnutls_protocol_get_version(session: gnutls_session_t) gnutls_protocol_t;
pub extern fn gnutls_protocol_get_name(version: gnutls_protocol_t) [*c]const u8;
pub extern fn gnutls_session_set_data(session: gnutls_session_t, session_data: ?*const anyopaque, session_data_size: usize) c_int;
pub extern fn gnutls_session_get_data(session: gnutls_session_t, session_data: ?*anyopaque, session_data_size: [*c]usize) c_int;
pub extern fn gnutls_session_get_data2(session: gnutls_session_t, data: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_session_get_random(session: gnutls_session_t, client: [*c]gnutls_datum_t, server: [*c]gnutls_datum_t) void;
pub extern fn gnutls_session_get_master_secret(session: gnutls_session_t, secret: [*c]gnutls_datum_t) void;
pub extern fn gnutls_session_get_desc(session: gnutls_session_t) [*c]u8;
pub const gnutls_certificate_verify_function = fn (gnutls_session_t) callconv(.c) c_int;
pub extern fn gnutls_session_set_verify_function(session: gnutls_session_t, func: ?*const gnutls_certificate_verify_function) void;
pub const GNUTLS_DT_UNKNOWN: c_int = 0;
pub const GNUTLS_DT_DNS_HOSTNAME: c_int = 1;
pub const GNUTLS_DT_KEY_PURPOSE_OID: c_int = 2;
pub const GNUTLS_DT_RFC822NAME: c_int = 3;
pub const GNUTLS_DT_IP_ADDRESS: c_int = 4;
pub const gnutls_vdata_types_t = c_uint;
pub const gnutls_typed_vdata_st = extern struct {
    type: gnutls_vdata_types_t = @import("std").mem.zeroes(gnutls_vdata_types_t),
    data: [*c]u8 = null,
    size: c_uint = 0,
};
pub extern fn gnutls_session_set_verify_cert(session: gnutls_session_t, hostname: [*c]const u8, flags: c_uint) void;
pub extern fn gnutls_session_set_verify_cert2(session: gnutls_session_t, data: [*c]gnutls_typed_vdata_st, elements: c_uint, flags: c_uint) void;
pub extern fn gnutls_session_get_verify_cert_status(gnutls_session_t) c_uint;
pub extern fn gnutls_session_set_premaster(session: gnutls_session_t, entity: c_uint, version: gnutls_protocol_t, kx: gnutls_kx_algorithm_t, cipher: gnutls_cipher_algorithm_t, mac: gnutls_mac_algorithm_t, comp: gnutls_compression_method_t, master: [*c]const gnutls_datum_t, session_id: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_session_get_id(session: gnutls_session_t, session_id: ?*anyopaque, session_id_size: [*c]usize) c_int;
pub extern fn gnutls_session_get_id2(session: gnutls_session_t, session_id: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_session_set_id(session: gnutls_session_t, sid: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_session_channel_binding(session: gnutls_session_t, cbtype: gnutls_channel_binding_t, cb: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_session_is_resumed(session: gnutls_session_t) c_int;
pub extern fn gnutls_session_resumption_requested(session: gnutls_session_t) c_int;
pub const gnutls_db_store_func = ?*const fn (?*anyopaque, key: gnutls_datum_t, data: gnutls_datum_t) callconv(.c) c_int;
pub const gnutls_db_remove_func = ?*const fn (?*anyopaque, key: gnutls_datum_t) callconv(.c) c_int;
pub const gnutls_db_retr_func = ?*const fn (?*anyopaque, key: gnutls_datum_t) callconv(.c) gnutls_datum_t;
pub extern fn gnutls_db_set_cache_expiration(session: gnutls_session_t, seconds: c_int) void;
pub extern fn gnutls_db_get_default_cache_expiration() c_uint;
pub extern fn gnutls_db_remove_session(session: gnutls_session_t) void;
pub extern fn gnutls_db_set_retrieve_function(session: gnutls_session_t, retr_func: gnutls_db_retr_func) void;
pub extern fn gnutls_db_set_remove_function(session: gnutls_session_t, rem_func: gnutls_db_remove_func) void;
pub extern fn gnutls_db_set_store_function(session: gnutls_session_t, store_func: gnutls_db_store_func) void;
pub extern fn gnutls_db_set_ptr(session: gnutls_session_t, ptr: ?*anyopaque) void;
pub extern fn gnutls_db_get_ptr(session: gnutls_session_t) ?*anyopaque;
pub extern fn gnutls_db_check_entry(session: gnutls_session_t, session_entry: gnutls_datum_t) c_int;
pub extern fn gnutls_db_check_entry_time(entry: [*c]gnutls_datum_t) time_t;
pub extern fn gnutls_db_check_entry_expire_time(entry: [*c]gnutls_datum_t) time_t;
pub const gnutls_handshake_hook_func = ?*const fn (gnutls_session_t, htype: c_uint, when: c_uint, incoming: c_uint, msg: [*c]const gnutls_datum_t) callconv(.c) c_int;
pub extern fn gnutls_handshake_set_hook_function(session: gnutls_session_t, htype: c_uint, when: c_int, func: gnutls_handshake_hook_func) void;
pub const gnutls_handshake_simple_hook_func = ?*const fn (gnutls_session_t) callconv(.c) c_int;
pub extern fn gnutls_handshake_set_post_client_hello_function(session: gnutls_session_t, func: gnutls_handshake_simple_hook_func) void;
pub extern fn gnutls_handshake_set_max_packet_length(session: gnutls_session_t, max: usize) void;
pub extern fn gnutls_check_version(req_version: [*c]const u8) [*c]const u8;
pub extern fn gnutls_credentials_clear(session: gnutls_session_t) void;
pub extern fn gnutls_credentials_set(session: gnutls_session_t, @"type": gnutls_credentials_type_t, cred: ?*anyopaque) c_int;
pub extern fn gnutls_credentials_get(session: gnutls_session_t, @"type": gnutls_credentials_type_t, cred: [*c]?*anyopaque) c_int;
pub const struct_gnutls_pubkey_st = opaque {};
pub const gnutls_pubkey_t = ?*struct_gnutls_pubkey_st;
pub const struct_gnutls_privkey_st = opaque {};
pub const gnutls_privkey_t = ?*struct_gnutls_privkey_st;
pub const gnutls_x509_privkey_t = ?*struct_gnutls_x509_privkey_int;
pub const struct_gnutls_x509_crl_int = opaque {
    pub const gnutls_x509_crl_sign = __root.gnutls_x509_crl_sign;
    pub const gnutls_x509_crl_sign2 = __root.gnutls_x509_crl_sign2;
    pub const gnutls_x509_crl_print = __root.gnutls_x509_crl_print;
    pub const gnutls_x509_crl_deinit = __root.gnutls_x509_crl_deinit;
    pub const gnutls_x509_crl_import = __root.gnutls_x509_crl_import;
    pub const gnutls_x509_crl_export = __root.gnutls_x509_crl_export;
    pub const gnutls_x509_crl_export2 = __root.gnutls_x509_crl_export2;
    pub const gnutls_x509_crl_get_raw_issuer_dn = __root.gnutls_x509_crl_get_raw_issuer_dn;
    pub const gnutls_x509_crl_get_issuer_dn = __root.gnutls_x509_crl_get_issuer_dn;
    pub const gnutls_x509_crl_get_issuer_dn2 = __root.gnutls_x509_crl_get_issuer_dn2;
    pub const gnutls_x509_crl_get_issuer_dn3 = __root.gnutls_x509_crl_get_issuer_dn3;
    pub const gnutls_x509_crl_get_issuer_dn_by_oid = __root.gnutls_x509_crl_get_issuer_dn_by_oid;
    pub const gnutls_x509_crl_get_dn_oid = __root.gnutls_x509_crl_get_dn_oid;
    pub const gnutls_x509_crl_get_signature_algorithm = __root.gnutls_x509_crl_get_signature_algorithm;
    pub const gnutls_x509_crl_get_signature = __root.gnutls_x509_crl_get_signature;
    pub const gnutls_x509_crl_get_version = __root.gnutls_x509_crl_get_version;
    pub const gnutls_x509_crl_get_signature_oid = __root.gnutls_x509_crl_get_signature_oid;
    pub const gnutls_x509_crl_get_this_update = __root.gnutls_x509_crl_get_this_update;
    pub const gnutls_x509_crl_get_next_update = __root.gnutls_x509_crl_get_next_update;
    pub const gnutls_x509_crl_get_crt_count = __root.gnutls_x509_crl_get_crt_count;
    pub const gnutls_x509_crl_get_crt_serial = __root.gnutls_x509_crl_get_crt_serial;
    pub const gnutls_x509_crl_iter_crt_serial = __root.gnutls_x509_crl_iter_crt_serial;
    pub const gnutls_x509_crl_check_issuer = __root.gnutls_x509_crl_check_issuer;
    pub const gnutls_x509_crl_set_version = __root.gnutls_x509_crl_set_version;
    pub const gnutls_x509_crl_set_this_update = __root.gnutls_x509_crl_set_this_update;
    pub const gnutls_x509_crl_set_next_update = __root.gnutls_x509_crl_set_next_update;
    pub const gnutls_x509_crl_set_crt_serial = __root.gnutls_x509_crl_set_crt_serial;
    pub const gnutls_x509_crl_set_crt = __root.gnutls_x509_crl_set_crt;
    pub const gnutls_x509_crl_get_authority_key_id = __root.gnutls_x509_crl_get_authority_key_id;
    pub const gnutls_x509_crl_get_authority_key_gn_serial = __root.gnutls_x509_crl_get_authority_key_gn_serial;
    pub const gnutls_x509_crl_get_number = __root.gnutls_x509_crl_get_number;
    pub const gnutls_x509_crl_get_extension_oid = __root.gnutls_x509_crl_get_extension_oid;
    pub const gnutls_x509_crl_get_extension_info = __root.gnutls_x509_crl_get_extension_info;
    pub const gnutls_x509_crl_get_extension_data = __root.gnutls_x509_crl_get_extension_data;
    pub const gnutls_x509_crl_get_extension_data2 = __root.gnutls_x509_crl_get_extension_data2;
    pub const gnutls_x509_crl_set_authority_key_id = __root.gnutls_x509_crl_set_authority_key_id;
    pub const gnutls_x509_crl_set_number = __root.gnutls_x509_crl_set_number;
    pub const gnutls_x509_crl_verify = __root.gnutls_x509_crl_verify;
    pub const sign = __root.gnutls_x509_crl_sign;
    pub const sign2 = __root.gnutls_x509_crl_sign2;
    pub const print = __root.gnutls_x509_crl_print;
    pub const deinit = __root.gnutls_x509_crl_deinit;
    pub const import = __root.gnutls_x509_crl_import;
    pub const @"export" = __root.gnutls_x509_crl_export;
    pub const export2 = __root.gnutls_x509_crl_export2;
    pub const dn = __root.gnutls_x509_crl_get_raw_issuer_dn;
    pub const dn2 = __root.gnutls_x509_crl_get_issuer_dn2;
    pub const dn3 = __root.gnutls_x509_crl_get_issuer_dn3;
    pub const oid = __root.gnutls_x509_crl_get_issuer_dn_by_oid;
    pub const algorithm = __root.gnutls_x509_crl_get_signature_algorithm;
    pub const signature = __root.gnutls_x509_crl_get_signature;
    pub const version = __root.gnutls_x509_crl_get_version;
    pub const update = __root.gnutls_x509_crl_get_this_update;
    pub const count = __root.gnutls_x509_crl_get_crt_count;
    pub const serial = __root.gnutls_x509_crl_get_crt_serial;
    pub const issuer = __root.gnutls_x509_crl_check_issuer;
    pub const crt = __root.gnutls_x509_crl_set_crt;
    pub const id = __root.gnutls_x509_crl_get_authority_key_id;
    pub const number = __root.gnutls_x509_crl_get_number;
    pub const info = __root.gnutls_x509_crl_get_extension_info;
    pub const data = __root.gnutls_x509_crl_get_extension_data;
    pub const data2 = __root.gnutls_x509_crl_get_extension_data2;
    pub const verify = __root.gnutls_x509_crl_verify;
};
pub const gnutls_x509_crl_t = ?*struct_gnutls_x509_crl_int;
pub const struct_gnutls_x509_crt_int = opaque {
    pub const gnutls_x509_crt_get_preferred_hash_algorithm = __root.gnutls_x509_crt_get_preferred_hash_algorithm;
    pub const gnutls_x509_crt_deinit = __root.gnutls_x509_crt_deinit;
    pub const gnutls_x509_crt_set_flags = __root.gnutls_x509_crt_set_flags;
    pub const gnutls_x509_crt_equals = __root.gnutls_x509_crt_equals;
    pub const gnutls_x509_crt_equals2 = __root.gnutls_x509_crt_equals2;
    pub const gnutls_x509_crt_import = __root.gnutls_x509_crt_import;
    pub const gnutls_x509_crt_import_url = __root.gnutls_x509_crt_import_url;
    pub const gnutls_x509_crt_export = __root.gnutls_x509_crt_export;
    pub const gnutls_x509_crt_export2 = __root.gnutls_x509_crt_export2;
    pub const gnutls_x509_crt_get_private_key_usage_period = __root.gnutls_x509_crt_get_private_key_usage_period;
    pub const gnutls_x509_crt_get_issuer_dn = __root.gnutls_x509_crt_get_issuer_dn;
    pub const gnutls_x509_crt_get_issuer_dn2 = __root.gnutls_x509_crt_get_issuer_dn2;
    pub const gnutls_x509_crt_get_issuer_dn3 = __root.gnutls_x509_crt_get_issuer_dn3;
    pub const gnutls_x509_crt_get_issuer_dn_oid = __root.gnutls_x509_crt_get_issuer_dn_oid;
    pub const gnutls_x509_crt_get_issuer_dn_by_oid = __root.gnutls_x509_crt_get_issuer_dn_by_oid;
    pub const gnutls_x509_crt_get_dn = __root.gnutls_x509_crt_get_dn;
    pub const gnutls_x509_crt_get_dn2 = __root.gnutls_x509_crt_get_dn2;
    pub const gnutls_x509_crt_get_dn3 = __root.gnutls_x509_crt_get_dn3;
    pub const gnutls_x509_crt_get_dn_oid = __root.gnutls_x509_crt_get_dn_oid;
    pub const gnutls_x509_crt_get_dn_by_oid = __root.gnutls_x509_crt_get_dn_by_oid;
    pub const gnutls_x509_crt_check_hostname = __root.gnutls_x509_crt_check_hostname;
    pub const gnutls_x509_crt_check_hostname2 = __root.gnutls_x509_crt_check_hostname2;
    pub const gnutls_x509_crt_check_email = __root.gnutls_x509_crt_check_email;
    pub const gnutls_x509_crt_check_ip = __root.gnutls_x509_crt_check_ip;
    pub const gnutls_x509_crt_get_signature_algorithm = __root.gnutls_x509_crt_get_signature_algorithm;
    pub const gnutls_x509_crt_get_signature = __root.gnutls_x509_crt_get_signature;
    pub const gnutls_x509_crt_get_version = __root.gnutls_x509_crt_get_version;
    pub const gnutls_x509_crt_get_pk_oid = __root.gnutls_x509_crt_get_pk_oid;
    pub const gnutls_x509_crt_get_signature_oid = __root.gnutls_x509_crt_get_signature_oid;
    pub const gnutls_x509_crt_get_key_id = __root.gnutls_x509_crt_get_key_id;
    pub const gnutls_x509_crt_set_private_key_usage_period = __root.gnutls_x509_crt_set_private_key_usage_period;
    pub const gnutls_x509_crt_set_authority_key_id = __root.gnutls_x509_crt_set_authority_key_id;
    pub const gnutls_x509_crt_get_authority_key_id = __root.gnutls_x509_crt_get_authority_key_id;
    pub const gnutls_x509_crt_get_authority_key_gn_serial = __root.gnutls_x509_crt_get_authority_key_gn_serial;
    pub const gnutls_x509_crt_get_subject_key_id = __root.gnutls_x509_crt_get_subject_key_id;
    pub const gnutls_x509_crt_get_subject_unique_id = __root.gnutls_x509_crt_get_subject_unique_id;
    pub const gnutls_x509_crt_get_issuer_unique_id = __root.gnutls_x509_crt_get_issuer_unique_id;
    pub const gnutls_x509_crt_set_pin_function = __root.gnutls_x509_crt_set_pin_function;
    pub const gnutls_x509_crt_get_authority_info_access = __root.gnutls_x509_crt_get_authority_info_access;
    pub const gnutls_x509_crt_get_name_constraints = __root.gnutls_x509_crt_get_name_constraints;
    pub const gnutls_x509_crt_set_name_constraints = __root.gnutls_x509_crt_set_name_constraints;
    pub const gnutls_x509_crt_get_crl_dist_points = __root.gnutls_x509_crt_get_crl_dist_points;
    pub const gnutls_x509_crt_set_crl_dist_points2 = __root.gnutls_x509_crt_set_crl_dist_points2;
    pub const gnutls_x509_crt_set_crl_dist_points = __root.gnutls_x509_crt_set_crl_dist_points;
    pub const gnutls_x509_crt_cpy_crl_dist_points = __root.gnutls_x509_crt_cpy_crl_dist_points;
    pub const gnutls_x509_crt_get_activation_time = __root.gnutls_x509_crt_get_activation_time;
    pub const gnutls_x509_crt_get_expiration_time = __root.gnutls_x509_crt_get_expiration_time;
    pub const gnutls_x509_crt_get_serial = __root.gnutls_x509_crt_get_serial;
    pub const gnutls_x509_crt_get_pk_algorithm = __root.gnutls_x509_crt_get_pk_algorithm;
    pub const gnutls_x509_crt_set_spki = __root.gnutls_x509_crt_set_spki;
    pub const gnutls_x509_crt_get_spki = __root.gnutls_x509_crt_get_spki;
    pub const gnutls_x509_crt_get_pk_rsa_raw = __root.gnutls_x509_crt_get_pk_rsa_raw;
    pub const gnutls_x509_crt_get_pk_dsa_raw = __root.gnutls_x509_crt_get_pk_dsa_raw;
    pub const gnutls_x509_crt_get_pk_ecc_raw = __root.gnutls_x509_crt_get_pk_ecc_raw;
    pub const gnutls_x509_crt_get_pk_gost_raw = __root.gnutls_x509_crt_get_pk_gost_raw;
    pub const gnutls_x509_crt_get_subject_alt_name = __root.gnutls_x509_crt_get_subject_alt_name;
    pub const gnutls_x509_crt_get_subject_alt_name2 = __root.gnutls_x509_crt_get_subject_alt_name2;
    pub const gnutls_x509_crt_get_subject_alt_othername_oid = __root.gnutls_x509_crt_get_subject_alt_othername_oid;
    pub const gnutls_x509_crt_get_issuer_alt_name = __root.gnutls_x509_crt_get_issuer_alt_name;
    pub const gnutls_x509_crt_get_issuer_alt_name2 = __root.gnutls_x509_crt_get_issuer_alt_name2;
    pub const gnutls_x509_crt_get_issuer_alt_othername_oid = __root.gnutls_x509_crt_get_issuer_alt_othername_oid;
    pub const gnutls_x509_crt_get_ca_status = __root.gnutls_x509_crt_get_ca_status;
    pub const gnutls_x509_crt_get_basic_constraints = __root.gnutls_x509_crt_get_basic_constraints;
    pub const gnutls_x509_crt_get_key_usage = __root.gnutls_x509_crt_get_key_usage;
    pub const gnutls_x509_crt_set_key_usage = __root.gnutls_x509_crt_set_key_usage;
    pub const gnutls_x509_crt_set_authority_info_access = __root.gnutls_x509_crt_set_authority_info_access;
    pub const gnutls_x509_crt_get_inhibit_anypolicy = __root.gnutls_x509_crt_get_inhibit_anypolicy;
    pub const gnutls_x509_crt_set_inhibit_anypolicy = __root.gnutls_x509_crt_set_inhibit_anypolicy;
    pub const gnutls_x509_crt_get_proxy = __root.gnutls_x509_crt_get_proxy;
    pub const gnutls_x509_crt_set_tlsfeatures = __root.gnutls_x509_crt_set_tlsfeatures;
    pub const gnutls_x509_crt_get_tlsfeatures = __root.gnutls_x509_crt_get_tlsfeatures;
    pub const gnutls_x509_crt_get_policy = __root.gnutls_x509_crt_get_policy;
    pub const gnutls_x509_crt_set_policy = __root.gnutls_x509_crt_set_policy;
    pub const gnutls_x509_crt_get_extension_oid = __root.gnutls_x509_crt_get_extension_oid;
    pub const gnutls_x509_crt_get_extension_by_oid = __root.gnutls_x509_crt_get_extension_by_oid;
    pub const gnutls_x509_crt_get_extension_info = __root.gnutls_x509_crt_get_extension_info;
    pub const gnutls_x509_crt_get_extension_data = __root.gnutls_x509_crt_get_extension_data;
    pub const gnutls_x509_crt_get_extension_data2 = __root.gnutls_x509_crt_get_extension_data2;
    pub const gnutls_x509_crt_set_extension_by_oid = __root.gnutls_x509_crt_set_extension_by_oid;
    pub const gnutls_x509_crt_set_dn = __root.gnutls_x509_crt_set_dn;
    pub const gnutls_x509_crt_set_dn_by_oid = __root.gnutls_x509_crt_set_dn_by_oid;
    pub const gnutls_x509_crt_set_issuer_dn_by_oid = __root.gnutls_x509_crt_set_issuer_dn_by_oid;
    pub const gnutls_x509_crt_set_issuer_dn = __root.gnutls_x509_crt_set_issuer_dn;
    pub const gnutls_x509_crt_set_version = __root.gnutls_x509_crt_set_version;
    pub const gnutls_x509_crt_set_key = __root.gnutls_x509_crt_set_key;
    pub const gnutls_x509_crt_set_ca_status = __root.gnutls_x509_crt_set_ca_status;
    pub const gnutls_x509_crt_set_basic_constraints = __root.gnutls_x509_crt_set_basic_constraints;
    pub const gnutls_x509_crt_set_subject_unique_id = __root.gnutls_x509_crt_set_subject_unique_id;
    pub const gnutls_x509_crt_set_issuer_unique_id = __root.gnutls_x509_crt_set_issuer_unique_id;
    pub const gnutls_x509_crt_set_subject_alternative_name = __root.gnutls_x509_crt_set_subject_alternative_name;
    pub const gnutls_x509_crt_set_subject_alt_name = __root.gnutls_x509_crt_set_subject_alt_name;
    pub const gnutls_x509_crt_set_subject_alt_othername = __root.gnutls_x509_crt_set_subject_alt_othername;
    pub const gnutls_x509_crt_set_issuer_alt_name = __root.gnutls_x509_crt_set_issuer_alt_name;
    pub const gnutls_x509_crt_set_issuer_alt_othername = __root.gnutls_x509_crt_set_issuer_alt_othername;
    pub const gnutls_x509_crt_sign = __root.gnutls_x509_crt_sign;
    pub const gnutls_x509_crt_sign2 = __root.gnutls_x509_crt_sign2;
    pub const gnutls_x509_crt_set_activation_time = __root.gnutls_x509_crt_set_activation_time;
    pub const gnutls_x509_crt_set_expiration_time = __root.gnutls_x509_crt_set_expiration_time;
    pub const gnutls_x509_crt_set_serial = __root.gnutls_x509_crt_set_serial;
    pub const gnutls_x509_crt_set_subject_key_id = __root.gnutls_x509_crt_set_subject_key_id;
    pub const gnutls_x509_crt_set_proxy_dn = __root.gnutls_x509_crt_set_proxy_dn;
    pub const gnutls_x509_crt_set_proxy = __root.gnutls_x509_crt_set_proxy;
    pub const gnutls_x509_crt_print = __root.gnutls_x509_crt_print;
    pub const gnutls_x509_crt_get_raw_issuer_dn = __root.gnutls_x509_crt_get_raw_issuer_dn;
    pub const gnutls_x509_crt_get_raw_dn = __root.gnutls_x509_crt_get_raw_dn;
    pub const gnutls_x509_crt_get_subject = __root.gnutls_x509_crt_get_subject;
    pub const gnutls_x509_crt_get_issuer = __root.gnutls_x509_crt_get_issuer;
    pub const gnutls_x509_crt_check_issuer = __root.gnutls_x509_crt_check_issuer;
    pub const gnutls_x509_crt_verify = __root.gnutls_x509_crt_verify;
    pub const gnutls_x509_crt_verify_data2 = __root.gnutls_x509_crt_verify_data2;
    pub const gnutls_x509_crt_check_revocation = __root.gnutls_x509_crt_check_revocation;
    pub const gnutls_x509_crt_get_fingerprint = __root.gnutls_x509_crt_get_fingerprint;
    pub const gnutls_x509_crt_get_key_purpose_oid = __root.gnutls_x509_crt_get_key_purpose_oid;
    pub const gnutls_x509_crt_set_key_purpose_oid = __root.gnutls_x509_crt_set_key_purpose_oid;
    pub const gnutls_x509_crt_check_key_purpose = __root.gnutls_x509_crt_check_key_purpose;
    pub const gnutls_x509_crt_set_crq = __root.gnutls_x509_crt_set_crq;
    pub const gnutls_x509_crt_set_crq_extensions = __root.gnutls_x509_crt_set_crq_extensions;
    pub const gnutls_x509_crt_set_crq_extension_by_oid = __root.gnutls_x509_crt_set_crq_extension_by_oid;
    pub const gnutls_x509_crt_get_extension_by_oid2 = __root.gnutls_x509_crt_get_extension_by_oid2;
    pub const algorithm = __root.gnutls_x509_crt_get_preferred_hash_algorithm;
    pub const deinit = __root.gnutls_x509_crt_deinit;
    pub const flags = __root.gnutls_x509_crt_set_flags;
    pub const equals = __root.gnutls_x509_crt_equals;
    pub const equals2 = __root.gnutls_x509_crt_equals2;
    pub const import = __root.gnutls_x509_crt_import;
    pub const url = __root.gnutls_x509_crt_import_url;
    pub const @"export" = __root.gnutls_x509_crt_export;
    pub const export2 = __root.gnutls_x509_crt_export2;
    pub const period = __root.gnutls_x509_crt_get_private_key_usage_period;
    pub const dn = __root.gnutls_x509_crt_get_issuer_dn;
    pub const dn2 = __root.gnutls_x509_crt_get_issuer_dn2;
    pub const dn3 = __root.gnutls_x509_crt_get_issuer_dn3;
    pub const oid = __root.gnutls_x509_crt_get_issuer_dn_oid;
    pub const hostname = __root.gnutls_x509_crt_check_hostname;
    pub const hostname2 = __root.gnutls_x509_crt_check_hostname2;
    pub const email = __root.gnutls_x509_crt_check_email;
    pub const ip = __root.gnutls_x509_crt_check_ip;
    pub const signature = __root.gnutls_x509_crt_get_signature;
    pub const version = __root.gnutls_x509_crt_get_version;
    pub const id = __root.gnutls_x509_crt_get_key_id;
    pub const serial = __root.gnutls_x509_crt_get_authority_key_gn_serial;
    pub const function = __root.gnutls_x509_crt_set_pin_function;
    pub const constraints = __root.gnutls_x509_crt_get_name_constraints;
    pub const points = __root.gnutls_x509_crt_get_crl_dist_points;
    pub const points2 = __root.gnutls_x509_crt_set_crl_dist_points2;
    pub const spki = __root.gnutls_x509_crt_set_spki;
    pub const raw = __root.gnutls_x509_crt_get_pk_rsa_raw;
    pub const name = __root.gnutls_x509_crt_get_subject_alt_name;
    pub const name2 = __root.gnutls_x509_crt_get_subject_alt_name2;
    pub const status = __root.gnutls_x509_crt_get_ca_status;
    pub const usage = __root.gnutls_x509_crt_get_key_usage;
    pub const anypolicy = __root.gnutls_x509_crt_get_inhibit_anypolicy;
    pub const proxy = __root.gnutls_x509_crt_get_proxy;
    pub const tlsfeatures = __root.gnutls_x509_crt_set_tlsfeatures;
    pub const policy = __root.gnutls_x509_crt_get_policy;
    pub const info = __root.gnutls_x509_crt_get_extension_info;
    pub const data = __root.gnutls_x509_crt_get_extension_data;
    pub const data2 = __root.gnutls_x509_crt_get_extension_data2;
    pub const key = __root.gnutls_x509_crt_set_key;
    pub const othername = __root.gnutls_x509_crt_set_subject_alt_othername;
    pub const sign = __root.gnutls_x509_crt_sign;
    pub const sign2 = __root.gnutls_x509_crt_sign2;
    pub const print = __root.gnutls_x509_crt_print;
    pub const subject = __root.gnutls_x509_crt_get_subject;
    pub const issuer = __root.gnutls_x509_crt_get_issuer;
    pub const verify = __root.gnutls_x509_crt_verify;
    pub const revocation = __root.gnutls_x509_crt_check_revocation;
    pub const fingerprint = __root.gnutls_x509_crt_get_fingerprint;
    pub const purpose = __root.gnutls_x509_crt_check_key_purpose;
    pub const crq = __root.gnutls_x509_crt_set_crq;
    pub const extensions = __root.gnutls_x509_crt_set_crq_extensions;
    pub const oid2 = __root.gnutls_x509_crt_get_extension_by_oid2;
};
pub const gnutls_x509_crt_t = ?*struct_gnutls_x509_crt_int;
pub const struct_gnutls_x509_crq_int = opaque {
    pub const gnutls_x509_crq_get_signature_algorithm = __root.gnutls_x509_crq_get_signature_algorithm;
    pub const gnutls_x509_crq_get_extension_by_oid2 = __root.gnutls_x509_crq_get_extension_by_oid2;
    pub const gnutls_x509_crq_sign = __root.gnutls_x509_crq_sign;
    pub const gnutls_x509_crq_sign2 = __root.gnutls_x509_crq_sign2;
    pub const gnutls_x509_crq_print = __root.gnutls_x509_crq_print;
    pub const gnutls_x509_crq_verify = __root.gnutls_x509_crq_verify;
    pub const gnutls_x509_crq_deinit = __root.gnutls_x509_crq_deinit;
    pub const gnutls_x509_crq_import = __root.gnutls_x509_crq_import;
    pub const gnutls_x509_crq_get_private_key_usage_period = __root.gnutls_x509_crq_get_private_key_usage_period;
    pub const gnutls_x509_crq_get_dn = __root.gnutls_x509_crq_get_dn;
    pub const gnutls_x509_crq_get_dn2 = __root.gnutls_x509_crq_get_dn2;
    pub const gnutls_x509_crq_get_dn3 = __root.gnutls_x509_crq_get_dn3;
    pub const gnutls_x509_crq_get_dn_oid = __root.gnutls_x509_crq_get_dn_oid;
    pub const gnutls_x509_crq_get_dn_by_oid = __root.gnutls_x509_crq_get_dn_by_oid;
    pub const gnutls_x509_crq_set_dn = __root.gnutls_x509_crq_set_dn;
    pub const gnutls_x509_crq_set_dn_by_oid = __root.gnutls_x509_crq_set_dn_by_oid;
    pub const gnutls_x509_crq_set_version = __root.gnutls_x509_crq_set_version;
    pub const gnutls_x509_crq_get_version = __root.gnutls_x509_crq_get_version;
    pub const gnutls_x509_crq_set_key = __root.gnutls_x509_crq_set_key;
    pub const gnutls_x509_crq_set_extension_by_oid = __root.gnutls_x509_crq_set_extension_by_oid;
    pub const gnutls_x509_crq_set_challenge_password = __root.gnutls_x509_crq_set_challenge_password;
    pub const gnutls_x509_crq_get_challenge_password = __root.gnutls_x509_crq_get_challenge_password;
    pub const gnutls_x509_crq_set_attribute_by_oid = __root.gnutls_x509_crq_set_attribute_by_oid;
    pub const gnutls_x509_crq_get_attribute_by_oid = __root.gnutls_x509_crq_get_attribute_by_oid;
    pub const gnutls_x509_crq_export = __root.gnutls_x509_crq_export;
    pub const gnutls_x509_crq_export2 = __root.gnutls_x509_crq_export2;
    pub const gnutls_x509_crq_set_private_key_usage_period = __root.gnutls_x509_crq_set_private_key_usage_period;
    pub const gnutls_x509_crq_set_key_rsa_raw = __root.gnutls_x509_crq_set_key_rsa_raw;
    pub const gnutls_x509_crq_set_subject_alt_name = __root.gnutls_x509_crq_set_subject_alt_name;
    pub const gnutls_x509_crq_set_subject_alt_othername = __root.gnutls_x509_crq_set_subject_alt_othername;
    pub const gnutls_x509_crq_set_key_usage = __root.gnutls_x509_crq_set_key_usage;
    pub const gnutls_x509_crq_set_basic_constraints = __root.gnutls_x509_crq_set_basic_constraints;
    pub const gnutls_x509_crq_set_key_purpose_oid = __root.gnutls_x509_crq_set_key_purpose_oid;
    pub const gnutls_x509_crq_get_key_purpose_oid = __root.gnutls_x509_crq_get_key_purpose_oid;
    pub const gnutls_x509_crq_get_extension_data = __root.gnutls_x509_crq_get_extension_data;
    pub const gnutls_x509_crq_get_extension_data2 = __root.gnutls_x509_crq_get_extension_data2;
    pub const gnutls_x509_crq_get_extension_info = __root.gnutls_x509_crq_get_extension_info;
    pub const gnutls_x509_crq_get_attribute_data = __root.gnutls_x509_crq_get_attribute_data;
    pub const gnutls_x509_crq_get_attribute_info = __root.gnutls_x509_crq_get_attribute_info;
    pub const gnutls_x509_crq_get_pk_algorithm = __root.gnutls_x509_crq_get_pk_algorithm;
    pub const gnutls_x509_crq_get_spki = __root.gnutls_x509_crq_get_spki;
    pub const gnutls_x509_crq_set_spki = __root.gnutls_x509_crq_set_spki;
    pub const gnutls_x509_crq_get_signature_oid = __root.gnutls_x509_crq_get_signature_oid;
    pub const gnutls_x509_crq_get_pk_oid = __root.gnutls_x509_crq_get_pk_oid;
    pub const gnutls_x509_crq_get_key_id = __root.gnutls_x509_crq_get_key_id;
    pub const gnutls_x509_crq_get_key_rsa_raw = __root.gnutls_x509_crq_get_key_rsa_raw;
    pub const gnutls_x509_crq_get_key_usage = __root.gnutls_x509_crq_get_key_usage;
    pub const gnutls_x509_crq_get_basic_constraints = __root.gnutls_x509_crq_get_basic_constraints;
    pub const gnutls_x509_crq_get_subject_alt_name = __root.gnutls_x509_crq_get_subject_alt_name;
    pub const gnutls_x509_crq_get_subject_alt_othername_oid = __root.gnutls_x509_crq_get_subject_alt_othername_oid;
    pub const gnutls_x509_crq_get_extension_by_oid = __root.gnutls_x509_crq_get_extension_by_oid;
    pub const gnutls_x509_crq_get_tlsfeatures = __root.gnutls_x509_crq_get_tlsfeatures;
    pub const gnutls_x509_crq_set_tlsfeatures = __root.gnutls_x509_crq_set_tlsfeatures;
    pub const algorithm = __root.gnutls_x509_crq_get_signature_algorithm;
    pub const oid2 = __root.gnutls_x509_crq_get_extension_by_oid2;
    pub const sign = __root.gnutls_x509_crq_sign;
    pub const sign2 = __root.gnutls_x509_crq_sign2;
    pub const print = __root.gnutls_x509_crq_print;
    pub const verify = __root.gnutls_x509_crq_verify;
    pub const deinit = __root.gnutls_x509_crq_deinit;
    pub const import = __root.gnutls_x509_crq_import;
    pub const period = __root.gnutls_x509_crq_get_private_key_usage_period;
    pub const dn = __root.gnutls_x509_crq_get_dn;
    pub const dn2 = __root.gnutls_x509_crq_get_dn2;
    pub const dn3 = __root.gnutls_x509_crq_get_dn3;
    pub const oid = __root.gnutls_x509_crq_get_dn_oid;
    pub const version = __root.gnutls_x509_crq_set_version;
    pub const key = __root.gnutls_x509_crq_set_key;
    pub const password = __root.gnutls_x509_crq_set_challenge_password;
    pub const @"export" = __root.gnutls_x509_crq_export;
    pub const export2 = __root.gnutls_x509_crq_export2;
    pub const raw = __root.gnutls_x509_crq_set_key_rsa_raw;
    pub const name = __root.gnutls_x509_crq_set_subject_alt_name;
    pub const othername = __root.gnutls_x509_crq_set_subject_alt_othername;
    pub const usage = __root.gnutls_x509_crq_set_key_usage;
    pub const constraints = __root.gnutls_x509_crq_set_basic_constraints;
    pub const data = __root.gnutls_x509_crq_get_extension_data;
    pub const data2 = __root.gnutls_x509_crq_get_extension_data2;
    pub const info = __root.gnutls_x509_crq_get_extension_info;
    pub const spki = __root.gnutls_x509_crq_get_spki;
    pub const id = __root.gnutls_x509_crq_get_key_id;
    pub const tlsfeatures = __root.gnutls_x509_crq_get_tlsfeatures;
};
pub const gnutls_x509_crq_t = ?*struct_gnutls_x509_crq_int;
pub const struct_gnutls_openpgp_keyring_int = opaque {};
pub const gnutls_openpgp_keyring_t = ?*struct_gnutls_openpgp_keyring_int;
pub const struct_gnutls_certificate_credentials_st = opaque {
    pub const gnutls_certificate_free_credentials = __root.gnutls_certificate_free_credentials;
    pub const gnutls_certificate_get_issuer = __root.gnutls_certificate_get_issuer;
    pub const gnutls_certificate_get_crt_raw = __root.gnutls_certificate_get_crt_raw;
    pub const gnutls_certificate_free_keys = __root.gnutls_certificate_free_keys;
    pub const gnutls_certificate_free_cas = __root.gnutls_certificate_free_cas;
    pub const gnutls_certificate_free_ca_names = __root.gnutls_certificate_free_ca_names;
    pub const gnutls_certificate_free_crls = __root.gnutls_certificate_free_crls;
    pub const gnutls_certificate_set_dh_params = __root.gnutls_certificate_set_dh_params;
    pub const gnutls_certificate_set_known_dh_params = __root.gnutls_certificate_set_known_dh_params;
    pub const gnutls_certificate_set_verify_flags = __root.gnutls_certificate_set_verify_flags;
    pub const gnutls_certificate_get_verify_flags = __root.gnutls_certificate_get_verify_flags;
    pub const gnutls_certificate_set_flags = __root.gnutls_certificate_set_flags;
    pub const gnutls_certificate_set_verify_limits = __root.gnutls_certificate_set_verify_limits;
    pub const gnutls_certificate_set_x509_system_trust = __root.gnutls_certificate_set_x509_system_trust;
    pub const gnutls_certificate_set_x509_trust_file = __root.gnutls_certificate_set_x509_trust_file;
    pub const gnutls_certificate_set_x509_trust_dir = __root.gnutls_certificate_set_x509_trust_dir;
    pub const gnutls_certificate_set_x509_trust_mem = __root.gnutls_certificate_set_x509_trust_mem;
    pub const gnutls_certificate_set_x509_crl_file = __root.gnutls_certificate_set_x509_crl_file;
    pub const gnutls_certificate_set_x509_crl_mem = __root.gnutls_certificate_set_x509_crl_mem;
    pub const gnutls_certificate_set_x509_key_file = __root.gnutls_certificate_set_x509_key_file;
    pub const gnutls_certificate_set_x509_key_file2 = __root.gnutls_certificate_set_x509_key_file2;
    pub const gnutls_certificate_set_x509_key_mem = __root.gnutls_certificate_set_x509_key_mem;
    pub const gnutls_certificate_set_x509_key_mem2 = __root.gnutls_certificate_set_x509_key_mem2;
    pub const gnutls_certificate_set_x509_simple_pkcs12_file = __root.gnutls_certificate_set_x509_simple_pkcs12_file;
    pub const gnutls_certificate_set_x509_simple_pkcs12_mem = __root.gnutls_certificate_set_x509_simple_pkcs12_mem;
    pub const gnutls_certificate_set_x509_key = __root.gnutls_certificate_set_x509_key;
    pub const gnutls_certificate_set_x509_trust = __root.gnutls_certificate_set_x509_trust;
    pub const gnutls_certificate_set_x509_crl = __root.gnutls_certificate_set_x509_crl;
    pub const gnutls_certificate_get_x509_key = __root.gnutls_certificate_get_x509_key;
    pub const gnutls_certificate_get_x509_crt = __root.gnutls_certificate_get_x509_crt;
    pub const gnutls_certificate_set_ocsp_status_request_function = __root.gnutls_certificate_set_ocsp_status_request_function;
    pub const gnutls_certificate_set_ocsp_status_request_function2 = __root.gnutls_certificate_set_ocsp_status_request_function2;
    pub const gnutls_certificate_set_ocsp_status_request_file = __root.gnutls_certificate_set_ocsp_status_request_file;
    pub const gnutls_certificate_set_ocsp_status_request_file2 = __root.gnutls_certificate_set_ocsp_status_request_file2;
    pub const gnutls_certificate_set_ocsp_status_request_mem = __root.gnutls_certificate_set_ocsp_status_request_mem;
    pub const gnutls_certificate_get_ocsp_expiration = __root.gnutls_certificate_get_ocsp_expiration;
    pub const gnutls_certificate_set_rawpk_key_mem = __root.gnutls_certificate_set_rawpk_key_mem;
    pub const gnutls_certificate_set_rawpk_key_file = __root.gnutls_certificate_set_rawpk_key_file;
    pub const gnutls_certificate_set_retrieve_function = __root.gnutls_certificate_set_retrieve_function;
    pub const gnutls_certificate_set_verify_function = __root.gnutls_certificate_set_verify_function;
    pub const gnutls_certificate_set_params_function = __root.gnutls_certificate_set_params_function;
    pub const gnutls_certificate_set_pin_function = __root.gnutls_certificate_set_pin_function;
    pub const gnutls_certificate_set_trust_list = __root.gnutls_certificate_set_trust_list;
    pub const gnutls_certificate_get_trust_list = __root.gnutls_certificate_get_trust_list;
    pub const credentials = __root.gnutls_certificate_free_credentials;
    pub const issuer = __root.gnutls_certificate_get_issuer;
    pub const raw = __root.gnutls_certificate_get_crt_raw;
    pub const keys = __root.gnutls_certificate_free_keys;
    pub const cas = __root.gnutls_certificate_free_cas;
    pub const names = __root.gnutls_certificate_free_ca_names;
    pub const crls = __root.gnutls_certificate_free_crls;
    pub const params = __root.gnutls_certificate_set_dh_params;
    pub const flags = __root.gnutls_certificate_set_verify_flags;
    pub const limits = __root.gnutls_certificate_set_verify_limits;
    pub const trust = __root.gnutls_certificate_set_x509_system_trust;
    pub const file = __root.gnutls_certificate_set_x509_trust_file;
    pub const dir = __root.gnutls_certificate_set_x509_trust_dir;
    pub const mem = __root.gnutls_certificate_set_x509_trust_mem;
    pub const file2 = __root.gnutls_certificate_set_x509_key_file2;
    pub const mem2 = __root.gnutls_certificate_set_x509_key_mem2;
    pub const key = __root.gnutls_certificate_set_x509_key;
    pub const crl = __root.gnutls_certificate_set_x509_crl;
    pub const crt = __root.gnutls_certificate_get_x509_crt;
    pub const function = __root.gnutls_certificate_set_ocsp_status_request_function;
    pub const function2 = __root.gnutls_certificate_set_ocsp_status_request_function2;
    pub const expiration = __root.gnutls_certificate_get_ocsp_expiration;
    pub const list = __root.gnutls_certificate_set_trust_list;
};
pub const gnutls_certificate_credentials_t = ?*struct_gnutls_certificate_credentials_st;
pub const gnutls_certificate_server_credentials = gnutls_certificate_credentials_t;
pub const gnutls_certificate_client_credentials = gnutls_certificate_credentials_t;
pub const struct_gnutls_anon_server_credentials_st = opaque {
    pub const gnutls_anon_free_server_credentials = __root.gnutls_anon_free_server_credentials;
    pub const gnutls_anon_set_server_dh_params = __root.gnutls_anon_set_server_dh_params;
    pub const gnutls_anon_set_server_known_dh_params = __root.gnutls_anon_set_server_known_dh_params;
    pub const gnutls_anon_set_server_params_function = __root.gnutls_anon_set_server_params_function;
    pub const gnutls_anon_set_params_function = __root.gnutls_anon_set_params_function;
    pub const credentials = __root.gnutls_anon_free_server_credentials;
    pub const params = __root.gnutls_anon_set_server_dh_params;
    pub const function = __root.gnutls_anon_set_server_params_function;
};
pub const gnutls_anon_server_credentials_t = ?*struct_gnutls_anon_server_credentials_st;
pub const struct_gnutls_anon_client_credentials_st = opaque {
    pub const gnutls_anon_free_client_credentials = __root.gnutls_anon_free_client_credentials;
    pub const credentials = __root.gnutls_anon_free_client_credentials;
};
pub const gnutls_anon_client_credentials_t = ?*struct_gnutls_anon_client_credentials_st;
pub extern fn gnutls_anon_free_server_credentials(sc: gnutls_anon_server_credentials_t) void;
pub extern fn gnutls_anon_allocate_server_credentials(sc: [*c]gnutls_anon_server_credentials_t) c_int;
pub extern fn gnutls_anon_set_server_dh_params(res: gnutls_anon_server_credentials_t, dh_params: gnutls_dh_params_t) void;
pub extern fn gnutls_anon_set_server_known_dh_params(res: gnutls_anon_server_credentials_t, sec_param: gnutls_sec_param_t) c_int;
pub extern fn gnutls_anon_set_server_params_function(res: gnutls_anon_server_credentials_t, func: ?*const gnutls_params_function) void;
pub extern fn gnutls_anon_free_client_credentials(sc: gnutls_anon_client_credentials_t) void;
pub extern fn gnutls_anon_allocate_client_credentials(sc: [*c]gnutls_anon_client_credentials_t) c_int;
pub extern fn gnutls_certificate_free_credentials(sc: gnutls_certificate_credentials_t) void;
pub extern fn gnutls_certificate_allocate_credentials(res: [*c]gnutls_certificate_credentials_t) c_int;
pub extern fn gnutls_certificate_get_issuer(sc: gnutls_certificate_credentials_t, cert: gnutls_x509_crt_t, issuer: [*c]gnutls_x509_crt_t, flags: c_uint) c_int;
pub extern fn gnutls_certificate_get_crt_raw(sc: gnutls_certificate_credentials_t, idx1: c_uint, idx2: c_uint, cert: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_certificate_free_keys(sc: gnutls_certificate_credentials_t) void;
pub extern fn gnutls_certificate_free_cas(sc: gnutls_certificate_credentials_t) void;
pub extern fn gnutls_certificate_free_ca_names(sc: gnutls_certificate_credentials_t) void;
pub extern fn gnutls_certificate_free_crls(sc: gnutls_certificate_credentials_t) void;
pub extern fn gnutls_certificate_set_dh_params(res: gnutls_certificate_credentials_t, dh_params: gnutls_dh_params_t) void;
pub extern fn gnutls_certificate_set_known_dh_params(res: gnutls_certificate_credentials_t, sec_param: gnutls_sec_param_t) c_int;
pub extern fn gnutls_certificate_set_verify_flags(res: gnutls_certificate_credentials_t, flags: c_uint) void;
pub extern fn gnutls_certificate_get_verify_flags(res: gnutls_certificate_credentials_t) c_uint;
pub const GNUTLS_CERTIFICATE_SKIP_KEY_CERT_MATCH: c_int = 1;
pub const GNUTLS_CERTIFICATE_API_V2: c_int = 2;
pub const GNUTLS_CERTIFICATE_SKIP_OCSP_RESPONSE_CHECK: c_int = 4;
pub const GNUTLS_CERTIFICATE_VERIFY_CRLS: c_int = 8;
pub const enum_gnutls_certificate_flags = c_uint;
pub const gnutls_certificate_flags = enum_gnutls_certificate_flags;
pub extern fn gnutls_certificate_set_flags(gnutls_certificate_credentials_t, flags: c_uint) void;
pub extern fn gnutls_certificate_set_verify_limits(res: gnutls_certificate_credentials_t, max_bits: c_uint, max_depth: c_uint) void;
pub extern fn gnutls_certificate_set_x509_system_trust(cred: gnutls_certificate_credentials_t) c_int;
pub extern fn gnutls_certificate_set_x509_trust_file(cred: gnutls_certificate_credentials_t, cafile: [*c]const u8, @"type": gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_certificate_set_x509_trust_dir(cred: gnutls_certificate_credentials_t, ca_dir: [*c]const u8, @"type": gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_certificate_set_x509_trust_mem(res: gnutls_certificate_credentials_t, ca: [*c]const gnutls_datum_t, @"type": gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_certificate_set_x509_crl_file(res: gnutls_certificate_credentials_t, crlfile: [*c]const u8, @"type": gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_certificate_set_x509_crl_mem(res: gnutls_certificate_credentials_t, CRL: [*c]const gnutls_datum_t, @"type": gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_certificate_set_x509_key_file(res: gnutls_certificate_credentials_t, certfile: [*c]const u8, keyfile: [*c]const u8, @"type": gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_certificate_set_x509_key_file2(res: gnutls_certificate_credentials_t, certfile: [*c]const u8, keyfile: [*c]const u8, @"type": gnutls_x509_crt_fmt_t, pass: [*c]const u8, flags: c_uint) c_int;
pub extern fn gnutls_certificate_set_x509_key_mem(res: gnutls_certificate_credentials_t, cert: [*c]const gnutls_datum_t, key: [*c]const gnutls_datum_t, @"type": gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_certificate_set_x509_key_mem2(res: gnutls_certificate_credentials_t, cert: [*c]const gnutls_datum_t, key: [*c]const gnutls_datum_t, @"type": gnutls_x509_crt_fmt_t, pass: [*c]const u8, flags: c_uint) c_int;
pub extern fn gnutls_certificate_send_x509_rdn_sequence(session: gnutls_session_t, status: c_int) void;
pub extern fn gnutls_certificate_set_x509_simple_pkcs12_file(res: gnutls_certificate_credentials_t, pkcs12file: [*c]const u8, @"type": gnutls_x509_crt_fmt_t, password: [*c]const u8) c_int;
pub extern fn gnutls_certificate_set_x509_simple_pkcs12_mem(res: gnutls_certificate_credentials_t, p12blob: [*c]const gnutls_datum_t, @"type": gnutls_x509_crt_fmt_t, password: [*c]const u8) c_int;
pub extern fn gnutls_certificate_set_x509_key(res: gnutls_certificate_credentials_t, cert_list: [*c]gnutls_x509_crt_t, cert_list_size: c_int, key: gnutls_x509_privkey_t) c_int;
pub extern fn gnutls_certificate_set_x509_trust(res: gnutls_certificate_credentials_t, ca_list: [*c]gnutls_x509_crt_t, ca_list_size: c_int) c_int;
pub extern fn gnutls_certificate_set_x509_crl(res: gnutls_certificate_credentials_t, crl_list: [*c]gnutls_x509_crl_t, crl_list_size: c_int) c_int;
pub extern fn gnutls_certificate_get_x509_key(res: gnutls_certificate_credentials_t, index: c_uint, key: [*c]gnutls_x509_privkey_t) c_int;
pub extern fn gnutls_certificate_get_x509_crt(res: gnutls_certificate_credentials_t, index: c_uint, crt_list: [*c][*c]gnutls_x509_crt_t, crt_list_size: [*c]c_uint) c_int;
pub const gnutls_status_request_ocsp_func = ?*const fn (session: gnutls_session_t, ptr: ?*anyopaque, ocsp_response: [*c]gnutls_datum_t) callconv(.c) c_int;
pub extern fn gnutls_certificate_set_ocsp_status_request_function(res: gnutls_certificate_credentials_t, ocsp_func: gnutls_status_request_ocsp_func, ptr: ?*anyopaque) void;
pub extern fn gnutls_certificate_set_ocsp_status_request_function2(res: gnutls_certificate_credentials_t, idx: c_uint, ocsp_func: gnutls_status_request_ocsp_func, ptr: ?*anyopaque) c_int;
pub extern fn gnutls_certificate_set_ocsp_status_request_file(res: gnutls_certificate_credentials_t, response_file: [*c]const u8, idx: c_uint) c_int;
pub extern fn gnutls_certificate_set_ocsp_status_request_file2(res: gnutls_certificate_credentials_t, response_file: [*c]const u8, idx: c_uint, fmt: gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_certificate_set_ocsp_status_request_mem(res: gnutls_certificate_credentials_t, resp: [*c]const gnutls_datum_t, idx: c_uint, fmt: gnutls_x509_crt_fmt_t) c_int;
pub const struct_gnutls_ocsp_data_st = extern struct {
    version: c_uint = 0,
    response: gnutls_datum_t = @import("std").mem.zeroes(gnutls_datum_t),
    exptime: time_t = 0,
    padding: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const gnutls_ocsp_data_st = struct_gnutls_ocsp_data_st;
pub extern fn gnutls_certificate_get_ocsp_expiration(sc: gnutls_certificate_credentials_t, idx: c_uint, oidx: c_int, flags: c_uint) time_t;
pub extern fn gnutls_ocsp_status_request_enable_client(session: gnutls_session_t, responder_id: [*c]gnutls_datum_t, responder_id_size: usize, request_extensions: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_ocsp_status_request_get(session: gnutls_session_t, response: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_ocsp_status_request_is_checked(session: gnutls_session_t, flags: c_uint) c_uint;
pub extern fn gnutls_ocsp_status_request_get2(session: gnutls_session_t, idx: c_uint, response: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_certificate_set_rawpk_key_mem(cred: gnutls_certificate_credentials_t, spki: [*c]const gnutls_datum_t, pkey: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t, pass: [*c]const u8, key_usage: c_uint, names: [*c][*c]const u8, names_length: c_uint, flags: c_uint) c_int;
pub extern fn gnutls_certificate_set_rawpk_key_file(cred: gnutls_certificate_credentials_t, rawpkfile: [*c]const u8, privkeyfile: [*c]const u8, format: gnutls_x509_crt_fmt_t, pass: [*c]const u8, key_usage: c_uint, names: [*c][*c]const u8, names_length: c_uint, privkey_flags: c_uint, pkcs11_flags: c_uint) c_int;
pub extern fn gnutls_global_init() c_int;
pub extern fn gnutls_global_deinit() void;
pub extern fn gnutls_get_library_config() [*c]const gnutls_library_config_st;
pub const gnutls_time_func = ?*const fn (t: [*c]time_t) callconv(.c) time_t;
pub const mutex_init_func = ?*const fn (mutex: [*c]?*anyopaque) callconv(.c) c_int;
pub const mutex_lock_func = ?*const fn (mutex: [*c]?*anyopaque) callconv(.c) c_int;
pub const mutex_unlock_func = ?*const fn (mutex: [*c]?*anyopaque) callconv(.c) c_int;
pub const mutex_deinit_func = ?*const fn (mutex: [*c]?*anyopaque) callconv(.c) c_int;
pub extern fn gnutls_global_set_mutex(init: mutex_init_func, deinit: mutex_deinit_func, lock: mutex_lock_func, unlock: mutex_unlock_func) void;
pub const gnutls_alloc_function = ?*const fn (usize) callconv(.c) ?*anyopaque;
pub const gnutls_calloc_function = ?*const fn (usize, usize) callconv(.c) ?*anyopaque;
pub const gnutls_is_secure_function = ?*const fn (?*const anyopaque) callconv(.c) c_int;
pub const gnutls_free_function = ?*const fn (?*anyopaque) callconv(.c) void;
pub const gnutls_realloc_function = ?*const fn (?*anyopaque, usize) callconv(.c) ?*anyopaque;
pub extern fn gnutls_global_set_time_function(time_func: gnutls_time_func) void;
pub extern var gnutls_malloc: gnutls_alloc_function;
pub extern var gnutls_realloc: gnutls_realloc_function;
pub extern var gnutls_calloc: gnutls_calloc_function;
pub extern var gnutls_free: gnutls_free_function;
pub extern var gnutls_strdup: ?*const fn ([*c]const u8) callconv(.c) [*c]u8;
pub extern fn gnutls_memset(data: ?*anyopaque, c: c_int, size: usize) void;
pub extern fn gnutls_memcmp(s1: ?*const anyopaque, s2: ?*const anyopaque, n: usize) c_int;
pub const gnutls_log_func = ?*const fn (c_int, [*c]const u8) callconv(.c) void;
pub const gnutls_audit_log_func = ?*const fn (gnutls_session_t, [*c]const u8) callconv(.c) void;
pub extern fn gnutls_global_set_log_function(log_func: gnutls_log_func) void;
pub extern fn gnutls_global_set_audit_log_function(log_func: gnutls_audit_log_func) void;
pub extern fn gnutls_global_set_log_level(level: c_int) void;
pub const gnutls_keylog_func = ?*const fn (session: gnutls_session_t, label: [*c]const u8, secret: [*c]const gnutls_datum_t) callconv(.c) c_int;
pub extern fn gnutls_session_get_keylog_function(session: gnutls_session_t) gnutls_keylog_func;
pub extern fn gnutls_session_set_keylog_function(session: gnutls_session_t, func: gnutls_keylog_func) void;
pub extern fn gnutls_dh_params_init(dh_params: [*c]gnutls_dh_params_t) c_int;
pub extern fn gnutls_dh_params_deinit(dh_params: gnutls_dh_params_t) void;
pub extern fn gnutls_dh_params_import_raw(dh_params: gnutls_dh_params_t, prime: [*c]const gnutls_datum_t, generator: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_dh_params_import_dsa(dh_params: gnutls_dh_params_t, key: gnutls_x509_privkey_t) c_int;
pub extern fn gnutls_dh_params_import_raw2(dh_params: gnutls_dh_params_t, prime: [*c]const gnutls_datum_t, generator: [*c]const gnutls_datum_t, key_bits: c_uint) c_int;
pub extern fn gnutls_dh_params_import_raw3(dh_params: gnutls_dh_params_t, prime: [*c]const gnutls_datum_t, q: [*c]const gnutls_datum_t, generator: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_dh_params_import_pkcs3(params: gnutls_dh_params_t, pkcs3_params: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_dh_params_generate2(params: gnutls_dh_params_t, bits: c_uint) c_int;
pub extern fn gnutls_dh_params_export_pkcs3(params: gnutls_dh_params_t, format: gnutls_x509_crt_fmt_t, params_data: [*c]u8, params_data_size: [*c]usize) c_int;
pub extern fn gnutls_dh_params_export2_pkcs3(params: gnutls_dh_params_t, format: gnutls_x509_crt_fmt_t, out: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_dh_params_export_raw(params: gnutls_dh_params_t, prime: [*c]gnutls_datum_t, generator: [*c]gnutls_datum_t, bits: [*c]c_uint) c_int;
pub extern fn gnutls_dh_params_cpy(dst: gnutls_dh_params_t, src: gnutls_dh_params_t) c_int;
pub const struct_iovec = extern struct {
    iov_base: ?*anyopaque = null,
    iov_len: usize = 0,
};
pub extern fn readv(__fd: c_int, __iovec: [*c]const struct_iovec, __count: c_int) isize;
pub extern fn writev(__fd: c_int, __iovec: [*c]const struct_iovec, __count: c_int) isize;
pub extern fn preadv(__fd: c_int, __iovec: [*c]const struct_iovec, __count: c_int, __offset: __off_t) isize;
pub extern fn pwritev(__fd: c_int, __iovec: [*c]const struct_iovec, __count: c_int, __offset: __off_t) isize;
pub extern fn preadv64(__fd: c_int, __iovec: [*c]const struct_iovec, __count: c_int, __offset: __off64_t) isize;
pub extern fn pwritev64(__fd: c_int, __iovec: [*c]const struct_iovec, __count: c_int, __offset: __off64_t) isize;
pub extern fn preadv2(__fp: c_int, __iovec: [*c]const struct_iovec, __count: c_int, __offset: __off_t, ___flags: c_int) isize;
pub extern fn pwritev2(__fd: c_int, __iodev: [*c]const struct_iovec, __count: c_int, __offset: __off_t, __flags: c_int) isize;
pub extern fn preadv64v2(__fp: c_int, __iovec: [*c]const struct_iovec, __count: c_int, __offset: __off64_t, ___flags: c_int) isize;
pub extern fn pwritev64v2(__fd: c_int, __iodev: [*c]const struct_iovec, __count: c_int, __offset: __off64_t, __flags: c_int) isize;
pub extern fn process_vm_readv(__pid: pid_t, __lvec: [*c]const struct_iovec, __liovcnt: c_ulong, __rvec: [*c]const struct_iovec, __riovcnt: c_ulong, __flags: c_ulong) isize;
pub extern fn process_vm_writev(__pid: pid_t, __lvec: [*c]const struct_iovec, __liovcnt: c_ulong, __rvec: [*c]const struct_iovec, __riovcnt: c_ulong, __flags: c_ulong) isize;
pub const giovec_t = struct_iovec;
pub const gnutls_pull_func = ?*const fn (gnutls_transport_ptr_t, ?*anyopaque, usize) callconv(.c) isize;
pub const gnutls_push_func = ?*const fn (gnutls_transport_ptr_t, ?*const anyopaque, usize) callconv(.c) isize;
pub extern fn gnutls_system_recv_timeout(ptr: gnutls_transport_ptr_t, ms: c_uint) c_int;
pub const gnutls_pull_timeout_func = ?*const fn (gnutls_transport_ptr_t, ms: c_uint) callconv(.c) c_int;
pub const gnutls_vec_push_func = ?*const fn (gnutls_transport_ptr_t, iov: [*c]const giovec_t, iovcnt: c_int) callconv(.c) isize;
pub const gnutls_errno_func = ?*const fn (gnutls_transport_ptr_t) callconv(.c) c_int;
pub extern fn gnutls_transport_set_int2(session: gnutls_session_t, r: c_int, s: c_int) void;
pub extern fn gnutls_transport_get_int2(session: gnutls_session_t, r: [*c]c_int, s: [*c]c_int) void;
pub extern fn gnutls_transport_get_int(session: gnutls_session_t) c_int;
pub extern fn gnutls_transport_set_ptr(session: gnutls_session_t, ptr: gnutls_transport_ptr_t) void;
pub extern fn gnutls_transport_set_ptr2(session: gnutls_session_t, recv_ptr: gnutls_transport_ptr_t, send_ptr: gnutls_transport_ptr_t) void;
pub extern fn gnutls_transport_get_ptr(session: gnutls_session_t) gnutls_transport_ptr_t;
pub extern fn gnutls_transport_get_ptr2(session: gnutls_session_t, recv_ptr: [*c]gnutls_transport_ptr_t, send_ptr: [*c]gnutls_transport_ptr_t) void;
pub extern fn gnutls_transport_set_vec_push_function(session: gnutls_session_t, vec_func: gnutls_vec_push_func) void;
pub extern fn gnutls_transport_set_push_function(session: gnutls_session_t, push_func: gnutls_push_func) void;
pub extern fn gnutls_transport_set_pull_function(session: gnutls_session_t, pull_func: gnutls_pull_func) void;
pub extern fn gnutls_transport_set_pull_timeout_function(session: gnutls_session_t, func: gnutls_pull_timeout_func) void;
pub extern fn gnutls_transport_set_errno_function(session: gnutls_session_t, errno_func: gnutls_errno_func) void;
pub extern fn gnutls_transport_set_errno(session: gnutls_session_t, err: c_int) void;
pub extern fn gnutls_session_set_ptr(session: gnutls_session_t, ptr: ?*anyopaque) void;
pub extern fn gnutls_session_get_ptr(session: gnutls_session_t) ?*anyopaque;
pub extern fn gnutls_openpgp_send_cert(session: gnutls_session_t, status: gnutls_openpgp_crt_status_t) void;
pub extern fn gnutls_fingerprint(algo: gnutls_digest_algorithm_t, data: [*c]const gnutls_datum_t, result: ?*anyopaque, result_size: [*c]usize) c_int;
pub const GNUTLS_RANDOM_ART_OPENSSH: c_int = 1;
pub const enum_gnutls_random_art = c_uint;
pub const gnutls_random_art_t = enum_gnutls_random_art;
pub extern fn gnutls_random_art(@"type": gnutls_random_art_t, key_type: [*c]const u8, key_size: c_uint, fpr: ?*anyopaque, fpr_size: usize, art: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_idna_map(input: [*c]const u8, ilen: c_uint, out: [*c]gnutls_datum_t, flags: c_uint) c_int;
pub extern fn gnutls_idna_reverse_map(input: [*c]const u8, ilen: c_uint, out: [*c]gnutls_datum_t, flags: c_uint) c_int;
pub const struct_gnutls_srp_server_credentials_st = opaque {
    pub const gnutls_srp_free_server_credentials = __root.gnutls_srp_free_server_credentials;
    pub const gnutls_srp_set_server_credentials_file = __root.gnutls_srp_set_server_credentials_file;
    pub const gnutls_srp_set_server_credentials_function = __root.gnutls_srp_set_server_credentials_function;
    pub const gnutls_srp_set_server_fake_salt_seed = __root.gnutls_srp_set_server_fake_salt_seed;
    pub const credentials = __root.gnutls_srp_free_server_credentials;
    pub const file = __root.gnutls_srp_set_server_credentials_file;
    pub const function = __root.gnutls_srp_set_server_credentials_function;
    pub const seed = __root.gnutls_srp_set_server_fake_salt_seed;
};
pub const gnutls_srp_server_credentials_t = ?*struct_gnutls_srp_server_credentials_st;
pub const struct_gnutls_srp_client_credentials_st = opaque {
    pub const gnutls_srp_free_client_credentials = __root.gnutls_srp_free_client_credentials;
    pub const gnutls_srp_set_client_credentials = __root.gnutls_srp_set_client_credentials;
    pub const gnutls_srp_set_client_credentials_function = __root.gnutls_srp_set_client_credentials_function;
    pub const credentials = __root.gnutls_srp_free_client_credentials;
    pub const function = __root.gnutls_srp_set_client_credentials_function;
};
pub const gnutls_srp_client_credentials_t = ?*struct_gnutls_srp_client_credentials_st;
pub extern fn gnutls_srp_free_client_credentials(sc: gnutls_srp_client_credentials_t) void;
pub extern fn gnutls_srp_allocate_client_credentials(sc: [*c]gnutls_srp_client_credentials_t) c_int;
pub extern fn gnutls_srp_set_client_credentials(res: gnutls_srp_client_credentials_t, username: [*c]const u8, password: [*c]const u8) c_int;
pub extern fn gnutls_srp_free_server_credentials(sc: gnutls_srp_server_credentials_t) void;
pub extern fn gnutls_srp_allocate_server_credentials(sc: [*c]gnutls_srp_server_credentials_t) c_int;
pub extern fn gnutls_srp_set_server_credentials_file(res: gnutls_srp_server_credentials_t, password_file: [*c]const u8, password_conf_file: [*c]const u8) c_int;
pub extern fn gnutls_srp_server_get_username(session: gnutls_session_t) [*c]const u8;
pub extern fn gnutls_srp_set_prime_bits(session: gnutls_session_t, bits: c_uint) void;
pub extern fn gnutls_srp_verifier(username: [*c]const u8, password: [*c]const u8, salt: [*c]const gnutls_datum_t, generator: [*c]const gnutls_datum_t, prime: [*c]const gnutls_datum_t, res: [*c]gnutls_datum_t) c_int;
pub extern const gnutls_srp_8192_group_prime: gnutls_datum_t;
pub extern const gnutls_srp_8192_group_generator: gnutls_datum_t;
pub extern const gnutls_srp_4096_group_prime: gnutls_datum_t;
pub extern const gnutls_srp_4096_group_generator: gnutls_datum_t;
pub extern const gnutls_srp_3072_group_prime: gnutls_datum_t;
pub extern const gnutls_srp_3072_group_generator: gnutls_datum_t;
pub extern const gnutls_srp_2048_group_prime: gnutls_datum_t;
pub extern const gnutls_srp_2048_group_generator: gnutls_datum_t;
pub extern const gnutls_srp_1536_group_prime: gnutls_datum_t;
pub extern const gnutls_srp_1536_group_generator: gnutls_datum_t;
pub extern const gnutls_srp_1024_group_prime: gnutls_datum_t;
pub extern const gnutls_srp_1024_group_generator: gnutls_datum_t;
pub extern const gnutls_ffdhe_8192_group_prime: gnutls_datum_t;
pub extern const gnutls_ffdhe_8192_group_q: gnutls_datum_t;
pub extern const gnutls_ffdhe_8192_group_generator: gnutls_datum_t;
pub extern const gnutls_ffdhe_8192_key_bits: c_uint;
pub extern const gnutls_ffdhe_6144_group_prime: gnutls_datum_t;
pub extern const gnutls_ffdhe_6144_group_q: gnutls_datum_t;
pub extern const gnutls_ffdhe_6144_group_generator: gnutls_datum_t;
pub extern const gnutls_ffdhe_6144_key_bits: c_uint;
pub extern const gnutls_ffdhe_4096_group_prime: gnutls_datum_t;
pub extern const gnutls_ffdhe_4096_group_q: gnutls_datum_t;
pub extern const gnutls_ffdhe_4096_group_generator: gnutls_datum_t;
pub extern const gnutls_ffdhe_4096_key_bits: c_uint;
pub extern const gnutls_ffdhe_3072_group_prime: gnutls_datum_t;
pub extern const gnutls_ffdhe_3072_group_q: gnutls_datum_t;
pub extern const gnutls_ffdhe_3072_group_generator: gnutls_datum_t;
pub extern const gnutls_ffdhe_3072_key_bits: c_uint;
pub extern const gnutls_ffdhe_2048_group_prime: gnutls_datum_t;
pub extern const gnutls_ffdhe_2048_group_q: gnutls_datum_t;
pub extern const gnutls_ffdhe_2048_group_generator: gnutls_datum_t;
pub extern const gnutls_ffdhe_2048_key_bits: c_uint;
pub const gnutls_srp_server_credentials_function = fn (gnutls_session_t, username: [*c]const u8, salt: [*c]gnutls_datum_t, verifier: [*c]gnutls_datum_t, generator: [*c]gnutls_datum_t, prime: [*c]gnutls_datum_t) callconv(.c) c_int;
pub extern fn gnutls_srp_set_server_credentials_function(cred: gnutls_srp_server_credentials_t, func: ?*const gnutls_srp_server_credentials_function) void;
pub const gnutls_srp_client_credentials_function = fn (gnutls_session_t, [*c][*c]u8, [*c][*c]u8) callconv(.c) c_int;
pub extern fn gnutls_srp_set_client_credentials_function(cred: gnutls_srp_client_credentials_t, func: ?*const gnutls_srp_client_credentials_function) void;
pub extern fn gnutls_srp_base64_encode(data: [*c]const gnutls_datum_t, result: [*c]u8, result_size: [*c]usize) c_int;
pub extern fn gnutls_srp_base64_encode2(data: [*c]const gnutls_datum_t, result: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_srp_base64_decode(b64_data: [*c]const gnutls_datum_t, result: [*c]u8, result_size: [*c]usize) c_int;
pub extern fn gnutls_srp_base64_decode2(b64_data: [*c]const gnutls_datum_t, result: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_srp_set_server_fake_salt_seed(sc: gnutls_srp_server_credentials_t, seed: [*c]const gnutls_datum_t, salt_length: c_uint) void;
pub const struct_gnutls_psk_server_credentials_st = opaque {
    pub const gnutls_psk_free_server_credentials = __root.gnutls_psk_free_server_credentials;
    pub const gnutls_psk_set_server_credentials_file = __root.gnutls_psk_set_server_credentials_file;
    pub const gnutls_psk_set_server_credentials_hint = __root.gnutls_psk_set_server_credentials_hint;
    pub const gnutls_psk_set_server_credentials_function = __root.gnutls_psk_set_server_credentials_function;
    pub const gnutls_psk_set_server_credentials_function2 = __root.gnutls_psk_set_server_credentials_function2;
    pub const gnutls_psk_set_server_dh_params = __root.gnutls_psk_set_server_dh_params;
    pub const gnutls_psk_set_server_known_dh_params = __root.gnutls_psk_set_server_known_dh_params;
    pub const gnutls_psk_set_server_params_function = __root.gnutls_psk_set_server_params_function;
    pub const gnutls_psk_set_params_function = __root.gnutls_psk_set_params_function;
    pub const credentials = __root.gnutls_psk_free_server_credentials;
    pub const file = __root.gnutls_psk_set_server_credentials_file;
    pub const hint = __root.gnutls_psk_set_server_credentials_hint;
    pub const function = __root.gnutls_psk_set_server_credentials_function;
    pub const function2 = __root.gnutls_psk_set_server_credentials_function2;
    pub const params = __root.gnutls_psk_set_server_dh_params;
};
pub const gnutls_psk_server_credentials_t = ?*struct_gnutls_psk_server_credentials_st;
pub const struct_gnutls_psk_client_credentials_st = opaque {
    pub const gnutls_psk_free_client_credentials = __root.gnutls_psk_free_client_credentials;
    pub const gnutls_psk_set_client_credentials = __root.gnutls_psk_set_client_credentials;
    pub const gnutls_psk_set_client_credentials2 = __root.gnutls_psk_set_client_credentials2;
    pub const gnutls_psk_set_client_credentials_function = __root.gnutls_psk_set_client_credentials_function;
    pub const gnutls_psk_set_client_credentials_function2 = __root.gnutls_psk_set_client_credentials_function2;
    pub const credentials = __root.gnutls_psk_free_client_credentials;
    pub const credentials2 = __root.gnutls_psk_set_client_credentials2;
    pub const function = __root.gnutls_psk_set_client_credentials_function;
    pub const function2 = __root.gnutls_psk_set_client_credentials_function2;
};
pub const gnutls_psk_client_credentials_t = ?*struct_gnutls_psk_client_credentials_st;
pub const GNUTLS_PSK_KEY_RAW: c_int = 0;
pub const GNUTLS_PSK_KEY_HEX: c_int = 1;
pub const enum_gnutls_psk_key_flags = c_uint;
pub const gnutls_psk_key_flags = enum_gnutls_psk_key_flags;
pub extern fn gnutls_psk_free_client_credentials(sc: gnutls_psk_client_credentials_t) void;
pub extern fn gnutls_psk_allocate_client_credentials(sc: [*c]gnutls_psk_client_credentials_t) c_int;
pub extern fn gnutls_psk_set_client_credentials(res: gnutls_psk_client_credentials_t, username: [*c]const u8, key: [*c]const gnutls_datum_t, flags: gnutls_psk_key_flags) c_int;
pub extern fn gnutls_psk_set_client_credentials2(res: gnutls_psk_client_credentials_t, username: [*c]const gnutls_datum_t, key: [*c]const gnutls_datum_t, flags: gnutls_psk_key_flags) c_int;
pub extern fn gnutls_psk_free_server_credentials(sc: gnutls_psk_server_credentials_t) void;
pub extern fn gnutls_psk_allocate_server_credentials(sc: [*c]gnutls_psk_server_credentials_t) c_int;
pub extern fn gnutls_psk_set_server_credentials_file(res: gnutls_psk_server_credentials_t, password_file: [*c]const u8) c_int;
pub extern fn gnutls_psk_set_server_credentials_hint(res: gnutls_psk_server_credentials_t, hint: [*c]const u8) c_int;
pub extern fn gnutls_psk_server_get_username(session: gnutls_session_t) [*c]const u8;
pub extern fn gnutls_psk_server_get_username2(session: gnutls_session_t, out: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_psk_client_get_hint(session: gnutls_session_t) [*c]const u8;
pub const gnutls_psk_server_credentials_function = fn (gnutls_session_t, username: [*c]const u8, key: [*c]gnutls_datum_t) callconv(.c) c_int;
pub const gnutls_psk_server_credentials_function2 = fn (gnutls_session_t, username: [*c]const gnutls_datum_t, key: [*c]gnutls_datum_t) callconv(.c) c_int;
pub extern fn gnutls_psk_set_server_credentials_function(cred: gnutls_psk_server_credentials_t, func: ?*const gnutls_psk_server_credentials_function) void;
pub extern fn gnutls_psk_set_server_credentials_function2(cred: gnutls_psk_server_credentials_t, func: ?*const gnutls_psk_server_credentials_function2) void;
pub const gnutls_psk_client_credentials_function = fn (gnutls_session_t, username: [*c][*c]u8, key: [*c]gnutls_datum_t) callconv(.c) c_int;
pub const gnutls_psk_client_credentials_function2 = fn (gnutls_session_t, username: [*c]gnutls_datum_t, key: [*c]gnutls_datum_t) callconv(.c) c_int;
pub extern fn gnutls_psk_set_client_credentials_function(cred: gnutls_psk_client_credentials_t, func: ?*const gnutls_psk_client_credentials_function) void;
pub extern fn gnutls_psk_set_client_credentials_function2(cred: gnutls_psk_client_credentials_t, func: ?*const gnutls_psk_client_credentials_function2) void;
pub extern fn gnutls_hex_encode(data: [*c]const gnutls_datum_t, result: [*c]u8, result_size: [*c]usize) c_int;
pub extern fn gnutls_hex_decode(hex_data: [*c]const gnutls_datum_t, result: ?*anyopaque, result_size: [*c]usize) c_int;
pub extern fn gnutls_hex_encode2(data: [*c]const gnutls_datum_t, result: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_hex_decode2(data: [*c]const gnutls_datum_t, result: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_psk_set_server_dh_params(res: gnutls_psk_server_credentials_t, dh_params: gnutls_dh_params_t) void;
pub extern fn gnutls_psk_set_server_known_dh_params(res: gnutls_psk_server_credentials_t, sec_param: gnutls_sec_param_t) c_int;
pub extern fn gnutls_psk_set_server_params_function(res: gnutls_psk_server_credentials_t, func: ?*const gnutls_params_function) void;
pub const GNUTLS_SAN_DNSNAME: c_int = 1;
pub const GNUTLS_SAN_RFC822NAME: c_int = 2;
pub const GNUTLS_SAN_URI: c_int = 3;
pub const GNUTLS_SAN_IPADDRESS: c_int = 4;
pub const GNUTLS_SAN_OTHERNAME: c_int = 5;
pub const GNUTLS_SAN_DN: c_int = 6;
pub const GNUTLS_SAN_REGISTERED_ID: c_int = 7;
pub const GNUTLS_SAN_MAX: c_int = 7;
pub const GNUTLS_SAN_OTHERNAME_XMPP: c_int = 1000;
pub const GNUTLS_SAN_OTHERNAME_KRB5PRINCIPAL: c_int = 1001;
pub const enum_gnutls_x509_subject_alt_name_t = c_uint;
pub const gnutls_x509_subject_alt_name_t = enum_gnutls_x509_subject_alt_name_t;
pub const struct_gnutls_openpgp_crt_int = opaque {};
pub const gnutls_openpgp_crt_t = ?*struct_gnutls_openpgp_crt_int;
pub const struct_gnutls_openpgp_privkey_int = opaque {
    pub const gnutls_openpgp_privkey_sign_hash = __root.gnutls_openpgp_privkey_sign_hash;
    pub const hash = __root.gnutls_openpgp_privkey_sign_hash;
};
pub const gnutls_openpgp_privkey_t = ?*struct_gnutls_openpgp_privkey_int;
pub const struct_gnutls_pkcs11_privkey_st = opaque {};
pub const gnutls_pkcs11_privkey_t = ?*struct_gnutls_pkcs11_privkey_st;
pub const GNUTLS_PRIVKEY_X509: c_int = 0;
pub const GNUTLS_PRIVKEY_OPENPGP: c_int = 1;
pub const GNUTLS_PRIVKEY_PKCS11: c_int = 2;
pub const GNUTLS_PRIVKEY_EXT: c_int = 3;
pub const gnutls_privkey_type_t = c_uint;
const union_unnamed_12 = extern union {
    x509: [*c]gnutls_x509_crt_t,
    pgp: gnutls_openpgp_crt_t,
};
const union_unnamed_13 = extern union {
    x509: gnutls_x509_privkey_t,
    pgp: gnutls_openpgp_privkey_t,
    pkcs11: gnutls_pkcs11_privkey_t,
};
pub const struct_gnutls_retr2_st = extern struct {
    cert_type: gnutls_certificate_type_t = @import("std").mem.zeroes(gnutls_certificate_type_t),
    key_type: gnutls_privkey_type_t = @import("std").mem.zeroes(gnutls_privkey_type_t),
    cert: union_unnamed_12 = @import("std").mem.zeroes(union_unnamed_12),
    ncerts: c_uint = 0,
    key: union_unnamed_13 = @import("std").mem.zeroes(union_unnamed_13),
    deinit_all: c_uint = 0,
};
pub const gnutls_retr2_st = struct_gnutls_retr2_st;
pub extern fn gnutls_auth_get_type(session: gnutls_session_t) gnutls_credentials_type_t;
pub extern fn gnutls_auth_server_get_type(session: gnutls_session_t) gnutls_credentials_type_t;
pub extern fn gnutls_auth_client_get_type(session: gnutls_session_t) gnutls_credentials_type_t;
pub extern fn gnutls_dh_set_prime_bits(session: gnutls_session_t, bits: c_uint) void;
pub extern fn gnutls_dh_get_secret_bits(session: gnutls_session_t) c_int;
pub extern fn gnutls_dh_get_peers_public_bits(session: gnutls_session_t) c_int;
pub extern fn gnutls_dh_get_prime_bits(session: gnutls_session_t) c_int;
pub extern fn gnutls_dh_get_group(session: gnutls_session_t, raw_gen: [*c]gnutls_datum_t, raw_prime: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_dh_get_pubkey(session: gnutls_session_t, raw_key: [*c]gnutls_datum_t) c_int;
pub const gnutls_certificate_retrieve_function = fn (gnutls_session_t, req_ca_rdn: [*c]const gnutls_datum_t, nreqs: c_int, pk_algos: [*c]const gnutls_pk_algorithm_t, pk_algos_length: c_int, [*c]gnutls_retr2_st) callconv(.c) c_int;
pub extern fn gnutls_certificate_set_retrieve_function(cred: gnutls_certificate_credentials_t, func: ?*const gnutls_certificate_retrieve_function) void;
pub extern fn gnutls_certificate_set_verify_function(cred: gnutls_certificate_credentials_t, func: ?*const gnutls_certificate_verify_function) void;
pub extern fn gnutls_certificate_server_set_request(session: gnutls_session_t, req: gnutls_certificate_request_t) void;
pub extern fn gnutls_certificate_get_peers(session: gnutls_session_t, list_size: [*c]c_uint) [*c]const gnutls_datum_t;
pub extern fn gnutls_certificate_get_ours(session: gnutls_session_t) [*c]const gnutls_datum_t;
pub extern fn gnutls_certificate_get_peers_subkey_id(session: gnutls_session_t, id: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_certificate_activation_time_peers(session: gnutls_session_t) time_t;
pub extern fn gnutls_certificate_expiration_time_peers(session: gnutls_session_t) time_t;
pub extern fn gnutls_certificate_client_get_request_status(session: gnutls_session_t) c_uint;
pub extern fn gnutls_certificate_verify_peers2(session: gnutls_session_t, status: [*c]c_uint) c_int;
pub extern fn gnutls_certificate_verify_peers3(session: gnutls_session_t, hostname: [*c]const u8, status: [*c]c_uint) c_int;
pub extern fn gnutls_certificate_verify_peers(session: gnutls_session_t, data: [*c]gnutls_typed_vdata_st, elements: c_uint, status: [*c]c_uint) c_int;
pub extern fn gnutls_certificate_verification_status_print(status: c_uint, @"type": gnutls_certificate_type_t, out: [*c]gnutls_datum_t, flags: c_uint) c_int;
pub extern fn gnutls_pem_base64_encode(msg: [*c]const u8, data: [*c]const gnutls_datum_t, result: [*c]u8, result_size: [*c]usize) c_int;
pub extern fn gnutls_pem_base64_decode(header: [*c]const u8, b64_data: [*c]const gnutls_datum_t, result: [*c]u8, result_size: [*c]usize) c_int;
pub extern fn gnutls_pem_base64_encode2(msg: [*c]const u8, data: [*c]const gnutls_datum_t, result: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_pem_base64_decode2(header: [*c]const u8, b64_data: [*c]const gnutls_datum_t, result: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_base64_encode2(data: [*c]const gnutls_datum_t, result: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_base64_decode2(b64_data: [*c]const gnutls_datum_t, result: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_certificate_set_params_function(res: gnutls_certificate_credentials_t, func: ?*const gnutls_params_function) void;
pub extern fn gnutls_anon_set_params_function(res: gnutls_anon_server_credentials_t, func: ?*const gnutls_params_function) void;
pub extern fn gnutls_psk_set_params_function(res: gnutls_psk_server_credentials_t, func: ?*const gnutls_params_function) void;
pub extern fn gnutls_hex2bin(hex_data: [*c]const u8, hex_size: usize, bin_data: ?*anyopaque, bin_size: [*c]usize) c_int;
pub const gnutls_tdb_store_func = ?*const fn (db_name: [*c]const u8, host: [*c]const u8, service: [*c]const u8, expiration: time_t, pubkey: [*c]const gnutls_datum_t) callconv(.c) c_int;
pub const gnutls_tdb_store_commitment_func = ?*const fn (db_name: [*c]const u8, host: [*c]const u8, service: [*c]const u8, expiration: time_t, hash_algo: gnutls_digest_algorithm_t, hash: [*c]const gnutls_datum_t) callconv(.c) c_int;
pub const gnutls_tdb_verify_func = ?*const fn (db_name: [*c]const u8, host: [*c]const u8, service: [*c]const u8, pubkey: [*c]const gnutls_datum_t) callconv(.c) c_int;
pub const struct_gnutls_tdb_int = opaque {
    pub const gnutls_tdb_set_store_func = __root.gnutls_tdb_set_store_func;
    pub const gnutls_tdb_set_store_commitment_func = __root.gnutls_tdb_set_store_commitment_func;
    pub const gnutls_tdb_set_verify_func = __root.gnutls_tdb_set_verify_func;
    pub const gnutls_tdb_deinit = __root.gnutls_tdb_deinit;
    pub const func = __root.gnutls_tdb_set_store_func;
    pub const deinit = __root.gnutls_tdb_deinit;
};
pub const gnutls_tdb_t = ?*struct_gnutls_tdb_int;
pub extern fn gnutls_tdb_init(tdb: [*c]gnutls_tdb_t) c_int;
pub extern fn gnutls_tdb_set_store_func(tdb: gnutls_tdb_t, store: gnutls_tdb_store_func) void;
pub extern fn gnutls_tdb_set_store_commitment_func(tdb: gnutls_tdb_t, cstore: gnutls_tdb_store_commitment_func) void;
pub extern fn gnutls_tdb_set_verify_func(tdb: gnutls_tdb_t, verify: gnutls_tdb_verify_func) void;
pub extern fn gnutls_tdb_deinit(tdb: gnutls_tdb_t) void;
pub extern fn gnutls_verify_stored_pubkey(db_name: [*c]const u8, tdb: gnutls_tdb_t, host: [*c]const u8, service: [*c]const u8, cert_type: gnutls_certificate_type_t, cert: [*c]const gnutls_datum_t, flags: c_uint) c_int;
pub extern fn gnutls_store_commitment(db_name: [*c]const u8, tdb: gnutls_tdb_t, host: [*c]const u8, service: [*c]const u8, hash_algo: gnutls_digest_algorithm_t, hash: [*c]const gnutls_datum_t, expiration: time_t, flags: c_uint) c_int;
pub extern fn gnutls_store_pubkey(db_name: [*c]const u8, tdb: gnutls_tdb_t, host: [*c]const u8, service: [*c]const u8, cert_type: gnutls_certificate_type_t, cert: [*c]const gnutls_datum_t, expiration: time_t, flags: c_uint) c_int;
pub extern fn gnutls_load_file(filename: [*c]const u8, data: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_url_is_supported(url: [*c]const u8) c_uint;
pub const GNUTLS_PIN_USER: c_int = 1;
pub const GNUTLS_PIN_SO: c_int = 2;
pub const GNUTLS_PIN_FINAL_TRY: c_int = 4;
pub const GNUTLS_PIN_COUNT_LOW: c_int = 8;
pub const GNUTLS_PIN_CONTEXT_SPECIFIC: c_int = 16;
pub const GNUTLS_PIN_WRONG: c_int = 32;
pub const gnutls_pin_flag_t = c_uint;
pub const gnutls_pin_callback_t = ?*const fn (userdata: ?*anyopaque, attempt: c_int, token_url: [*c]const u8, token_label: [*c]const u8, flags: c_uint, pin: [*c]u8, pin_max: usize) callconv(.c) c_int;
pub extern fn gnutls_certificate_set_pin_function(gnutls_certificate_credentials_t, @"fn": gnutls_pin_callback_t, userdata: ?*anyopaque) void;
pub const struct_gnutls_buffer_st = opaque {
    pub const gnutls_buffer_append_data = __root.gnutls_buffer_append_data;
    pub const data = __root.gnutls_buffer_append_data;
};
pub const gnutls_buffer_t = ?*struct_gnutls_buffer_st;
pub extern fn gnutls_buffer_append_data(gnutls_buffer_t, data: ?*const anyopaque, data_size: usize) c_int;
pub extern fn gnutls_utf8_password_normalize(password: [*c]const u8, password_len: c_uint, out: [*c]gnutls_datum_t, flags: c_uint) c_int;
pub const gnutls_ext_priv_data_t = ?*anyopaque;
pub extern fn gnutls_ext_set_data(session: gnutls_session_t, @"type": c_uint, gnutls_ext_priv_data_t) void;
pub extern fn gnutls_ext_get_data(session: gnutls_session_t, @"type": c_uint, [*c]gnutls_ext_priv_data_t) c_int;
pub extern fn gnutls_ext_get_current_msg(session: gnutls_session_t) c_uint;
pub const gnutls_ext_recv_func = ?*const fn (session: gnutls_session_t, data: [*c]const u8, len: usize) callconv(.c) c_int;
pub const gnutls_ext_send_func = ?*const fn (session: gnutls_session_t, extdata: gnutls_buffer_t) callconv(.c) c_int;
pub const gnutls_ext_deinit_data_func = ?*const fn (data: gnutls_ext_priv_data_t) callconv(.c) void;
pub const gnutls_ext_pack_func = ?*const fn (data: gnutls_ext_priv_data_t, packed_data: gnutls_buffer_t) callconv(.c) c_int;
pub const gnutls_ext_unpack_func = ?*const fn (packed_data: gnutls_buffer_t, data: [*c]gnutls_ext_priv_data_t) callconv(.c) c_int;
pub const gnutls_ext_raw_process_func = ?*const fn (ctx: ?*anyopaque, tls_id: c_uint, data: [*c]const u8, data_size: c_uint) callconv(.c) c_int;
pub extern fn gnutls_ext_raw_parse(ctx: ?*anyopaque, cb: gnutls_ext_raw_process_func, data: [*c]const gnutls_datum_t, flags: c_uint) c_int;
pub const GNUTLS_EXT_ANY: c_int = 0;
pub const GNUTLS_EXT_APPLICATION: c_int = 1;
pub const GNUTLS_EXT_TLS: c_int = 2;
pub const GNUTLS_EXT_MANDATORY: c_int = 3;
pub const GNUTLS_EXT_NONE: c_int = 4;
pub const GNUTLS_EXT_VERSION_NEG: c_int = 5;
pub const gnutls_ext_parse_type_t = c_uint;
pub const GNUTLS_EXT_FLAG_OVERRIDE_INTERNAL: c_int = 1;
pub const GNUTLS_EXT_FLAG_CLIENT_HELLO: c_int = 2;
pub const GNUTLS_EXT_FLAG_TLS12_SERVER_HELLO: c_int = 4;
pub const GNUTLS_EXT_FLAG_TLS13_SERVER_HELLO: c_int = 8;
pub const GNUTLS_EXT_FLAG_EE: c_int = 16;
pub const GNUTLS_EXT_FLAG_HRR: c_int = 32;
pub const GNUTLS_EXT_FLAG_IGNORE_CLIENT_REQUEST: c_int = 64;
pub const GNUTLS_EXT_FLAG_TLS: c_int = 128;
pub const GNUTLS_EXT_FLAG_DTLS: c_int = 256;
pub const gnutls_ext_flags_t = c_uint;
pub extern fn gnutls_ext_register(name: [*c]const u8, @"type": c_int, parse_point: gnutls_ext_parse_type_t, recv_func: gnutls_ext_recv_func, send_func: gnutls_ext_send_func, deinit_func: gnutls_ext_deinit_data_func, pack_func: gnutls_ext_pack_func, unpack_func: gnutls_ext_unpack_func) c_int;
pub extern fn gnutls_session_ext_register(gnutls_session_t, name: [*c]const u8, @"type": c_int, parse_point: gnutls_ext_parse_type_t, recv_func: gnutls_ext_recv_func, send_func: gnutls_ext_send_func, deinit_func: gnutls_ext_deinit_data_func, pack_func: gnutls_ext_pack_func, unpack_func: gnutls_ext_unpack_func, flags: c_uint) c_int;
pub extern fn gnutls_ext_get_name(ext: c_uint) [*c]const u8;
pub extern fn gnutls_ext_get_name2(session: gnutls_session_t, tls_id: c_uint, parse_point: gnutls_ext_parse_type_t) [*c]const u8;
pub const gnutls_supp_recv_func = ?*const fn (session: gnutls_session_t, data: [*c]const u8, data_size: usize) callconv(.c) c_int;
pub const gnutls_supp_send_func = ?*const fn (session: gnutls_session_t, buf: gnutls_buffer_t) callconv(.c) c_int;
pub extern fn gnutls_supplemental_register(name: [*c]const u8, @"type": gnutls_supplemental_data_format_type_t, supp_recv_func: gnutls_supp_recv_func, supp_send_func: gnutls_supp_send_func) c_int;
pub extern fn gnutls_session_supplemental_register(session: gnutls_session_t, name: [*c]const u8, @"type": gnutls_supplemental_data_format_type_t, supp_recv_func: gnutls_supp_recv_func, supp_send_func: gnutls_supp_send_func, flags: c_uint) c_int;
pub extern fn gnutls_supplemental_recv(session: gnutls_session_t, do_recv_supplemental: c_uint) void;
pub extern fn gnutls_supplemental_send(session: gnutls_session_t, do_send_supplemental: c_uint) void;
pub const struct_gnutls_anti_replay_st = opaque {
    pub const gnutls_anti_replay_deinit = __root.gnutls_anti_replay_deinit;
    pub const gnutls_anti_replay_set_window = __root.gnutls_anti_replay_set_window;
    pub const gnutls_anti_replay_set_add_function = __root.gnutls_anti_replay_set_add_function;
    pub const gnutls_anti_replay_set_ptr = __root.gnutls_anti_replay_set_ptr;
    pub const deinit = __root.gnutls_anti_replay_deinit;
    pub const window = __root.gnutls_anti_replay_set_window;
    pub const function = __root.gnutls_anti_replay_set_add_function;
    pub const ptr = __root.gnutls_anti_replay_set_ptr;
};
pub const gnutls_anti_replay_t = ?*struct_gnutls_anti_replay_st;
pub extern fn gnutls_anti_replay_init(anti_replay: [*c]gnutls_anti_replay_t) c_int;
pub extern fn gnutls_anti_replay_deinit(anti_replay: gnutls_anti_replay_t) void;
pub extern fn gnutls_anti_replay_set_window(anti_replay: gnutls_anti_replay_t, window: c_uint) void;
pub extern fn gnutls_anti_replay_enable(session: gnutls_session_t, anti_replay: gnutls_anti_replay_t) void;
pub const gnutls_db_add_func = ?*const fn (?*anyopaque, exp_time: time_t, key: [*c]const gnutls_datum_t, data: [*c]const gnutls_datum_t) callconv(.c) c_int;
pub extern fn gnutls_anti_replay_set_add_function(gnutls_anti_replay_t, add_func: gnutls_db_add_func) void;
pub extern fn gnutls_anti_replay_set_ptr(gnutls_anti_replay_t, ptr: ?*anyopaque) void;
pub const GNUTLS_ENCRYPTION_LEVEL_INITIAL: c_int = 0;
pub const GNUTLS_ENCRYPTION_LEVEL_EARLY: c_int = 1;
pub const GNUTLS_ENCRYPTION_LEVEL_HANDSHAKE: c_int = 2;
pub const GNUTLS_ENCRYPTION_LEVEL_APPLICATION: c_int = 3;
pub const gnutls_record_encryption_level_t = c_uint;
pub const gnutls_handshake_read_func = ?*const fn (session: gnutls_session_t, level: gnutls_record_encryption_level_t, htype: gnutls_handshake_description_t, data: ?*const anyopaque, data_size: usize) callconv(.c) c_int;
pub extern fn gnutls_handshake_set_read_function(session: gnutls_session_t, func: gnutls_handshake_read_func) void;
pub extern fn gnutls_handshake_write(session: gnutls_session_t, level: gnutls_record_encryption_level_t, data: ?*const anyopaque, data_size: usize) c_int;
pub const gnutls_handshake_secret_func = ?*const fn (session: gnutls_session_t, level: gnutls_record_encryption_level_t, secret_read: ?*const anyopaque, secret_write: ?*const anyopaque, secret_size: usize) callconv(.c) c_int;
pub extern fn gnutls_handshake_set_secret_function(session: gnutls_session_t, func: gnutls_handshake_secret_func) void;
pub const gnutls_alert_read_func = ?*const fn (session: gnutls_session_t, level: gnutls_record_encryption_level_t, alert_level: gnutls_alert_level_t, alert_desc: gnutls_alert_description_t) callconv(.c) c_int;
pub extern fn gnutls_alert_set_read_function(session: gnutls_session_t, func: gnutls_alert_read_func) void;
pub extern fn gnutls_fips140_mode_enabled() c_uint;
pub const GNUTLS_FIPS140_DISABLED: c_int = 0;
pub const GNUTLS_FIPS140_STRICT: c_int = 1;
pub const GNUTLS_FIPS140_SELFTESTS: c_int = 2;
pub const GNUTLS_FIPS140_LAX: c_int = 3;
pub const GNUTLS_FIPS140_LOG: c_int = 4;
pub const enum_gnutls_fips_mode_t = c_uint;
pub const gnutls_fips_mode_t = enum_gnutls_fips_mode_t;
pub extern fn gnutls_fips140_set_mode(mode: gnutls_fips_mode_t, flags: c_uint) void;
pub const struct_gnutls_fips140_context_st = opaque {
    pub const gnutls_fips140_context_deinit = __root.gnutls_fips140_context_deinit;
    pub const gnutls_fips140_get_operation_state = __root.gnutls_fips140_get_operation_state;
    pub const gnutls_fips140_push_context = __root.gnutls_fips140_push_context;
    pub const deinit = __root.gnutls_fips140_context_deinit;
    pub const state = __root.gnutls_fips140_get_operation_state;
    pub const context = __root.gnutls_fips140_push_context;
};
pub const gnutls_fips140_context_t = ?*struct_gnutls_fips140_context_st;
pub extern fn gnutls_fips140_context_init(context: [*c]gnutls_fips140_context_t) c_int;
pub extern fn gnutls_fips140_context_deinit(context: gnutls_fips140_context_t) void;
pub const GNUTLS_FIPS140_OP_INITIAL: c_int = 0;
pub const GNUTLS_FIPS140_OP_APPROVED: c_int = 1;
pub const GNUTLS_FIPS140_OP_NOT_APPROVED: c_int = 2;
pub const GNUTLS_FIPS140_OP_ERROR: c_int = 3;
pub const gnutls_fips140_operation_state_t = c_uint;
pub extern fn gnutls_fips140_get_operation_state(context: gnutls_fips140_context_t) gnutls_fips140_operation_state_t;
pub extern fn gnutls_fips140_push_context(context: gnutls_fips140_context_t) c_int;
pub extern fn gnutls_fips140_pop_context() c_int;
pub const gnutls_connection_end_t = c_uint;
pub const gnutls_cipher_algorithm = gnutls_cipher_algorithm_t;
pub const gnutls_kx_algorithm = gnutls_kx_algorithm_t;
pub const gnutls_mac_algorithm = gnutls_mac_algorithm_t;
pub const gnutls_digest_algorithm = gnutls_digest_algorithm_t;
pub const gnutls_compression_method = gnutls_compression_method_t;
pub const gnutls_connection_end = gnutls_connection_end_t;
pub const gnutls_x509_crt_fmt = gnutls_x509_crt_fmt_t;
pub const gnutls_pk_algorithm = gnutls_pk_algorithm_t;
pub const gnutls_sign_algorithm = gnutls_sign_algorithm_t;
pub const gnutls_close_request = gnutls_close_request_t;
pub const gnutls_certificate_request = gnutls_certificate_request_t;
pub const gnutls_certificate_status = gnutls_certificate_status_t;
pub const gnutls_session = gnutls_session_t;
pub const gnutls_alert_level = gnutls_alert_level_t;
pub const gnutls_alert_description = gnutls_alert_description_t;
pub const gnutls_x509_subject_alt_name = gnutls_x509_subject_alt_name_t;
pub const gnutls_openpgp_privkey = gnutls_openpgp_privkey_t;
pub const gnutls_openpgp_keyring = gnutls_openpgp_keyring_t;
pub const gnutls_x509_crt = gnutls_x509_crt_t;
pub const gnutls_x509_privkey = gnutls_x509_privkey_t;
pub const gnutls_x509_crl = gnutls_x509_crl_t;
pub const gnutls_x509_crq = gnutls_x509_crq_t;
pub const gnutls_certificate_credentials = gnutls_certificate_credentials_t;
pub const gnutls_anon_server_credentials = gnutls_anon_server_credentials_t;
pub const gnutls_anon_client_credentials = gnutls_anon_client_credentials_t;
pub const gnutls_srp_client_credentials = gnutls_srp_client_credentials_t;
pub const gnutls_srp_server_credentials = gnutls_srp_server_credentials_t;
pub const gnutls_dh_params = gnutls_dh_params_t;
pub const gnutls_rsa_params = gnutls_rsa_params_t;
pub const gnutls_params_type = gnutls_params_type_t;
pub const gnutls_credentials_type = gnutls_credentials_type_t;
pub const gnutls_certificate_type = gnutls_certificate_type_t;
pub const gnutls_datum = gnutls_datum_t;
pub const gnutls_transport_ptr = gnutls_transport_ptr_t;
pub const gnutls_openpgp_key_status_t = gnutls_openpgp_crt_status_t;
pub const gnutls_openpgp_key_t = gnutls_openpgp_crt_t;
pub extern fn gnutls_x509_privkey_sign_hash(key: gnutls_x509_privkey_t, hash: [*c]const gnutls_datum_t, signature: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_openpgp_privkey_sign_hash(key: gnutls_openpgp_privkey_t, hash: [*c]const gnutls_datum_t, signature: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_get_preferred_hash_algorithm(crt: gnutls_x509_crt_t, hash: [*c]gnutls_digest_algorithm_t, mand: [*c]c_uint) c_int;
pub fn gnutls_session_get_server_random(arg_session_1: gnutls_session_t) callconv(.c) ?*const anyopaque {
    var session_1 = arg_session_1;
    _ = &session_1;
    var rnd: gnutls_datum_t = undefined;
    _ = &rnd;
    gnutls_session_get_random(session_1, null, &rnd);
    return @ptrCast(@alignCast(rnd.data));
}
pub fn gnutls_session_get_client_random(arg_session_1: gnutls_session_t) callconv(.c) ?*const anyopaque {
    var session_1 = arg_session_1;
    _ = &session_1;
    var rnd: gnutls_datum_t = undefined;
    _ = &rnd;
    gnutls_session_get_random(session_1, &rnd, null);
    return @ptrCast(@alignCast(rnd.data));
}
pub extern fn gnutls_global_set_mem_functions(alloc_func: gnutls_alloc_function, secure_alloc_func: gnutls_alloc_function, is_secure_func: gnutls_is_secure_function, realloc_func: gnutls_realloc_function, free_func: gnutls_free_function) void;
pub extern fn gnutls_compression_get(session: gnutls_session_t) gnutls_compression_method_t;
pub extern fn gnutls_compression_get_name(algorithm: gnutls_compression_method_t) [*c]const u8;
pub extern fn gnutls_compression_get_id(name: [*c]const u8) gnutls_compression_method_t;
pub extern fn gnutls_compression_list() [*c]const gnutls_compression_method_t;
pub extern fn gnutls_priority_compression_list(pcache: gnutls_priority_t, list: [*c][*c]const c_uint) c_int;
pub const GNUTLS_X509_CRT_LIST_IMPORT_FAIL_IF_EXCEED: c_int = 1;
pub const GNUTLS_X509_CRT_LIST_FAIL_IF_UNSORTED: c_int = 2;
pub const GNUTLS_X509_CRT_LIST_SORT: c_int = 4;
pub const enum_gnutls_certificate_import_flags = c_uint;
pub const gnutls_certificate_import_flags = enum_gnutls_certificate_import_flags;
pub extern fn gnutls_x509_crt_init(cert: [*c]gnutls_x509_crt_t) c_int;
pub extern fn gnutls_x509_crt_deinit(cert: gnutls_x509_crt_t) void;
pub const GNUTLS_X509_CRT_FLAG_IGNORE_SANITY: c_int = 1;
pub const enum_gnutls_x509_crt_flags = c_uint;
pub const gnutls_x509_crt_flags = enum_gnutls_x509_crt_flags;
pub extern fn gnutls_x509_crt_set_flags(cert: gnutls_x509_crt_t, flags: c_uint) void;
pub extern fn gnutls_x509_crt_equals(cert1: gnutls_x509_crt_t, cert2: gnutls_x509_crt_t) c_uint;
pub extern fn gnutls_x509_crt_equals2(cert1: gnutls_x509_crt_t, der: [*c]const gnutls_datum_t) c_uint;
pub extern fn gnutls_x509_crt_import(cert: gnutls_x509_crt_t, data: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_x509_crt_list_import2(certs: [*c][*c]gnutls_x509_crt_t, size: [*c]c_uint, data: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_list_import(certs: [*c]gnutls_x509_crt_t, cert_max: [*c]c_uint, data: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_import_url(crt: gnutls_x509_crt_t, url: [*c]const u8, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_list_import_url(certs: [*c][*c]gnutls_x509_crt_t, size: [*c]c_uint, url: [*c]const u8, pin_fn: gnutls_pin_callback_t, pin_fn_userdata: ?*anyopaque, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_export(cert: gnutls_x509_crt_t, format: gnutls_x509_crt_fmt_t, output_data: ?*anyopaque, output_data_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_export2(cert: gnutls_x509_crt_t, format: gnutls_x509_crt_fmt_t, out: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_get_private_key_usage_period(cert: gnutls_x509_crt_t, activation: [*c]time_t, expiration: [*c]time_t, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_get_issuer_dn(cert: gnutls_x509_crt_t, buf: [*c]u8, buf_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_get_issuer_dn2(cert: gnutls_x509_crt_t, dn: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_get_issuer_dn3(cert: gnutls_x509_crt_t, dn: [*c]gnutls_datum_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_get_issuer_dn_oid(cert: gnutls_x509_crt_t, indx: c_uint, oid: ?*anyopaque, oid_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_get_issuer_dn_by_oid(cert: gnutls_x509_crt_t, oid: [*c]const u8, indx: c_uint, raw_flag: c_uint, buf: ?*anyopaque, buf_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_get_dn(cert: gnutls_x509_crt_t, buf: [*c]u8, buf_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_get_dn2(cert: gnutls_x509_crt_t, dn: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_get_dn3(cert: gnutls_x509_crt_t, dn: [*c]gnutls_datum_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_get_dn_oid(cert: gnutls_x509_crt_t, indx: c_uint, oid: ?*anyopaque, oid_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_get_dn_by_oid(cert: gnutls_x509_crt_t, oid: [*c]const u8, indx: c_uint, raw_flag: c_uint, buf: ?*anyopaque, buf_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_check_hostname(cert: gnutls_x509_crt_t, hostname: [*c]const u8) c_uint;
pub extern fn gnutls_x509_crt_check_hostname2(cert: gnutls_x509_crt_t, hostname: [*c]const u8, flags: c_uint) c_uint;
pub extern fn gnutls_x509_crt_check_email(cert: gnutls_x509_crt_t, email: [*c]const u8, flags: c_uint) c_uint;
pub extern fn gnutls_x509_crt_check_ip(cert: gnutls_x509_crt_t, ip: [*c]const u8, ip_size: c_uint, flags: c_uint) c_uint;
pub extern fn gnutls_x509_crt_get_signature_algorithm(cert: gnutls_x509_crt_t) c_int;
pub extern fn gnutls_x509_crt_get_signature(cert: gnutls_x509_crt_t, sig: [*c]u8, sizeof_sig: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_get_version(cert: gnutls_x509_crt_t) c_int;
pub extern fn gnutls_x509_crt_get_pk_oid(cert: gnutls_x509_crt_t, oid: [*c]u8, oid_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_get_signature_oid(cert: gnutls_x509_crt_t, oid: [*c]u8, oid_size: [*c]usize) c_int;
pub const GNUTLS_KEYID_USE_SHA1: c_int = 0;
pub const GNUTLS_KEYID_USE_SHA256: c_int = 1;
pub const GNUTLS_KEYID_USE_SHA512: c_int = 2;
pub const GNUTLS_KEYID_USE_BEST_KNOWN: c_int = 1073741824;
pub const gnutls_keyid_flags_t = c_uint;
pub extern fn gnutls_x509_crt_get_key_id(crt: gnutls_x509_crt_t, flags: c_uint, output_data: [*c]u8, output_data_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_set_private_key_usage_period(crt: gnutls_x509_crt_t, activation: time_t, expiration: time_t) c_int;
pub extern fn gnutls_x509_crt_set_authority_key_id(cert: gnutls_x509_crt_t, id: ?*const anyopaque, id_size: usize) c_int;
pub extern fn gnutls_x509_crt_get_authority_key_id(cert: gnutls_x509_crt_t, id: ?*anyopaque, id_size: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_get_authority_key_gn_serial(cert: gnutls_x509_crt_t, seq: c_uint, alt: ?*anyopaque, alt_size: [*c]usize, alt_type: [*c]c_uint, serial: ?*anyopaque, serial_size: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_get_subject_key_id(cert: gnutls_x509_crt_t, ret: ?*anyopaque, ret_size: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_get_subject_unique_id(crt: gnutls_x509_crt_t, buf: [*c]u8, buf_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_get_issuer_unique_id(crt: gnutls_x509_crt_t, buf: [*c]u8, buf_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_set_pin_function(crt: gnutls_x509_crt_t, @"fn": gnutls_pin_callback_t, userdata: ?*anyopaque) void;
pub const GNUTLS_IA_ACCESSMETHOD_OID: c_int = 1;
pub const GNUTLS_IA_ACCESSLOCATION_GENERALNAME_TYPE: c_int = 2;
pub const GNUTLS_IA_URI: c_int = 106;
pub const GNUTLS_IA_UNKNOWN: c_int = 10000;
pub const GNUTLS_IA_OCSP_URI: c_int = 10006;
pub const GNUTLS_IA_CAISSUERS_URI: c_int = 10106;
pub const enum_gnutls_info_access_what_t = c_uint;
pub const gnutls_info_access_what_t = enum_gnutls_info_access_what_t;
pub extern fn gnutls_x509_crt_get_authority_info_access(crt: gnutls_x509_crt_t, seq: c_uint, what: c_int, data: [*c]gnutls_datum_t, critical: [*c]c_uint) c_int;
pub const struct_gnutls_name_constraints_st = opaque {
    pub const gnutls_x509_name_constraints_check = __root.gnutls_x509_name_constraints_check;
    pub const gnutls_x509_name_constraints_check_crt = __root.gnutls_x509_name_constraints_check_crt;
    pub const gnutls_x509_name_constraints_deinit = __root.gnutls_x509_name_constraints_deinit;
    pub const gnutls_x509_name_constraints_add_permitted = __root.gnutls_x509_name_constraints_add_permitted;
    pub const gnutls_x509_name_constraints_add_excluded = __root.gnutls_x509_name_constraints_add_excluded;
    pub const gnutls_x509_name_constraints_get_permitted = __root.gnutls_x509_name_constraints_get_permitted;
    pub const gnutls_x509_name_constraints_get_excluded = __root.gnutls_x509_name_constraints_get_excluded;
    pub const check = __root.gnutls_x509_name_constraints_check;
    pub const crt = __root.gnutls_x509_name_constraints_check_crt;
    pub const deinit = __root.gnutls_x509_name_constraints_deinit;
    pub const permitted = __root.gnutls_x509_name_constraints_add_permitted;
    pub const excluded = __root.gnutls_x509_name_constraints_add_excluded;
};
pub const gnutls_x509_name_constraints_t = ?*struct_gnutls_name_constraints_st;
pub extern fn gnutls_x509_name_constraints_check(nc: gnutls_x509_name_constraints_t, @"type": gnutls_x509_subject_alt_name_t, name: [*c]const gnutls_datum_t) c_uint;
pub extern fn gnutls_x509_name_constraints_check_crt(nc: gnutls_x509_name_constraints_t, @"type": gnutls_x509_subject_alt_name_t, crt: gnutls_x509_crt_t) c_uint;
pub extern fn gnutls_x509_name_constraints_init(nc: [*c]gnutls_x509_name_constraints_t) c_int;
pub extern fn gnutls_x509_name_constraints_deinit(nc: gnutls_x509_name_constraints_t) void;
pub extern fn gnutls_x509_crt_get_name_constraints(crt: gnutls_x509_crt_t, nc: gnutls_x509_name_constraints_t, flags: c_uint, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_name_constraints_add_permitted(nc: gnutls_x509_name_constraints_t, @"type": gnutls_x509_subject_alt_name_t, name: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_x509_name_constraints_add_excluded(nc: gnutls_x509_name_constraints_t, @"type": gnutls_x509_subject_alt_name_t, name: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_set_name_constraints(crt: gnutls_x509_crt_t, nc: gnutls_x509_name_constraints_t, critical: c_uint) c_int;
pub extern fn gnutls_x509_name_constraints_get_permitted(nc: gnutls_x509_name_constraints_t, idx: c_uint, @"type": [*c]c_uint, name: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_name_constraints_get_excluded(nc: gnutls_x509_name_constraints_t, idx: c_uint, @"type": [*c]c_uint, name: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_cidr_to_rfc5280(cidr: [*c]const u8, cidr_rfc5280: [*c]gnutls_datum_t) c_int;
pub const GNUTLS_CRL_REASON_UNSPECIFIED: c_int = 0;
pub const GNUTLS_CRL_REASON_PRIVILEGE_WITHDRAWN: c_int = 1;
pub const GNUTLS_CRL_REASON_CERTIFICATE_HOLD: c_int = 2;
pub const GNUTLS_CRL_REASON_CESSATION_OF_OPERATION: c_int = 4;
pub const GNUTLS_CRL_REASON_SUPERSEDED: c_int = 8;
pub const GNUTLS_CRL_REASON_AFFILIATION_CHANGED: c_int = 16;
pub const GNUTLS_CRL_REASON_CA_COMPROMISE: c_int = 32;
pub const GNUTLS_CRL_REASON_KEY_COMPROMISE: c_int = 64;
pub const GNUTLS_CRL_REASON_UNUSED: c_int = 128;
pub const GNUTLS_CRL_REASON_AA_COMPROMISE: c_int = 32768;
pub const enum_gnutls_x509_crl_reason_flags_t = c_uint;
pub const gnutls_x509_crl_reason_flags_t = enum_gnutls_x509_crl_reason_flags_t;
pub extern fn gnutls_x509_crt_get_crl_dist_points(cert: gnutls_x509_crt_t, seq: c_uint, ret: ?*anyopaque, ret_size: [*c]usize, reason_flags: [*c]c_uint, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_set_crl_dist_points2(crt: gnutls_x509_crt_t, @"type": gnutls_x509_subject_alt_name_t, data: ?*const anyopaque, data_size: c_uint, reason_flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_set_crl_dist_points(crt: gnutls_x509_crt_t, @"type": gnutls_x509_subject_alt_name_t, data_string: ?*const anyopaque, reason_flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_cpy_crl_dist_points(dst: gnutls_x509_crt_t, src: gnutls_x509_crt_t) c_int;
pub extern fn gnutls_x509_crl_sign(crl: gnutls_x509_crl_t, issuer: gnutls_x509_crt_t, issuer_key: gnutls_x509_privkey_t) c_int;
pub extern fn gnutls_x509_crl_sign2(crl: gnutls_x509_crl_t, issuer: gnutls_x509_crt_t, issuer_key: gnutls_x509_privkey_t, dig: gnutls_digest_algorithm_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_get_activation_time(cert: gnutls_x509_crt_t) time_t;
pub extern fn gnutls_x509_crt_get_expiration_time(cert: gnutls_x509_crt_t) time_t;
pub extern fn gnutls_x509_crt_get_serial(cert: gnutls_x509_crt_t, result: ?*anyopaque, result_size: [*c]usize) c_int;
pub const struct_gnutls_x509_spki_st = opaque {
    pub const gnutls_x509_spki_deinit = __root.gnutls_x509_spki_deinit;
    pub const gnutls_x509_spki_get_rsa_pss_params = __root.gnutls_x509_spki_get_rsa_pss_params;
    pub const gnutls_x509_spki_set_rsa_pss_params = __root.gnutls_x509_spki_set_rsa_pss_params;
    pub const deinit = __root.gnutls_x509_spki_deinit;
    pub const params = __root.gnutls_x509_spki_get_rsa_pss_params;
};
pub const gnutls_x509_spki_t = ?*struct_gnutls_x509_spki_st;
pub extern fn gnutls_x509_spki_init(spki: [*c]gnutls_x509_spki_t) c_int;
pub extern fn gnutls_x509_spki_deinit(spki: gnutls_x509_spki_t) void;
pub extern fn gnutls_x509_spki_get_rsa_pss_params(spki: gnutls_x509_spki_t, dig: [*c]gnutls_digest_algorithm_t, salt_size: [*c]c_uint) c_int;
pub extern fn gnutls_x509_spki_set_rsa_pss_params(spki: gnutls_x509_spki_t, dig: gnutls_digest_algorithm_t, salt_size: c_uint) void;
pub extern fn gnutls_x509_crt_get_pk_algorithm(cert: gnutls_x509_crt_t, bits: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_set_spki(crt: gnutls_x509_crt_t, spki: gnutls_x509_spki_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_get_spki(cert: gnutls_x509_crt_t, spki: gnutls_x509_spki_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_get_pk_rsa_raw(crt: gnutls_x509_crt_t, m: [*c]gnutls_datum_t, e: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_get_pk_dsa_raw(crt: gnutls_x509_crt_t, p: [*c]gnutls_datum_t, q: [*c]gnutls_datum_t, g: [*c]gnutls_datum_t, y: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_get_pk_ecc_raw(crt: gnutls_x509_crt_t, curve: [*c]gnutls_ecc_curve_t, x: [*c]gnutls_datum_t, y: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_get_pk_gost_raw(crt: gnutls_x509_crt_t, curve: [*c]gnutls_ecc_curve_t, digest: [*c]gnutls_digest_algorithm_t, paramset: [*c]gnutls_gost_paramset_t, x: [*c]gnutls_datum_t, y: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_get_subject_alt_name(cert: gnutls_x509_crt_t, seq: c_uint, san: ?*anyopaque, san_size: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_get_subject_alt_name2(cert: gnutls_x509_crt_t, seq: c_uint, san: ?*anyopaque, san_size: [*c]usize, san_type: [*c]c_uint, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_get_subject_alt_othername_oid(cert: gnutls_x509_crt_t, seq: c_uint, oid: ?*anyopaque, oid_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_get_issuer_alt_name(cert: gnutls_x509_crt_t, seq: c_uint, ian: ?*anyopaque, ian_size: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_get_issuer_alt_name2(cert: gnutls_x509_crt_t, seq: c_uint, ian: ?*anyopaque, ian_size: [*c]usize, ian_type: [*c]c_uint, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_get_issuer_alt_othername_oid(cert: gnutls_x509_crt_t, seq: c_uint, ret: ?*anyopaque, ret_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_get_ca_status(cert: gnutls_x509_crt_t, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_get_basic_constraints(cert: gnutls_x509_crt_t, critical: [*c]c_uint, ca: [*c]c_uint, pathlen: [*c]c_int) c_int;
pub extern fn gnutls_x509_crt_get_key_usage(cert: gnutls_x509_crt_t, key_usage: [*c]c_uint, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_set_key_usage(crt: gnutls_x509_crt_t, usage: c_uint) c_int;
pub extern fn gnutls_x509_crt_set_authority_info_access(crt: gnutls_x509_crt_t, what: c_int, data: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_get_inhibit_anypolicy(cert: gnutls_x509_crt_t, skipcerts: [*c]c_uint, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_set_inhibit_anypolicy(crt: gnutls_x509_crt_t, skipcerts: c_uint) c_int;
pub extern fn gnutls_x509_crt_get_proxy(cert: gnutls_x509_crt_t, critical: [*c]c_uint, pathlen: [*c]c_int, policyLanguage: [*c][*c]u8, policy: [*c][*c]u8, sizeof_policy: [*c]usize) c_int;
pub const struct_gnutls_x509_tlsfeatures_st = opaque {
    pub const gnutls_x509_tlsfeatures_deinit = __root.gnutls_x509_tlsfeatures_deinit;
    pub const gnutls_x509_tlsfeatures_get = __root.gnutls_x509_tlsfeatures_get;
    pub const gnutls_x509_tlsfeatures_check_crt = __root.gnutls_x509_tlsfeatures_check_crt;
    pub const deinit = __root.gnutls_x509_tlsfeatures_deinit;
    pub const get = __root.gnutls_x509_tlsfeatures_get;
    pub const crt = __root.gnutls_x509_tlsfeatures_check_crt;
};
pub const gnutls_x509_tlsfeatures_t = ?*struct_gnutls_x509_tlsfeatures_st;
pub extern fn gnutls_x509_tlsfeatures_init(features: [*c]gnutls_x509_tlsfeatures_t) c_int;
pub extern fn gnutls_x509_tlsfeatures_deinit(gnutls_x509_tlsfeatures_t) void;
pub extern fn gnutls_x509_tlsfeatures_get(f: gnutls_x509_tlsfeatures_t, idx: c_uint, feature: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_set_tlsfeatures(crt: gnutls_x509_crt_t, features: gnutls_x509_tlsfeatures_t) c_int;
pub extern fn gnutls_x509_crt_get_tlsfeatures(cert: gnutls_x509_crt_t, features: gnutls_x509_tlsfeatures_t, flags: c_uint, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_tlsfeatures_check_crt(feat: gnutls_x509_tlsfeatures_t, crt: gnutls_x509_crt_t) c_uint;
pub const GNUTLS_X509_QUALIFIER_UNKNOWN: c_int = 0;
pub const GNUTLS_X509_QUALIFIER_URI: c_int = 1;
pub const GNUTLS_X509_QUALIFIER_NOTICE: c_int = 2;
pub const enum_gnutls_x509_qualifier_t = c_uint;
pub const gnutls_x509_qualifier_t = enum_gnutls_x509_qualifier_t;
const struct_unnamed_14 = extern struct {
    type: gnutls_x509_qualifier_t = @import("std").mem.zeroes(gnutls_x509_qualifier_t),
    data: [*c]u8 = null,
    size: c_uint = 0,
};
pub const struct_gnutls_x509_policy_st = extern struct {
    oid: [*c]u8 = null,
    qualifiers: c_uint = 0,
    qualifier: [8]struct_unnamed_14 = @import("std").mem.zeroes([8]struct_unnamed_14),
    pub const gnutls_x509_policy_release = __root.gnutls_x509_policy_release;
    pub const release = __root.gnutls_x509_policy_release;
};
pub const gnutls_x509_policy_st = struct_gnutls_x509_policy_st;
pub extern fn gnutls_x509_policy_release(policy: [*c]struct_gnutls_x509_policy_st) void;
pub extern fn gnutls_x509_crt_get_policy(crt: gnutls_x509_crt_t, indx: c_uint, policy: [*c]struct_gnutls_x509_policy_st, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_set_policy(crt: gnutls_x509_crt_t, policy: [*c]const struct_gnutls_x509_policy_st, critical: c_uint) c_int;
pub extern fn gnutls_x509_dn_oid_known(oid: [*c]const u8) c_int;
pub extern fn gnutls_x509_dn_oid_name(oid: [*c]const u8, flags: c_uint) [*c]const u8;
pub extern fn gnutls_x509_crt_get_extension_oid(cert: gnutls_x509_crt_t, indx: c_uint, oid: ?*anyopaque, oid_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_get_extension_by_oid(cert: gnutls_x509_crt_t, oid: [*c]const u8, indx: c_uint, buf: ?*anyopaque, buf_size: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crq_get_signature_algorithm(crq: gnutls_x509_crq_t) c_int;
pub extern fn gnutls_x509_crq_get_extension_by_oid2(crq: gnutls_x509_crq_t, oid: [*c]const u8, indx: c_uint, output: [*c]gnutls_datum_t, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_get_extension_info(cert: gnutls_x509_crt_t, indx: c_uint, oid: ?*anyopaque, oid_size: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_get_extension_data(cert: gnutls_x509_crt_t, indx: c_uint, data: ?*anyopaque, sizeof_data: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_get_extension_data2(cert: gnutls_x509_crt_t, indx: c_uint, data: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_set_extension_by_oid(crt: gnutls_x509_crt_t, oid: [*c]const u8, buf: ?*const anyopaque, sizeof_buf: usize, critical: c_uint) c_int;
pub extern fn gnutls_x509_crt_set_dn(crt: gnutls_x509_crt_t, dn: [*c]const u8, err: [*c][*c]const u8) c_int;
pub extern fn gnutls_x509_crt_set_dn_by_oid(crt: gnutls_x509_crt_t, oid: [*c]const u8, raw_flag: c_uint, name: ?*const anyopaque, sizeof_name: c_uint) c_int;
pub extern fn gnutls_x509_crt_set_issuer_dn_by_oid(crt: gnutls_x509_crt_t, oid: [*c]const u8, raw_flag: c_uint, name: ?*const anyopaque, sizeof_name: c_uint) c_int;
pub extern fn gnutls_x509_crt_set_issuer_dn(crt: gnutls_x509_crt_t, dn: [*c]const u8, err: [*c][*c]const u8) c_int;
pub extern fn gnutls_x509_crt_set_version(crt: gnutls_x509_crt_t, version: c_uint) c_int;
pub extern fn gnutls_x509_crt_set_key(crt: gnutls_x509_crt_t, key: gnutls_x509_privkey_t) c_int;
pub extern fn gnutls_x509_crt_set_ca_status(crt: gnutls_x509_crt_t, ca: c_uint) c_int;
pub extern fn gnutls_x509_crt_set_basic_constraints(crt: gnutls_x509_crt_t, ca: c_uint, pathLenConstraint: c_int) c_int;
pub extern fn gnutls_x509_crt_set_subject_unique_id(cert: gnutls_x509_crt_t, id: ?*const anyopaque, id_size: usize) c_int;
pub extern fn gnutls_x509_crt_set_issuer_unique_id(cert: gnutls_x509_crt_t, id: ?*const anyopaque, id_size: usize) c_int;
pub extern fn gnutls_x509_crt_set_subject_alternative_name(crt: gnutls_x509_crt_t, @"type": gnutls_x509_subject_alt_name_t, data_string: [*c]const u8) c_int;
pub extern fn gnutls_x509_crt_set_subject_alt_name(crt: gnutls_x509_crt_t, @"type": gnutls_x509_subject_alt_name_t, data: ?*const anyopaque, data_size: c_uint, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_set_subject_alt_othername(crt: gnutls_x509_crt_t, oid: [*c]const u8, data: ?*const anyopaque, data_size: c_uint, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_set_issuer_alt_name(crt: gnutls_x509_crt_t, @"type": gnutls_x509_subject_alt_name_t, data: ?*const anyopaque, data_size: c_uint, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_set_issuer_alt_othername(crt: gnutls_x509_crt_t, oid: [*c]const u8, data: ?*const anyopaque, data_size: c_uint, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_sign(crt: gnutls_x509_crt_t, issuer: gnutls_x509_crt_t, issuer_key: gnutls_x509_privkey_t) c_int;
pub extern fn gnutls_x509_crt_sign2(crt: gnutls_x509_crt_t, issuer: gnutls_x509_crt_t, issuer_key: gnutls_x509_privkey_t, dig: gnutls_digest_algorithm_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crt_set_activation_time(cert: gnutls_x509_crt_t, act_time: time_t) c_int;
pub extern fn gnutls_x509_crt_set_expiration_time(cert: gnutls_x509_crt_t, exp_time: time_t) c_int;
pub extern fn gnutls_x509_crt_set_serial(cert: gnutls_x509_crt_t, serial: ?*const anyopaque, serial_size: usize) c_int;
pub extern fn gnutls_x509_crt_set_subject_key_id(cert: gnutls_x509_crt_t, id: ?*const anyopaque, id_size: usize) c_int;
pub extern fn gnutls_x509_crt_set_proxy_dn(crt: gnutls_x509_crt_t, eecrt: gnutls_x509_crt_t, raw_flag: c_uint, name: ?*const anyopaque, sizeof_name: c_uint) c_int;
pub extern fn gnutls_x509_crt_set_proxy(crt: gnutls_x509_crt_t, pathLenConstraint: c_int, policyLanguage: [*c]const u8, policy: [*c]const u8, sizeof_policy: usize) c_int;
pub extern fn gnutls_x509_crt_print(cert: gnutls_x509_crt_t, format: gnutls_certificate_print_formats_t, out: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crl_print(crl: gnutls_x509_crl_t, format: gnutls_certificate_print_formats_t, out: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_get_raw_issuer_dn(cert: gnutls_x509_crt_t, start: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_get_raw_dn(cert: gnutls_x509_crt_t, start: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_rdn_get(idn: [*c]const gnutls_datum_t, buf: [*c]u8, sizeof_buf: [*c]usize) c_int;
pub extern fn gnutls_x509_rdn_get2(idn: [*c]const gnutls_datum_t, str: [*c]gnutls_datum_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_rdn_get_oid(idn: [*c]const gnutls_datum_t, indx: c_uint, buf: ?*anyopaque, sizeof_buf: [*c]usize) c_int;
pub extern fn gnutls_x509_rdn_get_by_oid(idn: [*c]const gnutls_datum_t, oid: [*c]const u8, indx: c_uint, raw_flag: c_uint, buf: ?*anyopaque, sizeof_buf: [*c]usize) c_int;
pub const struct_gnutls_x509_dn_st = opaque {
    pub const gnutls_x509_dn_get_rdn_ava = __root.gnutls_x509_dn_get_rdn_ava;
    pub const gnutls_x509_dn_get_str = __root.gnutls_x509_dn_get_str;
    pub const gnutls_x509_dn_get_str2 = __root.gnutls_x509_dn_get_str2;
    pub const gnutls_x509_dn_set_str = __root.gnutls_x509_dn_set_str;
    pub const gnutls_x509_dn_import = __root.gnutls_x509_dn_import;
    pub const gnutls_x509_dn_export = __root.gnutls_x509_dn_export;
    pub const gnutls_x509_dn_export2 = __root.gnutls_x509_dn_export2;
    pub const gnutls_x509_dn_deinit = __root.gnutls_x509_dn_deinit;
    pub const ava = __root.gnutls_x509_dn_get_rdn_ava;
    pub const str = __root.gnutls_x509_dn_get_str;
    pub const str2 = __root.gnutls_x509_dn_get_str2;
    pub const import = __root.gnutls_x509_dn_import;
    pub const @"export" = __root.gnutls_x509_dn_export;
    pub const export2 = __root.gnutls_x509_dn_export2;
    pub const deinit = __root.gnutls_x509_dn_deinit;
};
pub const gnutls_x509_dn_t = ?*struct_gnutls_x509_dn_st;
pub const struct_gnutls_x509_ava_st = extern struct {
    oid: gnutls_datum_t = @import("std").mem.zeroes(gnutls_datum_t),
    value: gnutls_datum_t = @import("std").mem.zeroes(gnutls_datum_t),
    value_tag: c_ulong = 0,
};
pub const gnutls_x509_ava_st = struct_gnutls_x509_ava_st;
pub extern fn gnutls_x509_crt_get_subject(cert: gnutls_x509_crt_t, dn: [*c]gnutls_x509_dn_t) c_int;
pub extern fn gnutls_x509_crt_get_issuer(cert: gnutls_x509_crt_t, dn: [*c]gnutls_x509_dn_t) c_int;
pub extern fn gnutls_x509_dn_get_rdn_ava(dn: gnutls_x509_dn_t, irdn: c_int, iava: c_int, ava: [*c]gnutls_x509_ava_st) c_int;
pub extern fn gnutls_x509_dn_get_str(dn: gnutls_x509_dn_t, str: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_dn_get_str2(dn: gnutls_x509_dn_t, str: [*c]gnutls_datum_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_dn_set_str(dn: gnutls_x509_dn_t, str: [*c]const u8, err: [*c][*c]const u8) c_int;
pub extern fn gnutls_x509_dn_init(dn: [*c]gnutls_x509_dn_t) c_int;
pub extern fn gnutls_x509_dn_import(dn: gnutls_x509_dn_t, data: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_x509_dn_export(dn: gnutls_x509_dn_t, format: gnutls_x509_crt_fmt_t, output_data: ?*anyopaque, output_data_size: [*c]usize) c_int;
pub extern fn gnutls_x509_dn_export2(dn: gnutls_x509_dn_t, format: gnutls_x509_crt_fmt_t, out: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_dn_deinit(dn: gnutls_x509_dn_t) void;
pub extern fn gnutls_x509_crl_init(crl: [*c]gnutls_x509_crl_t) c_int;
pub extern fn gnutls_x509_crl_deinit(crl: gnutls_x509_crl_t) void;
pub extern fn gnutls_x509_crl_import(crl: gnutls_x509_crl_t, data: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_x509_crl_export(crl: gnutls_x509_crl_t, format: gnutls_x509_crt_fmt_t, output_data: ?*anyopaque, output_data_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crl_export2(crl: gnutls_x509_crl_t, format: gnutls_x509_crt_fmt_t, out: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crl_get_raw_issuer_dn(crl: gnutls_x509_crl_t, dn: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crl_get_issuer_dn(crl: gnutls_x509_crl_t, buf: [*c]u8, sizeof_buf: [*c]usize) c_int;
pub extern fn gnutls_x509_crl_get_issuer_dn2(crl: gnutls_x509_crl_t, dn: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crl_get_issuer_dn3(crl: gnutls_x509_crl_t, dn: [*c]gnutls_datum_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crl_get_issuer_dn_by_oid(crl: gnutls_x509_crl_t, oid: [*c]const u8, indx: c_uint, raw_flag: c_uint, buf: ?*anyopaque, sizeof_buf: [*c]usize) c_int;
pub extern fn gnutls_x509_crl_get_dn_oid(crl: gnutls_x509_crl_t, indx: c_uint, oid: ?*anyopaque, sizeof_oid: [*c]usize) c_int;
pub extern fn gnutls_x509_crl_get_signature_algorithm(crl: gnutls_x509_crl_t) c_int;
pub extern fn gnutls_x509_crl_get_signature(crl: gnutls_x509_crl_t, sig: [*c]u8, sizeof_sig: [*c]usize) c_int;
pub extern fn gnutls_x509_crl_get_version(crl: gnutls_x509_crl_t) c_int;
pub extern fn gnutls_x509_crl_get_signature_oid(crl: gnutls_x509_crl_t, oid: [*c]u8, oid_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crl_get_this_update(crl: gnutls_x509_crl_t) time_t;
pub extern fn gnutls_x509_crl_get_next_update(crl: gnutls_x509_crl_t) time_t;
pub extern fn gnutls_x509_crl_get_crt_count(crl: gnutls_x509_crl_t) c_int;
pub extern fn gnutls_x509_crl_get_crt_serial(crl: gnutls_x509_crl_t, indx: c_uint, serial: [*c]u8, serial_size: [*c]usize, t: [*c]time_t) c_int;
pub const struct_gnutls_x509_crl_iter = opaque {
    pub const gnutls_x509_crl_iter_deinit = __root.gnutls_x509_crl_iter_deinit;
    pub const deinit = __root.gnutls_x509_crl_iter_deinit;
};
pub const gnutls_x509_crl_iter_t = ?*struct_gnutls_x509_crl_iter;
pub extern fn gnutls_x509_crl_iter_crt_serial(crl: gnutls_x509_crl_t, [*c]gnutls_x509_crl_iter_t, serial: [*c]u8, serial_size: [*c]usize, t: [*c]time_t) c_int;
pub extern fn gnutls_x509_crl_iter_deinit(gnutls_x509_crl_iter_t) void;
pub extern fn gnutls_x509_crl_check_issuer(crl: gnutls_x509_crl_t, issuer: gnutls_x509_crt_t) c_uint;
pub extern fn gnutls_x509_crl_list_import2(crls: [*c][*c]gnutls_x509_crl_t, size: [*c]c_uint, data: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crl_list_import(crls: [*c]gnutls_x509_crl_t, crl_max: [*c]c_uint, data: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crl_set_version(crl: gnutls_x509_crl_t, version: c_uint) c_int;
pub extern fn gnutls_x509_crl_set_this_update(crl: gnutls_x509_crl_t, act_time: time_t) c_int;
pub extern fn gnutls_x509_crl_set_next_update(crl: gnutls_x509_crl_t, exp_time: time_t) c_int;
pub extern fn gnutls_x509_crl_set_crt_serial(crl: gnutls_x509_crl_t, serial: ?*const anyopaque, serial_size: usize, revocation_time: time_t) c_int;
pub extern fn gnutls_x509_crl_set_crt(crl: gnutls_x509_crl_t, crt: gnutls_x509_crt_t, revocation_time: time_t) c_int;
pub extern fn gnutls_x509_crl_get_authority_key_id(crl: gnutls_x509_crl_t, id: ?*anyopaque, id_size: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crl_get_authority_key_gn_serial(crl: gnutls_x509_crl_t, seq: c_uint, alt: ?*anyopaque, alt_size: [*c]usize, alt_type: [*c]c_uint, serial: ?*anyopaque, serial_size: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crl_get_number(crl: gnutls_x509_crl_t, ret: ?*anyopaque, ret_size: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crl_get_extension_oid(crl: gnutls_x509_crl_t, indx: c_uint, oid: ?*anyopaque, sizeof_oid: [*c]usize) c_int;
pub extern fn gnutls_x509_crl_get_extension_info(crl: gnutls_x509_crl_t, indx: c_uint, oid: ?*anyopaque, sizeof_oid: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crl_get_extension_data(crl: gnutls_x509_crl_t, indx: c_uint, data: ?*anyopaque, sizeof_data: [*c]usize) c_int;
pub extern fn gnutls_x509_crl_get_extension_data2(crl: gnutls_x509_crl_t, indx: c_uint, data: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crl_set_authority_key_id(crl: gnutls_x509_crl_t, id: ?*const anyopaque, id_size: usize) c_int;
pub extern fn gnutls_x509_crl_set_number(crl: gnutls_x509_crl_t, nr: ?*const anyopaque, nr_size: usize) c_int;
pub const GNUTLS_VERIFY_DISABLE_CA_SIGN: c_int = 1;
pub const GNUTLS_VERIFY_DO_NOT_ALLOW_IP_MATCHES: c_int = 2;
pub const GNUTLS_VERIFY_DO_NOT_ALLOW_SAME: c_int = 4;
pub const GNUTLS_VERIFY_ALLOW_ANY_X509_V1_CA_CRT: c_int = 8;
pub const GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD2: c_int = 16;
pub const GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD5: c_int = 32;
pub const GNUTLS_VERIFY_DISABLE_TIME_CHECKS: c_int = 64;
pub const GNUTLS_VERIFY_DISABLE_TRUSTED_TIME_CHECKS: c_int = 128;
pub const GNUTLS_VERIFY_DO_NOT_ALLOW_X509_V1_CA_CRT: c_int = 256;
pub const GNUTLS_VERIFY_DISABLE_CRL_CHECKS: c_int = 512;
pub const GNUTLS_VERIFY_ALLOW_UNSORTED_CHAIN: c_int = 1024;
pub const GNUTLS_VERIFY_DO_NOT_ALLOW_UNSORTED_CHAIN: c_int = 2048;
pub const GNUTLS_VERIFY_DO_NOT_ALLOW_WILDCARDS: c_int = 4096;
pub const GNUTLS_VERIFY_USE_TLS1_RSA: c_int = 8192;
pub const GNUTLS_VERIFY_IGNORE_UNKNOWN_CRIT_EXTENSIONS: c_int = 16384;
pub const GNUTLS_VERIFY_ALLOW_SIGN_WITH_SHA1: c_int = 32768;
pub const GNUTLS_VERIFY_RSA_PSS_FIXED_SALT_LENGTH: c_int = 65536;
pub const enum_gnutls_certificate_verify_flags = c_uint;
pub const gnutls_certificate_verify_flags = enum_gnutls_certificate_verify_flags;
pub const GNUTLS_PROFILE_UNKNOWN: c_int = 0;
pub const GNUTLS_PROFILE_VERY_WEAK: c_int = 1;
pub const GNUTLS_PROFILE_LOW: c_int = 2;
pub const GNUTLS_PROFILE_LEGACY: c_int = 4;
pub const GNUTLS_PROFILE_MEDIUM: c_int = 5;
pub const GNUTLS_PROFILE_HIGH: c_int = 6;
pub const GNUTLS_PROFILE_ULTRA: c_int = 7;
pub const GNUTLS_PROFILE_FUTURE: c_int = 8;
pub const GNUTLS_PROFILE_SUITEB128: c_int = 32;
pub const GNUTLS_PROFILE_SUITEB192: c_int = 33;
pub const enum_gnutls_certificate_verification_profiles_t = c_uint;
pub const gnutls_certificate_verification_profiles_t = enum_gnutls_certificate_verification_profiles_t;
pub extern fn gnutls_certificate_verification_profile_get_name(id: gnutls_certificate_verification_profiles_t) [*c]const u8;
pub extern fn gnutls_certificate_verification_profile_get_id(name: [*c]const u8) gnutls_certificate_verification_profiles_t;
pub extern fn gnutls_x509_crt_check_issuer(cert: gnutls_x509_crt_t, issuer: gnutls_x509_crt_t) c_uint;
pub extern fn gnutls_x509_crt_list_verify(cert_list: [*c]const gnutls_x509_crt_t, cert_list_length: c_uint, CA_list: [*c]const gnutls_x509_crt_t, CA_list_length: c_uint, CRL_list: [*c]const gnutls_x509_crl_t, CRL_list_length: c_uint, flags: c_uint, verify: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_verify(cert: gnutls_x509_crt_t, CA_list: [*c]const gnutls_x509_crt_t, CA_list_length: c_uint, flags: c_uint, verify: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crl_verify(crl: gnutls_x509_crl_t, CA_list: [*c]const gnutls_x509_crt_t, CA_list_length: c_uint, flags: c_uint, verify: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_verify_data2(crt: gnutls_x509_crt_t, algo: gnutls_sign_algorithm_t, flags: c_uint, data: [*c]const gnutls_datum_t, signature: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_check_revocation(cert: gnutls_x509_crt_t, crl_list: [*c]const gnutls_x509_crl_t, crl_list_length: c_uint) c_int;
pub extern fn gnutls_x509_crt_get_fingerprint(cert: gnutls_x509_crt_t, algo: gnutls_digest_algorithm_t, buf: ?*anyopaque, buf_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crt_get_key_purpose_oid(cert: gnutls_x509_crt_t, indx: c_uint, oid: ?*anyopaque, oid_size: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crt_set_key_purpose_oid(cert: gnutls_x509_crt_t, oid: ?*const anyopaque, critical: c_uint) c_int;
pub extern fn gnutls_x509_crt_check_key_purpose(cert: gnutls_x509_crt_t, purpose: [*c]const u8, flags: c_uint) c_uint;
pub const GNUTLS_PKCS_PLAIN: c_int = 1;
pub const GNUTLS_PKCS_PKCS12_3DES: c_int = 2;
pub const GNUTLS_PKCS_PKCS12_ARCFOUR: c_int = 4;
pub const GNUTLS_PKCS_PKCS12_RC2_40: c_int = 8;
pub const GNUTLS_PKCS_PBES2_3DES: c_int = 16;
pub const GNUTLS_PKCS_PBES2_AES_128: c_int = 32;
pub const GNUTLS_PKCS_PBES2_AES_192: c_int = 64;
pub const GNUTLS_PKCS_PBES2_AES_256: c_int = 128;
pub const GNUTLS_PKCS_NULL_PASSWORD: c_int = 256;
pub const GNUTLS_PKCS_PBES2_DES: c_int = 512;
pub const GNUTLS_PKCS_PBES1_DES_MD5: c_int = 1024;
pub const GNUTLS_PKCS_PBES2_GOST_TC26Z: c_int = 2048;
pub const GNUTLS_PKCS_PBES2_GOST_CPA: c_int = 4096;
pub const GNUTLS_PKCS_PBES2_GOST_CPB: c_int = 8192;
pub const GNUTLS_PKCS_PBES2_GOST_CPC: c_int = 16384;
pub const GNUTLS_PKCS_PBES2_GOST_CPD: c_int = 32768;
pub const enum_gnutls_pkcs_encrypt_flags_t = c_uint;
pub const gnutls_pkcs_encrypt_flags_t = enum_gnutls_pkcs_encrypt_flags_t;
pub extern fn gnutls_pkcs_schema_get_name(schema: c_uint) [*c]const u8;
pub extern fn gnutls_pkcs_schema_get_oid(schema: c_uint) [*c]const u8;
pub extern fn gnutls_x509_privkey_init(key: [*c]gnutls_x509_privkey_t) c_int;
pub extern fn gnutls_x509_privkey_deinit(key: gnutls_x509_privkey_t) void;
pub extern fn gnutls_x509_privkey_sec_param(key: gnutls_x509_privkey_t) gnutls_sec_param_t;
pub extern fn gnutls_x509_privkey_set_pin_function(key: gnutls_x509_privkey_t, @"fn": gnutls_pin_callback_t, userdata: ?*anyopaque) void;
pub extern fn gnutls_x509_privkey_cpy(dst: gnutls_x509_privkey_t, src: gnutls_x509_privkey_t) c_int;
pub extern fn gnutls_x509_privkey_import(key: gnutls_x509_privkey_t, data: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_x509_privkey_import_pkcs8(key: gnutls_x509_privkey_t, data: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t, password: [*c]const u8, flags: c_uint) c_int;
pub extern fn gnutls_x509_privkey_import_openssl(key: gnutls_x509_privkey_t, data: [*c]const gnutls_datum_t, password: [*c]const u8) c_int;
pub extern fn gnutls_pkcs8_info(data: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t, schema: [*c]c_uint, cipher: [*c]c_uint, salt: ?*anyopaque, salt_size: [*c]c_uint, iter_count: [*c]c_uint, oid: [*c][*c]u8) c_int;
pub extern fn gnutls_x509_privkey_import2(key: gnutls_x509_privkey_t, data: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t, password: [*c]const u8, flags: c_uint) c_int;
pub extern fn gnutls_x509_privkey_import_rsa_raw(key: gnutls_x509_privkey_t, m: [*c]const gnutls_datum_t, e: [*c]const gnutls_datum_t, d: [*c]const gnutls_datum_t, p: [*c]const gnutls_datum_t, q: [*c]const gnutls_datum_t, u: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_x509_privkey_import_rsa_raw2(key: gnutls_x509_privkey_t, m: [*c]const gnutls_datum_t, e: [*c]const gnutls_datum_t, d: [*c]const gnutls_datum_t, p: [*c]const gnutls_datum_t, q: [*c]const gnutls_datum_t, u: [*c]const gnutls_datum_t, e1: [*c]const gnutls_datum_t, e2: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_x509_privkey_import_ecc_raw(key: gnutls_x509_privkey_t, curve: gnutls_ecc_curve_t, x: [*c]const gnutls_datum_t, y: [*c]const gnutls_datum_t, k: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_x509_privkey_import_gost_raw(key: gnutls_x509_privkey_t, curve: gnutls_ecc_curve_t, digest: gnutls_digest_algorithm_t, paramset: gnutls_gost_paramset_t, x: [*c]const gnutls_datum_t, y: [*c]const gnutls_datum_t, k: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_x509_privkey_fix(key: gnutls_x509_privkey_t) c_int;
pub extern fn gnutls_x509_privkey_export_dsa_raw(key: gnutls_x509_privkey_t, p: [*c]gnutls_datum_t, q: [*c]gnutls_datum_t, g: [*c]gnutls_datum_t, y: [*c]gnutls_datum_t, x: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_privkey_import_dsa_raw(key: gnutls_x509_privkey_t, p: [*c]const gnutls_datum_t, q: [*c]const gnutls_datum_t, g: [*c]const gnutls_datum_t, y: [*c]const gnutls_datum_t, x: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_x509_privkey_get_pk_algorithm(key: gnutls_x509_privkey_t) c_int;
pub extern fn gnutls_x509_privkey_get_pk_algorithm2(key: gnutls_x509_privkey_t, bits: [*c]c_uint) c_int;
pub extern fn gnutls_x509_privkey_get_spki(key: gnutls_x509_privkey_t, spki: gnutls_x509_spki_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_privkey_set_spki(key: gnutls_x509_privkey_t, spki: gnutls_x509_spki_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_privkey_get_key_id(key: gnutls_x509_privkey_t, flags: c_uint, output_data: [*c]u8, output_data_size: [*c]usize) c_int;
pub extern fn gnutls_x509_privkey_generate(key: gnutls_x509_privkey_t, algo: gnutls_pk_algorithm_t, bits: c_uint, flags: c_uint) c_int;
pub extern fn gnutls_x509_privkey_set_flags(key: gnutls_x509_privkey_t, flags: c_uint) void;
pub const GNUTLS_KEYGEN_SEED: c_int = 1;
pub const GNUTLS_KEYGEN_DIGEST: c_int = 2;
pub const GNUTLS_KEYGEN_SPKI: c_int = 3;
pub const gnutls_keygen_types_t = c_uint;
pub const gnutls_keygen_data_st = extern struct {
    type: gnutls_keygen_types_t = @import("std").mem.zeroes(gnutls_keygen_types_t),
    data: [*c]u8 = null,
    size: c_uint = 0,
};
pub extern fn gnutls_x509_privkey_generate2(key: gnutls_x509_privkey_t, algo: gnutls_pk_algorithm_t, bits: c_uint, flags: c_uint, data: [*c]const gnutls_keygen_data_st, data_size: c_uint) c_int;
pub extern fn gnutls_x509_privkey_verify_seed(key: gnutls_x509_privkey_t, gnutls_digest_algorithm_t, seed: ?*const anyopaque, seed_size: usize) c_int;
pub extern fn gnutls_x509_privkey_get_seed(key: gnutls_x509_privkey_t, [*c]gnutls_digest_algorithm_t, seed: ?*anyopaque, seed_size: [*c]usize) c_int;
pub extern fn gnutls_x509_privkey_verify_params(key: gnutls_x509_privkey_t) c_int;
pub extern fn gnutls_x509_privkey_export(key: gnutls_x509_privkey_t, format: gnutls_x509_crt_fmt_t, output_data: ?*anyopaque, output_data_size: [*c]usize) c_int;
pub extern fn gnutls_x509_privkey_export2(key: gnutls_x509_privkey_t, format: gnutls_x509_crt_fmt_t, out: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_privkey_export_pkcs8(key: gnutls_x509_privkey_t, format: gnutls_x509_crt_fmt_t, password: [*c]const u8, flags: c_uint, output_data: ?*anyopaque, output_data_size: [*c]usize) c_int;
pub extern fn gnutls_x509_privkey_export2_pkcs8(key: gnutls_x509_privkey_t, format: gnutls_x509_crt_fmt_t, password: [*c]const u8, flags: c_uint, out: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_privkey_export_rsa_raw2(key: gnutls_x509_privkey_t, m: [*c]gnutls_datum_t, e: [*c]gnutls_datum_t, d: [*c]gnutls_datum_t, p: [*c]gnutls_datum_t, q: [*c]gnutls_datum_t, u: [*c]gnutls_datum_t, e1: [*c]gnutls_datum_t, e2: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_privkey_export_rsa_raw(key: gnutls_x509_privkey_t, m: [*c]gnutls_datum_t, e: [*c]gnutls_datum_t, d: [*c]gnutls_datum_t, p: [*c]gnutls_datum_t, q: [*c]gnutls_datum_t, u: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_privkey_export_ecc_raw(key: gnutls_x509_privkey_t, curve: [*c]gnutls_ecc_curve_t, x: [*c]gnutls_datum_t, y: [*c]gnutls_datum_t, k: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_privkey_export_gost_raw(key: gnutls_x509_privkey_t, curve: [*c]gnutls_ecc_curve_t, digest: [*c]gnutls_digest_algorithm_t, paramset: [*c]gnutls_gost_paramset_t, x: [*c]gnutls_datum_t, y: [*c]gnutls_datum_t, k: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_privkey_sign_data(key: gnutls_x509_privkey_t, digest: gnutls_digest_algorithm_t, flags: c_uint, data: [*c]const gnutls_datum_t, signature: ?*anyopaque, signature_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_sign(crq: gnutls_x509_crq_t, key: gnutls_x509_privkey_t) c_int;
pub extern fn gnutls_x509_crq_sign2(crq: gnutls_x509_crq_t, key: gnutls_x509_privkey_t, dig: gnutls_digest_algorithm_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crq_print(crq: gnutls_x509_crq_t, format: gnutls_certificate_print_formats_t, out: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crq_verify(crq: gnutls_x509_crq_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crq_init(crq: [*c]gnutls_x509_crq_t) c_int;
pub extern fn gnutls_x509_crq_deinit(crq: gnutls_x509_crq_t) void;
pub extern fn gnutls_x509_crq_import(crq: gnutls_x509_crq_t, data: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_x509_crq_get_private_key_usage_period(cert: gnutls_x509_crq_t, activation: [*c]time_t, expiration: [*c]time_t, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crq_get_dn(crq: gnutls_x509_crq_t, buf: [*c]u8, sizeof_buf: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_get_dn2(crq: gnutls_x509_crq_t, dn: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crq_get_dn3(crq: gnutls_x509_crq_t, dn: [*c]gnutls_datum_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crq_get_dn_oid(crq: gnutls_x509_crq_t, indx: c_uint, oid: ?*anyopaque, sizeof_oid: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_get_dn_by_oid(crq: gnutls_x509_crq_t, oid: [*c]const u8, indx: c_uint, raw_flag: c_uint, buf: ?*anyopaque, sizeof_buf: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_set_dn(crq: gnutls_x509_crq_t, dn: [*c]const u8, err: [*c][*c]const u8) c_int;
pub extern fn gnutls_x509_crq_set_dn_by_oid(crq: gnutls_x509_crq_t, oid: [*c]const u8, raw_flag: c_uint, data: ?*const anyopaque, sizeof_data: c_uint) c_int;
pub extern fn gnutls_x509_crq_set_version(crq: gnutls_x509_crq_t, version: c_uint) c_int;
pub extern fn gnutls_x509_crq_get_version(crq: gnutls_x509_crq_t) c_int;
pub extern fn gnutls_x509_crq_set_key(crq: gnutls_x509_crq_t, key: gnutls_x509_privkey_t) c_int;
pub extern fn gnutls_x509_crq_set_extension_by_oid(crq: gnutls_x509_crq_t, oid: [*c]const u8, buf: ?*const anyopaque, sizeof_buf: usize, critical: c_uint) c_int;
pub extern fn gnutls_x509_crq_set_challenge_password(crq: gnutls_x509_crq_t, pass: [*c]const u8) c_int;
pub extern fn gnutls_x509_crq_get_challenge_password(crq: gnutls_x509_crq_t, pass: [*c]u8, sizeof_pass: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_set_attribute_by_oid(crq: gnutls_x509_crq_t, oid: [*c]const u8, buf: ?*anyopaque, sizeof_buf: usize) c_int;
pub extern fn gnutls_x509_crq_get_attribute_by_oid(crq: gnutls_x509_crq_t, oid: [*c]const u8, indx: c_uint, buf: ?*anyopaque, sizeof_buf: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_export(crq: gnutls_x509_crq_t, format: gnutls_x509_crt_fmt_t, output_data: ?*anyopaque, output_data_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_export2(crq: gnutls_x509_crq_t, format: gnutls_x509_crt_fmt_t, out: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crt_set_crq(crt: gnutls_x509_crt_t, crq: gnutls_x509_crq_t) c_int;
pub extern fn gnutls_x509_crt_set_crq_extensions(crt: gnutls_x509_crt_t, crq: gnutls_x509_crq_t) c_int;
pub extern fn gnutls_x509_crt_set_crq_extension_by_oid(crt: gnutls_x509_crt_t, crq: gnutls_x509_crq_t, oid: [*c]const u8, flags: c_uint) c_int;
pub extern fn gnutls_x509_crq_set_private_key_usage_period(crq: gnutls_x509_crq_t, activation: time_t, expiration: time_t) c_int;
pub extern fn gnutls_x509_crq_set_key_rsa_raw(crq: gnutls_x509_crq_t, m: [*c]const gnutls_datum_t, e: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crq_set_subject_alt_name(crq: gnutls_x509_crq_t, nt: gnutls_x509_subject_alt_name_t, data: ?*const anyopaque, data_size: c_uint, flags: c_uint) c_int;
pub extern fn gnutls_x509_crq_set_subject_alt_othername(crq: gnutls_x509_crq_t, oid: [*c]const u8, data: ?*const anyopaque, data_size: c_uint, flags: c_uint) c_int;
pub extern fn gnutls_x509_crq_set_key_usage(crq: gnutls_x509_crq_t, usage: c_uint) c_int;
pub extern fn gnutls_x509_crq_set_basic_constraints(crq: gnutls_x509_crq_t, ca: c_uint, pathLenConstraint: c_int) c_int;
pub extern fn gnutls_x509_crq_set_key_purpose_oid(crq: gnutls_x509_crq_t, oid: ?*const anyopaque, critical: c_uint) c_int;
pub extern fn gnutls_x509_crq_get_key_purpose_oid(crq: gnutls_x509_crq_t, indx: c_uint, oid: ?*anyopaque, sizeof_oid: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crq_get_extension_data(crq: gnutls_x509_crq_t, indx: c_uint, data: ?*anyopaque, sizeof_data: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_get_extension_data2(crq: gnutls_x509_crq_t, indx: c_uint, data: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crq_get_extension_info(crq: gnutls_x509_crq_t, indx: c_uint, oid: ?*anyopaque, sizeof_oid: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crq_get_attribute_data(crq: gnutls_x509_crq_t, indx: c_uint, data: ?*anyopaque, sizeof_data: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_get_attribute_info(crq: gnutls_x509_crq_t, indx: c_uint, oid: ?*anyopaque, sizeof_oid: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_get_pk_algorithm(crq: gnutls_x509_crq_t, bits: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crq_get_spki(crq: gnutls_x509_crq_t, spki: gnutls_x509_spki_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crq_set_spki(crq: gnutls_x509_crq_t, spki: gnutls_x509_spki_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_crq_get_signature_oid(crq: gnutls_x509_crq_t, oid: [*c]u8, oid_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_get_pk_oid(crq: gnutls_x509_crq_t, oid: [*c]u8, oid_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_get_key_id(crq: gnutls_x509_crq_t, flags: c_uint, output_data: [*c]u8, output_data_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_get_key_rsa_raw(crq: gnutls_x509_crq_t, m: [*c]gnutls_datum_t, e: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_x509_crq_get_key_usage(crq: gnutls_x509_crq_t, key_usage: [*c]c_uint, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crq_get_basic_constraints(crq: gnutls_x509_crq_t, critical: [*c]c_uint, ca: [*c]c_uint, pathlen: [*c]c_int) c_int;
pub extern fn gnutls_x509_crq_get_subject_alt_name(crq: gnutls_x509_crq_t, seq: c_uint, ret: ?*anyopaque, ret_size: [*c]usize, ret_type: [*c]c_uint, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crq_get_subject_alt_othername_oid(crq: gnutls_x509_crq_t, seq: c_uint, ret: ?*anyopaque, ret_size: [*c]usize) c_int;
pub extern fn gnutls_x509_crq_get_extension_by_oid(crq: gnutls_x509_crq_t, oid: [*c]const u8, indx: c_uint, buf: ?*anyopaque, sizeof_buf: [*c]usize, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crq_get_tlsfeatures(crq: gnutls_x509_crq_t, features: gnutls_x509_tlsfeatures_t, flags: c_uint, critical: [*c]c_uint) c_int;
pub extern fn gnutls_x509_crq_set_tlsfeatures(crq: gnutls_x509_crq_t, features: gnutls_x509_tlsfeatures_t) c_int;
pub extern fn gnutls_x509_crt_get_extension_by_oid2(cert: gnutls_x509_crt_t, oid: [*c]const u8, indx: c_uint, output: [*c]gnutls_datum_t, critical: [*c]c_uint) c_int;
pub const struct_gnutls_x509_trust_list_st = opaque {
    pub const gnutls_x509_trust_list_deinit = __root.gnutls_x509_trust_list_deinit;
    pub const gnutls_x509_trust_list_get_issuer = __root.gnutls_x509_trust_list_get_issuer;
    pub const gnutls_x509_trust_list_get_issuer_by_dn = __root.gnutls_x509_trust_list_get_issuer_by_dn;
    pub const gnutls_x509_trust_list_get_issuer_by_subject_key_id = __root.gnutls_x509_trust_list_get_issuer_by_subject_key_id;
    pub const gnutls_x509_trust_list_add_cas = __root.gnutls_x509_trust_list_add_cas;
    pub const gnutls_x509_trust_list_remove_cas = __root.gnutls_x509_trust_list_remove_cas;
    pub const gnutls_x509_trust_list_add_named_crt = __root.gnutls_x509_trust_list_add_named_crt;
    pub const gnutls_x509_trust_list_add_crls = __root.gnutls_x509_trust_list_add_crls;
    pub const gnutls_x509_trust_list_iter_get_ca = __root.gnutls_x509_trust_list_iter_get_ca;
    pub const gnutls_x509_trust_list_verify_named_crt = __root.gnutls_x509_trust_list_verify_named_crt;
    pub const gnutls_x509_trust_list_verify_crt2 = __root.gnutls_x509_trust_list_verify_crt2;
    pub const gnutls_x509_trust_list_verify_crt = __root.gnutls_x509_trust_list_verify_crt;
    pub const gnutls_x509_trust_list_add_trust_mem = __root.gnutls_x509_trust_list_add_trust_mem;
    pub const gnutls_x509_trust_list_add_trust_file = __root.gnutls_x509_trust_list_add_trust_file;
    pub const gnutls_x509_trust_list_add_trust_dir = __root.gnutls_x509_trust_list_add_trust_dir;
    pub const gnutls_x509_trust_list_remove_trust_file = __root.gnutls_x509_trust_list_remove_trust_file;
    pub const gnutls_x509_trust_list_remove_trust_mem = __root.gnutls_x509_trust_list_remove_trust_mem;
    pub const gnutls_x509_trust_list_add_system_trust = __root.gnutls_x509_trust_list_add_system_trust;
    pub const gnutls_x509_trust_list_set_getissuer_function = __root.gnutls_x509_trust_list_set_getissuer_function;
    pub const gnutls_x509_trust_list_set_ptr = __root.gnutls_x509_trust_list_set_ptr;
    pub const gnutls_x509_trust_list_get_ptr = __root.gnutls_x509_trust_list_get_ptr;
    pub const deinit = __root.gnutls_x509_trust_list_deinit;
    pub const issuer = __root.gnutls_x509_trust_list_get_issuer;
    pub const dn = __root.gnutls_x509_trust_list_get_issuer_by_dn;
    pub const id = __root.gnutls_x509_trust_list_get_issuer_by_subject_key_id;
    pub const cas = __root.gnutls_x509_trust_list_add_cas;
    pub const crt = __root.gnutls_x509_trust_list_add_named_crt;
    pub const crls = __root.gnutls_x509_trust_list_add_crls;
    pub const ca = __root.gnutls_x509_trust_list_iter_get_ca;
    pub const crt2 = __root.gnutls_x509_trust_list_verify_crt2;
    pub const mem = __root.gnutls_x509_trust_list_add_trust_mem;
    pub const file = __root.gnutls_x509_trust_list_add_trust_file;
    pub const dir = __root.gnutls_x509_trust_list_add_trust_dir;
    pub const trust = __root.gnutls_x509_trust_list_add_system_trust;
    pub const function = __root.gnutls_x509_trust_list_set_getissuer_function;
    pub const ptr = __root.gnutls_x509_trust_list_set_ptr;
};
pub const gnutls_x509_trust_list_t = ?*struct_gnutls_x509_trust_list_st;
pub const struct_gnutls_x509_trust_list_iter = opaque {
    pub const gnutls_x509_trust_list_iter_deinit = __root.gnutls_x509_trust_list_iter_deinit;
    pub const deinit = __root.gnutls_x509_trust_list_iter_deinit;
};
pub const gnutls_x509_trust_list_iter_t = ?*struct_gnutls_x509_trust_list_iter;
pub extern fn gnutls_x509_trust_list_init(list: [*c]gnutls_x509_trust_list_t, size: c_uint) c_int;
pub extern fn gnutls_x509_trust_list_deinit(list: gnutls_x509_trust_list_t, all: c_uint) void;
pub extern fn gnutls_x509_trust_list_get_issuer(list: gnutls_x509_trust_list_t, cert: gnutls_x509_crt_t, issuer: [*c]gnutls_x509_crt_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_trust_list_get_issuer_by_dn(list: gnutls_x509_trust_list_t, dn: [*c]const gnutls_datum_t, issuer: [*c]gnutls_x509_crt_t, flags: c_uint) c_int;
pub extern fn gnutls_x509_trust_list_get_issuer_by_subject_key_id(list: gnutls_x509_trust_list_t, dn: [*c]const gnutls_datum_t, spki: [*c]const gnutls_datum_t, issuer: [*c]gnutls_x509_crt_t, flags: c_uint) c_int;
pub const GNUTLS_TL_VERIFY_CRL: c_int = 1;
pub const GNUTLS_TL_USE_IN_TLS: c_int = 2;
pub const GNUTLS_TL_NO_DUPLICATES: c_int = 4;
pub const GNUTLS_TL_NO_DUPLICATE_KEY: c_int = 8;
pub const GNUTLS_TL_GET_COPY: c_int = 16;
pub const GNUTLS_TL_FAIL_ON_INVALID_CRL: c_int = 32;
pub const enum_gnutls_trust_list_flags_t = c_uint;
pub const gnutls_trust_list_flags_t = enum_gnutls_trust_list_flags_t;
pub extern fn gnutls_x509_trust_list_add_cas(list: gnutls_x509_trust_list_t, clist: [*c]const gnutls_x509_crt_t, clist_size: c_uint, flags: c_uint) c_int;
pub extern fn gnutls_x509_trust_list_remove_cas(list: gnutls_x509_trust_list_t, clist: [*c]const gnutls_x509_crt_t, clist_size: c_uint) c_int;
pub extern fn gnutls_x509_trust_list_add_named_crt(list: gnutls_x509_trust_list_t, cert: gnutls_x509_crt_t, name: ?*const anyopaque, name_size: usize, flags: c_uint) c_int;
pub extern fn gnutls_x509_trust_list_add_crls(list: gnutls_x509_trust_list_t, crl_list: [*c]const gnutls_x509_crl_t, crl_size: c_uint, flags: c_uint, verification_flags: c_uint) c_int;
pub extern fn gnutls_x509_trust_list_iter_get_ca(list: gnutls_x509_trust_list_t, iter: [*c]gnutls_x509_trust_list_iter_t, crt: [*c]gnutls_x509_crt_t) c_int;
pub extern fn gnutls_x509_trust_list_iter_deinit(iter: gnutls_x509_trust_list_iter_t) void;
pub const gnutls_verify_output_function = fn (cert: gnutls_x509_crt_t, issuer: gnutls_x509_crt_t, crl: gnutls_x509_crl_t, verification_output: c_uint) callconv(.c) c_int;
pub extern fn gnutls_session_set_verify_output_function(session: gnutls_session_t, func: ?*const gnutls_verify_output_function) void;
pub extern fn gnutls_x509_trust_list_verify_named_crt(list: gnutls_x509_trust_list_t, cert: gnutls_x509_crt_t, name: ?*const anyopaque, name_size: usize, flags: c_uint, verify: [*c]c_uint, func: ?*const gnutls_verify_output_function) c_int;
pub extern fn gnutls_x509_trust_list_verify_crt2(list: gnutls_x509_trust_list_t, cert_list: [*c]gnutls_x509_crt_t, cert_list_size: c_uint, data: [*c]gnutls_typed_vdata_st, elements: c_uint, flags: c_uint, voutput: [*c]c_uint, func: ?*const gnutls_verify_output_function) c_int;
pub extern fn gnutls_x509_trust_list_verify_crt(list: gnutls_x509_trust_list_t, cert_list: [*c]gnutls_x509_crt_t, cert_list_size: c_uint, flags: c_uint, verify: [*c]c_uint, func: ?*const gnutls_verify_output_function) c_int;
pub extern fn gnutls_x509_trust_list_add_trust_mem(list: gnutls_x509_trust_list_t, cas: [*c]const gnutls_datum_t, crls: [*c]const gnutls_datum_t, @"type": gnutls_x509_crt_fmt_t, tl_flags: c_uint, tl_vflags: c_uint) c_int;
pub extern fn gnutls_x509_trust_list_add_trust_file(list: gnutls_x509_trust_list_t, ca_file: [*c]const u8, crl_file: [*c]const u8, @"type": gnutls_x509_crt_fmt_t, tl_flags: c_uint, tl_vflags: c_uint) c_int;
pub extern fn gnutls_x509_trust_list_add_trust_dir(list: gnutls_x509_trust_list_t, ca_dir: [*c]const u8, crl_dir: [*c]const u8, @"type": gnutls_x509_crt_fmt_t, tl_flags: c_uint, tl_vflags: c_uint) c_int;
pub extern fn gnutls_x509_trust_list_remove_trust_file(list: gnutls_x509_trust_list_t, ca_file: [*c]const u8, @"type": gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_x509_trust_list_remove_trust_mem(list: gnutls_x509_trust_list_t, cas: [*c]const gnutls_datum_t, @"type": gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_x509_trust_list_add_system_trust(list: gnutls_x509_trust_list_t, tl_flags: c_uint, tl_vflags: c_uint) c_int;
pub const gnutls_x509_trust_list_getissuer_function = fn (list: gnutls_x509_trust_list_t, cert: gnutls_x509_crt_t, issuers: [*c][*c]gnutls_x509_crt_t, issuers_size: [*c]c_uint) callconv(.c) c_int;
pub extern fn gnutls_x509_trust_list_set_getissuer_function(tlist: gnutls_x509_trust_list_t, func: ?*const gnutls_x509_trust_list_getissuer_function) void;
pub extern fn gnutls_x509_trust_list_set_ptr(tlist: gnutls_x509_trust_list_t, ptr: ?*anyopaque) void;
pub extern fn gnutls_x509_trust_list_get_ptr(tlist: gnutls_x509_trust_list_t) ?*anyopaque;
pub extern fn gnutls_certificate_set_trust_list(res: gnutls_certificate_credentials_t, tlist: gnutls_x509_trust_list_t, flags: c_uint) void;
pub extern fn gnutls_certificate_get_trust_list(res: gnutls_certificate_credentials_t, tlist: [*c]gnutls_x509_trust_list_t) void;
pub const struct_gnutls_x509_ext_st = extern struct {
    oid: [*c]u8 = null,
    critical: c_uint = 0,
    data: gnutls_datum_t = @import("std").mem.zeroes(gnutls_datum_t),
    pub const gnutls_x509_ext_deinit = __root.gnutls_x509_ext_deinit;
    pub const gnutls_x509_ext_print = __root.gnutls_x509_ext_print;
    pub const deinit = __root.gnutls_x509_ext_deinit;
    pub const print = __root.gnutls_x509_ext_print;
};
pub const gnutls_x509_ext_st = struct_gnutls_x509_ext_st;
pub extern fn gnutls_x509_ext_deinit(ext: [*c]gnutls_x509_ext_st) void;
pub extern fn gnutls_x509_ext_print(exts: [*c]gnutls_x509_ext_st, exts_size: c_uint, format: gnutls_certificate_print_formats_t, out: [*c]gnutls_datum_t) c_int;
pub const struct_gnutls_pkcs7_int = opaque {
    pub const gnutls_pkcs7_deinit = __root.gnutls_pkcs7_deinit;
    pub const gnutls_pkcs7_import = __root.gnutls_pkcs7_import;
    pub const gnutls_pkcs7_export = __root.gnutls_pkcs7_export;
    pub const gnutls_pkcs7_export2 = __root.gnutls_pkcs7_export2;
    pub const gnutls_pkcs7_get_signature_count = __root.gnutls_pkcs7_get_signature_count;
    pub const gnutls_pkcs7_get_embedded_data = __root.gnutls_pkcs7_get_embedded_data;
    pub const gnutls_pkcs7_get_embedded_data_oid = __root.gnutls_pkcs7_get_embedded_data_oid;
    pub const gnutls_pkcs7_get_crt_count = __root.gnutls_pkcs7_get_crt_count;
    pub const gnutls_pkcs7_get_crt_raw = __root.gnutls_pkcs7_get_crt_raw;
    pub const gnutls_pkcs7_set_crt_raw = __root.gnutls_pkcs7_set_crt_raw;
    pub const gnutls_pkcs7_set_crt = __root.gnutls_pkcs7_set_crt;
    pub const gnutls_pkcs7_delete_crt = __root.gnutls_pkcs7_delete_crt;
    pub const gnutls_pkcs7_get_crl_raw = __root.gnutls_pkcs7_get_crl_raw;
    pub const gnutls_pkcs7_get_crl_count = __root.gnutls_pkcs7_get_crl_count;
    pub const gnutls_pkcs7_set_crl_raw = __root.gnutls_pkcs7_set_crl_raw;
    pub const gnutls_pkcs7_set_crl = __root.gnutls_pkcs7_set_crl;
    pub const gnutls_pkcs7_delete_crl = __root.gnutls_pkcs7_delete_crl;
    pub const gnutls_pkcs7_get_signature_info = __root.gnutls_pkcs7_get_signature_info;
    pub const gnutls_pkcs7_verify_direct = __root.gnutls_pkcs7_verify_direct;
    pub const gnutls_pkcs7_verify = __root.gnutls_pkcs7_verify;
    pub const gnutls_pkcs7_sign = __root.gnutls_pkcs7_sign;
    pub const gnutls_pkcs7_get_crt_raw2 = __root.gnutls_pkcs7_get_crt_raw2;
    pub const gnutls_pkcs7_get_crl_raw2 = __root.gnutls_pkcs7_get_crl_raw2;
    pub const gnutls_pkcs7_print = __root.gnutls_pkcs7_print;
    pub const deinit = __root.gnutls_pkcs7_deinit;
    pub const import = __root.gnutls_pkcs7_import;
    pub const @"export" = __root.gnutls_pkcs7_export;
    pub const export2 = __root.gnutls_pkcs7_export2;
    pub const count = __root.gnutls_pkcs7_get_signature_count;
    pub const data = __root.gnutls_pkcs7_get_embedded_data;
    pub const oid = __root.gnutls_pkcs7_get_embedded_data_oid;
    pub const raw = __root.gnutls_pkcs7_get_crt_raw;
    pub const crt = __root.gnutls_pkcs7_set_crt;
    pub const crl = __root.gnutls_pkcs7_set_crl;
    pub const info = __root.gnutls_pkcs7_get_signature_info;
    pub const direct = __root.gnutls_pkcs7_verify_direct;
    pub const verify = __root.gnutls_pkcs7_verify;
    pub const sign = __root.gnutls_pkcs7_sign;
    pub const raw2 = __root.gnutls_pkcs7_get_crt_raw2;
    pub const print = __root.gnutls_pkcs7_print;
};
pub const gnutls_pkcs7_t = ?*struct_gnutls_pkcs7_int;
pub extern fn gnutls_pkcs7_init(pkcs7: [*c]gnutls_pkcs7_t) c_int;
pub extern fn gnutls_pkcs7_deinit(pkcs7: gnutls_pkcs7_t) void;
pub extern fn gnutls_pkcs7_import(pkcs7: gnutls_pkcs7_t, data: [*c]const gnutls_datum_t, format: gnutls_x509_crt_fmt_t) c_int;
pub extern fn gnutls_pkcs7_export(pkcs7: gnutls_pkcs7_t, format: gnutls_x509_crt_fmt_t, output_data: ?*anyopaque, output_data_size: [*c]usize) c_int;
pub extern fn gnutls_pkcs7_export2(pkcs7: gnutls_pkcs7_t, format: gnutls_x509_crt_fmt_t, out: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_pkcs7_get_signature_count(pkcs7: gnutls_pkcs7_t) c_int;
pub extern fn gnutls_pkcs7_get_embedded_data(pkcs7: gnutls_pkcs7_t, flags: c_uint, data: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_pkcs7_get_embedded_data_oid(pkcs7: gnutls_pkcs7_t) [*c]const u8;
pub extern fn gnutls_pkcs7_get_crt_count(pkcs7: gnutls_pkcs7_t) c_int;
pub extern fn gnutls_pkcs7_get_crt_raw(pkcs7: gnutls_pkcs7_t, indx: c_uint, certificate: ?*anyopaque, certificate_size: [*c]usize) c_int;
pub extern fn gnutls_pkcs7_set_crt_raw(pkcs7: gnutls_pkcs7_t, crt: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_pkcs7_set_crt(pkcs7: gnutls_pkcs7_t, crt: gnutls_x509_crt_t) c_int;
pub extern fn gnutls_pkcs7_delete_crt(pkcs7: gnutls_pkcs7_t, indx: c_int) c_int;
pub extern fn gnutls_pkcs7_get_crl_raw(pkcs7: gnutls_pkcs7_t, indx: c_uint, crl: ?*anyopaque, crl_size: [*c]usize) c_int;
pub extern fn gnutls_pkcs7_get_crl_count(pkcs7: gnutls_pkcs7_t) c_int;
pub extern fn gnutls_pkcs7_set_crl_raw(pkcs7: gnutls_pkcs7_t, crl: [*c]const gnutls_datum_t) c_int;
pub extern fn gnutls_pkcs7_set_crl(pkcs7: gnutls_pkcs7_t, crl: gnutls_x509_crl_t) c_int;
pub extern fn gnutls_pkcs7_delete_crl(pkcs7: gnutls_pkcs7_t, indx: c_int) c_int;
pub const struct_gnutls_pkcs7_attrs_st = opaque {
    pub const gnutls_pkcs7_attrs_deinit = __root.gnutls_pkcs7_attrs_deinit;
    pub const gnutls_pkcs7_get_attr = __root.gnutls_pkcs7_get_attr;
    pub const deinit = __root.gnutls_pkcs7_attrs_deinit;
    pub const attr = __root.gnutls_pkcs7_get_attr;
};
pub const gnutls_pkcs7_attrs_t = ?*struct_gnutls_pkcs7_attrs_st;
pub const struct_gnutls_pkcs7_signature_info_st = extern struct {
    algo: gnutls_sign_algorithm_t = @import("std").mem.zeroes(gnutls_sign_algorithm_t),
    sig: gnutls_datum_t = @import("std").mem.zeroes(gnutls_datum_t),
    issuer_dn: gnutls_datum_t = @import("std").mem.zeroes(gnutls_datum_t),
    signer_serial: gnutls_datum_t = @import("std").mem.zeroes(gnutls_datum_t),
    issuer_keyid: gnutls_datum_t = @import("std").mem.zeroes(gnutls_datum_t),
    signing_time: time_t = 0,
    signed_attrs: gnutls_pkcs7_attrs_t = null,
    unsigned_attrs: gnutls_pkcs7_attrs_t = null,
    pad: [64]u8 = @import("std").mem.zeroes([64]u8),
    pub const gnutls_pkcs7_signature_info_deinit = __root.gnutls_pkcs7_signature_info_deinit;
    pub const gnutls_pkcs7_print_signature_info = __root.gnutls_pkcs7_print_signature_info;
    pub const deinit = __root.gnutls_pkcs7_signature_info_deinit;
    pub const info = __root.gnutls_pkcs7_print_signature_info;
};
pub const gnutls_pkcs7_signature_info_st = struct_gnutls_pkcs7_signature_info_st;
pub extern fn gnutls_pkcs7_signature_info_deinit(info: [*c]gnutls_pkcs7_signature_info_st) void;
pub extern fn gnutls_pkcs7_get_signature_info(pkcs7: gnutls_pkcs7_t, idx: c_uint, info: [*c]gnutls_pkcs7_signature_info_st) c_int;
pub extern fn gnutls_pkcs7_verify_direct(pkcs7: gnutls_pkcs7_t, signer: gnutls_x509_crt_t, idx: c_uint, data: [*c]const gnutls_datum_t, flags: c_uint) c_int;
pub extern fn gnutls_pkcs7_verify(pkcs7: gnutls_pkcs7_t, tl: gnutls_x509_trust_list_t, vdata: [*c]gnutls_typed_vdata_st, vdata_size: c_uint, idx: c_uint, data: [*c]const gnutls_datum_t, flags: c_uint) c_int;
pub extern fn gnutls_pkcs7_add_attr(list: [*c]gnutls_pkcs7_attrs_t, oid: [*c]const u8, data: [*c]gnutls_datum_t, flags: c_uint) c_int;
pub extern fn gnutls_pkcs7_attrs_deinit(list: gnutls_pkcs7_attrs_t) void;
pub extern fn gnutls_pkcs7_get_attr(list: gnutls_pkcs7_attrs_t, idx: c_uint, oid: [*c][*c]u8, data: [*c]gnutls_datum_t, flags: c_uint) c_int;
pub const GNUTLS_PKCS7_EMBED_DATA: c_int = 1;
pub const GNUTLS_PKCS7_INCLUDE_TIME: c_int = 2;
pub const GNUTLS_PKCS7_INCLUDE_CERT: c_int = 4;
pub const GNUTLS_PKCS7_WRITE_SPKI: c_int = 8;
pub const enum_gnutls_pkcs7_sign_flags = c_uint;
pub const gnutls_pkcs7_sign_flags = enum_gnutls_pkcs7_sign_flags;
pub extern fn gnutls_pkcs7_sign(pkcs7: gnutls_pkcs7_t, signer: gnutls_x509_crt_t, signer_key: gnutls_privkey_t, data: [*c]const gnutls_datum_t, signed_attrs: gnutls_pkcs7_attrs_t, unsigned_attrs: gnutls_pkcs7_attrs_t, dig: gnutls_digest_algorithm_t, flags: c_uint) c_int;
pub extern fn gnutls_pkcs7_get_crt_raw2(pkcs7: gnutls_pkcs7_t, indx: c_uint, cert: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_pkcs7_get_crl_raw2(pkcs7: gnutls_pkcs7_t, indx: c_uint, crl: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_pkcs7_print(pkcs7: gnutls_pkcs7_t, format: gnutls_certificate_print_formats_t, out: [*c]gnutls_datum_t) c_int;
pub extern fn gnutls_pkcs7_print_signature_info(info: [*c]gnutls_pkcs7_signature_info_st, format: gnutls_certificate_print_formats_t, out: [*c]gnutls_datum_t) c_int;
pub const SOCK_STREAM: c_int = 1;
pub const SOCK_DGRAM: c_int = 2;
pub const SOCK_RAW: c_int = 3;
pub const SOCK_RDM: c_int = 4;
pub const SOCK_SEQPACKET: c_int = 5;
pub const SOCK_DCCP: c_int = 6;
pub const SOCK_PACKET: c_int = 10;
pub const SOCK_CLOEXEC: c_int = 524288;
pub const SOCK_NONBLOCK: c_int = 2048;
pub const enum___socket_type = c_uint;
pub const sa_family_t = c_ushort;
pub const struct_sockaddr = extern struct {
    sa_family: sa_family_t = 0,
    sa_data: [14]u8 = @import("std").mem.zeroes([14]u8),
};
pub const struct_sockaddr_storage = extern struct {
    ss_family: sa_family_t = 0,
    __ss_padding: [118]u8 = @import("std").mem.zeroes([118]u8),
    __ss_align: c_ulong = 0,
};
pub const MSG_OOB: c_int = 1;
pub const MSG_PEEK: c_int = 2;
pub const MSG_DONTROUTE: c_int = 4;
pub const MSG_TRYHARD: c_int = 4;
pub const MSG_CTRUNC: c_int = 8;
pub const MSG_PROXY: c_int = 16;
pub const MSG_TRUNC: c_int = 32;
pub const MSG_DONTWAIT: c_int = 64;
pub const MSG_EOR: c_int = 128;
pub const MSG_WAITALL: c_int = 256;
pub const MSG_FIN: c_int = 512;
pub const MSG_SYN: c_int = 1024;
pub const MSG_CONFIRM: c_int = 2048;
pub const MSG_RST: c_int = 4096;
pub const MSG_ERRQUEUE: c_int = 8192;
pub const MSG_NOSIGNAL: c_int = 16384;
pub const MSG_MORE: c_int = 32768;
pub const MSG_WAITFORONE: c_int = 65536;
pub const MSG_BATCH: c_int = 262144;
pub const MSG_ZEROCOPY: c_int = 67108864;
pub const MSG_FASTOPEN: c_int = 536870912;
pub const MSG_CMSG_CLOEXEC: c_int = 1073741824;
const enum_unnamed_15 = c_uint;
pub const struct_msghdr = extern struct {
    msg_name: ?*anyopaque = null,
    msg_namelen: socklen_t = 0,
    msg_iov: [*c]struct_iovec = null,
    msg_iovlen: usize = 0,
    msg_control: ?*anyopaque = null,
    msg_controllen: usize = 0,
    msg_flags: c_int = 0,
    pub const __cmsg_nxthdr = __root.__cmsg_nxthdr;
    pub const nxthdr = __root.__cmsg_nxthdr;
};
pub const struct_cmsghdr = extern struct {
    cmsg_len: usize = 0,
    cmsg_level: c_int = 0,
    cmsg_type: c_int = 0,
    ___cmsg_data: [0]u8 = @import("std").mem.zeroes([0]u8),
    pub fn __cmsg_data(_self: anytype) __helpers.FlexibleArrayType(@TypeOf(_self), @typeInfo(@TypeOf(_self.*.___cmsg_data)).array.child) {
        return @ptrCast(@alignCast(&_self.*.___cmsg_data));
    }
};
pub extern fn __cmsg_nxthdr(__mhdr: [*c]struct_msghdr, __cmsg: [*c]struct_cmsghdr) [*c]struct_cmsghdr;
pub const SCM_RIGHTS: c_int = 1;
pub const SCM_CREDENTIALS: c_int = 2;
const enum_unnamed_16 = c_uint;
pub const struct_ucred = extern struct {
    pid: pid_t = 0,
    uid: uid_t = 0,
    gid: gid_t = 0,
};
pub const __kernel_fd_set = extern struct {
    fds_bits: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const __kernel_sighandler_t = ?*const fn (c_int) callconv(.c) void;
pub const __kernel_key_t = c_int;
pub const __kernel_mqd_t = c_int;
pub const __kernel_old_uid_t = c_ushort;
pub const __kernel_old_gid_t = c_ushort;
pub const __kernel_old_dev_t = c_ulong;
pub const __kernel_long_t = c_long;
pub const __kernel_ulong_t = c_ulong;
pub const __kernel_ino_t = __kernel_ulong_t;
pub const __kernel_mode_t = c_uint;
pub const __kernel_pid_t = c_int;
pub const __kernel_ipc_pid_t = c_int;
pub const __kernel_uid_t = c_uint;
pub const __kernel_gid_t = c_uint;
pub const __kernel_suseconds_t = __kernel_long_t;
pub const __kernel_daddr_t = c_int;
pub const __kernel_uid32_t = c_uint;
pub const __kernel_gid32_t = c_uint;
pub const __kernel_size_t = __kernel_ulong_t;
pub const __kernel_ssize_t = __kernel_long_t;
pub const __kernel_ptrdiff_t = __kernel_long_t;
pub const __kernel_fsid_t = extern struct {
    val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __kernel_off_t = __kernel_long_t;
pub const __kernel_loff_t = c_longlong;
pub const __kernel_old_time_t = __kernel_long_t;
pub const __kernel_time_t = __kernel_long_t;
pub const __kernel_time64_t = c_longlong;
pub const __kernel_clock_t = __kernel_long_t;
pub const __kernel_timer_t = c_int;
pub const __kernel_clockid_t = c_int;
pub const __kernel_caddr_t = [*c]u8;
pub const __kernel_uid16_t = c_ushort;
pub const __kernel_gid16_t = c_ushort;
pub const struct_linger = extern struct {
    l_onoff: c_int = 0,
    l_linger: c_int = 0,
};
pub const struct_osockaddr = extern struct {
    sa_family: c_ushort = 0,
    sa_data: [14]u8 = @import("std").mem.zeroes([14]u8),
};
pub const SHUT_RD: c_int = 0;
pub const SHUT_WR: c_int = 1;
pub const SHUT_RDWR: c_int = 2;
const enum_unnamed_17 = c_uint;
pub const struct_sockaddr_at_18 = opaque {};
pub const struct_sockaddr_ax25_19 = opaque {};
pub const struct_sockaddr_dl_20 = opaque {};
pub const struct_sockaddr_eon_21 = opaque {};
pub const struct_sockaddr_in_22 = opaque {};
pub const struct_sockaddr_in6_23 = opaque {};
pub const struct_sockaddr_inarp_24 = opaque {};
pub const struct_sockaddr_ipx_25 = opaque {};
pub const struct_sockaddr_iso_26 = opaque {};
pub const struct_sockaddr_ns_27 = opaque {};
pub const struct_sockaddr_un_28 = opaque {};
pub const struct_sockaddr_x25_29 = opaque {};
pub const __SOCKADDR_ARG = extern union {
    __sockaddr__: [*c]struct_sockaddr,
    __sockaddr_at__: ?*struct_sockaddr_at_18,
    __sockaddr_ax25__: ?*struct_sockaddr_ax25_19,
    __sockaddr_dl__: ?*struct_sockaddr_dl_20,
    __sockaddr_eon__: ?*struct_sockaddr_eon_21,
    __sockaddr_in__: ?*struct_sockaddr_in_22,
    __sockaddr_in6__: ?*struct_sockaddr_in6_23,
    __sockaddr_inarp__: ?*struct_sockaddr_inarp_24,
    __sockaddr_ipx__: ?*struct_sockaddr_ipx_25,
    __sockaddr_iso__: ?*struct_sockaddr_iso_26,
    __sockaddr_ns__: ?*struct_sockaddr_ns_27,
    __sockaddr_un__: ?*struct_sockaddr_un_28,
    __sockaddr_x25__: ?*struct_sockaddr_x25_29,
};
pub const __CONST_SOCKADDR_ARG = extern union {
    __sockaddr__: [*c]const struct_sockaddr,
    __sockaddr_at__: ?*const struct_sockaddr_at_18,
    __sockaddr_ax25__: ?*const struct_sockaddr_ax25_19,
    __sockaddr_dl__: ?*const struct_sockaddr_dl_20,
    __sockaddr_eon__: ?*const struct_sockaddr_eon_21,
    __sockaddr_in__: ?*const struct_sockaddr_in_22,
    __sockaddr_in6__: ?*const struct_sockaddr_in6_23,
    __sockaddr_inarp__: ?*const struct_sockaddr_inarp_24,
    __sockaddr_ipx__: ?*const struct_sockaddr_ipx_25,
    __sockaddr_iso__: ?*const struct_sockaddr_iso_26,
    __sockaddr_ns__: ?*const struct_sockaddr_ns_27,
    __sockaddr_un__: ?*const struct_sockaddr_un_28,
    __sockaddr_x25__: ?*const struct_sockaddr_x25_29,
};
pub const struct_mmsghdr = extern struct {
    msg_hdr: struct_msghdr = @import("std").mem.zeroes(struct_msghdr),
    msg_len: c_uint = 0,
};
pub extern fn socket(__domain: c_int, __type: c_int, __protocol: c_int) c_int;
pub extern fn socketpair(__domain: c_int, __type: c_int, __protocol: c_int, __fds: [*c]c_int) c_int;
pub extern fn bind(__fd: c_int, __addr: __CONST_SOCKADDR_ARG, __len: socklen_t) c_int;
pub extern fn getsockname(__fd: c_int, __addr: __SOCKADDR_ARG, noalias __len: [*c]socklen_t) c_int;
pub extern fn connect(__fd: c_int, __addr: __CONST_SOCKADDR_ARG, __len: socklen_t) c_int;
pub extern fn getpeername(__fd: c_int, __addr: __SOCKADDR_ARG, noalias __len: [*c]socklen_t) c_int;
pub extern fn send(__fd: c_int, __buf: ?*const anyopaque, __n: usize, __flags: c_int) isize;
pub extern fn recv(__fd: c_int, __buf: ?*anyopaque, __n: usize, __flags: c_int) isize;
pub extern fn sendto(__fd: c_int, __buf: ?*const anyopaque, __n: usize, __flags: c_int, __addr: __CONST_SOCKADDR_ARG, __addr_len: socklen_t) isize;
pub extern fn recvfrom(__fd: c_int, noalias __buf: ?*anyopaque, __n: usize, __flags: c_int, __addr: __SOCKADDR_ARG, noalias __addr_len: [*c]socklen_t) isize;
pub extern fn sendmsg(__fd: c_int, __message: [*c]const struct_msghdr, __flags: c_int) isize;
pub extern fn sendmmsg(__fd: c_int, __vmessages: [*c]struct_mmsghdr, __vlen: c_uint, __flags: c_int) c_int;
pub extern fn recvmsg(__fd: c_int, __message: [*c]struct_msghdr, __flags: c_int) isize;
pub extern fn recvmmsg(__fd: c_int, __vmessages: [*c]struct_mmsghdr, __vlen: c_uint, __flags: c_int, __tmo: [*c]struct_timespec) c_int;
pub extern fn getsockopt(__fd: c_int, __level: c_int, __optname: c_int, noalias __optval: ?*anyopaque, noalias __optlen: [*c]socklen_t) c_int;
pub extern fn setsockopt(__fd: c_int, __level: c_int, __optname: c_int, __optval: ?*const anyopaque, __optlen: socklen_t) c_int;
pub extern fn listen(__fd: c_int, __n: c_int) c_int;
pub extern fn accept(__fd: c_int, __addr: __SOCKADDR_ARG, noalias __addr_len: [*c]socklen_t) c_int;
pub extern fn accept4(__fd: c_int, __addr: __SOCKADDR_ARG, noalias __addr_len: [*c]socklen_t, __flags: c_int) c_int;
pub extern fn shutdown(__fd: c_int, __how: c_int) c_int;
pub extern fn sockatmark(__fd: c_int) c_int;
pub extern fn isfdtype(__fd: c_int, __fdtype: c_int) c_int;
pub const struct_stat = extern struct {
    st_dev: __dev_t = 0,
    st_ino: __ino_t = 0,
    st_nlink: __nlink_t = 0,
    st_mode: __mode_t = 0,
    st_uid: __uid_t = 0,
    st_gid: __gid_t = 0,
    __pad0: c_int = 0,
    st_rdev: __dev_t = 0,
    st_size: __off_t = 0,
    st_blksize: __blksize_t = 0,
    st_blocks: __blkcnt_t = 0,
    st_atim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    __glibc_reserved: [3]__syscall_slong_t = @import("std").mem.zeroes([3]__syscall_slong_t),
};
pub const struct_stat64 = extern struct {
    st_dev: __dev_t = 0,
    st_ino: __ino64_t = 0,
    st_nlink: __nlink_t = 0,
    st_mode: __mode_t = 0,
    st_uid: __uid_t = 0,
    st_gid: __gid_t = 0,
    __pad0: c_int = 0,
    st_rdev: __dev_t = 0,
    st_size: __off_t = 0,
    st_blksize: __blksize_t = 0,
    st_blocks: __blkcnt64_t = 0,
    st_atim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    __glibc_reserved: [3]__syscall_slong_t = @import("std").mem.zeroes([3]__syscall_slong_t),
};
pub extern fn stat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;
pub extern fn fstat(__fd: c_int, __buf: [*c]struct_stat) c_int;
pub extern fn stat64(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat64) c_int;
pub extern fn fstat64(__fd: c_int, __buf: [*c]struct_stat64) c_int;
pub extern fn fstatat(__fd: c_int, noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat, __flag: c_int) c_int;
pub extern fn fstatat64(__fd: c_int, noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat64, __flag: c_int) c_int;
pub extern fn lstat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;
pub extern fn lstat64(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat64) c_int;
pub extern fn chmod(__file: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn lchmod(__file: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn fchmod(__fd: c_int, __mode: __mode_t) c_int;
pub extern fn fchmodat(__fd: c_int, __file: [*c]const u8, __mode: __mode_t, __flag: c_int) c_int;
pub extern fn umask(__mask: __mode_t) __mode_t;
pub extern fn getumask() __mode_t;
pub extern fn mkdir(__path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mkdirat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mknod(__path: [*c]const u8, __mode: __mode_t, __dev: __dev_t) c_int;
pub extern fn mknodat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t, __dev: __dev_t) c_int;
pub extern fn mkfifo(__path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mkfifoat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn utimensat(__fd: c_int, __path: [*c]const u8, __times: [*c]const struct_timespec, __flags: c_int) c_int;
pub extern fn futimens(__fd: c_int, __times: [*c]const struct_timespec) c_int;
pub const __s8 = i8;
pub const __u8 = u8;
pub const __s16 = c_short;
pub const __u16 = c_ushort;
pub const __s32 = c_int;
pub const __u32 = c_uint;
pub const __s64 = c_longlong;
pub const __u64 = c_ulonglong;
pub const __le16 = __u16;
pub const __be16 = __u16;
pub const __le32 = __u32;
pub const __be32 = __u32;
pub const __le64 = __u64;
pub const __be64 = __u64;
pub const __sum16 = __u16;
pub const __wsum = __u32;
pub const __poll_t = c_uint;
pub const struct_statx_timestamp = extern struct {
    tv_sec: __s64 = 0,
    tv_nsec: __u32 = 0,
    __reserved: __s32 = 0,
};
pub const struct_statx = extern struct {
    stx_mask: __u32 = 0,
    stx_blksize: __u32 = 0,
    stx_attributes: __u64 = 0,
    stx_nlink: __u32 = 0,
    stx_uid: __u32 = 0,
    stx_gid: __u32 = 0,
    stx_mode: __u16 = 0,
    __spare0: [1]__u16 = @import("std").mem.zeroes([1]__u16),
    stx_ino: __u64 = 0,
    stx_size: __u64 = 0,
    stx_blocks: __u64 = 0,
    stx_attributes_mask: __u64 = 0,
    stx_atime: struct_statx_timestamp = @import("std").mem.zeroes(struct_statx_timestamp),
    stx_btime: struct_statx_timestamp = @import("std").mem.zeroes(struct_statx_timestamp),
    stx_ctime: struct_statx_timestamp = @import("std").mem.zeroes(struct_statx_timestamp),
    stx_mtime: struct_statx_timestamp = @import("std").mem.zeroes(struct_statx_timestamp),
    stx_rdev_major: __u32 = 0,
    stx_rdev_minor: __u32 = 0,
    stx_dev_major: __u32 = 0,
    stx_dev_minor: __u32 = 0,
    stx_mnt_id: __u64 = 0,
    __spare2: __u64 = 0,
    __spare3: [12]__u64 = @import("std").mem.zeroes([12]__u64),
};
pub extern fn statx(__dirfd: c_int, noalias __path: [*c]const u8, __flags: c_int, __mask: c_uint, noalias __buf: [*c]struct_statx) c_int;
pub const LIST_ACTION: c_int = 0;
pub const LIST_ALIAS: c_int = 1;
pub const LIST_BUTTON: c_int = 2;
pub const LIST_CLASS: c_int = 3;
pub const LIST_COMMAND: c_int = 4;
pub const LIST_CONFIG: c_int = 5;
pub const LIST_DELAY: c_int = 6;
pub const LIST_EVENT: c_int = 7;
pub const LIST_FUNCTION: c_int = 8;
pub const LIST_GAG: c_int = 9;
pub const LIST_HIGHLIGHT: c_int = 10;
pub const LIST_HISTORY: c_int = 11;
pub const LIST_LANDMARK: c_int = 12;
pub const LIST_MACRO: c_int = 13;
pub const LIST_PATH: c_int = 14;
pub const LIST_PATHDIR: c_int = 15;
pub const LIST_PROMPT: c_int = 16;
pub const LIST_SUBSTITUTE: c_int = 17;
pub const LIST_TAB: c_int = 18;
pub const LIST_TERRAIN: c_int = 19;
pub const LIST_TICKER: c_int = 20;
pub const LIST_VARIABLE: c_int = 21;
pub const LIST_MAX: c_int = 22;
pub const enum_lists = c_uint;
pub const TOKEN_TYPE_BREAK: c_int = 0;
pub const TOKEN_TYPE_CASE: c_int = 1;
pub const TOKEN_TYPE_COMMAND: c_int = 2;
pub const TOKEN_TYPE_CONTINUE: c_int = 3;
pub const TOKEN_TYPE_DEFAULT: c_int = 4;
pub const TOKEN_TYPE_END: c_int = 5;
pub const TOKEN_TYPE_ELSE: c_int = 6;
pub const TOKEN_TYPE_ELSEIF: c_int = 7;
pub const TOKEN_TYPE_FOREACH: c_int = 8;
pub const TOKEN_TYPE_BROKEN_FOREACH: c_int = 9;
pub const TOKEN_TYPE_IF: c_int = 10;
pub const TOKEN_TYPE_LOOP: c_int = 11;
pub const TOKEN_TYPE_BROKEN_LOOP: c_int = 12;
pub const TOKEN_TYPE_PARSE: c_int = 13;
pub const TOKEN_TYPE_BROKEN_PARSE: c_int = 14;
pub const TOKEN_TYPE_REGEX: c_int = 15;
pub const TOKEN_TYPE_RETURN: c_int = 16;
pub const TOKEN_TYPE_SESSION: c_int = 17;
pub const TOKEN_TYPE_STRING: c_int = 18;
pub const TOKEN_TYPE_SWITCH: c_int = 19;
pub const TOKEN_TYPE_WHILE: c_int = 20;
pub const TOKEN_TYPE_BROKEN_WHILE: c_int = 21;
pub const TOKEN_TYPE_STATEMENT: c_int = 22;
pub const TOKEN_TYPE_CONFIG: c_int = 23;
pub const TOKEN_TYPE_REPEAT: c_int = 24;
pub const enum_operators = c_uint;
pub const struct_exit_data = extern struct {
    next: [*c]struct_exit_data = null,
    prev: [*c]struct_exit_data = null,
    vnum: c_int = 0,
    dir: c_int = 0,
    grid: c_int = 0,
    flags: c_int = 0,
    weight: f64 = 0,
    delay: f64 = 0,
    name: [*c]u8 = null,
    cmd: [*c]u8 = null,
    color: [*c]u8 = null,
    data: [*c]u8 = null,
};
pub const struct_room_data = extern struct {
    f_exit: [*c]struct_exit_data = null,
    l_exit: [*c]struct_exit_data = null,
    exit_grid: [11][*c]struct_exit_data = @import("std").mem.zeroes([11][*c]struct_exit_data),
    vnum: c_int = 0,
    exit_dirs: c_longlong = 0,
    length: f64 = 0,
    weight: f64 = 0,
    exit_size: c_ushort = 0,
    search_stamp: c_ushort = 0,
    display_stamp: c_ushort = 0,
    flags: c_int = 0,
    w: c_int = 0,
    x: c_int = 0,
    y: c_int = 0,
    z: c_int = 0,
    terrain_index: c_int = 0,
    terrain_flags: c_short = 0,
    area: [*c]u8 = null,
    color: [*c]u8 = null,
    data: [*c]u8 = null,
    desc: [*c]u8 = null,
    id: [*c]u8 = null,
    name: [*c]u8 = null,
    note: [*c]u8 = null,
    symbol: [*c]u8 = null,
    terrain: [*c]u8 = null,
    pub const delete_room_data = __root.delete_room_data;
};
const union_unnamed_30 = extern union {
    regex: ?*pcre2_code_8,
    data: [*c]u8,
    room: [*c]struct_room_data,
    val64: c_longlong,
    val16: [4]c_short,
    val32: [2]c_int,
};
pub const struct_listnode = extern struct {
    root: [*c]struct_listroot = null,
    arg1: [*c]u8 = null,
    arg2: [*c]u8 = null,
    arg3: [*c]u8 = null,
    arg4: [*c]u8 = null,
    group: [*c]u8 = null,
    shots: c_uint = 0,
    flags: c_int = 0,
    unnamed_0: union_unnamed_30 = @import("std").mem.zeroes(union_unnamed_30),
    pub const show_nest = __root.show_nest;
    pub const dispose_node = __root.dispose_node;
    pub const show_nest_node = __root.show_nest_node;
    pub const view_nest_node_json = __root.view_nest_node_json;
    pub const view_nest_node = __root.view_nest_node;
    pub const pdir = __root.pdir;
    pub const nest = __root.show_nest;
    pub const node = __root.dispose_node;
    pub const json = __root.view_nest_node_json;
};
pub const struct_link_data = extern struct {
    next: [*c]struct_link_data = null,
    prev: [*c]struct_link_data = null,
    str1: [*c]u8 = null,
    str2: [*c]u8 = null,
    str3: [*c]u8 = null,
};
pub const struct_search_data = extern struct {
    vnum: c_int = 0,
    min: c_int = 0,
    max: c_int = 0,
    stamp: c_ushort = 0,
    arg: [*c]u8 = null,
    area: [*c]struct_listnode = null,
    desc: [*c]struct_listnode = null,
    name: [*c]struct_listnode = null,
    note: [*c]struct_listnode = null,
    terrain: [*c]struct_listnode = null,
    exit_size: c_int = 0,
    exit_dirs: c_longlong = 0,
    exit_list: [*c]u8 = null,
    flag: c_longlong = 0,
    galf: c_longlong = 0,
    id: [*c]u8 = null,
    distance: f64 = 0,
};
pub const struct_map_data = extern struct {
    room_list: [*c][*c]struct_room_data = null,
    grid_rooms: [*c][*c]struct_room_data = null,
    grid_vnums: [*c]c_int = null,
    logfile: [*c]FILE = null,
    undo_head: [*c]struct_link_data = null,
    undo_tail: [*c]struct_link_data = null,
    search: [*c]struct_search_data = null,
    buf: [*c]u8 = null,
    out: [*c]u8 = null,
    color: [11][50]u8 = @import("std").mem.zeroes([11][50]u8),
    color_raw: [11][50]u8 = @import("std").mem.zeroes([11][50]u8),
    center_x: c_int = 0,
    center_y: c_int = 0,
    center_z: c_int = 0,
    max_grid_x: c_int = 0,
    max_grid_y: c_int = 0,
    sav_top_row: c_int = 0,
    sav_top_col: c_int = 0,
    sav_bot_row: c_int = 0,
    sav_bot_col: c_int = 0,
    top_row: c_int = 0,
    top_col: c_int = 0,
    bot_row: c_int = 0,
    bot_col: c_int = 0,
    rows: c_int = 0,
    cols: c_int = 0,
    undo_size: c_int = 0,
    dir: c_int = 0,
    size: c_int = 0,
    flags: c_int = 0,
    in_room: c_int = 0,
    at_room: c_int = 0,
    last_room: c_int = 0,
    global_vnum: c_int = 0,
    global_exit: [*c]struct_exit_data = null,
    version: c_int = 0,
    display_stamp: c_ushort = 0,
    nofollow: c_int = 0,
    legend: [230][50]u8 = @import("std").mem.zeroes([230][50]u8),
    legend_raw: [230][50]u8 = @import("std").mem.zeroes([230][50]u8),
};
pub const struct_msdp_data = extern struct {
    value: [*c]u8 = null,
    flags: c_int = 0,
};
pub const struct_port_data = extern struct {
    next: [*c]struct_port_data = null,
    prev: [*c]struct_port_data = null,
    update: [*c]struct_port_data = null,
    name: [*c]u8 = null,
    ip: [*c]u8 = null,
    prefix: [*c]u8 = null,
    color: [*c]u8 = null,
    group: [*c]u8 = null,
    port: c_int = 0,
    fd: c_int = 0,
    flags: c_int = 0,
    comm_flags: c_int = 0,
    mtts_flags: c_int = 0,
    msdp_data: [*c][*c]struct_msdp_data = null,
    proxy: [*c]u8 = null,
    ttype: [*c]u8 = null,
    telbuf: [50000]u8 = @import("std").mem.zeroes([50000]u8),
    teltop: c_int = 0,
    inbuf: [50000]u8 = @import("std").mem.zeroes([50000]u8),
    intop: c_int = 0,
    cols: c_int = 0,
    rows: c_int = 0,
    total: c_int = 0,
    rank: c_int = 0,
    mccp2: [*c]z_stream = null,
    mccp3: [*c]z_stream = null,
    ses: [*c]struct_session = null,
};
pub const struct_log_data = extern struct {
    file: [*c]FILE = null,
    name: [*c]u8 = null,
    mode: c_int = 0,
    next_file: [*c]FILE = null,
    next_name: [*c]u8 = null,
    next_time: time_t = 0,
    line_file: [*c]FILE = null,
    line_name: [*c]u8 = null,
    line_time: time_t = 0,
    stamp_text: [100]u8 = @import("std").mem.zeroes([100]u8),
    stamp_strf: [*c]u8 = null,
    stamp_time: time_t = 0,
};
pub const struct_buffer_data = extern struct {
    width: c_int = 0,
    height: c_int = 0,
    lines: c_ushort = 0,
    flags: c_ushort = 0,
    time: time_t = 0,
    str: [*c]u8 = null,
};
pub const struct_scroll_data = extern struct {
    buffer: [*c][*c]struct_buffer_data = null,
    base: c_int = 0,
    line: c_int = 0,
    used: c_int = 0,
    size: c_int = 0,
    wrap: c_int = 0,
    time: time_t = 0,
    input: [*c]u8 = null,
    flags: c_int = 0,
    width: c_int = 0,
};
pub const struct_split_data = extern struct {
    sav_top_row: c_int = 0,
    sav_top_col: c_int = 0,
    sav_bot_row: c_int = 0,
    sav_bot_col: c_int = 0,
    top_row: c_int = 0,
    top_col: c_int = 0,
    bot_row: c_int = 0,
    bot_col: c_int = 0,
};
pub const struct_row_data = extern struct {
    str: [*c]u8 = null,
};
pub const struct_edit_data = extern struct {
    line: [*c][*c]struct_row_data = null,
    used: c_int = 0,
    size: c_int = 0,
    update: c_int = 0,
    pub const enable_editor = __root.enable_editor;
    pub const delete_editor = __root.delete_editor;
    pub const resize_editor = __root.resize_editor;
    pub const clear_editor = __root.clear_editor;
    pub const str_save_editor = __root.str_save_editor;
    pub const var_save_editor = __root.var_save_editor;
    pub const create_line = __root.create_line;
    pub const delete_line = __root.delete_line;
    pub const insert_line = __root.insert_line;
    pub const remove_line = __root.remove_line;
    pub const editor = __root.enable_editor;
};
pub const struct_input_data = extern struct {
    line: [*c]struct_edit_data = null,
    edit: [*c]struct_edit_data = null,
    line_name: [*c]u8 = null,
    edit_name: [*c]u8 = null,
    flags: c_int = 0,
    sav_top_row: c_int = 0,
    sav_top_col: c_int = 0,
    sav_bot_row: c_int = 0,
    sav_bot_col: c_int = 0,
    top_row: c_int = 0,
    top_col: c_int = 0,
    bot_row: c_int = 0,
    bot_col: c_int = 0,
    cur_row: c_int = 0,
    str_len: c_int = 0,
    raw_len: c_int = 0,
    str_pos: c_int = 0,
    raw_pos: c_int = 0,
    str_hid: c_int = 0,
    raw_hid: c_int = 0,
    str_off: c_int = 0,
    buf: [*c]u8 = null,
    tmp: [*c]u8 = null,
    cut: [*c]u8 = null,
};
pub const struct_session = extern struct {
    next: [*c]struct_session = null,
    prev: [*c]struct_session = null,
    map: [*c]struct_map_data = null,
    port: [*c]struct_port_data = null,
    mccp2: [*c]z_stream = null,
    mccp3: [*c]z_stream = null,
    ssl: gnutls_session_t = null,
    cur_terminal: struct_termios = @import("std").mem.zeroes(struct_termios),
    zig_abi_pad_session: [8]u8 = @import("std").mem.zeroes([8]u8),
    log: [*c]struct_log_data = null,
    scroll: [*c]struct_scroll_data = null,
    split: [*c]struct_split_data = null,
    input: [*c]struct_input_data = null,
    name: [*c]u8 = null,
    group: [*c]u8 = null,
    line_capturefile: [*c]u8 = null,
    line_captureindex: c_int = 0,
    gagline: c_int = 0,
    list: [22][*c]struct_listroot = @import("std").mem.zeroes([22][*c]struct_listroot),
    created: time_t = 0,
    cur_row: c_int = 0,
    sav_row: c_int = 0,
    cur_col: c_int = 0,
    sav_col: c_int = 0,
    wrap: c_int = 0,
    fgc: c_int = 0,
    bgc: c_int = 0,
    vtc: c_int = 0,
    socket: c_int = 0,
    telopts: c_int = 0,
    telopt_flag: [8]c_int = @import("std").mem.zeroes([8]c_int),
    event_flags: c_int = 0,
    config_flags: c_int = 0,
    flags: c_int = 0,
    charset: c_int = 0,
    session_host: [*c]u8 = null,
    session_ip: [*c]u8 = null,
    session_port: [*c]u8 = null,
    cmd_color: [*c]u8 = null,
    read_buf: [*c]u8 = null,
    read_len: c_int = 0,
    read_max: c_int = 0,
    connect_retry: c_ulonglong = 0,
    connect_error: c_int = 0,
    more_output: [*c]u8 = null,
    color: c_int = 0,
    color_patch: [100]u8 = @import("std").mem.zeroes([100]u8),
    packet_patch: c_ulonglong = 0,
    check_output: c_ulonglong = 0,
    scrollback_tab: c_int = 0,
    tab_width: c_int = 0,
    rand: c_ulonglong = 0,
    rkey: c_ushort = 0,
    proxy: [*c]struct_port_data = null,
    pub const do_banner = __root.do_banner;
    pub const do_buffer = __root.do_buffer;
    pub const do_grep = __root.do_grep;
    pub const init_buffer = __root.init_buffer;
    pub const add_line_buffer = __root.add_line_buffer;
    pub const show_buffer = __root.show_buffer;
    pub const buffer_up = __root.buffer_up;
    pub const buffer_clear = __root.buffer_clear;
    pub const buffer_down = __root.buffer_down;
    pub const buffer_get = __root.buffer_get;
    pub const buffer_home = __root.buffer_home;
    pub const buffer_end = __root.buffer_end;
    pub const buffer_find = __root.buffer_find;
    pub const buffer_jump = __root.buffer_jump;
    pub const buffer_lock = __root.buffer_lock;
    pub const buffer_refresh = __root.buffer_refresh;
    pub const buffer_write = __root.buffer_write;
    pub const buffer_info = __root.buffer_info;
    pub const do_chat = __root.do_chat;
    pub const chat_forward_session = __root.chat_forward_session;
    pub const clear_class = __root.clear_class;
    pub const do_cursor = __root.do_cursor;
    pub const inputline_rows = __root.inputline_rows;
    pub const cursor_backspace = __root.cursor_backspace;
    pub const cursor_brace = __root.cursor_brace;
    pub const cursor_buffer_down = __root.cursor_buffer_down;
    pub const cursor_buffer_end = __root.cursor_buffer_end;
    pub const cursor_buffer_home = __root.cursor_buffer_home;
    pub const cursor_buffer_lock = __root.cursor_buffer_lock;
    pub const cursor_buffer_up = __root.cursor_buffer_up;
    pub const cursor_check_line = __root.cursor_check_line;
    pub const cursor_check_line_modified = __root.cursor_check_line_modified;
    pub const cursor_clear_left = __root.cursor_clear_left;
    pub const cursor_clear_line = __root.cursor_clear_line;
    pub const cursor_clear_right = __root.cursor_clear_right;
    pub const cursor_convert_meta = __root.cursor_convert_meta;
    pub const cursor_delete = __root.cursor_delete;
    pub const cursor_delete_or_exit = __root.cursor_delete_or_exit;
    pub const cursor_delete_word_left = __root.cursor_delete_word_left;
    pub const cursor_delete_word_right = __root.cursor_delete_word_right;
    pub const cursor_echo = __root.cursor_echo;
    pub const cursor_end = __root.cursor_end;
    pub const cursor_enter = __root.cursor_enter;
    pub const cursor_enter_finish = __root.cursor_enter_finish;
    pub const cursor_escape_enter = __root.cursor_escape_enter;
    pub const cursor_flag = __root.cursor_flag;
    pub const cursor_get = __root.cursor_get;
    pub const cursor_history_find = __root.cursor_history_find;
    pub const cursor_history_next = __root.cursor_history_next;
    pub const cursor_history_prev = __root.cursor_history_prev;
    pub const cursor_history_search = __root.cursor_history_search;
    pub const cursor_home = __root.cursor_home;
    pub const cursor_info = __root.cursor_info;
    pub const cursor_insert = __root.cursor_insert;
    pub const cursor_macro = __root.cursor_macro;
    pub const cursor_move_page_down = __root.cursor_move_page_down;
    pub const cursor_move_down = __root.cursor_move_down;
    pub const cursor_move_left = __root.cursor_move_left;
    pub const cursor_move_left_word = __root.cursor_move_left_word;
    pub const cursor_move_right = __root.cursor_move_right;
    pub const cursor_move_right_word = __root.cursor_move_right_word;
    pub const cursor_move_page_up = __root.cursor_move_page_up;
    pub const cursor_move_up = __root.cursor_move_up;
    pub const cursor_page = __root.cursor_page;
    pub const cursor_paste_buffer = __root.cursor_paste_buffer;
    pub const cursor_position = __root.cursor_position;
    pub const cursor_redraw_input = __root.cursor_redraw_input;
    pub const cursor_redraw_line = __root.cursor_redraw_line;
    pub const cursor_redraw_singleline = __root.cursor_redraw_singleline;
    pub const cursor_redraw_multiline = __root.cursor_redraw_multiline;
    pub const cursor_redraw_edit = __root.cursor_redraw_edit;
    pub const cursor_set = __root.cursor_set;
    pub const cursor_soft_enter = __root.cursor_soft_enter;
    pub const cursor_suspend = __root.cursor_suspend;
    pub const cursor_tab = __root.cursor_tab;
    pub const echo_command = __root.echo_command;
    pub const init_input = __root.init_input;
    pub const free_input = __root.free_input;
    pub const do_map = __root.do_map;
    pub const follow_map = __root.follow_map;
    pub const show_vtmap = __root.show_vtmap;
    pub const map_mouse_handler = __root.map_mouse_handler;
    pub const delete_map = __root.delete_map;
    pub const map_at = __root.map_at;
    pub const map_center = __root.map_center;
    pub const map_color = __root.map_color;
    pub const map_create = __root.map_create;
    pub const map_debug = __root.map_debug;
    pub const map_delete = __root.map_delete;
    pub const map_destroy = __root.map_destroy;
    pub const map_dig = __root.map_dig;
    pub const map_entrance = __root.map_entrance;
    pub const map_exit = __root.map_exit;
    pub const map_exitflag = __root.map_exitflag;
    pub const map_explore = __root.map_explore;
    pub const map_find = __root.map_find;
    pub const map_flag = __root.map_flag;
    pub const map_get = __root.map_get;
    pub const map_global = __root.map_global;
    pub const map_goto = __root.map_goto;
    pub const map_info = __root.map_info;
    pub const map_insert = __root.map_insert;
    pub const map_jump = __root.map_jump;
    pub const map_landmark = __root.map_landmark;
    pub const map_leave = __root.map_leave;
    pub const map_legend = __root.map_legend;
    pub const map_link = __root.map_link;
    pub const map_list = __root.map_list;
    pub const map_map = __root.map_map;
    pub const map_move = __root.map_move;
    pub const map_name = __root.map_name;
    pub const map_offset = __root.map_offset;
    pub const map_read = __root.map_read;
    pub const map_resize = __root.map_resize;
    pub const map_return = __root.map_return;
    pub const map_roomflag = __root.map_roomflag;
    pub const map_run = __root.map_run;
    pub const map_set = __root.map_set;
    pub const map_sync = __root.map_sync;
    pub const map_terrain = __root.map_terrain;
    pub const map_travel = __root.map_travel;
    pub const map_undo = __root.map_undo;
    pub const map_uninsert = __root.map_uninsert;
    pub const map_unlandmark = __root.map_unlandmark;
    pub const map_unlink = __root.map_unlink;
    pub const map_unterrain = __root.map_unterrain;
    pub const map_update = __root.map_update;
    pub const map_vnum = __root.map_vnum;
    pub const map_write = __root.map_write;
    pub const mathexp = __root.mathexp;
    pub const is_math = __root.is_math;
    pub const get_ellipsis = __root.get_ellipsis;
    pub const get_number = __root.get_number;
    pub const get_ulong = __root.get_ulong;
    pub const get_double = __root.get_double;
    pub const get_number_string = __root.get_number_string;
    pub const mathswitch = __root.mathswitch;
    pub const do_configure = __root.do_configure;
    pub const do_daemon = __root.do_daemon;
    pub const daemon_attach = __root.daemon_attach;
    pub const daemon_detach = __root.daemon_detach;
    pub const daemon_input = __root.daemon_input;
    pub const daemon_kill = __root.daemon_kill;
    pub const daemon_list = __root.daemon_list;
    pub const do_kill = __root.do_kill;
    pub const show_node_with_wild = __root.show_node_with_wild;
    pub const remove_node_list = __root.remove_node_list;
    pub const delete_node = __root.delete_node;
    pub const delete_node_list = __root.delete_node_list;
    pub const delete_node_with_wild = __root.delete_node_with_wild;
    pub const init_list = __root.init_list;
    pub const copy_list = __root.copy_list;
    pub const do_dictionary = __root.do_dictionary;
    pub const spellcheck_count = __root.spellcheck_count;
    pub const do_edit = __root.do_edit;
    pub const edit_create = __root.edit_create;
    pub const edit_load = __root.edit_load;
    pub const edit_read = __root.edit_read;
    pub const edit_resume = __root.edit_resume;
    pub const edit_save = __root.edit_save;
    pub const edit_suspend = __root.edit_suspend;
    pub const edit_write = __root.edit_write;
    pub const do_draw = __root.do_draw;
    pub const check_all_events = __root.check_all_events;
    pub const mouse_handler = __root.mouse_handler;
    pub const do_read = __root.do_read;
    pub const do_write = __root.do_write;
    pub const read_file = __root.read_file;
    pub const write_node = __root.write_node;
    pub const do_help = __root.do_help;
    pub const do_history = __root.do_history;
    pub const add_line_history = __root.add_line_history;
    pub const insert_line_history = __root.insert_line_history;
    pub const repeat_history = __root.repeat_history;
    pub const write_history = __root.write_history;
    pub const read_history = __root.read_history;
    pub const history_delete = __root.history_delete;
    pub const history_get = __root.history_get;
    pub const history_insert = __root.history_insert;
    pub const history_list = __root.history_list;
    pub const history_read = __root.history_read;
    pub const history_write = __root.history_write;
    pub const do_line = __root.do_line;
    pub const line_background = __root.line_background;
    pub const line_benchmark = __root.line_benchmark;
    pub const line_capture = __root.line_capture;
    pub const line_convert = __root.line_convert;
    pub const line_debug = __root.line_debug;
    pub const line_gag = __root.line_gag;
    pub const line_ignore = __root.line_ignore;
    pub const line_json = __root.line_json;
    pub const line_local = __root.line_local;
    pub const line_log = __root.line_log;
    pub const line_logmode = __root.line_logmode;
    pub const line_logverbatim = __root.line_logverbatim;
    pub const line_msdp = __root.line_msdp;
    pub const line_multishot = __root.line_multishot;
    pub const line_oneshot = __root.line_oneshot;
    pub const line_quiet = __root.line_quiet;
    pub const line_strip = __root.line_strip;
    pub const line_substitute = __root.line_substitute;
    pub const line_verbatim = __root.line_verbatim;
    pub const line_verbose = __root.line_verbose;
    pub const logheader = __root.logheader;
    pub const init_log = __root.init_log;
    pub const free_log = __root.free_log;
    pub const logit = __root.logit;
    pub const write_html_header = __root.write_html_header;
    pub const vt102_to_html = __root.vt102_to_html;
    pub const syserr_printf = __root.syserr_printf;
    pub const do_end = __root.do_end;
    pub const do_nop = __root.do_nop;
    pub const do_test = __root.do_test;
    pub const arachnos_devel = __root.arachnos_devel;
    pub const arachnos_mudlist = __root.arachnos_mudlist;
    pub const msdp_update_var = __root.msdp_update_var;
    pub const msdp_update_varf = __root.msdp_update_varf;
    pub const msdp_update_var_instant = __root.msdp_update_var_instant;
    pub const msdp_send_update = __root.msdp_send_update;
    pub const msdp_get_var = __root.msdp_get_var;
    pub const process_msdp_varval = __root.process_msdp_varval;
    pub const msdp_command_list = __root.msdp_command_list;
    pub const msdp_command_report = __root.msdp_command_report;
    pub const msdp_command_reset = __root.msdp_command_reset;
    pub const msdp_command_send = __root.msdp_command_send;
    pub const msdp_command_unreport = __root.msdp_command_unreport;
    pub const msdp_configure_arachnos = __root.msdp_configure_arachnos;
    pub const write_msdp_to_descriptor = __root.write_msdp_to_descriptor;
    pub const search_nest_base_ses = __root.search_nest_base_ses;
    pub const search_nest_node_ses = __root.search_nest_node_ses;
    pub const set_nest_node_ses = __root.set_nest_node_ses;
    pub const add_nest_node_ses = __root.add_nest_node_ses;
    pub const connect_mud = __root.connect_mud;
    pub const write_line_mud = __root.write_line_mud;
    pub const read_buffer_mud = __root.read_buffer_mud;
    pub const readmud = __root.readmud;
    pub const process_more_output = __root.process_more_output;
    pub const process_one_line = __root.process_one_line;
    pub const execute = __root.execute;
    pub const command = __root.command;
    pub const parse_input = __root.parse_input;
    pub const parse_command = __root.parse_command;
    pub const is_speedwalk = __root.is_speedwalk;
    pub const substitute_speedwalk = __root.substitute_speedwalk;
    pub const process_speedwalk = __root.process_speedwalk;
    pub const parse_tintin_command = __root.parse_tintin_command;
    pub const cnt_arg_all = __root.cnt_arg_all;
    pub const get_arg_all = __root.get_arg_all;
    pub const sub_arg_all = __root.sub_arg_all;
    pub const get_arg_in_braces = __root.get_arg_in_braces;
    pub const sub_arg_in_braces = __root.sub_arg_in_braces;
    pub const get_arg_with_spaces = __root.get_arg_with_spaces;
    pub const get_arg_stop_spaces = __root.get_arg_stop_spaces;
    pub const sub_arg_stop_spaces = __root.sub_arg_stop_spaces;
    pub const get_arg_stop_digits = __root.get_arg_stop_digits;
    pub const get_arg_to_brackets = __root.get_arg_to_brackets;
    pub const get_arg_at_brackets = __root.get_arg_at_brackets;
    pub const get_arg_in_brackets = __root.get_arg_in_brackets;
    pub const get_char = __root.get_char;
    pub const write_mud = __root.write_mud;
    pub const check_one_line_multi = __root.check_one_line_multi;
    pub const check_one_line = __root.check_one_line;
    pub const do_pathdir = __root.do_pathdir;
    pub const is_pathdir = __root.is_pathdir;
    pub const exit_to_dir = __root.exit_to_dir;
    pub const dir_to_exit = __root.dir_to_exit;
    pub const check_append_path = __root.check_append_path;
    pub const path_create = __root.path_create;
    pub const path_describe = __root.path_describe;
    pub const path_delete = __root.path_delete;
    pub const path_destroy = __root.path_destroy;
    pub const path_get = __root.path_get;
    pub const path_goto = __root.path_goto;
    pub const path_insert = __root.path_insert;
    pub const path_load = __root.path_load;
    pub const path_map = __root.path_map;
    pub const path_move = __root.path_move;
    pub const path_run = __root.path_run;
    pub const path_save = __root.path_save;
    pub const path_start = __root.path_start;
    pub const path_stop = __root.path_stop;
    pub const path_swap = __root.path_swap;
    pub const path_undo = __root.path_undo;
    pub const path_unzip = __root.path_unzip;
    pub const path_walk = __root.path_walk;
    pub const path_zip = __root.path_zip;
    pub const path_new = __root.path_new;
    pub const path_end = __root.path_end;
    pub const port_call = __root.port_call;
    pub const port_color = __root.port_color;
    pub const port_flag = __root.port_flag;
    pub const port_group = __root.port_group;
    pub const port_ignore = __root.port_ignore;
    pub const port_initialize = __root.port_initialize;
    pub const port_info = __root.port_info;
    pub const port_message = __root.port_message;
    pub const port_name = __root.port_name;
    pub const port_prefix = __root.port_prefix;
    pub const port_proxy = __root.port_proxy;
    pub const port_rank = __root.port_rank;
    pub const port_send = __root.port_send;
    pub const port_uninitialize = __root.port_uninitialize;
    pub const port_who = __root.port_who;
    pub const port_zap = __root.port_zap;
    pub const port_new = __root.port_new;
    pub const close_port = __root.close_port;
    pub const process_port_connections = __root.process_port_connections;
    pub const port_forward_session = __root.port_forward_session;
    pub const port_socket_printf = __root.port_socket_printf;
    pub const port_telnet_printf = __root.port_telnet_printf;
    pub const port_log_printf = __root.port_log_printf;
    pub const port_printf = __root.port_printf;
    pub const process_port_input = __root.process_port_input;
    pub const get_port_commands = __root.get_port_commands;
    pub const port_name_change = __root.port_name_change;
    pub const port_receive_message = __root.port_receive_message;
    pub const port_puts = __root.port_puts;
    pub const find_port_buddy = __root.find_port_buddy;
    pub const find_port_group = __root.find_port_group;
    pub const do_screen = __root.do_screen;
    pub const init_inputregion = __root.init_inputregion;
    pub const get_row_index = __root.get_row_index;
    pub const get_col_index = __root.get_col_index;
    pub const get_row_index_arg = __root.get_row_index_arg;
    pub const get_col_index_arg = __root.get_col_index_arg;
    pub const erase_scroll_region = __root.erase_scroll_region;
    pub const erase_input_region = __root.erase_input_region;
    pub const erase_split_region = __root.erase_split_region;
    pub const erase_bot_region = __root.erase_bot_region;
    pub const erase_top_region = __root.erase_top_region;
    pub const erase_left_region = __root.erase_left_region;
    pub const erase_right_region = __root.erase_right_region;
    pub const erase_square = __root.erase_square;
    pub const fill_scroll_region = __root.fill_scroll_region;
    pub const fill_top_region = __root.fill_top_region;
    pub const fill_bot_region = __root.fill_bot_region;
    pub const fill_left_region = __root.fill_left_region;
    pub const fill_right_region = __root.fill_right_region;
    pub const fill_split_region = __root.fill_split_region;
    pub const inside_scroll_region = __root.inside_scroll_region;
    pub const print_scroll_region = __root.print_scroll_region;
    pub const set_grid_screen = __root.set_grid_screen;
    pub const add_line_screen = __root.add_line_screen;
    pub const set_line_screen = __root.set_line_screen;
    pub const get_link_screen = __root.get_link_screen;
    pub const do_session = __root.do_session;
    pub const do_snoop = __root.do_snoop;
    pub const do_zap = __root.do_zap;
    pub const activate_session = __root.activate_session;
    pub const new_session = __root.new_session;
    pub const connect_session = __root.connect_session;
    pub const cleanup_session = __root.cleanup_session;
    pub const dispose_session = __root.dispose_session;
    pub const show_message = __root.show_message;
    pub const show_error = __root.show_error;
    pub const show_debug = __root.show_debug;
    pub const show_info = __root.show_info;
    pub const tintin_header = __root.tintin_header;
    pub const socket_printf = __root.socket_printf;
    pub const telnet_printf = __root.telnet_printf;
    pub const print_lines = __root.print_lines;
    pub const show_lines = __root.show_lines;
    pub const tintin_printf = __root.tintin_printf;
    pub const tintin_printf2 = __root.tintin_printf2;
    pub const tintin_printf3 = __root.tintin_printf3;
    pub const tintin_puts = __root.tintin_puts;
    pub const tintin_puts2 = __root.tintin_puts2;
    pub const tintin_puts3 = __root.tintin_puts3;
    pub const do_split = __root.do_split;
    pub const do_unsplit = __root.do_unsplit;
    pub const init_split = __root.init_split;
    pub const reset_screen = __root.reset_screen;
    pub const dirty_screen = __root.dirty_screen;
    pub const split_show = __root.split_show;
    pub const ssl_negotiate = __root.ssl_negotiate;
    pub const get_raw_len_str_range_str_width = __root.get_raw_len_str_range_str_width;
    pub const get_raw_off_str_range_raw_width = __root.get_raw_off_str_range_raw_width;
    pub const raw_len_str = __root.raw_len_str;
    pub const str_len_raw = __root.str_len_raw;
    pub const str_ins_str = __root.str_ins_str;
    pub const calign = __root.calign;
    pub const lalign = __root.lalign;
    pub const ralign = __root.ralign;
    pub const ualign = __root.ualign;
    pub const valid_escape = __root.valid_escape;
    pub const fuzzy_color_code = __root.fuzzy_color_code;
    pub const dim_color_code = __root.dim_color_code;
    pub const lit_color_code = __root.lit_color_code;
    pub const do_suspend = __root.do_suspend;
    pub const test_gmcp = __root.test_gmcp;
    pub const get_mtts_val = __root.get_mtts_val;
    pub const client_translate_telopts = __root.client_translate_telopts;
    pub const client_write_compressed = __root.client_write_compressed;
    pub const client_send_sb_naws = __root.client_send_sb_naws;
    pub const announce_support = __root.announce_support;
    pub const server_translate_telopts = __root.server_translate_telopts;
    pub const write_mccp2 = __root.write_mccp2;
    pub const client_end_mccp2 = __root.client_end_mccp2;
    pub const end_mccp2 = __root.end_mccp2;
    pub const client_end_mccp3 = __root.client_end_mccp3;
    pub const end_mccp3 = __root.end_mccp3;
    pub const init_terminal = __root.init_terminal;
    pub const reset_terminal = __root.reset_terminal;
    pub const save_session_terminal = __root.save_session_terminal;
    pub const refresh_session_terminal = __root.refresh_session_terminal;
    pub const echo_on = __root.echo_on;
    pub const echo_off = __root.echo_off;
    pub const init_terminal_size = __root.init_terminal_size;
    pub const init_resize = __root.init_resize;
    pub const get_scroll_rows = __root.get_scroll_rows;
    pub const get_scroll_cols = __root.get_scroll_cols;
    pub const get_charset = __root.get_charset;
    pub const print_line = __root.print_line;
    pub const word_wrap = __root.word_wrap;
    pub const word_wrap_split = __root.word_wrap_split;
    pub const do_regexp = __root.do_regexp;
    pub const substitute = __root.substitute;
    pub const match = __root.match;
    pub const find = __root.find;
    pub const regexp_compare = __root.regexp_compare;
    pub const check_one_regexp = __root.check_one_regexp;
    pub const tintin_regexp_check = __root.tintin_regexp_check;
    pub const tintin_regexp = __root.tintin_regexp;
    pub const regexp_compile = __root.regexp_compile;
    pub const tintin_regexp_compile = __root.tintin_regexp_compile;
    pub const init_local = __root.init_local;
    pub const push_script_stack = __root.push_script_stack;
    pub const local_list = __root.local_list;
    pub const script_driver = __root.script_driver;
    pub const view_script = __root.view_script;
    pub const script_writer = __root.script_writer;
    pub const script_viewer = __root.script_viewer;
    pub const do_delay = __root.do_delay;
    pub const do_function = __root.do_function;
    pub const check_all_actions = __root.check_all_actions;
    pub const check_all_actions_multi = __root.check_all_actions_multi;
    pub const check_all_aliases = __root.check_all_aliases;
    pub const check_all_buttons = __root.check_all_buttons;
    pub const check_all_gags = __root.check_all_gags;
    pub const check_all_highlights = __root.check_all_highlights;
    pub const check_all_prompts = __root.check_all_prompts;
    pub const check_all_substitutions = __root.check_all_substitutions;
    pub const check_all_substitutions_multi = __root.check_all_substitutions_multi;
    pub const show_cpu = __root.show_cpu;
    pub const get_time = __root.get_time;
    pub const str_time = __root.str_time;
    pub const generate_rand = __root.generate_rand;
    pub const seed_rand = __root.seed_rand;
    pub const big5toutf8_info = __root.big5toutf8_info;
    pub const utf8tobig5_info = __root.utf8tobig5_info;
    pub const utf8_to_all = __root.utf8_to_all;
    pub const all_to_utf8 = __root.all_to_utf8;
    pub const is_euc_head = __root.is_euc_head;
    pub const get_euc_size = __root.get_euc_size;
    pub const get_euc_width = __root.get_euc_width;
    pub const do_replace = __root.do_replace;
    pub const get_variable_def = __root.get_variable_def;
    pub const valid_variable = __root.valid_variable;
    pub const string_raw_str_len = __root.string_raw_str_len;
    pub const string_str_raw_len = __root.string_str_raw_len;
    pub const translate_color_names = __root.translate_color_names;
    pub const get_color_names = __root.get_color_names;
    pub const numbertocharacter = __root.numbertocharacter;
    pub const charactertonumber = __root.charactertonumber;
    pub const delete_variable = __root.delete_variable;
    pub const justify_string = __root.justify_string;
    pub const format_string = __root.format_string;
    pub const search_variable = __root.search_variable;
    pub const get_variable = __root.get_variable;
    pub const set_variable = __root.set_variable;
    pub const init_pos = __root.init_pos;
    pub const hide_cursor = __root.hide_cursor;
    pub const show_cursor = __root.show_cursor;
    pub const save_pos = __root.save_pos;
    pub const goto_pos = __root.goto_pos;
    pub const restore_pos = __root.restore_pos;
    pub const reset = __root.reset;
    pub const scroll_region = __root.scroll_region;
    pub const reset_scroll_region = __root.reset_scroll_region;
    pub const get_vt102_width = __root.get_vt102_width;
    pub const strip_vt102_width = __root.strip_vt102_width;
    pub const strip_vt102_strlen = __root.strip_vt102_strlen;
    pub const strip_color_strlen = __root.strip_color_strlen;
    pub const interpret_vt102_codes = __root.interpret_vt102_codes;
    pub const catch_vt102_codes = __root.catch_vt102_codes;
    pub const banner = __root.do_banner;
    pub const buffer = __root.do_buffer;
    pub const grep = __root.do_grep;
    pub const up = __root.buffer_up;
    pub const clear = __root.buffer_clear;
    pub const down = __root.buffer_down;
    pub const get = __root.buffer_get;
    pub const home = __root.buffer_home;
    pub const end = __root.buffer_end;
    pub const jump = __root.buffer_jump;
    pub const lock = __root.buffer_lock;
    pub const refresh = __root.buffer_refresh;
    pub const info = __root.buffer_info;
    pub const chat = __root.do_chat;
    pub const class = __root.clear_class;
    pub const cursor = __root.do_cursor;
    pub const rows = __root.inputline_rows;
    pub const backspace = __root.cursor_backspace;
    pub const brace = __root.cursor_brace;
    pub const line = __root.cursor_check_line;
    pub const modified = __root.cursor_check_line_modified;
    pub const left = __root.cursor_clear_left;
    pub const right = __root.cursor_clear_right;
    pub const meta = __root.cursor_convert_meta;
    pub const delete = __root.cursor_delete;
    pub const echo = __root.cursor_echo;
    pub const enter = __root.cursor_enter;
    pub const finish = __root.cursor_enter_finish;
    pub const flag = __root.cursor_flag;
    pub const search = __root.cursor_history_search;
    pub const insert = __root.cursor_insert;
    pub const macro = __root.cursor_macro;
    pub const word = __root.cursor_move_left_word;
    pub const page = __root.cursor_page;
    pub const position = __root.cursor_position;
    pub const singleline = __root.cursor_redraw_singleline;
    pub const multiline = __root.cursor_redraw_multiline;
    pub const edit = __root.cursor_redraw_edit;
    pub const set = __root.cursor_set;
    pub const @"suspend" = __root.cursor_suspend;
    pub const tab = __root.cursor_tab;
    pub const vtmap = __root.show_vtmap;
    pub const handler = __root.map_mouse_handler;
    pub const at = __root.map_at;
    pub const center = __root.map_center;
    pub const create = __root.map_create;
    pub const debug = __root.map_debug;
    pub const destroy = __root.map_destroy;
    pub const dig = __root.map_dig;
    pub const entrance = __root.map_entrance;
    pub const exitflag = __root.map_exitflag;
    pub const explore = __root.map_explore;
    pub const global = __root.map_global;
    pub const goto = __root.map_goto;
    pub const landmark = __root.map_landmark;
    pub const leave = __root.map_leave;
    pub const legend = __root.map_legend;
    pub const move = __root.map_move;
    pub const offset = __root.map_offset;
    pub const resize = __root.map_resize;
    pub const @"return" = __root.map_return;
    pub const roomflag = __root.map_roomflag;
    pub const run = __root.map_run;
    pub const terrain = __root.map_terrain;
    pub const travel = __root.map_travel;
    pub const undo = __root.map_undo;
    pub const uninsert = __root.map_uninsert;
    pub const unlandmark = __root.map_unlandmark;
    pub const unterrain = __root.map_unterrain;
    pub const update = __root.map_update;
    pub const vnum = __root.map_vnum;
    pub const math = __root.is_math;
    pub const ellipsis = __root.get_ellipsis;
    pub const number = __root.get_number;
    pub const double = __root.get_double;
    pub const string = __root.get_number_string;
    pub const configure = __root.do_configure;
    pub const attach = __root.daemon_attach;
    pub const detach = __root.daemon_detach;
    pub const kill = __root.daemon_kill;
    pub const wild = __root.show_node_with_wild;
    pub const node = __root.delete_node;
    pub const dictionary = __root.do_dictionary;
    pub const count = __root.spellcheck_count;
    pub const load = __root.edit_load;
    pub const @"resume" = __root.edit_resume;
    pub const save = __root.edit_save;
    pub const draw = __root.do_draw;
    pub const events = __root.check_all_events;
    pub const file = __root.read_file;
    pub const help = __root.do_help;
    pub const history = __root.do_history;
    pub const background = __root.line_background;
    pub const benchmark = __root.line_benchmark;
    pub const capture = __root.line_capture;
    pub const convert = __root.line_convert;
    pub const gag = __root.line_gag;
    pub const ignore = __root.line_ignore;
    pub const json = __root.line_json;
    pub const local = __root.line_local;
    pub const logmode = __root.line_logmode;
    pub const logverbatim = __root.line_logverbatim;
    pub const msdp = __root.line_msdp;
    pub const multishot = __root.line_multishot;
    pub const oneshot = __root.line_oneshot;
    pub const quiet = __root.line_quiet;
    pub const strip = __root.line_strip;
    pub const verbatim = __root.line_verbatim;
    pub const verbose = __root.line_verbose;
    pub const header = __root.write_html_header;
    pub const html = __root.vt102_to_html;
    pub const nop = __root.do_nop;
    pub const @"test" = __root.do_test;
    pub const devel = __root.arachnos_devel;
    pub const mudlist = __root.arachnos_mudlist;
    pub const @"var" = __root.msdp_update_var;
    pub const varf = __root.msdp_update_varf;
    pub const instant = __root.msdp_update_var_instant;
    pub const varval = __root.process_msdp_varval;
    pub const report = __root.msdp_command_report;
    pub const unreport = __root.msdp_command_unreport;
    pub const arachnos = __root.msdp_configure_arachnos;
    pub const descriptor = __root.write_msdp_to_descriptor;
    pub const ses = __root.search_nest_base_ses;
    pub const mud = __root.connect_mud;
    pub const output = __root.process_more_output;
    pub const speedwalk = __root.is_speedwalk;
    pub const all = __root.cnt_arg_all;
    pub const braces = __root.get_arg_in_braces;
    pub const spaces = __root.get_arg_with_spaces;
    pub const digits = __root.get_arg_stop_digits;
    pub const brackets = __root.get_arg_to_brackets;
    pub const char = __root.get_char;
    pub const multi = __root.check_one_line_multi;
    pub const pathdir = __root.do_pathdir;
    pub const dir = __root.exit_to_dir;
    pub const path = __root.check_append_path;
    pub const describe = __root.path_describe;
    pub const start = __root.path_start;
    pub const stop = __root.path_stop;
    pub const swap = __root.path_swap;
    pub const unzip = __root.path_unzip;
    pub const walk = __root.path_walk;
    pub const zip = __root.path_zip;
    pub const new = __root.path_new;
    pub const call = __root.port_call;
    pub const initialize = __root.port_initialize;
    pub const message = __root.port_message;
    pub const prefix = __root.port_prefix;
    pub const rank = __root.port_rank;
    pub const uninitialize = __root.port_uninitialize;
    pub const who = __root.port_who;
    pub const zap = __root.port_zap;
    pub const connections = __root.process_port_connections;
    pub const commands = __root.get_port_commands;
    pub const change = __root.port_name_change;
    pub const buddy = __root.find_port_buddy;
    pub const screen = __root.do_screen;
    pub const inputregion = __root.init_inputregion;
    pub const arg = __root.get_row_index_arg;
    pub const region = __root.erase_scroll_region;
    pub const square = __root.erase_square;
    pub const snoop = __root.do_snoop;
    pub const @"error" = __root.show_error;
    pub const lines = __root.print_lines;
    pub const printf2 = __root.tintin_printf2;
    pub const printf3 = __root.tintin_printf3;
    pub const puts2 = __root.tintin_puts2;
    pub const puts3 = __root.tintin_puts3;
    pub const unsplit = __root.do_unsplit;
    pub const show = __root.split_show;
    pub const negotiate = __root.ssl_negotiate;
    pub const width = __root.get_raw_len_str_range_str_width;
    pub const str = __root.raw_len_str;
    pub const raw = __root.str_len_raw;
    pub const escape = __root.valid_escape;
    pub const code = __root.fuzzy_color_code;
    pub const gmcp = __root.test_gmcp;
    pub const val = __root.get_mtts_val;
    pub const compressed = __root.client_write_compressed;
    pub const naws = __root.client_send_sb_naws;
    pub const support = __root.announce_support;
    pub const terminal = __root.init_terminal;
    pub const on = __root.echo_on;
    pub const off = __root.echo_off;
    pub const size = __root.init_terminal_size;
    pub const cols = __root.get_scroll_cols;
    pub const regexp = __root.do_regexp;
    pub const compare = __root.regexp_compare;
    pub const check = __root.tintin_regexp_check;
    pub const compile = __root.regexp_compile;
    pub const stack = __root.push_script_stack;
    pub const driver = __root.script_driver;
    pub const script = __root.view_script;
    pub const writer = __root.script_writer;
    pub const viewer = __root.script_viewer;
    pub const delay = __root.do_delay;
    pub const function = __root.do_function;
    pub const actions = __root.check_all_actions;
    pub const aliases = __root.check_all_aliases;
    pub const buttons = __root.check_all_buttons;
    pub const gags = __root.check_all_gags;
    pub const highlights = __root.check_all_highlights;
    pub const prompts = __root.check_all_prompts;
    pub const substitutions = __root.check_all_substitutions;
    pub const cpu = __root.show_cpu;
    pub const utf8 = __root.all_to_utf8;
    pub const head = __root.is_euc_head;
    pub const replace = __root.do_replace;
    pub const def = __root.get_variable_def;
    pub const variable = __root.valid_variable;
    pub const len = __root.string_raw_str_len;
    pub const names = __root.translate_color_names;
    pub const pos = __root.init_pos;
    pub const codes = __root.interpret_vt102_codes;
};
pub const struct_listroot = extern struct {
    list: [*c][*c]struct_listnode = null,
    ses: [*c]struct_session = null,
    size: c_int = 0,
    used: c_int = 0,
    update: c_int = 0,
    multi_update: c_int = 0,
    type: c_short = 0,
    flags: c_short = 0,
    pub const kill_list = __root.kill_list;
    pub const free_list = __root.free_list;
    pub const show_node = __root.show_node;
    pub const show_list = __root.show_list;
    pub const remove_index_list = __root.remove_index_list;
    pub const delete_index_list = __root.delete_index_list;
    pub const search_index_list = __root.search_index_list;
    pub const locate_index_list = __root.locate_index_list;
    pub const bsearch_alpha_list = __root.bsearch_alpha_list;
    pub const bsearch_alnum_list = __root.bsearch_alnum_list;
    pub const bsearch_priority_list = __root.bsearch_priority_list;
    pub const nsearch_list = __root.nsearch_list;
    pub const create_node_list = __root.create_node_list;
    pub const insert_node_list = __root.insert_node_list;
    pub const insert_index_list = __root.insert_index_list;
    pub const update_node_list = __root.update_node_list;
    pub const search_node_list = __root.search_node_list;
    pub const search_nest_root = __root.search_nest_root;
    pub const search_base_node = __root.search_base_node;
    pub const search_nest_node = __root.search_nest_node;
    pub const search_nest_node_path = __root.search_nest_node_path;
    pub const search_nest_index = __root.search_nest_index;
    pub const update_nest_root = __root.update_nest_root;
    pub const update_nest_node = __root.update_nest_node;
    pub const delete_nest_node = __root.delete_nest_node;
    pub const delete_nest_node_with_wild = __root.delete_nest_node_with_wild;
    pub const get_nest_size_key = __root.get_nest_size_key;
    pub const get_nest_size_val = __root.get_nest_size_val;
    pub const get_nest_node_key = __root.get_nest_node_key;
    pub const get_nest_node_val = __root.get_nest_node_val;
    pub const get_nest_index = __root.get_nest_index;
    pub const set_nest_node = __root.set_nest_node;
    pub const add_nest_node = __root.add_nest_node;
    pub const copy_nest_node = __root.copy_nest_node;
    pub const node = __root.show_node;
    pub const root = __root.search_nest_root;
    pub const path = __root.search_nest_node_path;
    pub const wild = __root.delete_nest_node_with_wild;
    pub const key = __root.get_nest_size_key;
    pub const val = __root.get_nest_size_val;
};
pub const struct_scriptdata = extern struct {
    min: c_longlong = 0,
    max: c_longlong = 0,
    cnt: c_longlong = 0,
    inc: c_int = 0,
    cpy: [*c]u8 = null,
    hlt: [*c]u8 = null,
    str: [*c]u8 = null,
    arg: [*c]u8 = null,
};
pub const struct_script_regex = extern struct {
    str: [*c]u8 = null,
    bod: [*c]u8 = null,
    buf: [*c]u8 = null,
    val: c_int = 0,
};
const union_unnamed_31 = extern union {
    data: [*c]struct_scriptdata,
    regex: [*c]struct_script_regex,
};
pub const struct_scriptnode = extern struct {
    next: [*c]struct_scriptnode = null,
    prev: [*c]struct_scriptnode = null,
    unnamed_0: union_unnamed_31 = @import("std").mem.zeroes(union_unnamed_31),
    str: [*c]u8 = null,
    lvl: c_short = 0,
    type: c_short = 0,
    cmd: c_short = 0,
};
pub const struct_scriptroot = extern struct {
    next: [*c]struct_scriptnode = null,
    prev: [*c]struct_scriptnode = null,
    ses: [*c]struct_session = null,
    local: [*c]struct_listroot = null,
    list: c_int = 0,
};
pub const struct_process_data = extern struct {
    pid: pid_t = 0,
    uid: uid_t = 0,
    gid: gid_t = 0,
};
pub const struct_chat_data = extern struct {
    next: [*c]struct_chat_data = null,
    prev: [*c]struct_chat_data = null,
    update: [*c]struct_chat_data = null,
    name: [*c]u8 = null,
    ip: [*c]u8 = null,
    version: [*c]u8 = null,
    download: [*c]u8 = null,
    reply: [*c]u8 = null,
    prefix: [*c]u8 = null,
    paste_buf: [*c]u8 = null,
    color: [*c]u8 = null,
    group: [*c]u8 = null,
    port: c_int = 0,
    fd: c_int = 0,
    timeout: time_t = 0,
    flags: c_int = 0,
    paste_time: c_ulonglong = 0,
    file_pt: [*c]FILE = null,
    file_name: [*c]u8 = null,
    file_size: c_longlong = 0,
    file_block_cnt: c_int = 0,
    file_block_tot: c_int = 0,
    file_block_patch: c_int = 0,
    file_start_time: c_ulonglong = 0,
    pub const chat_socket_printf = __root.chat_socket_printf;
    pub const close_chat = __root.close_chat;
    pub const chat = __root.close_chat;
};
pub const struct_screen_data = extern struct {
    line: [*c][*c]struct_row_data = null,
    grid: [*c][*c]struct_row_data = null,
    flags: c_int = 0,
    rows: c_int = 0,
    cols: c_int = 0,
    height: c_int = 0,
    width: c_int = 0,
    tot_height: c_int = 0,
    tot_width: c_int = 0,
    pos_height: c_int = 0,
    pos_width: c_int = 0,
    minimized: c_int = 0,
    focus: c_int = 0,
    char_height: c_int = 0,
    char_width: c_int = 0,
    desk_rows: c_int = 0,
    desk_cols: c_int = 0,
    desk_height: c_int = 0,
    desk_width: c_int = 0,
    top_row: c_int = 0,
    bot_row: c_int = 0,
    cur_row: c_int = 0,
    cur_col: c_int = 0,
    max_row: c_int = 0,
    sav_lev: c_int = 0,
    sav_row: [1000]c_int = @import("std").mem.zeroes([1000]c_int),
    sav_col: [1000]c_int = @import("std").mem.zeroes([1000]c_int),
};
pub const struct_level_data = extern struct {
    background: c_uint = 0,
    convert: c_uint = 0,
    debug: c_uint = 0,
    grep: c_uint = 0,
    ignore: c_uint = 0,
    indent: c_uint = 0,
    info: c_uint = 0,
    input: c_uint = 0,
    local: c_uint = 0,
    mshot: c_uint = 0,
    quiet: c_uint = 0,
    repeat: c_uint = 0,
    scan: c_uint = 0,
    scroll: c_uint = 0,
    shots: c_uint = 0,
    verbatim: c_uint = 0,
    verbose: c_uint = 0,
};
pub const struct_stack_data = extern struct {
    name: [*c]u8 = null,
    index: c_int = 0,
};
pub const struct_str_data = extern struct {
    index: c_int = 0,
    max: c_int = 0,
    len: c_int = 0,
    flags: c_short = 0,
    blank: c_short = 0,
    pub const get_str_str = __root.get_str_str;
    pub const str = __root.get_str_str;
};
pub const struct_memory_data = extern struct {
    debug: [*c][*c]struct_stack_data = null,
    debug_len: c_int = 0,
    debug_max: c_int = 0,
    stack: [*c][*c]struct_str_data = null,
    stack_len: c_int = 0,
    stack_cap: c_int = 0,
    stack_max: c_int = 0,
    list: [*c][*c]struct_str_data = null,
    list_len: c_int = 0,
    list_max: c_int = 0,
    free: [*c]c_int = null,
    free_len: c_int = 0,
    free_max: c_int = 0,
};
pub const struct_system_data = extern struct {
    tt_dir: [*c]u8 = null,
    home: [*c]u8 = null,
    lang: [*c]u8 = null,
    os: [*c]u8 = null,
    term: [*c]u8 = null,
    exec: [*c]u8 = null,
};
pub const struct_tintin_data = extern struct {
    ses: [*c]struct_session = null,
    update: [*c]struct_session = null,
    dispose_next: [*c]struct_session = null,
    dispose_prev: [*c]struct_session = null,
    dispose_list: [*c]struct_listroot = null,
    banner_list: [*c]struct_listroot = null,
    chat: [*c]struct_chat_data = null,
    screen: [*c]struct_screen_data = null,
    level: [*c]struct_level_data = null,
    memory: [*c]struct_memory_data = null,
    system: [*c]struct_system_data = null,
    old_terminal: struct_termios = @import("std").mem.zeroes(struct_termios),
    zig_abi_pad_tintin: [8]u8 = @import("std").mem.zeroes([8]u8),
    detach_file: [*c]u8 = null,
    detach_port: c_int = 0,
    detach_info: struct_process_data = @import("std").mem.zeroes(struct_process_data),
    detach_sock: c_int = 0,
    attach_file: [*c]u8 = null,
    attach_pid: c_int = 0,
    attach_sock: c_int = 0,
    buf: [*c]u8 = null,
    out: [*c]u8 = null,
    mud_output_buf: [*c]u8 = null,
    mud_output_max: c_int = 0,
    mud_output_len: c_int = 0,
    mud_output_strip_buf: [*c]u8 = null,
    mud_output_strip_len: c_int = 0,
    mud_output_line: [*c]u8 = null,
    mccp_buf: [*c]u8 = null,
    mccp_len: c_int = 0,
    macro_buf: [50000]u8 = @import("std").mem.zeroes([50000]u8),
    is_result: [100]u8 = @import("std").mem.zeroes([100]u8),
    time: time_t = 0,
    time_daemon: time_t = 0,
    time_input: time_t = 0,
    time_session: time_t = 0,
    utime: c_ulonglong = 0,
    utime_next_delay: c_ulonglong = 0,
    utime_next_tick: c_ulonglong = 0,
    total_io_exec: c_longlong = 0,
    total_io_delay: c_longlong = 0,
    convert_time: c_longlong = 0,
    history_size: c_int = 0,
    command_ref: [32]c_ushort = @import("std").mem.zeroes([32]c_ushort),
    msdp_table_size: c_int = 0,
    flags: c_int = 0,
    event_flags: c_int = 0,
    script_stack: [1000][*c]struct_scriptroot = @import("std").mem.zeroes([1000][*c]struct_scriptroot),
    script_index: c_int = 0,
    tintin_char: u8 = 0,
    verbatim_char: u8 = 0,
    repeat_char: u8 = 0,
    match: [202]usize = @import("std").mem.zeroes([202]usize),
    vars: [100][*c]u8 = @import("std").mem.zeroes([100][*c]u8),
    cmds: [100][*c]u8 = @import("std").mem.zeroes([100][*c]u8),
    args: [100]c_int = @import("std").mem.zeroes([100]c_int),
    varc: c_int = 0,
    cmdc: c_int = 0,
    color_reset: [50]u8 = @import("std").mem.zeroes([50]u8),
};
pub const struct_window_data = extern struct {
    name: [*c]u8 = null,
    top_row: c_int = 0,
    top_col: c_int = 0,
    bot_row: c_int = 0,
    bot_col: c_int = 0,
    off_row: c_int = 0,
    off_col: c_int = 0,
    max_row: c_int = 0,
    max_col: c_int = 0,
    pos_row: c_int = 0,
    pos_col: c_int = 0,
    buffer: [*c][*c]struct_input_data = null,
};
pub const CMPFUNC = fn (a: ?*const anyopaque, b: ?*const anyopaque) callconv(.c) c_int;
pub const BUFFER = fn (ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) callconv(.c) void;
pub const CHAT = fn (arg1: [*c]u8, arg2: [*c]u8) callconv(.c) void;
pub const COMMAND = fn (ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) callconv(.c) [*c]struct_session;
pub const CURSOR = fn (ses: [*c]struct_session, arg: [*c]u8) callconv(.c) void;
pub const DAEMON = fn (ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) callconv(.c) void;
pub const EDIT = fn (ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) callconv(.c) [*c]struct_session;
pub const HISTORY = fn (ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) callconv(.c) void;
pub const LINE = fn (ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) callconv(.c) [*c]struct_session;
pub const MAP = fn (ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) callconv(.c) void;
pub const MSDP = fn (ses: [*c]struct_session, buddy: [*c]struct_port_data, index: c_int) callconv(.c) void;
pub const PATH = fn (ses: [*c]struct_session, arg: [*c]u8) callconv(.c) void;
pub const PORT = fn (ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) callconv(.c) [*c]struct_session;
pub const struct_buffer_type = extern struct {
    name: [*c]u8 = null,
    fun: ?*const BUFFER = null,
    desc: [*c]u8 = null,
};
pub const struct_charset_type = extern struct {
    name: [*c]u8 = null,
    html: [*c]u8 = null,
    mnes: [*c]u8 = null,
    flags: c_int = 0,
};
pub const struct_chat_type = extern struct {
    name: [*c]u8 = null,
    fun: ?*const CHAT = null,
    lval: c_int = 0,
    rval: c_int = 0,
    desc: [*c]u8 = null,
};
pub const struct_color_type = extern struct {
    name: [*c]u8 = null,
    code: [*c]u8 = null,
    len: c_int = 0,
};
pub const struct_command_type = extern struct {
    name: [*c]u8 = null,
    command: ?*const COMMAND = null,
    args: c_int = 0,
    type: c_int = 0,
};
pub const struct_cursor_type = extern struct {
    name: [*c]u8 = null,
    desc: [*c]u8 = null,
    code: [*c]u8 = null,
    flags: c_int = 0,
    fun: ?*const CURSOR = null,
    arg: [*c]u8 = null,
};
pub const struct_daemon_type = extern struct {
    name: [*c]u8 = null,
    fun: ?*const DAEMON = null,
    desc: [*c]u8 = null,
};
pub const struct_edit_type = extern struct {
    name: [*c]u8 = null,
    fun: ?*const EDIT = null,
    desc: [*c]u8 = null,
};
pub const struct_event_type = extern struct {
    name: [*c]u8 = null,
    level: c_int = 0,
    flags: c_int = 0,
    group: [*c]u8 = null,
    desc: [*c]u8 = null,
};
pub const struct_history_type = extern struct {
    name: [*c]u8 = null,
    fun: ?*const HISTORY = null,
    desc: [*c]u8 = null,
};
pub const struct_list_type = extern struct {
    name: [*c]u8 = null,
    name_multi: [*c]u8 = null,
    mode: c_int = 0,
    args: c_int = 0,
    script_arg: c_int = 0,
    priority_arg: c_int = 0,
    flags: c_int = 0,
};
pub const struct_map_type = extern struct {
    name: [*c]u8 = null,
    fun: ?*const MAP = null,
    flags: c_int = 0,
    check: c_int = 0,
    desc: [*c]u8 = null,
};
pub const struct_map_legend_type = extern struct {
    name: [*c]u8 = null,
    group: [*c]u8 = null,
    min: [*c]u8 = null,
    max: [*c]u8 = null,
};
pub const struct_map_legend_group_type = extern struct {
    name: [*c]u8 = null,
    group: [*c]u8 = null,
    min_row: c_int = 0,
    min_col: c_int = 0,
    max_row: c_int = 0,
    max_col: c_int = 0,
    start: c_int = 0,
    end: c_int = 0,
    reset: [*c]u8 = null,
};
pub const struct_msdp_type = extern struct {
    name: [*c]u8 = null,
    flags: c_int = 0,
    rank: c_int = 0,
    fun: ?*const MSDP = null,
};
pub const struct_path_type = extern struct {
    name: [*c]u8 = null,
    fun: ?*const PATH = null,
    desc: [*c]u8 = null,
};
pub const struct_port_type = extern struct {
    name: [*c]u8 = null,
    fun: ?*const PORT = null,
    lval: c_int = 0,
    rval: c_int = 0,
    desc: [*c]u8 = null,
};
pub const struct_pulse_type = extern struct {
    update_input: u8 = 0,
    update_sessions: u8 = 0,
    update_delays: u8 = 0,
    update_daemon: u8 = 0,
    update_chat: u8 = 0,
    update_port: u8 = 0,
    update_ticks: u8 = 0,
    update_paths: u8 = 0,
    update_packets: u8 = 0,
    update_terminal: u8 = 0,
    update_memory: u8 = 0,
    update_time: u8 = 0,
};
pub const struct_rank_type = extern struct {
    name: [*c]u8 = null,
    flags: c_int = 0,
};
pub const struct_stamp_type = extern struct {
    name: [*c]u8 = null,
    length: c_int = 0,
    desc: [*c]u8 = null,
};
pub const struct_substitution_type = extern struct {
    name: [*c]u8 = null,
    bitvector: c_int = 0,
};
pub const struct_timer_type = extern struct {
    name: [*c]u8 = null,
};
pub const struct_telopt_type = extern struct {
    name: [*c]u8 = null,
    want: c_int = 0,
    flags: c_int = 0,
};
pub extern fn do_banner(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn str_to_base64(in: [*c]u8, out: [*c]u8, size: usize) c_int;
pub extern fn base64_to_str(in: [*c]u8, out: [*c]u8, size: usize) c_int;
pub extern fn str_to_base64z(in: [*c]u8, out: [*c]u8, size: usize) void;
pub extern fn base64z_to_str(in: [*c]u8, out: [*c]u8, size: usize) void;
pub extern fn str_to_base252(in: [*c]u8, out: [*c]u8, size: usize) c_int;
pub extern fn base252_to_str(in: [*c]u8, out: [*c]u8, size: usize) c_int;
pub extern fn str_to_base252z(in: [*c]u8, out: [*c]u8, size: usize) void;
pub extern fn base252z_to_str(in: [*c]u8, out: [*c]u8, size: usize) void;
pub extern fn do_buffer(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn do_grep(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn init_buffer(ses: [*c]struct_session, size: c_int) void;
pub extern fn add_line_buffer(ses: [*c]struct_session, line: [*c]u8, more_output: c_int) void;
pub extern fn show_buffer(ses: [*c]struct_session) c_int;
pub extern fn buffer_up(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn buffer_clear(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn buffer_down(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn buffer_get(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn buffer_home(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn buffer_end(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn buffer_find(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn buffer_jump(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn buffer_lock(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn buffer_refresh(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn buffer_write(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn buffer_info(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn do_chat(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn process_chat_connections(read_set: [*c]fd_set, write_set: [*c]fd_set, exc_set: [*c]fd_set) void;
pub extern fn chat_socket_printf(buddy: [*c]struct_chat_data, format: [*c]u8, ...) void;
pub extern fn close_chat(buddy: [*c]struct_chat_data, unlink: c_int) void;
pub extern fn chat_forward_session(ses: [*c]struct_session, linelog: [*c]u8) void;
pub extern fn chat_accept(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_call(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_cancelfile(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_color(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_decline(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_dnd(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_downloaddir(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_emote(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_filestat(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_group(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_forward(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_forwardall(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_ignore(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_initialize(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_info(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_ip(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_message(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_name(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_paste(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_peek(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_ping(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_prefix(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_private(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_public(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_reply(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_request(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_send(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_sendfile(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_transfer(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_serve(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_uninitialize(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_who(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn chat_zap(arg1: [*c]u8, arg2: [*c]u8) void;
pub extern fn clear_class(ses: [*c]struct_session, group: [*c]struct_listnode) void;
pub extern fn init_commands() void;
pub extern fn do_cursor(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn inputline_cur_row() c_int;
pub extern fn inputline_cur_col() c_int;
pub extern fn inputline_cur_off() c_int;
pub extern fn inputline_cur_str_len() c_int;
pub extern fn inputline_max_str_len() c_int;
pub extern fn inputline_max_row() c_int;
pub extern fn inputline_editor() c_int;
pub extern fn inputline_rows(ses: [*c]struct_session) c_int;
pub extern fn inputline_insert(arg: [*c]u8, str_pos: c_int) void;
pub extern fn inputline_set(arg: [*c]u8, str_pos: c_int) void;
pub extern fn cursor_backspace(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_brace(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_buffer_down(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_buffer_end(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_buffer_home(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_buffer_lock(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_buffer_up(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_check_line(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_check_line_modified(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_clear_left(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_clear_line(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_clear_right(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_convert_meta(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_delete(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_delete_or_exit(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_delete_word_left(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_delete_word_right(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_echo(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_end(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_enter(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_enter_finish(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_escape_enter(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_flag(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_get(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_history_find(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_history_next(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_history_prev(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_history_search(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_home(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_info(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_insert(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_macro(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_move_page_down(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_move_down(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_move_left(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_move_left_word(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_move_right(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_move_right_word(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_move_page_up(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_move_up(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_page(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_paste_buffer(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_position(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_redraw_input(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_redraw_line(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_redraw_singleline(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_redraw_multiline(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_redraw_edit(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_set(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_soft_enter(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_suspend(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn cursor_tab(ses: [*c]struct_session, arg: [*c]u8) void;
pub extern fn process_input() void;
pub extern fn read_line(input: [*c]u8, len: c_int) void;
pub extern fn read_key(input: [*c]u8, len: c_int) void;
pub extern fn check_key(input: [*c]u8, len: c_int) c_int;
pub extern fn convert_meta(input: [*c]u8, output: [*c]u8, eol: c_int) void;
pub extern fn str_convert_meta(input: [*c]u8, eol: c_int) [*c]u8;
pub extern fn echo_command(ses: [*c]struct_session, line: [*c]u8) void;
pub extern fn init_input(ses: [*c]struct_session, top_row: c_int, top_col: c_int, bot_row: c_int, bot_col: c_int) void;
pub extern fn free_input(ses: [*c]struct_session) void;
pub extern fn input_printf(format: [*c]u8, ...) void;
pub extern fn modified_input() void;
pub extern fn do_map(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8, arg4: [*c]u8) [*c]struct_session;
pub extern fn delete_room_data(room: [*c]struct_room_data) void;
pub extern fn follow_map(ses: [*c]struct_session, argument: [*c]u8) c_int;
pub extern fn show_vtmap(ses: [*c]struct_session, clear: c_int) void;
pub extern fn map_mouse_handler(ses: [*c]struct_session, left: [*c]u8, right: [*c]u8, row: c_int, col: c_int, rev_row: c_int, rev_col: c_int, height: c_int, width: c_int) void;
pub extern fn delete_map(ses: [*c]struct_session) c_int;
pub extern fn map_at(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_center(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_color(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_create(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_debug(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_delete(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_destroy(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_dig(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_entrance(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_exit(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_exitflag(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_explore(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_find(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_flag(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_get(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_global(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_goto(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_info(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_insert(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_jump(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_landmark(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_leave(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_legend(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_link(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_list(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_map(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_move(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_name(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_offset(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_read(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_resize(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_return(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_roomflag(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_run(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_set(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_sync(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_terrain(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_travel(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_undo(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_uninsert(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_unlandmark(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_unlink(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_unterrain(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_update(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_vnum(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn map_write(ses: [*c]struct_session, arg: [*c]u8, arg1: [*c]u8, arg2: [*c]u8, arg3: [*c]u8) void;
pub extern fn mathexp(ses: [*c]struct_session, str: [*c]u8, result: [*c]u8, seed: c_int) c_longdouble;
pub extern fn is_math(ses: [*c]struct_session, str: [*c]u8) c_int;
pub extern fn get_ellipsis(ses: [*c]struct_session, size: c_uint, name: [*c]u8, min: [*c]c_int, max: [*c]c_int) c_int;
pub extern fn get_number(ses: [*c]struct_session, str: [*c]u8) c_longdouble;
pub extern fn get_ulong(ses: [*c]struct_session, str: [*c]u8) c_ulonglong;
pub extern fn get_double(ses: [*c]struct_session, str: [*c]u8) c_longdouble;
pub extern fn get_number_string(ses: [*c]struct_session, str: [*c]u8, result: [*c]u8) void;
pub extern fn mathswitch(ses: [*c]struct_session, left: [*c]u8, right: [*c]u8) c_longdouble;
pub extern fn tintoi(str: [*c]u8) c_longdouble;
pub extern fn tintou(str: [*c]u8) c_ulonglong;
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
pub extern fn cmp_list_str(a: ?*const anyopaque, b: ?*const anyopaque) c_int;
pub extern fn cmp_list_num(a: ?*const anyopaque, b: ?*const anyopaque) c_int;
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
pub extern fn regexp_compare(ses: [*c]struct_session, regex: ?*pcre2_code_8, str: [*c]u8, exp: [*c]u8, option: c_int, flag: c_int) c_int;
pub extern fn check_one_regexp(ses: [*c]struct_session, node: [*c]struct_listnode, line: [*c]u8, original: [*c]u8, option: c_int) c_int;
pub extern fn tintin_regexp_check(ses: [*c]struct_session, exp: [*c]u8) c_int;
pub extern fn tintin_regexp(ses: [*c]struct_session, pcre: ?*pcre2_code_8, str: [*c]u8, exp: [*c]u8, option: c_int, flag: c_int) c_int;
pub extern fn regexp_compile(ses: [*c]struct_session, exp: [*c]u8, option: c_int) ?*pcre2_code_8;
pub extern fn tintin_regexp_compile(ses: [*c]struct_session, node: [*c]struct_listnode, exp: [*c]u8, option: c_int) ?*pcre2_code_8;
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

pub const __VERSION__ = "Aro aro-zig";
pub const __Aro__ = "";
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __GNUC__ = @as(c_int, 7);
pub const __GNUC_MINOR__ = @as(c_int, 1);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 0);
pub const __ARO_EMULATE_NO__ = @as(c_int, 0);
pub const __ARO_EMULATE_CLANG__ = @as(c_int, 1);
pub const __ARO_EMULATE_GCC__ = @as(c_int, 2);
pub const __ARO_EMULATE_MSVC__ = @as(c_int, 3);
pub const __ARO_EMULATE__ = __ARO_EMULATE_GCC__;
pub inline fn __building_module(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`"); // <builtin>:33:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`"); // <builtin>:34:9
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __EVEX512__ = @as(c_int, 1);
pub const __AVX512CD__ = @as(c_int, 1);
pub const __AVX512VPOPCNTDQ__ = @as(c_int, 1);
pub const __AVX512VNNI__ = @as(c_int, 1);
pub const __AVX512BF16__ = @as(c_int, 1);
pub const __AVX512DQ__ = @as(c_int, 1);
pub const __AVX512BITALG__ = @as(c_int, 1);
pub const __AVX512BW__ = @as(c_int, 1);
pub const __AVX512VL__ = @as(c_int, 1);
pub const __EVEX256__ = @as(c_int, 1);
pub const __AVX512VBMI__ = @as(c_int, 1);
pub const __AVX512VBMI2__ = @as(c_int, 1);
pub const __AVX512IFMA__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __CLZERO__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX512F__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __ATOMIC_BOOL_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WINT_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_SHORT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_INT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_POINTER_LOCK_FREE = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SCHAR_WIDTH__ = @as(c_int, 8);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __LONG_LONG_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIG_ATOMIC_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __BITINT_MAXWIDTH__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 10);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTPTR_TYPE__ = c_long;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // <builtin>:168:9
pub const __INTMAX_C = __helpers.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // <builtin>:171:9
pub const __UINTMAX_C = __helpers.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __SIZE_TYPE__ = c_ulong;
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // <builtin>:197:9
pub const __INT64_C = __helpers.L_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // <builtin>:222:9
pub const __UINT32_C = __helpers.U_SUFFIX;
pub const __UINT32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // <builtin>:231:9
pub const __UINT64_C = __helpers.UL_SUFFIX;
pub const __UINT64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const INT_LEAST8_FMTd__ = "hhd";
pub const INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const UINT_LEAST8_FMTo__ = "hho";
pub const UINT_LEAST8_FMTu__ = "hhu";
pub const UINT_LEAST8_FMTx__ = "hhx";
pub const UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const INT_FAST8_FMTd__ = "hhd";
pub const INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const UINT_FAST8_FMTo__ = "hho";
pub const UINT_FAST8_FMTu__ = "hhu";
pub const UINT_FAST8_FMTx__ = "hhx";
pub const UINT_FAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const INT_LEAST16_FMTd__ = "hd";
pub const INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST16_FMTo__ = "ho";
pub const UINT_LEAST16_FMTu__ = "hu";
pub const UINT_LEAST16_FMTx__ = "hx";
pub const UINT_LEAST16_FMTX__ = "hX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const INT_FAST16_FMTd__ = "hd";
pub const INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_FAST16_FMTo__ = "ho";
pub const UINT_FAST16_FMTu__ = "hu";
pub const UINT_FAST16_FMTx__ = "hx";
pub const UINT_FAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const INT_LEAST32_FMTd__ = "d";
pub const INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST32_FMTo__ = "o";
pub const UINT_LEAST32_FMTu__ = "u";
pub const UINT_LEAST32_FMTx__ = "x";
pub const UINT_LEAST32_FMTX__ = "X";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const INT_FAST32_FMTd__ = "d";
pub const INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_FAST32_FMTo__ = "o";
pub const UINT_FAST32_FMTu__ = "u";
pub const UINT_FAST32_FMTx__ = "x";
pub const UINT_FAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const INT_LEAST64_FMTd__ = "ld";
pub const INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_LEAST64_FMTo__ = "lo";
pub const UINT_LEAST64_FMTu__ = "lu";
pub const UINT_LEAST64_FMTx__ = "lx";
pub const UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const INT_FAST64_FMTd__ = "ld";
pub const INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_FMTo__ = "lo";
pub const UINT_FAST64_FMTu__ = "lu";
pub const UINT_FAST64_FMTx__ = "lx";
pub const UINT_FAST64_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = "";
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = "";
pub const __FLT16_HAS_QUIET_NAN__ = "";
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = "";
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = "";
pub const __FLT_HAS_QUIET_NAN__ = "";
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = "";
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = "";
pub const __DBL_HAS_QUIET_NAN__ = "";
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = "";
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = "";
pub const __LDBL_HAS_QUIET_NAN__ = "";
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const _GNU_SOURCE = @as(c_int, 1);
pub const _FORTIFY_SOURCE = @as(c_int, 0);
pub const _STDIO_H = @as(c_int, 1);
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &maj;
    _ = &min;
    return @as(c_int, 0);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`"); // /usr/include/features.h:186:9
pub const _ISOC95_SOURCE = @as(c_int, 1);
pub const _ISOC99_SOURCE = @as(c_int, 1);
pub const _ISOC11_SOURCE = @as(c_int, 1);
pub const _ISOC2X_SOURCE = @as(c_int, 1);
pub const _XOPEN_SOURCE = @as(c_int, 700);
pub const _XOPEN_SOURCE_EXTENDED = @as(c_int, 1);
pub const _LARGEFILE64_SOURCE = @as(c_int, 1);
pub const _DYNAMIC_STACK_SIZE_SOURCE = @as(c_int, 1);
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 1);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __USE_XOPEN = @as(c_int, 1);
pub const __USE_XOPEN_EXTENDED = @as(c_int, 1);
pub const __USE_UNIX98 = @as(c_int, 1);
pub const _LARGEFILE_SOURCE = @as(c_int, 1);
pub const __USE_XOPEN2K8XSI = @as(c_int, 1);
pub const __USE_XOPEN2KXSI = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_LARGEFILE = @as(c_int, 1);
pub const __USE_LARGEFILE64 = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_DYNAMIC_STACK_SIZE = @as(c_int, 1);
pub const __USE_GNU = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 35);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:45:10
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__builtin.has_builtin(name)) {
    _ = &name;
    return __builtin.has_builtin(name);
}
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:55:10
pub const __LEAF = @compileError("unable to translate macro: undefined identifier `__leaf__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:65:11
pub const __LEAF_ATTR = @compileError("unable to translate macro: undefined identifier `__leaf__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:66:11
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:82:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:124:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:125:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin.object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin.object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin.object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin.object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub inline fn __glibc_safe_len_cond(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(__l <= __helpers.div(__osz, __s)) {
    _ = &__l;
    _ = &__s;
    _ = &__osz;
    return __l <= __helpers.div(__osz, __s);
}
pub const __glibc_unsigned_or_positive = @compileError("unable to translate C expr: unexpected token '__typeof'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:160:9
pub inline fn __glibc_safe_or_unknown_len(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(((__glibc_unsigned_or_positive(__l) != 0) and (__builtin.constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and (__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0)) {
    _ = &__l;
    _ = &__s;
    _ = &__osz;
    return ((__glibc_unsigned_or_positive(__l) != 0) and (__builtin.constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and (__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0);
}
pub inline fn __glibc_unsafe_len(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(((__glibc_unsigned_or_positive(__l) != 0) and (__builtin.constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and !(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0)) {
    _ = &__l;
    _ = &__s;
    _ = &__osz;
    return ((__glibc_unsigned_or_positive(__l) != 0) and (__builtin.constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and !(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0);
}
pub const __glibc_fortify = @compileError("unable to translate macro: undefined identifier `__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:185:9
pub const __glibc_fortify_n = @compileError("unable to translate macro: undefined identifier `__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:195:9
pub const __warnattr = @compileError("unable to translate macro: undefined identifier `__warning__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:203:10
pub const __errordecl = @compileError("unable to translate macro: undefined identifier `__error__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:204:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:216:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:247:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:254:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:256:11
pub const __ASMNAME = @compileError("unable to translate macro: undefined identifier `__USER_LABEL_PREFIX__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:259:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:281:10
pub const __attribute_alloc_size__ = @compileError("unable to translate macro: undefined identifier `__alloc_size__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:289:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:298:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:308:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:315:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:321:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:330:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:331:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:339:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:349:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:362:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:372:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:384:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:397:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:406:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:424:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:433:10
pub const __extern_inline = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:455:11
pub const __extern_always_inline = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:456:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __va_arg_pack = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg_pack`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:467:10
pub const __va_arg_pack_len = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg_pack_len`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:468:10
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:495:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin.expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin.expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin.expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin.expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub inline fn __attribute_copy__(arg: anytype) void {
    _ = &arg;
    return;
}
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR2_DECL(name: anytype) void {
    _ = &name;
    return;
}
pub inline fn __LDBL_REDIR_DECL(name: anytype) void {
    _ = &name;
    return;
}
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:635:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:636:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub inline fn __fortified_attr_access(a: anytype, o: anytype, s: anytype) void {
    _ = &a;
    _ = &o;
    _ = &s;
    return;
}
pub inline fn __attr_access(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __attr_access_none(argno: anytype) void {
    _ = &argno;
    return;
}
pub inline fn __attr_dealloc(dealloc: anytype, argno: anytype) void {
    _ = &dealloc;
    _ = &argno;
    return;
}
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`"); // /usr/include/x86_64-linux-gnu/sys/cdefs.h:700:10
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __need_size_t = "";
pub const __need_NULL = "";
pub const __STDC_VERSION_STDDEF_H__ = @as(c_long, 202311);
pub const NULL = __helpers.cast(?*anyopaque, @as(c_int, 0));
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /opt/zig-x86_64-linux-0.16.0/lib/compiler/aro/include/stddef.h:18:9
pub const __need___va_list = "";
pub const __STDC_VERSION_STDARG_H__ = @as(c_int, 0);
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /opt/zig-x86_64-linux-0.16.0/lib/compiler/aro/include/stdarg.h:12:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /opt/zig-x86_64-linux-0.16.0/lib/compiler/aro/include/stdarg.h:14:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /opt/zig-x86_64-linux-0.16.0/lib/compiler/aro/include/stdarg.h:15:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /opt/zig-x86_64-linux-0.16.0/lib/compiler/aro/include/stdarg.h:18:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /opt/zig-x86_64-linux-0.16.0/lib/compiler/aro/include/stdarg.h:22:9
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`"); // /usr/include/x86_64-linux-gnu/bits/typesizes.h:73:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h:106:9
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = __helpers.promoteIntLiteral(c_int, 0x8000, .hex);
pub const __cookie_io_functions_t_defined = @as(c_int, 1);
pub const _VA_LIST_DEFINED = "";
pub const __off_t_defined = "";
pub const __off64_t_defined = "";
pub const __ssize_t_defined = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const SEEK_DATA = @as(c_int, 3);
pub const SEEK_HOLE = @as(c_int, 4);
pub const P_tmpdir = "/tmp";
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = __helpers.promoteIntLiteral(c_int, 238328, .decimal);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const L_cuserid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const _PRINTF_NAN_LEN_MAX = @as(c_int, 4);
pub const RENAME_NOREPLACE = @as(c_int, 1) << @as(c_int, 0);
pub const RENAME_EXCHANGE = @as(c_int, 1) << @as(c_int, 1);
pub const RENAME_WHITEOUT = @as(c_int, 1) << @as(c_int, 2);
pub const __attr_dealloc_fclose = __attr_dealloc(fclose, @as(c_int, 1));
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 1);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 1);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const __f128 = @compileError("unable to translate macro: undefined identifier `f128`"); // /usr/include/x86_64-linux-gnu/bits/floatn.h:65:12
pub const __CFLOAT128 = @compileError("unable to translate: invalid numeric type"); // /usr/include/x86_64-linux-gnu/bits/floatn.h:77:12
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 1);
pub const __f32 = @compileError("unable to translate macro: undefined identifier `f32`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:93:12
pub const __f64 = @compileError("unable to translate macro: undefined identifier `f64`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:105:12
pub const __f32x = @compileError("unable to translate macro: undefined identifier `f32x`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:113:12
pub const __f64x = @compileError("unable to translate macro: undefined identifier `f64x`"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:125:12
pub const __CFLOAT32 = @compileError("unable to translate: invalid numeric type"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:151:12
pub const __CFLOAT64 = @compileError("unable to translate: invalid numeric type"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:163:12
pub const __CFLOAT32X = @compileError("unable to translate: invalid numeric type"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:171:12
pub const __CFLOAT64X = @compileError("unable to translate: invalid numeric type"); // /usr/include/x86_64-linux-gnu/bits/floatn-common.h:183:12
pub const ZLIB_H = "";
pub const ZCONF_H = "";
pub const STDC = "";
pub const STDC99 = "";
pub const z_const = "";
pub const MAX_MEM_LEVEL = @as(c_int, 9);
pub const MAX_WBITS = @as(c_int, 15);
pub inline fn OF(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn Z_ARG(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const ZEXTERN = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/zconf.h:377:11
pub const ZEXPORT = "";
pub const ZEXPORTVA = "";
pub const FAR = "";
pub const _LIBC_LIMITS_H_ = @as(c_int, 1);
pub const MB_LEN_MAX = @as(c_int, 16);
pub const _GCC_LIMITS_H_ = "";
pub const __CLANG_LIMITS_H = "";
pub const LONG_LONG_MAX = __LONG_LONG_MAX__;
pub const LONG_LONG_MIN = -__LONG_LONG_MAX__ - @as(c_longlong, 1);
pub const ULONG_LONG_MAX = (__LONG_LONG_MAX__ * @as(c_ulonglong, 2)) + @as(c_ulonglong, 1);
pub const SCHAR_MAX = __SCHAR_MAX__;
pub const SHRT_MAX = __SHRT_MAX__;
pub const INT_MAX = __INT_MAX__;
pub const LONG_MAX = __LONG_MAX__;
pub const SCHAR_MIN = -__SCHAR_MAX__ - @as(c_int, 1);
pub const SHRT_MIN = -__SHRT_MAX__ - @as(c_int, 1);
pub const INT_MIN = -__INT_MAX__ - @as(c_int, 1);
pub const LONG_MIN = -__LONG_MAX__ - @as(c_long, 1);
pub const UCHAR_MAX = (__SCHAR_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const USHRT_MAX = (__SHRT_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const UINT_MAX = (__INT_MAX__ * @as(c_uint, 2)) + @as(c_uint, 1);
pub const ULONG_MAX = (__LONG_MAX__ * @as(c_ulong, 2)) + @as(c_ulong, 1);
pub const CHAR_BIT = __CHAR_BIT__;
pub const CHAR_MIN = SCHAR_MIN;
pub const CHAR_MAX = __SCHAR_MAX__;
pub const LLONG_MIN = -__LONG_LONG_MAX__ - @as(c_longlong, 1);
pub const LLONG_MAX = __LONG_LONG_MAX__;
pub const ULLONG_MAX = (__LONG_LONG_MAX__ * @as(c_ulonglong, 2)) + @as(c_ulonglong, 1);
pub const CHAR_WIDTH = @as(c_int, 8);
pub const SCHAR_WIDTH = @as(c_int, 8);
pub const UCHAR_WIDTH = @as(c_int, 8);
pub const SHRT_WIDTH = @as(c_int, 16);
pub const USHRT_WIDTH = @as(c_int, 16);
pub const INT_WIDTH = @as(c_int, 32);
pub const UINT_WIDTH = @as(c_int, 32);
pub const LONG_WIDTH = __WORDSIZE;
pub const ULONG_WIDTH = __WORDSIZE;
pub const LLONG_WIDTH = @as(c_int, 64);
pub const ULLONG_WIDTH = @as(c_int, 64);
pub const BOOL_MAX = @as(c_int, 1);
pub const BOOL_WIDTH = @as(c_int, 1);
pub const _BITS_POSIX1_LIM_H = @as(c_int, 1);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 25);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_HOST_NAME_MAX = @as(c_int, 255);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_LOGIN_NAME_MAX = @as(c_int, 9);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = @as(c_int, 32);
pub const _POSIX_NAME_MAX = @as(c_int, 14);
pub const _POSIX_NGROUPS_MAX = @as(c_int, 8);
pub const _POSIX_OPEN_MAX = @as(c_int, 20);
pub const _POSIX_FD_SETSIZE = _POSIX_OPEN_MAX;
pub const _POSIX_PATH_MAX = @as(c_int, 256);
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX_RTSIG_MAX = @as(c_int, 8);
pub const _POSIX_SEM_NSEMS_MAX = @as(c_int, 256);
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 32767);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_SSIZE_MAX = @as(c_int, 32767);
pub const _POSIX_STREAM_MAX = @as(c_int, 8);
pub const _POSIX_SYMLINK_MAX = @as(c_int, 255);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_TTY_NAME_MAX = @as(c_int, 9);
pub const _POSIX_TZNAME_MAX = @as(c_int, 6);
pub const _POSIX_QLIMIT = @as(c_int, 1);
pub const _POSIX_HIWAT = _POSIX_PIPE_BUF;
pub const _POSIX_UIO_MAXIOV = @as(c_int, 16);
pub const _POSIX_CLOCKRES_MIN = __helpers.promoteIntLiteral(c_int, 20000000, .decimal);
pub const _LINUX_LIMITS_H = "";
pub const NGROUPS_MAX = __helpers.promoteIntLiteral(c_int, 65536, .decimal);
pub const MAX_CANON = @as(c_int, 255);
pub const MAX_INPUT = @as(c_int, 255);
pub const NAME_MAX = @as(c_int, 255);
pub const PATH_MAX = @as(c_int, 4096);
pub const PIPE_BUF = @as(c_int, 4096);
pub const XATTR_NAME_MAX = @as(c_int, 255);
pub const XATTR_SIZE_MAX = __helpers.promoteIntLiteral(c_int, 65536, .decimal);
pub const XATTR_LIST_MAX = __helpers.promoteIntLiteral(c_int, 65536, .decimal);
pub const RTSIG_MAX = @as(c_int, 32);
pub const _POSIX_THREAD_KEYS_MAX = @as(c_int, 128);
pub const PTHREAD_KEYS_MAX = @as(c_int, 1024);
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS;
pub const _POSIX_THREAD_THREADS_MAX = @as(c_int, 64);
pub const AIO_PRIO_DELTA_MAX = @as(c_int, 20);
pub const __SC_THREAD_STACK_MIN_VALUE = @as(c_int, 75);
pub const PTHREAD_STACK_MIN = __sysconf(__SC_THREAD_STACK_MIN_VALUE);
pub const DELAYTIMER_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const TTY_NAME_MAX = @as(c_int, 32);
pub const LOGIN_NAME_MAX = @as(c_int, 256);
pub const HOST_NAME_MAX = @as(c_int, 64);
pub const MQ_PRIO_MAX = __helpers.promoteIntLiteral(c_int, 32768, .decimal);
pub const SEM_VALUE_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SSIZE_MAX = LONG_MAX;
pub const _BITS_POSIX2_LIM_H = @as(c_int, 1);
pub const _POSIX2_BC_BASE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_DIM_MAX = @as(c_int, 2048);
pub const _POSIX2_BC_SCALE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_STRING_MAX = @as(c_int, 1000);
pub const _POSIX2_COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const _POSIX2_EXPR_NEST_MAX = @as(c_int, 32);
pub const _POSIX2_LINE_MAX = @as(c_int, 2048);
pub const _POSIX2_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX2_CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const BC_BASE_MAX = _POSIX2_BC_BASE_MAX;
pub const BC_DIM_MAX = _POSIX2_BC_DIM_MAX;
pub const BC_SCALE_MAX = _POSIX2_BC_SCALE_MAX;
pub const BC_STRING_MAX = _POSIX2_BC_STRING_MAX;
pub const COLL_WEIGHTS_MAX = @as(c_int, 255);
pub const EXPR_NEST_MAX = _POSIX2_EXPR_NEST_MAX;
pub const LINE_MAX = _POSIX2_LINE_MAX;
pub const CHARCLASS_NAME_MAX = @as(c_int, 2048);
pub const RE_DUP_MAX = @as(c_int, 0x7fff);
pub const _XOPEN_LIM_H = @as(c_int, 1);
pub const _XOPEN_IOV_MAX = _POSIX_UIO_MAXIOV;
pub const _BITS_UIO_LIM_H = @as(c_int, 1);
pub const __IOV_MAX = @as(c_int, 1024);
pub const IOV_MAX = __IOV_MAX;
pub const NL_ARGMAX = _POSIX_ARG_MAX;
pub const NL_LANGMAX = _POSIX2_LINE_MAX;
pub const NL_MSGMAX = INT_MAX;
pub const NL_NMAX = INT_MAX;
pub const NL_SETMAX = INT_MAX;
pub const NL_TEXTMAX = INT_MAX;
pub const NZERO = @as(c_int, 20);
pub const WORD_BIT = @as(c_int, 32);
pub const LONG_BIT = @as(c_int, 64);
pub const Z_U4 = c_uint;
pub const Z_HAVE_UNISTD_H = "";
pub const Z_HAVE_STDARG_H = "";
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __ino64_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const __useconds_t_defined = "";
pub const __suseconds_t_defined = "";
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    _ = &HI;
    _ = &LO;
    return blk: {
        _ = &LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    _ = &x;
    return __helpers.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & __helpers.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & __helpers.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    _ = &x;
    return ((((x & __helpers.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & __helpers.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    _ = &x;
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`"); // /usr/include/x86_64-linux-gnu/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /usr/include/x86_64-linux-gnu/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /usr/include/x86_64-linux-gnu/bits/select.h:34:9
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    _ = &d;
    _ = &s;
    return (__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = __helpers.div(@as(c_int, 1024), @as(c_int, 8) * __helpers.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __NFDBITS = @as(c_int, 8) * __helpers.cast(c_int, __helpers.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(__helpers.div(d, __NFDBITS)) {
    _ = &d;
    return __helpers.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    _ = &d;
    return __helpers.cast(__fd_mask, @as(c_ulong, 1) << __helpers.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.fds_bits) {
    _ = &set;
    return set.*.fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    _ = &fdsetp;
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _BITS_ATOMIC_WIDE_COUNTER_H = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/x86_64-linux-gnu/bits/struct_mutex.h:56:10
pub const _RWLOCK_INTERNAL_H = "";
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/x86_64-linux-gnu/bits/struct_rwlock.h:40:11
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    _ = &__flags;
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = &__PTHREAD_RWLOCK_ELISION_EXTRA;
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h:113:9
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const _UNISTD_H = @as(c_int, 1);
pub const _POSIX_VERSION = @as(c_long, 200809);
pub const __POSIX2_THIS_VERSION = @as(c_long, 200809);
pub const _POSIX2_VERSION = __POSIX2_THIS_VERSION;
pub const _POSIX2_C_VERSION = __POSIX2_THIS_VERSION;
pub const _POSIX2_C_BIND = __POSIX2_THIS_VERSION;
pub const _POSIX2_C_DEV = __POSIX2_THIS_VERSION;
pub const _POSIX2_SW_DEV = __POSIX2_THIS_VERSION;
pub const _POSIX2_LOCALEDEF = __POSIX2_THIS_VERSION;
pub const _XOPEN_VERSION = @as(c_int, 700);
pub const _XOPEN_XCU_VERSION = @as(c_int, 4);
pub const _XOPEN_XPG2 = @as(c_int, 1);
pub const _XOPEN_XPG3 = @as(c_int, 1);
pub const _XOPEN_XPG4 = @as(c_int, 1);
pub const _XOPEN_UNIX = @as(c_int, 1);
pub const _XOPEN_ENH_I18N = @as(c_int, 1);
pub const _XOPEN_LEGACY = @as(c_int, 1);
pub const _BITS_POSIX_OPT_H = @as(c_int, 1);
pub const _POSIX_JOB_CONTROL = @as(c_int, 1);
pub const _POSIX_SAVED_IDS = @as(c_int, 1);
pub const _POSIX_PRIORITY_SCHEDULING = @as(c_long, 200809);
pub const _POSIX_SYNCHRONIZED_IO = @as(c_long, 200809);
pub const _POSIX_FSYNC = @as(c_long, 200809);
pub const _POSIX_MAPPED_FILES = @as(c_long, 200809);
pub const _POSIX_MEMLOCK = @as(c_long, 200809);
pub const _POSIX_MEMLOCK_RANGE = @as(c_long, 200809);
pub const _POSIX_MEMORY_PROTECTION = @as(c_long, 200809);
pub const _POSIX_CHOWN_RESTRICTED = @as(c_int, 0);
pub const _POSIX_VDISABLE = '\x00';
pub const _POSIX_NO_TRUNC = @as(c_int, 1);
pub const _XOPEN_REALTIME = @as(c_int, 1);
pub const _XOPEN_REALTIME_THREADS = @as(c_int, 1);
pub const _XOPEN_SHM = @as(c_int, 1);
pub const _POSIX_THREADS = @as(c_long, 200809);
pub const _POSIX_REENTRANT_FUNCTIONS = @as(c_int, 1);
pub const _POSIX_THREAD_SAFE_FUNCTIONS = @as(c_long, 200809);
pub const _POSIX_THREAD_PRIORITY_SCHEDULING = @as(c_long, 200809);
pub const _POSIX_THREAD_ATTR_STACKSIZE = @as(c_long, 200809);
pub const _POSIX_THREAD_ATTR_STACKADDR = @as(c_long, 200809);
pub const _POSIX_THREAD_PRIO_INHERIT = @as(c_long, 200809);
pub const _POSIX_THREAD_PRIO_PROTECT = @as(c_long, 200809);
pub const _POSIX_THREAD_ROBUST_PRIO_INHERIT = @as(c_long, 200809);
pub const _POSIX_THREAD_ROBUST_PRIO_PROTECT = -@as(c_int, 1);
pub const _POSIX_SEMAPHORES = @as(c_long, 200809);
pub const _POSIX_REALTIME_SIGNALS = @as(c_long, 200809);
pub const _POSIX_ASYNCHRONOUS_IO = @as(c_long, 200809);
pub const _POSIX_ASYNC_IO = @as(c_int, 1);
pub const _LFS_ASYNCHRONOUS_IO = @as(c_int, 1);
pub const _POSIX_PRIORITIZED_IO = @as(c_long, 200809);
pub const _LFS64_ASYNCHRONOUS_IO = @as(c_int, 1);
pub const _LFS_LARGEFILE = @as(c_int, 1);
pub const _LFS64_LARGEFILE = @as(c_int, 1);
pub const _LFS64_STDIO = @as(c_int, 1);
pub const _POSIX_SHARED_MEMORY_OBJECTS = @as(c_long, 200809);
pub const _POSIX_CPUTIME = @as(c_int, 0);
pub const _POSIX_THREAD_CPUTIME = @as(c_int, 0);
pub const _POSIX_REGEXP = @as(c_int, 1);
pub const _POSIX_READER_WRITER_LOCKS = @as(c_long, 200809);
pub const _POSIX_SHELL = @as(c_int, 1);
pub const _POSIX_TIMEOUTS = @as(c_long, 200809);
pub const _POSIX_SPIN_LOCKS = @as(c_long, 200809);
pub const _POSIX_SPAWN = @as(c_long, 200809);
pub const _POSIX_TIMERS = @as(c_long, 200809);
pub const _POSIX_BARRIERS = @as(c_long, 200809);
pub const _POSIX_MESSAGE_PASSING = @as(c_long, 200809);
pub const _POSIX_THREAD_PROCESS_SHARED = @as(c_long, 200809);
pub const _POSIX_MONOTONIC_CLOCK = @as(c_int, 0);
pub const _POSIX_CLOCK_SELECTION = @as(c_long, 200809);
pub const _POSIX_ADVISORY_INFO = @as(c_long, 200809);
pub const _POSIX_IPV6 = @as(c_long, 200809);
pub const _POSIX_RAW_SOCKETS = @as(c_long, 200809);
pub const _POSIX2_CHAR_TERM = @as(c_long, 200809);
pub const _POSIX_SPORADIC_SERVER = -@as(c_int, 1);
pub const _POSIX_THREAD_SPORADIC_SERVER = -@as(c_int, 1);
pub const _POSIX_TRACE = -@as(c_int, 1);
pub const _POSIX_TRACE_EVENT_FILTER = -@as(c_int, 1);
pub const _POSIX_TRACE_INHERIT = -@as(c_int, 1);
pub const _POSIX_TRACE_LOG = -@as(c_int, 1);
pub const _POSIX_TYPED_MEMORY_OBJECTS = -@as(c_int, 1);
pub const _POSIX_V7_LPBIG_OFFBIG = -@as(c_int, 1);
pub const _POSIX_V6_LPBIG_OFFBIG = -@as(c_int, 1);
pub const _XBS5_LPBIG_OFFBIG = -@as(c_int, 1);
pub const _POSIX_V7_LP64_OFF64 = @as(c_int, 1);
pub const _POSIX_V6_LP64_OFF64 = @as(c_int, 1);
pub const _XBS5_LP64_OFF64 = @as(c_int, 1);
pub const __ILP32_OFF32_CFLAGS = "-m32";
pub const __ILP32_OFF32_LDFLAGS = "-m32";
pub const __ILP32_OFFBIG_CFLAGS = "-m32 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64";
pub const __ILP32_OFFBIG_LDFLAGS = "-m32";
pub const __LP64_OFF64_CFLAGS = "-m64";
pub const __LP64_OFF64_LDFLAGS = "-m64";
pub const STDIN_FILENO = @as(c_int, 0);
pub const STDOUT_FILENO = @as(c_int, 1);
pub const STDERR_FILENO = @as(c_int, 2);
pub const __intptr_t_defined = "";
pub const __socklen_t_defined = "";
pub const R_OK = @as(c_int, 4);
pub const W_OK = @as(c_int, 2);
pub const X_OK = @as(c_int, 1);
pub const F_OK = @as(c_int, 0);
pub const L_SET = SEEK_SET;
pub const L_INCR = SEEK_CUR;
pub const L_XTND = SEEK_END;
pub const _SC_PAGE_SIZE = _SC_PAGESIZE;
pub const _CS_POSIX_V6_WIDTH_RESTRICTED_ENVS = _CS_V6_WIDTH_RESTRICTED_ENVS;
pub const _CS_POSIX_V5_WIDTH_RESTRICTED_ENVS = _CS_V5_WIDTH_RESTRICTED_ENVS;
pub const _CS_POSIX_V7_WIDTH_RESTRICTED_ENVS = _CS_V7_WIDTH_RESTRICTED_ENVS;
pub const _GETOPT_POSIX_H = @as(c_int, 1);
pub const _GETOPT_CORE_H = @as(c_int, 1);
pub const F_ULOCK = @as(c_int, 0);
pub const F_LOCK = @as(c_int, 1);
pub const F_TLOCK = @as(c_int, 2);
pub const F_TEST = @as(c_int, 3);
pub const TEMP_FAILURE_RETRY = @compileError("unable to translate macro: undefined identifier `__result`"); // /usr/include/unistd.h:1134:10
pub const _LINUX_CLOSE_RANGE_H = "";
pub const CLOSE_RANGE_UNSHARE = @as(c_uint, 1) << @as(c_int, 1);
pub const CLOSE_RANGE_CLOEXEC = @as(c_uint, 1) << @as(c_int, 2);
pub const z_off_t = off_t;
pub const Z_LFS64 = "";
pub const Z_LARGE64 = "";
pub const z_off64_t = off64_t;
pub const ZLIB_VERSION = "1.2.11";
pub const ZLIB_VERNUM = @as(c_int, 0x12b0);
pub const ZLIB_VER_MAJOR = @as(c_int, 1);
pub const ZLIB_VER_MINOR = @as(c_int, 2);
pub const ZLIB_VER_REVISION = @as(c_int, 11);
pub const ZLIB_VER_SUBREVISION = @as(c_int, 0);
pub const Z_NO_FLUSH = @as(c_int, 0);
pub const Z_PARTIAL_FLUSH = @as(c_int, 1);
pub const Z_SYNC_FLUSH = @as(c_int, 2);
pub const Z_FULL_FLUSH = @as(c_int, 3);
pub const Z_FINISH = @as(c_int, 4);
pub const Z_BLOCK = @as(c_int, 5);
pub const Z_TREES = @as(c_int, 6);
pub const Z_OK = @as(c_int, 0);
pub const Z_STREAM_END = @as(c_int, 1);
pub const Z_NEED_DICT = @as(c_int, 2);
pub const Z_ERRNO = -@as(c_int, 1);
pub const Z_STREAM_ERROR = -@as(c_int, 2);
pub const Z_DATA_ERROR = -@as(c_int, 3);
pub const Z_MEM_ERROR = -@as(c_int, 4);
pub const Z_BUF_ERROR = -@as(c_int, 5);
pub const Z_VERSION_ERROR = -@as(c_int, 6);
pub const Z_NO_COMPRESSION = @as(c_int, 0);
pub const Z_BEST_SPEED = @as(c_int, 1);
pub const Z_BEST_COMPRESSION = @as(c_int, 9);
pub const Z_DEFAULT_COMPRESSION = -@as(c_int, 1);
pub const Z_FILTERED = @as(c_int, 1);
pub const Z_HUFFMAN_ONLY = @as(c_int, 2);
pub const Z_RLE = @as(c_int, 3);
pub const Z_FIXED = @as(c_int, 4);
pub const Z_DEFAULT_STRATEGY = @as(c_int, 0);
pub const Z_BINARY = @as(c_int, 0);
pub const Z_TEXT = @as(c_int, 1);
pub const Z_ASCII = Z_TEXT;
pub const Z_UNKNOWN = @as(c_int, 2);
pub const Z_DEFLATED = @as(c_int, 8);
pub const Z_NULL = @as(c_int, 0);
pub const zlib_version = zlibVersion();
pub inline fn deflateInit(strm: anytype, level: anytype) @TypeOf(deflateInit_(strm, level, ZLIB_VERSION, __helpers.cast(c_int, __helpers.sizeof(z_stream)))) {
    _ = &strm;
    _ = &level;
    return deflateInit_(strm, level, ZLIB_VERSION, __helpers.cast(c_int, __helpers.sizeof(z_stream)));
}
pub inline fn inflateInit(strm: anytype) @TypeOf(inflateInit_(strm, ZLIB_VERSION, __helpers.cast(c_int, __helpers.sizeof(z_stream)))) {
    _ = &strm;
    return inflateInit_(strm, ZLIB_VERSION, __helpers.cast(c_int, __helpers.sizeof(z_stream)));
}
pub inline fn deflateInit2(strm: anytype, level: anytype, method: anytype, windowBits: anytype, memLevel: anytype, strategy: anytype) @TypeOf(deflateInit2_(strm, level, method, windowBits, memLevel, strategy, ZLIB_VERSION, __helpers.cast(c_int, __helpers.sizeof(z_stream)))) {
    _ = &strm;
    _ = &level;
    _ = &method;
    _ = &windowBits;
    _ = &memLevel;
    _ = &strategy;
    return deflateInit2_(strm, level, method, windowBits, memLevel, strategy, ZLIB_VERSION, __helpers.cast(c_int, __helpers.sizeof(z_stream)));
}
pub inline fn inflateInit2(strm: anytype, windowBits: anytype) @TypeOf(inflateInit2_(strm, windowBits, ZLIB_VERSION, __helpers.cast(c_int, __helpers.sizeof(z_stream)))) {
    _ = &strm;
    _ = &windowBits;
    return inflateInit2_(strm, windowBits, ZLIB_VERSION, __helpers.cast(c_int, __helpers.sizeof(z_stream)));
}
pub inline fn inflateBackInit(strm: anytype, windowBits: anytype, window: anytype) @TypeOf(inflateBackInit_(strm, windowBits, window, ZLIB_VERSION, __helpers.cast(c_int, __helpers.sizeof(z_stream)))) {
    _ = &strm;
    _ = &windowBits;
    _ = &window;
    return inflateBackInit_(strm, windowBits, window, ZLIB_VERSION, __helpers.cast(c_int, __helpers.sizeof(z_stream)));
}
pub const _CTYPE_H = @as(c_int, 1);
pub inline fn _ISbit(bit: anytype) @TypeOf(if (__helpers.cast(bool, bit < @as(c_int, 8))) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8)) {
    _ = &bit;
    return if (__helpers.cast(bool, bit < @as(c_int, 8))) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8);
}
pub inline fn __isctype(c: anytype, @"type": anytype) @TypeOf(__ctype_b_loc().*[@as(usize, @intCast(__helpers.cast(c_int, c)))] & __helpers.cast(c_ushort, @"type")) {
    _ = &c;
    _ = &@"type";
    return __ctype_b_loc().*[@as(usize, @intCast(__helpers.cast(c_int, c)))] & __helpers.cast(c_ushort, @"type");
}
pub inline fn __isascii(c: anytype) @TypeOf((c & ~@as(c_int, 0x7f)) == @as(c_int, 0)) {
    _ = &c;
    return (c & ~@as(c_int, 0x7f)) == @as(c_int, 0);
}
pub inline fn __toascii(c: anytype) @TypeOf(c & @as(c_int, 0x7f)) {
    _ = &c;
    return c & @as(c_int, 0x7f);
}
pub const __exctype = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/ctype.h:102:9
pub const __tobody = @compileError("unable to translate macro: undefined identifier `__res`"); // /usr/include/ctype.h:155:9
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub inline fn __isctype_l(c: anytype, @"type": anytype, locale: anytype) @TypeOf(locale.*.__ctype_b[@as(usize, @intCast(__helpers.cast(c_int, c)))] & __helpers.cast(c_ushort, @"type")) {
    _ = &c;
    _ = &@"type";
    _ = &locale;
    return locale.*.__ctype_b[@as(usize, @intCast(__helpers.cast(c_int, c)))] & __helpers.cast(c_ushort, @"type");
}
pub const __exctype_l = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/ctype.h:244:10
pub inline fn __isalnum_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalnum, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISalnum, l);
}
pub inline fn __isalpha_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalpha, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISalpha, l);
}
pub inline fn __iscntrl_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _IScntrl, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _IScntrl, l);
}
pub inline fn __isdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISdigit, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISdigit, l);
}
pub inline fn __islower_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISlower, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISlower, l);
}
pub inline fn __isgraph_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISgraph, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISgraph, l);
}
pub inline fn __isprint_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISprint, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISprint, l);
}
pub inline fn __ispunct_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISpunct, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISpunct, l);
}
pub inline fn __isspace_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISspace, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISspace, l);
}
pub inline fn __isupper_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISupper, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISupper, l);
}
pub inline fn __isxdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISxdigit, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISxdigit, l);
}
pub inline fn __isblank_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISblank, l)) {
    _ = &c;
    _ = &l;
    return __isctype_l(c, _ISblank, l);
}
pub inline fn __isascii_l(c: anytype, l: anytype) @TypeOf(__isascii(c)) {
    _ = &c;
    _ = &l;
    return blk_1: {
        _ = &l;
        break :blk_1 __isascii(c);
    };
}
pub inline fn __toascii_l(c: anytype, l: anytype) @TypeOf(__toascii(c)) {
    _ = &c;
    _ = &l;
    return blk_1: {
        _ = &l;
        break :blk_1 __toascii(c);
    };
}
pub inline fn isascii_l(c: anytype, l: anytype) @TypeOf(__isascii_l(c, l)) {
    _ = &c;
    _ = &l;
    return __isascii_l(c, l);
}
pub inline fn toascii_l(c: anytype, l: anytype) @TypeOf(__toascii_l(c, l)) {
    _ = &c;
    _ = &l;
    return __toascii_l(c, l);
}
pub const _TERMIOS_H = @as(c_int, 1);
pub const NCCS = @as(c_int, 32);
pub const _HAVE_STRUCT_TERMIOS_C_ISPEED = @as(c_int, 1);
pub const _HAVE_STRUCT_TERMIOS_C_OSPEED = @as(c_int, 1);
pub const VINTR = @as(c_int, 0);
pub const VQUIT = @as(c_int, 1);
pub const VERASE = @as(c_int, 2);
pub const VKILL = @as(c_int, 3);
pub const VEOF = @as(c_int, 4);
pub const VTIME = @as(c_int, 5);
pub const VMIN = @as(c_int, 6);
pub const VSWTC = @as(c_int, 7);
pub const VSTART = @as(c_int, 8);
pub const VSTOP = @as(c_int, 9);
pub const VSUSP = @as(c_int, 10);
pub const VEOL = @as(c_int, 11);
pub const VREPRINT = @as(c_int, 12);
pub const VDISCARD = @as(c_int, 13);
pub const VWERASE = @as(c_int, 14);
pub const VLNEXT = @as(c_int, 15);
pub const VEOL2 = @as(c_int, 16);
pub const IGNBRK = @as(c_int, 0o000001);
pub const BRKINT = @as(c_int, 0o000002);
pub const IGNPAR = @as(c_int, 0o000004);
pub const PARMRK = @as(c_int, 0o000010);
pub const INPCK = @as(c_int, 0o000020);
pub const ISTRIP = @as(c_int, 0o000040);
pub const INLCR = @as(c_int, 0o000100);
pub const IGNCR = @as(c_int, 0o000200);
pub const ICRNL = @as(c_int, 0o000400);
pub const IUCLC = @as(c_int, 0o001000);
pub const IXON = @as(c_int, 0o002000);
pub const IXANY = @as(c_int, 0o004000);
pub const IXOFF = @as(c_int, 0o010000);
pub const IMAXBEL = @as(c_int, 0o020000);
pub const IUTF8 = @as(c_int, 0o040000);
pub const OPOST = @as(c_int, 0o000001);
pub const OLCUC = @as(c_int, 0o000002);
pub const ONLCR = @as(c_int, 0o000004);
pub const OCRNL = @as(c_int, 0o000010);
pub const ONOCR = @as(c_int, 0o000020);
pub const ONLRET = @as(c_int, 0o000040);
pub const OFILL = @as(c_int, 0o000100);
pub const OFDEL = @as(c_int, 0o000200);
pub const NLDLY = @as(c_int, 0o000400);
pub const NL0 = @as(c_int, 0o000000);
pub const NL1 = @as(c_int, 0o000400);
pub const CRDLY = @as(c_int, 0o003000);
pub const CR0 = @as(c_int, 0o000000);
pub const CR1 = @as(c_int, 0o001000);
pub const CR2 = @as(c_int, 0o002000);
pub const CR3 = @as(c_int, 0o003000);
pub const TABDLY = @as(c_int, 0o014000);
pub const TAB0 = @as(c_int, 0o000000);
pub const TAB1 = @as(c_int, 0o004000);
pub const TAB2 = @as(c_int, 0o010000);
pub const TAB3 = @as(c_int, 0o014000);
pub const BSDLY = @as(c_int, 0o020000);
pub const BS0 = @as(c_int, 0o000000);
pub const BS1 = @as(c_int, 0o020000);
pub const FFDLY = __helpers.promoteIntLiteral(c_int, 0o100000, .octal);
pub const FF0 = @as(c_int, 0o000000);
pub const FF1 = __helpers.promoteIntLiteral(c_int, 0o100000, .octal);
pub const VTDLY = @as(c_int, 0o040000);
pub const VT0 = @as(c_int, 0o000000);
pub const VT1 = @as(c_int, 0o040000);
pub const XTABS = @as(c_int, 0o014000);
pub const B0 = @as(c_int, 0o000000);
pub const B50 = @as(c_int, 0o000001);
pub const B75 = @as(c_int, 0o000002);
pub const B110 = @as(c_int, 0o000003);
pub const B134 = @as(c_int, 0o000004);
pub const B150 = @as(c_int, 0o000005);
pub const B200 = @as(c_int, 0o000006);
pub const B300 = @as(c_int, 0o000007);
pub const B600 = @as(c_int, 0o000010);
pub const B1200 = @as(c_int, 0o000011);
pub const B1800 = @as(c_int, 0o000012);
pub const B2400 = @as(c_int, 0o000013);
pub const B4800 = @as(c_int, 0o000014);
pub const B9600 = @as(c_int, 0o000015);
pub const B19200 = @as(c_int, 0o000016);
pub const B38400 = @as(c_int, 0o000017);
pub const EXTA = B19200;
pub const EXTB = B38400;
pub const CBAUD = @as(c_int, 0o00000010017);
pub const CBAUDEX = @as(c_int, 0o00000010000);
pub const CIBAUD = __helpers.promoteIntLiteral(c_int, 0o02003600000, .octal);
pub const CMSPAR = __helpers.promoteIntLiteral(c_int, 0o10000000000, .octal);
pub const CRTSCTS = __helpers.promoteIntLiteral(c_int, 0o20000000000, .octal);
pub const B57600 = @as(c_int, 0o010001);
pub const B115200 = @as(c_int, 0o010002);
pub const B230400 = @as(c_int, 0o010003);
pub const B460800 = @as(c_int, 0o010004);
pub const B500000 = @as(c_int, 0o010005);
pub const B576000 = @as(c_int, 0o010006);
pub const B921600 = @as(c_int, 0o010007);
pub const B1000000 = @as(c_int, 0o010010);
pub const B1152000 = @as(c_int, 0o010011);
pub const B1500000 = @as(c_int, 0o010012);
pub const B2000000 = @as(c_int, 0o010013);
pub const B2500000 = @as(c_int, 0o010014);
pub const B3000000 = @as(c_int, 0o010015);
pub const B3500000 = @as(c_int, 0o010016);
pub const B4000000 = @as(c_int, 0o010017);
pub const __MAX_BAUD = B4000000;
pub const CSIZE = @as(c_int, 0o000060);
pub const CS5 = @as(c_int, 0o000000);
pub const CS6 = @as(c_int, 0o000020);
pub const CS7 = @as(c_int, 0o000040);
pub const CS8 = @as(c_int, 0o000060);
pub const CSTOPB = @as(c_int, 0o000100);
pub const CREAD = @as(c_int, 0o000200);
pub const PARENB = @as(c_int, 0o000400);
pub const PARODD = @as(c_int, 0o001000);
pub const HUPCL = @as(c_int, 0o002000);
pub const CLOCAL = @as(c_int, 0o004000);
pub const ISIG = @as(c_int, 0o000001);
pub const ICANON = @as(c_int, 0o000002);
pub const XCASE = @as(c_int, 0o000004);
pub const ECHO = @as(c_int, 0o000010);
pub const ECHOE = @as(c_int, 0o000020);
pub const ECHOK = @as(c_int, 0o000040);
pub const ECHONL = @as(c_int, 0o000100);
pub const NOFLSH = @as(c_int, 0o000200);
pub const TOSTOP = @as(c_int, 0o000400);
pub const ECHOCTL = @as(c_int, 0o001000);
pub const ECHOPRT = @as(c_int, 0o002000);
pub const ECHOKE = @as(c_int, 0o004000);
pub const FLUSHO = @as(c_int, 0o010000);
pub const PENDIN = @as(c_int, 0o040000);
pub const IEXTEN = __helpers.promoteIntLiteral(c_int, 0o100000, .octal);
pub const EXTPROC = __helpers.promoteIntLiteral(c_int, 0o200000, .octal);
pub const TIOCSER_TEMT = @as(c_int, 0x01);
pub const TCOOFF = @as(c_int, 0);
pub const TCOON = @as(c_int, 1);
pub const TCIOFF = @as(c_int, 2);
pub const TCION = @as(c_int, 3);
pub const TCIFLUSH = @as(c_int, 0);
pub const TCOFLUSH = @as(c_int, 1);
pub const TCIOFLUSH = @as(c_int, 2);
pub const TCSANOW = @as(c_int, 0);
pub const TCSADRAIN = @as(c_int, 1);
pub const TCSAFLUSH = @as(c_int, 2);
pub inline fn CCEQ(val: anytype, c: anytype) @TypeOf((c == val) and (val != _POSIX_VDISABLE)) {
    _ = &val;
    _ = &c;
    return (c == val) and (val != _POSIX_VDISABLE);
}
pub const _SYS_TTYDEFAULTS_H_ = "";
pub const TTYDEF_IFLAG = ((((BRKINT | ISTRIP) | ICRNL) | IMAXBEL) | IXON) | IXANY;
pub const TTYDEF_OFLAG = (OPOST | ONLCR) | XTABS;
pub const TTYDEF_LFLAG = (((((ECHO | ICANON) | ISIG) | IEXTEN) | ECHOE) | ECHOKE) | ECHOCTL;
pub const TTYDEF_CFLAG = ((CREAD | CS7) | PARENB) | HUPCL;
pub const TTYDEF_SPEED = B9600;
pub inline fn CTRL(x: anytype) @TypeOf(x & @as(c_int, 0o37)) {
    _ = &x;
    return x & @as(c_int, 0o37);
}
pub const CEOF = CTRL('d');
pub const CEOL = _POSIX_VDISABLE;
pub const CERASE = @as(c_int, 0o177);
pub const CINTR = CTRL('c');
pub const CSTATUS = _POSIX_VDISABLE;
pub const CKILL = CTRL('u');
pub const CMIN = @as(c_int, 1);
pub const CQUIT = @as(c_int, 0o34);
pub const CSUSP = CTRL('z');
pub const CTIME = @as(c_int, 0);
pub const CDSUSP = CTRL('y');
pub const CSTART = CTRL('q');
pub const CSTOP = CTRL('s');
pub const CLNEXT = CTRL('v');
pub const CDISCARD = CTRL('o');
pub const CWERASE = CTRL('w');
pub const CREPRINT = CTRL('r');
pub const CEOT = CEOF;
pub const CBRK = CEOL;
pub const CRPRNT = CREPRINT;
pub const CFLUSH = CDISCARD;
pub const PCRE2_CODE_UNIT_WIDTH = @as(c_int, 8);
pub const PCRE2_STATIC = "";
pub const PCRE2_H_IDEMPOTENT_GUARD = "";
pub const PCRE2_MAJOR = @as(c_int, 10);
pub const PCRE2_MINOR = @as(c_int, 39);
pub const PCRE2_PRERELEASE = "";
pub const PCRE2_DATE = (@as(c_int, 2021) - @as(c_int, 10)) - @as(c_int, 29);
pub const PCRE2_EXP_DECL = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/pcre2.h:66:13
pub const PCRE2_CALL_CONVENTION = "";
pub const __need_wchar_t = "";
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = __helpers.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const __WNOTHREAD = __helpers.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const __WALL = __helpers.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const __WCLONE = __helpers.promoteIntLiteral(c_int, 0x80000000, .hex);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & __helpers.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8)) {
    _ = &status;
    return (status & __helpers.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    _ = &status;
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    _ = &status;
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((__helpers.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    _ = &status;
    return (__helpers.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    _ = &status;
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    _ = &status;
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    _ = &status;
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    _ = &ret;
    _ = &sig;
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    _ = &sig;
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = __helpers.promoteIntLiteral(c_int, 0xffff, .hex);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    _ = &status;
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    _ = &status;
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    _ = &status;
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    _ = &status;
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    _ = &status;
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    _ = &status;
    return __WIFCONTINUED(status);
}
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const _INTTYPES_H = @as(c_int, 1);
pub const _STDINT_H = @as(c_int, 1);
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const INT64_C = __helpers.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = __helpers.U_SUFFIX;
pub const UINT64_C = __helpers.UL_SUFFIX;
pub const INTMAX_C = __helpers.L_SUFFIX;
pub const UINTMAX_C = __helpers.UL_SUFFIX;
pub const INT8_WIDTH = @as(c_int, 8);
pub const UINT8_WIDTH = @as(c_int, 8);
pub const INT16_WIDTH = @as(c_int, 16);
pub const UINT16_WIDTH = @as(c_int, 16);
pub const INT32_WIDTH = @as(c_int, 32);
pub const UINT32_WIDTH = @as(c_int, 32);
pub const INT64_WIDTH = @as(c_int, 64);
pub const UINT64_WIDTH = @as(c_int, 64);
pub const INT_LEAST8_WIDTH = @as(c_int, 8);
pub const UINT_LEAST8_WIDTH = @as(c_int, 8);
pub const INT_LEAST16_WIDTH = @as(c_int, 16);
pub const UINT_LEAST16_WIDTH = @as(c_int, 16);
pub const INT_LEAST32_WIDTH = @as(c_int, 32);
pub const UINT_LEAST32_WIDTH = @as(c_int, 32);
pub const INT_LEAST64_WIDTH = @as(c_int, 64);
pub const UINT_LEAST64_WIDTH = @as(c_int, 64);
pub const INT_FAST8_WIDTH = @as(c_int, 8);
pub const UINT_FAST8_WIDTH = @as(c_int, 8);
pub const INT_FAST16_WIDTH = __WORDSIZE;
pub const UINT_FAST16_WIDTH = __WORDSIZE;
pub const INT_FAST32_WIDTH = __WORDSIZE;
pub const UINT_FAST32_WIDTH = __WORDSIZE;
pub const INT_FAST64_WIDTH = @as(c_int, 64);
pub const UINT_FAST64_WIDTH = @as(c_int, 64);
pub const INTPTR_WIDTH = __WORDSIZE;
pub const UINTPTR_WIDTH = __WORDSIZE;
pub const INTMAX_WIDTH = @as(c_int, 64);
pub const UINTMAX_WIDTH = @as(c_int, 64);
pub const PTRDIFF_WIDTH = __WORDSIZE;
pub const SIG_ATOMIC_WIDTH = @as(c_int, 32);
pub const SIZE_WIDTH = __WORDSIZE;
pub const WCHAR_WIDTH = @as(c_int, 32);
pub const WINT_WIDTH = @as(c_int, 32);
pub const ____gwchar_t_defined = @as(c_int, 1);
pub const __PRI64_PREFIX = "l";
pub const __PRIPTR_PREFIX = "l";
pub const PRId8 = "d";
pub const PRId16 = "d";
pub const PRId32 = "d";
pub const PRId64 = __PRI64_PREFIX ++ "d";
pub const PRIdLEAST8 = "d";
pub const PRIdLEAST16 = "d";
pub const PRIdLEAST32 = "d";
pub const PRIdLEAST64 = __PRI64_PREFIX ++ "d";
pub const PRIdFAST8 = "d";
pub const PRIdFAST16 = __PRIPTR_PREFIX ++ "d";
pub const PRIdFAST32 = __PRIPTR_PREFIX ++ "d";
pub const PRIdFAST64 = __PRI64_PREFIX ++ "d";
pub const PRIi8 = "i";
pub const PRIi16 = "i";
pub const PRIi32 = "i";
pub const PRIi64 = __PRI64_PREFIX ++ "i";
pub const PRIiLEAST8 = "i";
pub const PRIiLEAST16 = "i";
pub const PRIiLEAST32 = "i";
pub const PRIiLEAST64 = __PRI64_PREFIX ++ "i";
pub const PRIiFAST8 = "i";
pub const PRIiFAST16 = __PRIPTR_PREFIX ++ "i";
pub const PRIiFAST32 = __PRIPTR_PREFIX ++ "i";
pub const PRIiFAST64 = __PRI64_PREFIX ++ "i";
pub const PRIo8 = "o";
pub const PRIo16 = "o";
pub const PRIo32 = "o";
pub const PRIo64 = __PRI64_PREFIX ++ "o";
pub const PRIoLEAST8 = "o";
pub const PRIoLEAST16 = "o";
pub const PRIoLEAST32 = "o";
pub const PRIoLEAST64 = __PRI64_PREFIX ++ "o";
pub const PRIoFAST8 = "o";
pub const PRIoFAST16 = __PRIPTR_PREFIX ++ "o";
pub const PRIoFAST32 = __PRIPTR_PREFIX ++ "o";
pub const PRIoFAST64 = __PRI64_PREFIX ++ "o";
pub const PRIu8 = "u";
pub const PRIu16 = "u";
pub const PRIu32 = "u";
pub const PRIu64 = __PRI64_PREFIX ++ "u";
pub const PRIuLEAST8 = "u";
pub const PRIuLEAST16 = "u";
pub const PRIuLEAST32 = "u";
pub const PRIuLEAST64 = __PRI64_PREFIX ++ "u";
pub const PRIuFAST8 = "u";
pub const PRIuFAST16 = __PRIPTR_PREFIX ++ "u";
pub const PRIuFAST32 = __PRIPTR_PREFIX ++ "u";
pub const PRIuFAST64 = __PRI64_PREFIX ++ "u";
pub const PRIx8 = "x";
pub const PRIx16 = "x";
pub const PRIx32 = "x";
pub const PRIx64 = __PRI64_PREFIX ++ "x";
pub const PRIxLEAST8 = "x";
pub const PRIxLEAST16 = "x";
pub const PRIxLEAST32 = "x";
pub const PRIxLEAST64 = __PRI64_PREFIX ++ "x";
pub const PRIxFAST8 = "x";
pub const PRIxFAST16 = __PRIPTR_PREFIX ++ "x";
pub const PRIxFAST32 = __PRIPTR_PREFIX ++ "x";
pub const PRIxFAST64 = __PRI64_PREFIX ++ "x";
pub const PRIX8 = "X";
pub const PRIX16 = "X";
pub const PRIX32 = "X";
pub const PRIX64 = __PRI64_PREFIX ++ "X";
pub const PRIXLEAST8 = "X";
pub const PRIXLEAST16 = "X";
pub const PRIXLEAST32 = "X";
pub const PRIXLEAST64 = __PRI64_PREFIX ++ "X";
pub const PRIXFAST8 = "X";
pub const PRIXFAST16 = __PRIPTR_PREFIX ++ "X";
pub const PRIXFAST32 = __PRIPTR_PREFIX ++ "X";
pub const PRIXFAST64 = __PRI64_PREFIX ++ "X";
pub const PRIdMAX = __PRI64_PREFIX ++ "d";
pub const PRIiMAX = __PRI64_PREFIX ++ "i";
pub const PRIoMAX = __PRI64_PREFIX ++ "o";
pub const PRIuMAX = __PRI64_PREFIX ++ "u";
pub const PRIxMAX = __PRI64_PREFIX ++ "x";
pub const PRIXMAX = __PRI64_PREFIX ++ "X";
pub const PRIdPTR = __PRIPTR_PREFIX ++ "d";
pub const PRIiPTR = __PRIPTR_PREFIX ++ "i";
pub const PRIoPTR = __PRIPTR_PREFIX ++ "o";
pub const PRIuPTR = __PRIPTR_PREFIX ++ "u";
pub const PRIxPTR = __PRIPTR_PREFIX ++ "x";
pub const PRIXPTR = __PRIPTR_PREFIX ++ "X";
pub const SCNd8 = "hhd";
pub const SCNd16 = "hd";
pub const SCNd32 = "d";
pub const SCNd64 = __PRI64_PREFIX ++ "d";
pub const SCNdLEAST8 = "hhd";
pub const SCNdLEAST16 = "hd";
pub const SCNdLEAST32 = "d";
pub const SCNdLEAST64 = __PRI64_PREFIX ++ "d";
pub const SCNdFAST8 = "hhd";
pub const SCNdFAST16 = __PRIPTR_PREFIX ++ "d";
pub const SCNdFAST32 = __PRIPTR_PREFIX ++ "d";
pub const SCNdFAST64 = __PRI64_PREFIX ++ "d";
pub const SCNi8 = "hhi";
pub const SCNi16 = "hi";
pub const SCNi32 = "i";
pub const SCNi64 = __PRI64_PREFIX ++ "i";
pub const SCNiLEAST8 = "hhi";
pub const SCNiLEAST16 = "hi";
pub const SCNiLEAST32 = "i";
pub const SCNiLEAST64 = __PRI64_PREFIX ++ "i";
pub const SCNiFAST8 = "hhi";
pub const SCNiFAST16 = __PRIPTR_PREFIX ++ "i";
pub const SCNiFAST32 = __PRIPTR_PREFIX ++ "i";
pub const SCNiFAST64 = __PRI64_PREFIX ++ "i";
pub const SCNu8 = "hhu";
pub const SCNu16 = "hu";
pub const SCNu32 = "u";
pub const SCNu64 = __PRI64_PREFIX ++ "u";
pub const SCNuLEAST8 = "hhu";
pub const SCNuLEAST16 = "hu";
pub const SCNuLEAST32 = "u";
pub const SCNuLEAST64 = __PRI64_PREFIX ++ "u";
pub const SCNuFAST8 = "hhu";
pub const SCNuFAST16 = __PRIPTR_PREFIX ++ "u";
pub const SCNuFAST32 = __PRIPTR_PREFIX ++ "u";
pub const SCNuFAST64 = __PRI64_PREFIX ++ "u";
pub const SCNo8 = "hho";
pub const SCNo16 = "ho";
pub const SCNo32 = "o";
pub const SCNo64 = __PRI64_PREFIX ++ "o";
pub const SCNoLEAST8 = "hho";
pub const SCNoLEAST16 = "ho";
pub const SCNoLEAST32 = "o";
pub const SCNoLEAST64 = __PRI64_PREFIX ++ "o";
pub const SCNoFAST8 = "hho";
pub const SCNoFAST16 = __PRIPTR_PREFIX ++ "o";
pub const SCNoFAST32 = __PRIPTR_PREFIX ++ "o";
pub const SCNoFAST64 = __PRI64_PREFIX ++ "o";
pub const SCNx8 = "hhx";
pub const SCNx16 = "hx";
pub const SCNx32 = "x";
pub const SCNx64 = __PRI64_PREFIX ++ "x";
pub const SCNxLEAST8 = "hhx";
pub const SCNxLEAST16 = "hx";
pub const SCNxLEAST32 = "x";
pub const SCNxLEAST64 = __PRI64_PREFIX ++ "x";
pub const SCNxFAST8 = "hhx";
pub const SCNxFAST16 = __PRIPTR_PREFIX ++ "x";
pub const SCNxFAST32 = __PRIPTR_PREFIX ++ "x";
pub const SCNxFAST64 = __PRI64_PREFIX ++ "x";
pub const SCNdMAX = __PRI64_PREFIX ++ "d";
pub const SCNiMAX = __PRI64_PREFIX ++ "i";
pub const SCNoMAX = __PRI64_PREFIX ++ "o";
pub const SCNuMAX = __PRI64_PREFIX ++ "u";
pub const SCNxMAX = __PRI64_PREFIX ++ "x";
pub const SCNdPTR = __PRIPTR_PREFIX ++ "d";
pub const SCNiPTR = __PRIPTR_PREFIX ++ "i";
pub const SCNoPTR = __PRIPTR_PREFIX ++ "o";
pub const SCNuPTR = __PRIPTR_PREFIX ++ "u";
pub const SCNxPTR = __PRIPTR_PREFIX ++ "x";
pub const PCRE2_ANCHORED = __helpers.promoteIntLiteral(c_uint, 0x80000000, .hex);
pub const PCRE2_NO_UTF_CHECK = __helpers.promoteIntLiteral(c_uint, 0x40000000, .hex);
pub const PCRE2_ENDANCHORED = __helpers.promoteIntLiteral(c_uint, 0x20000000, .hex);
pub const PCRE2_ALLOW_EMPTY_CLASS = @as(c_uint, 0x00000001);
pub const PCRE2_ALT_BSUX = @as(c_uint, 0x00000002);
pub const PCRE2_AUTO_CALLOUT = @as(c_uint, 0x00000004);
pub const PCRE2_CASELESS = @as(c_uint, 0x00000008);
pub const PCRE2_DOLLAR_ENDONLY = @as(c_uint, 0x00000010);
pub const PCRE2_DOTALL = @as(c_uint, 0x00000020);
pub const PCRE2_DUPNAMES = @as(c_uint, 0x00000040);
pub const PCRE2_EXTENDED = @as(c_uint, 0x00000080);
pub const PCRE2_FIRSTLINE = @as(c_uint, 0x00000100);
pub const PCRE2_MATCH_UNSET_BACKREF = @as(c_uint, 0x00000200);
pub const PCRE2_MULTILINE = @as(c_uint, 0x00000400);
pub const PCRE2_NEVER_UCP = @as(c_uint, 0x00000800);
pub const PCRE2_NEVER_UTF = @as(c_uint, 0x00001000);
pub const PCRE2_NO_AUTO_CAPTURE = @as(c_uint, 0x00002000);
pub const PCRE2_NO_AUTO_POSSESS = @as(c_uint, 0x00004000);
pub const PCRE2_NO_DOTSTAR_ANCHOR = @as(c_uint, 0x00008000);
pub const PCRE2_NO_START_OPTIMIZE = __helpers.promoteIntLiteral(c_uint, 0x00010000, .hex);
pub const PCRE2_UCP = __helpers.promoteIntLiteral(c_uint, 0x00020000, .hex);
pub const PCRE2_UNGREEDY = __helpers.promoteIntLiteral(c_uint, 0x00040000, .hex);
pub const PCRE2_UTF = __helpers.promoteIntLiteral(c_uint, 0x00080000, .hex);
pub const PCRE2_NEVER_BACKSLASH_C = __helpers.promoteIntLiteral(c_uint, 0x00100000, .hex);
pub const PCRE2_ALT_CIRCUMFLEX = __helpers.promoteIntLiteral(c_uint, 0x00200000, .hex);
pub const PCRE2_ALT_VERBNAMES = __helpers.promoteIntLiteral(c_uint, 0x00400000, .hex);
pub const PCRE2_USE_OFFSET_LIMIT = __helpers.promoteIntLiteral(c_uint, 0x00800000, .hex);
pub const PCRE2_EXTENDED_MORE = __helpers.promoteIntLiteral(c_uint, 0x01000000, .hex);
pub const PCRE2_LITERAL = __helpers.promoteIntLiteral(c_uint, 0x02000000, .hex);
pub const PCRE2_MATCH_INVALID_UTF = __helpers.promoteIntLiteral(c_uint, 0x04000000, .hex);
pub const PCRE2_EXTRA_ALLOW_SURROGATE_ESCAPES = @as(c_uint, 0x00000001);
pub const PCRE2_EXTRA_BAD_ESCAPE_IS_LITERAL = @as(c_uint, 0x00000002);
pub const PCRE2_EXTRA_MATCH_WORD = @as(c_uint, 0x00000004);
pub const PCRE2_EXTRA_MATCH_LINE = @as(c_uint, 0x00000008);
pub const PCRE2_EXTRA_ESCAPED_CR_IS_LF = @as(c_uint, 0x00000010);
pub const PCRE2_EXTRA_ALT_BSUX = @as(c_uint, 0x00000020);
pub const PCRE2_EXTRA_ALLOW_LOOKAROUND_BSK = @as(c_uint, 0x00000040);
pub const PCRE2_JIT_COMPLETE = @as(c_uint, 0x00000001);
pub const PCRE2_JIT_PARTIAL_SOFT = @as(c_uint, 0x00000002);
pub const PCRE2_JIT_PARTIAL_HARD = @as(c_uint, 0x00000004);
pub const PCRE2_JIT_INVALID_UTF = @as(c_uint, 0x00000100);
pub const PCRE2_NOTBOL = @as(c_uint, 0x00000001);
pub const PCRE2_NOTEOL = @as(c_uint, 0x00000002);
pub const PCRE2_NOTEMPTY = @as(c_uint, 0x00000004);
pub const PCRE2_NOTEMPTY_ATSTART = @as(c_uint, 0x00000008);
pub const PCRE2_PARTIAL_SOFT = @as(c_uint, 0x00000010);
pub const PCRE2_PARTIAL_HARD = @as(c_uint, 0x00000020);
pub const PCRE2_DFA_RESTART = @as(c_uint, 0x00000040);
pub const PCRE2_DFA_SHORTEST = @as(c_uint, 0x00000080);
pub const PCRE2_SUBSTITUTE_GLOBAL = @as(c_uint, 0x00000100);
pub const PCRE2_SUBSTITUTE_EXTENDED = @as(c_uint, 0x00000200);
pub const PCRE2_SUBSTITUTE_UNSET_EMPTY = @as(c_uint, 0x00000400);
pub const PCRE2_SUBSTITUTE_UNKNOWN_UNSET = @as(c_uint, 0x00000800);
pub const PCRE2_SUBSTITUTE_OVERFLOW_LENGTH = @as(c_uint, 0x00001000);
pub const PCRE2_NO_JIT = @as(c_uint, 0x00002000);
pub const PCRE2_COPY_MATCHED_SUBJECT = @as(c_uint, 0x00004000);
pub const PCRE2_SUBSTITUTE_LITERAL = @as(c_uint, 0x00008000);
pub const PCRE2_SUBSTITUTE_MATCHED = __helpers.promoteIntLiteral(c_uint, 0x00010000, .hex);
pub const PCRE2_SUBSTITUTE_REPLACEMENT_ONLY = __helpers.promoteIntLiteral(c_uint, 0x00020000, .hex);
pub const PCRE2_CONVERT_UTF = @as(c_uint, 0x00000001);
pub const PCRE2_CONVERT_NO_UTF_CHECK = @as(c_uint, 0x00000002);
pub const PCRE2_CONVERT_POSIX_BASIC = @as(c_uint, 0x00000004);
pub const PCRE2_CONVERT_POSIX_EXTENDED = @as(c_uint, 0x00000008);
pub const PCRE2_CONVERT_GLOB = @as(c_uint, 0x00000010);
pub const PCRE2_CONVERT_GLOB_NO_WILD_SEPARATOR = @as(c_uint, 0x00000030);
pub const PCRE2_CONVERT_GLOB_NO_STARSTAR = @as(c_uint, 0x00000050);
pub const PCRE2_NEWLINE_CR = @as(c_int, 1);
pub const PCRE2_NEWLINE_LF = @as(c_int, 2);
pub const PCRE2_NEWLINE_CRLF = @as(c_int, 3);
pub const PCRE2_NEWLINE_ANY = @as(c_int, 4);
pub const PCRE2_NEWLINE_ANYCRLF = @as(c_int, 5);
pub const PCRE2_NEWLINE_NUL = @as(c_int, 6);
pub const PCRE2_BSR_UNICODE = @as(c_int, 1);
pub const PCRE2_BSR_ANYCRLF = @as(c_int, 2);
pub const PCRE2_ERROR_END_BACKSLASH = @as(c_int, 101);
pub const PCRE2_ERROR_END_BACKSLASH_C = @as(c_int, 102);
pub const PCRE2_ERROR_UNKNOWN_ESCAPE = @as(c_int, 103);
pub const PCRE2_ERROR_QUANTIFIER_OUT_OF_ORDER = @as(c_int, 104);
pub const PCRE2_ERROR_QUANTIFIER_TOO_BIG = @as(c_int, 105);
pub const PCRE2_ERROR_MISSING_SQUARE_BRACKET = @as(c_int, 106);
pub const PCRE2_ERROR_ESCAPE_INVALID_IN_CLASS = @as(c_int, 107);
pub const PCRE2_ERROR_CLASS_RANGE_ORDER = @as(c_int, 108);
pub const PCRE2_ERROR_QUANTIFIER_INVALID = @as(c_int, 109);
pub const PCRE2_ERROR_INTERNAL_UNEXPECTED_REPEAT = @as(c_int, 110);
pub const PCRE2_ERROR_INVALID_AFTER_PARENS_QUERY = @as(c_int, 111);
pub const PCRE2_ERROR_POSIX_CLASS_NOT_IN_CLASS = @as(c_int, 112);
pub const PCRE2_ERROR_POSIX_NO_SUPPORT_COLLATING = @as(c_int, 113);
pub const PCRE2_ERROR_MISSING_CLOSING_PARENTHESIS = @as(c_int, 114);
pub const PCRE2_ERROR_BAD_SUBPATTERN_REFERENCE = @as(c_int, 115);
pub const PCRE2_ERROR_NULL_PATTERN = @as(c_int, 116);
pub const PCRE2_ERROR_BAD_OPTIONS = @as(c_int, 117);
pub const PCRE2_ERROR_MISSING_COMMENT_CLOSING = @as(c_int, 118);
pub const PCRE2_ERROR_PARENTHESES_NEST_TOO_DEEP = @as(c_int, 119);
pub const PCRE2_ERROR_PATTERN_TOO_LARGE = @as(c_int, 120);
pub const PCRE2_ERROR_HEAP_FAILED = @as(c_int, 121);
pub const PCRE2_ERROR_UNMATCHED_CLOSING_PARENTHESIS = @as(c_int, 122);
pub const PCRE2_ERROR_INTERNAL_CODE_OVERFLOW = @as(c_int, 123);
pub const PCRE2_ERROR_MISSING_CONDITION_CLOSING = @as(c_int, 124);
pub const PCRE2_ERROR_LOOKBEHIND_NOT_FIXED_LENGTH = @as(c_int, 125);
pub const PCRE2_ERROR_ZERO_RELATIVE_REFERENCE = @as(c_int, 126);
pub const PCRE2_ERROR_TOO_MANY_CONDITION_BRANCHES = @as(c_int, 127);
pub const PCRE2_ERROR_CONDITION_ASSERTION_EXPECTED = @as(c_int, 128);
pub const PCRE2_ERROR_BAD_RELATIVE_REFERENCE = @as(c_int, 129);
pub const PCRE2_ERROR_UNKNOWN_POSIX_CLASS = @as(c_int, 130);
pub const PCRE2_ERROR_INTERNAL_STUDY_ERROR = @as(c_int, 131);
pub const PCRE2_ERROR_UNICODE_NOT_SUPPORTED = @as(c_int, 132);
pub const PCRE2_ERROR_PARENTHESES_STACK_CHECK = @as(c_int, 133);
pub const PCRE2_ERROR_CODE_POINT_TOO_BIG = @as(c_int, 134);
pub const PCRE2_ERROR_LOOKBEHIND_TOO_COMPLICATED = @as(c_int, 135);
pub const PCRE2_ERROR_LOOKBEHIND_INVALID_BACKSLASH_C = @as(c_int, 136);
pub const PCRE2_ERROR_UNSUPPORTED_ESCAPE_SEQUENCE = @as(c_int, 137);
pub const PCRE2_ERROR_CALLOUT_NUMBER_TOO_BIG = @as(c_int, 138);
pub const PCRE2_ERROR_MISSING_CALLOUT_CLOSING = @as(c_int, 139);
pub const PCRE2_ERROR_ESCAPE_INVALID_IN_VERB = @as(c_int, 140);
pub const PCRE2_ERROR_UNRECOGNIZED_AFTER_QUERY_P = @as(c_int, 141);
pub const PCRE2_ERROR_MISSING_NAME_TERMINATOR = @as(c_int, 142);
pub const PCRE2_ERROR_DUPLICATE_SUBPATTERN_NAME = @as(c_int, 143);
pub const PCRE2_ERROR_INVALID_SUBPATTERN_NAME = @as(c_int, 144);
pub const PCRE2_ERROR_UNICODE_PROPERTIES_UNAVAILABLE = @as(c_int, 145);
pub const PCRE2_ERROR_MALFORMED_UNICODE_PROPERTY = @as(c_int, 146);
pub const PCRE2_ERROR_UNKNOWN_UNICODE_PROPERTY = @as(c_int, 147);
pub const PCRE2_ERROR_SUBPATTERN_NAME_TOO_LONG = @as(c_int, 148);
pub const PCRE2_ERROR_TOO_MANY_NAMED_SUBPATTERNS = @as(c_int, 149);
pub const PCRE2_ERROR_CLASS_INVALID_RANGE = @as(c_int, 150);
pub const PCRE2_ERROR_OCTAL_BYTE_TOO_BIG = @as(c_int, 151);
pub const PCRE2_ERROR_INTERNAL_OVERRAN_WORKSPACE = @as(c_int, 152);
pub const PCRE2_ERROR_INTERNAL_MISSING_SUBPATTERN = @as(c_int, 153);
pub const PCRE2_ERROR_DEFINE_TOO_MANY_BRANCHES = @as(c_int, 154);
pub const PCRE2_ERROR_BACKSLASH_O_MISSING_BRACE = @as(c_int, 155);
pub const PCRE2_ERROR_INTERNAL_UNKNOWN_NEWLINE = @as(c_int, 156);
pub const PCRE2_ERROR_BACKSLASH_G_SYNTAX = @as(c_int, 157);
pub const PCRE2_ERROR_PARENS_QUERY_R_MISSING_CLOSING = @as(c_int, 158);
pub const PCRE2_ERROR_VERB_ARGUMENT_NOT_ALLOWED = @as(c_int, 159);
pub const PCRE2_ERROR_VERB_UNKNOWN = @as(c_int, 160);
pub const PCRE2_ERROR_SUBPATTERN_NUMBER_TOO_BIG = @as(c_int, 161);
pub const PCRE2_ERROR_SUBPATTERN_NAME_EXPECTED = @as(c_int, 162);
pub const PCRE2_ERROR_INTERNAL_PARSED_OVERFLOW = @as(c_int, 163);
pub const PCRE2_ERROR_INVALID_OCTAL = @as(c_int, 164);
pub const PCRE2_ERROR_SUBPATTERN_NAMES_MISMATCH = @as(c_int, 165);
pub const PCRE2_ERROR_MARK_MISSING_ARGUMENT = @as(c_int, 166);
pub const PCRE2_ERROR_INVALID_HEXADECIMAL = @as(c_int, 167);
pub const PCRE2_ERROR_BACKSLASH_C_SYNTAX = @as(c_int, 168);
pub const PCRE2_ERROR_BACKSLASH_K_SYNTAX = @as(c_int, 169);
pub const PCRE2_ERROR_INTERNAL_BAD_CODE_LOOKBEHINDS = @as(c_int, 170);
pub const PCRE2_ERROR_BACKSLASH_N_IN_CLASS = @as(c_int, 171);
pub const PCRE2_ERROR_CALLOUT_STRING_TOO_LONG = @as(c_int, 172);
pub const PCRE2_ERROR_UNICODE_DISALLOWED_CODE_POINT = @as(c_int, 173);
pub const PCRE2_ERROR_UTF_IS_DISABLED = @as(c_int, 174);
pub const PCRE2_ERROR_UCP_IS_DISABLED = @as(c_int, 175);
pub const PCRE2_ERROR_VERB_NAME_TOO_LONG = @as(c_int, 176);
pub const PCRE2_ERROR_BACKSLASH_U_CODE_POINT_TOO_BIG = @as(c_int, 177);
pub const PCRE2_ERROR_MISSING_OCTAL_OR_HEX_DIGITS = @as(c_int, 178);
pub const PCRE2_ERROR_VERSION_CONDITION_SYNTAX = @as(c_int, 179);
pub const PCRE2_ERROR_INTERNAL_BAD_CODE_AUTO_POSSESS = @as(c_int, 180);
pub const PCRE2_ERROR_CALLOUT_NO_STRING_DELIMITER = @as(c_int, 181);
pub const PCRE2_ERROR_CALLOUT_BAD_STRING_DELIMITER = @as(c_int, 182);
pub const PCRE2_ERROR_BACKSLASH_C_CALLER_DISABLED = @as(c_int, 183);
pub const PCRE2_ERROR_QUERY_BARJX_NEST_TOO_DEEP = @as(c_int, 184);
pub const PCRE2_ERROR_BACKSLASH_C_LIBRARY_DISABLED = @as(c_int, 185);
pub const PCRE2_ERROR_PATTERN_TOO_COMPLICATED = @as(c_int, 186);
pub const PCRE2_ERROR_LOOKBEHIND_TOO_LONG = @as(c_int, 187);
pub const PCRE2_ERROR_PATTERN_STRING_TOO_LONG = @as(c_int, 188);
pub const PCRE2_ERROR_INTERNAL_BAD_CODE = @as(c_int, 189);
pub const PCRE2_ERROR_INTERNAL_BAD_CODE_IN_SKIP = @as(c_int, 190);
pub const PCRE2_ERROR_NO_SURROGATES_IN_UTF16 = @as(c_int, 191);
pub const PCRE2_ERROR_BAD_LITERAL_OPTIONS = @as(c_int, 192);
pub const PCRE2_ERROR_SUPPORTED_ONLY_IN_UNICODE = @as(c_int, 193);
pub const PCRE2_ERROR_INVALID_HYPHEN_IN_OPTIONS = @as(c_int, 194);
pub const PCRE2_ERROR_ALPHA_ASSERTION_UNKNOWN = @as(c_int, 195);
pub const PCRE2_ERROR_SCRIPT_RUN_NOT_AVAILABLE = @as(c_int, 196);
pub const PCRE2_ERROR_TOO_MANY_CAPTURES = @as(c_int, 197);
pub const PCRE2_ERROR_CONDITION_ATOMIC_ASSERTION_EXPECTED = @as(c_int, 198);
pub const PCRE2_ERROR_BACKSLASH_K_IN_LOOKAROUND = @as(c_int, 199);
pub const PCRE2_ERROR_NOMATCH = -@as(c_int, 1);
pub const PCRE2_ERROR_PARTIAL = -@as(c_int, 2);
pub const PCRE2_ERROR_UTF8_ERR1 = -@as(c_int, 3);
pub const PCRE2_ERROR_UTF8_ERR2 = -@as(c_int, 4);
pub const PCRE2_ERROR_UTF8_ERR3 = -@as(c_int, 5);
pub const PCRE2_ERROR_UTF8_ERR4 = -@as(c_int, 6);
pub const PCRE2_ERROR_UTF8_ERR5 = -@as(c_int, 7);
pub const PCRE2_ERROR_UTF8_ERR6 = -@as(c_int, 8);
pub const PCRE2_ERROR_UTF8_ERR7 = -@as(c_int, 9);
pub const PCRE2_ERROR_UTF8_ERR8 = -@as(c_int, 10);
pub const PCRE2_ERROR_UTF8_ERR9 = -@as(c_int, 11);
pub const PCRE2_ERROR_UTF8_ERR10 = -@as(c_int, 12);
pub const PCRE2_ERROR_UTF8_ERR11 = -@as(c_int, 13);
pub const PCRE2_ERROR_UTF8_ERR12 = -@as(c_int, 14);
pub const PCRE2_ERROR_UTF8_ERR13 = -@as(c_int, 15);
pub const PCRE2_ERROR_UTF8_ERR14 = -@as(c_int, 16);
pub const PCRE2_ERROR_UTF8_ERR15 = -@as(c_int, 17);
pub const PCRE2_ERROR_UTF8_ERR16 = -@as(c_int, 18);
pub const PCRE2_ERROR_UTF8_ERR17 = -@as(c_int, 19);
pub const PCRE2_ERROR_UTF8_ERR18 = -@as(c_int, 20);
pub const PCRE2_ERROR_UTF8_ERR19 = -@as(c_int, 21);
pub const PCRE2_ERROR_UTF8_ERR20 = -@as(c_int, 22);
pub const PCRE2_ERROR_UTF8_ERR21 = -@as(c_int, 23);
pub const PCRE2_ERROR_UTF16_ERR1 = -@as(c_int, 24);
pub const PCRE2_ERROR_UTF16_ERR2 = -@as(c_int, 25);
pub const PCRE2_ERROR_UTF16_ERR3 = -@as(c_int, 26);
pub const PCRE2_ERROR_UTF32_ERR1 = -@as(c_int, 27);
pub const PCRE2_ERROR_UTF32_ERR2 = -@as(c_int, 28);
pub const PCRE2_ERROR_BADDATA = -@as(c_int, 29);
pub const PCRE2_ERROR_MIXEDTABLES = -@as(c_int, 30);
pub const PCRE2_ERROR_BADMAGIC = -@as(c_int, 31);
pub const PCRE2_ERROR_BADMODE = -@as(c_int, 32);
pub const PCRE2_ERROR_BADOFFSET = -@as(c_int, 33);
pub const PCRE2_ERROR_BADOPTION = -@as(c_int, 34);
pub const PCRE2_ERROR_BADREPLACEMENT = -@as(c_int, 35);
pub const PCRE2_ERROR_BADUTFOFFSET = -@as(c_int, 36);
pub const PCRE2_ERROR_CALLOUT = -@as(c_int, 37);
pub const PCRE2_ERROR_DFA_BADRESTART = -@as(c_int, 38);
pub const PCRE2_ERROR_DFA_RECURSE = -@as(c_int, 39);
pub const PCRE2_ERROR_DFA_UCOND = -@as(c_int, 40);
pub const PCRE2_ERROR_DFA_UFUNC = -@as(c_int, 41);
pub const PCRE2_ERROR_DFA_UITEM = -@as(c_int, 42);
pub const PCRE2_ERROR_DFA_WSSIZE = -@as(c_int, 43);
pub const PCRE2_ERROR_INTERNAL = -@as(c_int, 44);
pub const PCRE2_ERROR_JIT_BADOPTION = -@as(c_int, 45);
pub const PCRE2_ERROR_JIT_STACKLIMIT = -@as(c_int, 46);
pub const PCRE2_ERROR_MATCHLIMIT = -@as(c_int, 47);
pub const PCRE2_ERROR_NOMEMORY = -@as(c_int, 48);
pub const PCRE2_ERROR_NOSUBSTRING = -@as(c_int, 49);
pub const PCRE2_ERROR_NOUNIQUESUBSTRING = -@as(c_int, 50);
pub const PCRE2_ERROR_NULL = -@as(c_int, 51);
pub const PCRE2_ERROR_RECURSELOOP = -@as(c_int, 52);
pub const PCRE2_ERROR_DEPTHLIMIT = -@as(c_int, 53);
pub const PCRE2_ERROR_RECURSIONLIMIT = -@as(c_int, 53);
pub const PCRE2_ERROR_UNAVAILABLE = -@as(c_int, 54);
pub const PCRE2_ERROR_UNSET = -@as(c_int, 55);
pub const PCRE2_ERROR_BADOFFSETLIMIT = -@as(c_int, 56);
pub const PCRE2_ERROR_BADREPESCAPE = -@as(c_int, 57);
pub const PCRE2_ERROR_REPMISSINGBRACE = -@as(c_int, 58);
pub const PCRE2_ERROR_BADSUBSTITUTION = -@as(c_int, 59);
pub const PCRE2_ERROR_BADSUBSPATTERN = -@as(c_int, 60);
pub const PCRE2_ERROR_TOOMANYREPLACE = -@as(c_int, 61);
pub const PCRE2_ERROR_BADSERIALIZEDDATA = -@as(c_int, 62);
pub const PCRE2_ERROR_HEAPLIMIT = -@as(c_int, 63);
pub const PCRE2_ERROR_CONVERT_SYNTAX = -@as(c_int, 64);
pub const PCRE2_ERROR_INTERNAL_DUPMATCH = -@as(c_int, 65);
pub const PCRE2_ERROR_DFA_UINVALID_UTF = -@as(c_int, 66);
pub const PCRE2_INFO_ALLOPTIONS = @as(c_int, 0);
pub const PCRE2_INFO_ARGOPTIONS = @as(c_int, 1);
pub const PCRE2_INFO_BACKREFMAX = @as(c_int, 2);
pub const PCRE2_INFO_BSR = @as(c_int, 3);
pub const PCRE2_INFO_CAPTURECOUNT = @as(c_int, 4);
pub const PCRE2_INFO_FIRSTCODEUNIT = @as(c_int, 5);
pub const PCRE2_INFO_FIRSTCODETYPE = @as(c_int, 6);
pub const PCRE2_INFO_FIRSTBITMAP = @as(c_int, 7);
pub const PCRE2_INFO_HASCRORLF = @as(c_int, 8);
pub const PCRE2_INFO_JCHANGED = @as(c_int, 9);
pub const PCRE2_INFO_JITSIZE = @as(c_int, 10);
pub const PCRE2_INFO_LASTCODEUNIT = @as(c_int, 11);
pub const PCRE2_INFO_LASTCODETYPE = @as(c_int, 12);
pub const PCRE2_INFO_MATCHEMPTY = @as(c_int, 13);
pub const PCRE2_INFO_MATCHLIMIT = @as(c_int, 14);
pub const PCRE2_INFO_MAXLOOKBEHIND = @as(c_int, 15);
pub const PCRE2_INFO_MINLENGTH = @as(c_int, 16);
pub const PCRE2_INFO_NAMECOUNT = @as(c_int, 17);
pub const PCRE2_INFO_NAMEENTRYSIZE = @as(c_int, 18);
pub const PCRE2_INFO_NAMETABLE = @as(c_int, 19);
pub const PCRE2_INFO_NEWLINE = @as(c_int, 20);
pub const PCRE2_INFO_DEPTHLIMIT = @as(c_int, 21);
pub const PCRE2_INFO_RECURSIONLIMIT = @as(c_int, 21);
pub const PCRE2_INFO_SIZE = @as(c_int, 22);
pub const PCRE2_INFO_HASBACKSLASHC = @as(c_int, 23);
pub const PCRE2_INFO_FRAMESIZE = @as(c_int, 24);
pub const PCRE2_INFO_HEAPLIMIT = @as(c_int, 25);
pub const PCRE2_INFO_EXTRAOPTIONS = @as(c_int, 26);
pub const PCRE2_CONFIG_BSR = @as(c_int, 0);
pub const PCRE2_CONFIG_JIT = @as(c_int, 1);
pub const PCRE2_CONFIG_JITTARGET = @as(c_int, 2);
pub const PCRE2_CONFIG_LINKSIZE = @as(c_int, 3);
pub const PCRE2_CONFIG_MATCHLIMIT = @as(c_int, 4);
pub const PCRE2_CONFIG_NEWLINE = @as(c_int, 5);
pub const PCRE2_CONFIG_PARENSLIMIT = @as(c_int, 6);
pub const PCRE2_CONFIG_DEPTHLIMIT = @as(c_int, 7);
pub const PCRE2_CONFIG_RECURSIONLIMIT = @as(c_int, 7);
pub const PCRE2_CONFIG_STACKRECURSE = @as(c_int, 8);
pub const PCRE2_CONFIG_UNICODE = @as(c_int, 9);
pub const PCRE2_CONFIG_UNICODE_VERSION = @as(c_int, 10);
pub const PCRE2_CONFIG_VERSION = @as(c_int, 11);
pub const PCRE2_CONFIG_HEAPLIMIT = @as(c_int, 12);
pub const PCRE2_CONFIG_NEVER_BACKSLASH_C = @as(c_int, 13);
pub const PCRE2_CONFIG_COMPILED_WIDTHS = @as(c_int, 14);
pub const PCRE2_CONFIG_TABLES_LENGTH = @as(c_int, 15);
pub const PCRE2_SIZE = usize;
pub const PCRE2_SIZE_MAX = SIZE_MAX;
pub const PCRE2_ZERO_TERMINATED = @compileError("unable to translate C expr: expected ')' instead got 'a number'"); // /usr/include/pcre2.h:473:9
pub const PCRE2_UNSET = @compileError("unable to translate C expr: expected ')' instead got 'a number'"); // /usr/include/pcre2.h:474:9
pub const PCRE2_CALLOUT_STARTMATCH = @as(c_uint, 0x00000001);
pub const PCRE2_CALLOUT_BACKTRACK = @as(c_uint, 0x00000002);
pub const PCRE2_CONVERT_FUNCTIONS = @compileError("unable to translate C expr: unexpected token 'int'"); // /usr/include/pcre2.h:755:9
pub const PCRE2_JOIN = @compileError("unable to translate C expr: unexpected token '##'"); // /usr/include/pcre2.h:798:9
pub inline fn PCRE2_GLUE(a: anytype, b: anytype) @TypeOf(PCRE2_JOIN(a, b)) {
    _ = &a;
    _ = &b;
    return PCRE2_JOIN(a, b);
}
pub const PCRE2_UCHAR = PCRE2_SUFFIX(PCRE2_UCHAR);
pub const PCRE2_SPTR = PCRE2_SUFFIX(PCRE2_SPTR);
pub const pcre2_code = @compileError("unable to translate macro: undefined identifier `pcre2_code_`"); // /usr/include/pcre2.h:808:9
pub const pcre2_jit_callback = @compileError("unable to translate macro: undefined identifier `pcre2_jit_callback_`"); // /usr/include/pcre2.h:809:9
pub const pcre2_jit_stack = @compileError("unable to translate macro: undefined identifier `pcre2_jit_stack_`"); // /usr/include/pcre2.h:810:9
pub const pcre2_real_code = @compileError("unable to translate macro: undefined identifier `pcre2_real_code_`"); // /usr/include/pcre2.h:812:9
pub const pcre2_real_general_context = @compileError("unable to translate macro: undefined identifier `pcre2_real_general_context_`"); // /usr/include/pcre2.h:813:9
pub const pcre2_real_compile_context = @compileError("unable to translate macro: undefined identifier `pcre2_real_compile_context_`"); // /usr/include/pcre2.h:814:9
pub const pcre2_real_convert_context = @compileError("unable to translate macro: undefined identifier `pcre2_real_convert_context_`"); // /usr/include/pcre2.h:815:9
pub const pcre2_real_match_context = @compileError("unable to translate macro: undefined identifier `pcre2_real_match_context_`"); // /usr/include/pcre2.h:816:9
pub const pcre2_real_jit_stack = @compileError("unable to translate macro: undefined identifier `pcre2_real_jit_stack_`"); // /usr/include/pcre2.h:817:9
pub const pcre2_real_match_data = @compileError("unable to translate macro: undefined identifier `pcre2_real_match_data_`"); // /usr/include/pcre2.h:818:9
pub const pcre2_callout_block = @compileError("unable to translate macro: undefined identifier `pcre2_callout_block_`"); // /usr/include/pcre2.h:823:9
pub const pcre2_callout_enumerate_block = @compileError("unable to translate macro: undefined identifier `pcre2_callout_enumerate_block_`"); // /usr/include/pcre2.h:824:9
pub const pcre2_substitute_callout_block = @compileError("unable to translate macro: undefined identifier `pcre2_substitute_callout_block_`"); // /usr/include/pcre2.h:825:9
pub const pcre2_general_context = @compileError("unable to translate macro: undefined identifier `pcre2_general_context_`"); // /usr/include/pcre2.h:826:9
pub const pcre2_compile_context = @compileError("unable to translate macro: undefined identifier `pcre2_compile_context_`"); // /usr/include/pcre2.h:827:9
pub const pcre2_convert_context = @compileError("unable to translate macro: undefined identifier `pcre2_convert_context_`"); // /usr/include/pcre2.h:828:9
pub const pcre2_match_context = @compileError("unable to translate macro: undefined identifier `pcre2_match_context_`"); // /usr/include/pcre2.h:829:9
pub const pcre2_match_data = @compileError("unable to translate macro: undefined identifier `pcre2_match_data_`"); // /usr/include/pcre2.h:830:9
pub const pcre2_callout_enumerate = @compileError("unable to translate macro: undefined identifier `pcre2_callout_enumerate_`"); // /usr/include/pcre2.h:835:9
pub const pcre2_code_copy = @compileError("unable to translate macro: undefined identifier `pcre2_code_copy_`"); // /usr/include/pcre2.h:836:9
pub const pcre2_code_copy_with_tables = @compileError("unable to translate macro: undefined identifier `pcre2_code_copy_with_tables_`"); // /usr/include/pcre2.h:837:9
pub const pcre2_code_free = @compileError("unable to translate macro: undefined identifier `pcre2_code_free_`"); // /usr/include/pcre2.h:838:9
pub const pcre2_compile = @compileError("unable to translate macro: undefined identifier `pcre2_compile_`"); // /usr/include/pcre2.h:839:9
pub const pcre2_compile_context_copy = @compileError("unable to translate macro: undefined identifier `pcre2_compile_context_copy_`"); // /usr/include/pcre2.h:840:9
pub const pcre2_compile_context_create = @compileError("unable to translate macro: undefined identifier `pcre2_compile_context_create_`"); // /usr/include/pcre2.h:841:9
pub const pcre2_compile_context_free = @compileError("unable to translate macro: undefined identifier `pcre2_compile_context_free_`"); // /usr/include/pcre2.h:842:9
pub const pcre2_config = @compileError("unable to translate macro: undefined identifier `pcre2_config_`"); // /usr/include/pcre2.h:843:9
pub const pcre2_convert_context_copy = @compileError("unable to translate macro: undefined identifier `pcre2_convert_context_copy_`"); // /usr/include/pcre2.h:844:9
pub const pcre2_convert_context_create = @compileError("unable to translate macro: undefined identifier `pcre2_convert_context_create_`"); // /usr/include/pcre2.h:845:9
pub const pcre2_convert_context_free = @compileError("unable to translate macro: undefined identifier `pcre2_convert_context_free_`"); // /usr/include/pcre2.h:846:9
pub const pcre2_converted_pattern_free = @compileError("unable to translate macro: undefined identifier `pcre2_converted_pattern_free_`"); // /usr/include/pcre2.h:847:9
pub const pcre2_dfa_match = @compileError("unable to translate macro: undefined identifier `pcre2_dfa_match_`"); // /usr/include/pcre2.h:848:9
pub const pcre2_general_context_copy = @compileError("unable to translate macro: undefined identifier `pcre2_general_context_copy_`"); // /usr/include/pcre2.h:849:9
pub const pcre2_general_context_create = @compileError("unable to translate macro: undefined identifier `pcre2_general_context_create_`"); // /usr/include/pcre2.h:850:9
pub const pcre2_general_context_free = @compileError("unable to translate macro: undefined identifier `pcre2_general_context_free_`"); // /usr/include/pcre2.h:851:9
pub const pcre2_get_error_message = @compileError("unable to translate macro: undefined identifier `pcre2_get_error_message_`"); // /usr/include/pcre2.h:852:9
pub const pcre2_get_mark = @compileError("unable to translate macro: undefined identifier `pcre2_get_mark_`"); // /usr/include/pcre2.h:853:9
pub const pcre2_get_match_data_size = @compileError("unable to translate macro: undefined identifier `pcre2_get_match_data_size_`"); // /usr/include/pcre2.h:854:9
pub const pcre2_get_ovector_pointer = @compileError("unable to translate macro: undefined identifier `pcre2_get_ovector_pointer_`"); // /usr/include/pcre2.h:855:9
pub const pcre2_get_ovector_count = @compileError("unable to translate macro: undefined identifier `pcre2_get_ovector_count_`"); // /usr/include/pcre2.h:856:9
pub const pcre2_get_startchar = @compileError("unable to translate macro: undefined identifier `pcre2_get_startchar_`"); // /usr/include/pcre2.h:857:9
pub const pcre2_jit_compile = @compileError("unable to translate macro: undefined identifier `pcre2_jit_compile_`"); // /usr/include/pcre2.h:858:9
pub const pcre2_jit_match = @compileError("unable to translate macro: undefined identifier `pcre2_jit_match_`"); // /usr/include/pcre2.h:859:9
pub const pcre2_jit_free_unused_memory = @compileError("unable to translate macro: undefined identifier `pcre2_jit_free_unused_memory_`"); // /usr/include/pcre2.h:860:9
pub const pcre2_jit_stack_assign = @compileError("unable to translate macro: undefined identifier `pcre2_jit_stack_assign_`"); // /usr/include/pcre2.h:861:9
pub const pcre2_jit_stack_create = @compileError("unable to translate macro: undefined identifier `pcre2_jit_stack_create_`"); // /usr/include/pcre2.h:862:9
pub const pcre2_jit_stack_free = @compileError("unable to translate macro: undefined identifier `pcre2_jit_stack_free_`"); // /usr/include/pcre2.h:863:9
pub const pcre2_maketables = @compileError("unable to translate macro: undefined identifier `pcre2_maketables_`"); // /usr/include/pcre2.h:864:9
pub const pcre2_maketables_free = @compileError("unable to translate macro: undefined identifier `pcre2_maketables_free_`"); // /usr/include/pcre2.h:865:9
pub const pcre2_match = @compileError("unable to translate macro: undefined identifier `pcre2_match_`"); // /usr/include/pcre2.h:866:9
pub const pcre2_match_context_copy = @compileError("unable to translate macro: undefined identifier `pcre2_match_context_copy_`"); // /usr/include/pcre2.h:867:9
pub const pcre2_match_context_create = @compileError("unable to translate macro: undefined identifier `pcre2_match_context_create_`"); // /usr/include/pcre2.h:868:9
pub const pcre2_match_context_free = @compileError("unable to translate macro: undefined identifier `pcre2_match_context_free_`"); // /usr/include/pcre2.h:869:9
pub const pcre2_match_data_create = @compileError("unable to translate macro: undefined identifier `pcre2_match_data_create_`"); // /usr/include/pcre2.h:870:9
pub const pcre2_match_data_create_from_pattern = @compileError("unable to translate macro: undefined identifier `pcre2_match_data_create_from_pattern_`"); // /usr/include/pcre2.h:871:9
pub const pcre2_match_data_free = @compileError("unable to translate macro: undefined identifier `pcre2_match_data_free_`"); // /usr/include/pcre2.h:872:9
pub const pcre2_pattern_convert = @compileError("unable to translate macro: undefined identifier `pcre2_pattern_convert_`"); // /usr/include/pcre2.h:873:9
pub const pcre2_pattern_info = @compileError("unable to translate macro: undefined identifier `pcre2_pattern_info_`"); // /usr/include/pcre2.h:874:9
pub const pcre2_serialize_decode = @compileError("unable to translate macro: undefined identifier `pcre2_serialize_decode_`"); // /usr/include/pcre2.h:875:9
pub const pcre2_serialize_encode = @compileError("unable to translate macro: undefined identifier `pcre2_serialize_encode_`"); // /usr/include/pcre2.h:876:9
pub const pcre2_serialize_free = @compileError("unable to translate macro: undefined identifier `pcre2_serialize_free_`"); // /usr/include/pcre2.h:877:9
pub const pcre2_serialize_get_number_of_codes = @compileError("unable to translate macro: undefined identifier `pcre2_serialize_get_number_of_codes_`"); // /usr/include/pcre2.h:878:9
pub const pcre2_set_bsr = @compileError("unable to translate macro: undefined identifier `pcre2_set_bsr_`"); // /usr/include/pcre2.h:879:9
pub const pcre2_set_callout = @compileError("unable to translate macro: undefined identifier `pcre2_set_callout_`"); // /usr/include/pcre2.h:880:9
pub const pcre2_set_character_tables = @compileError("unable to translate macro: undefined identifier `pcre2_set_character_tables_`"); // /usr/include/pcre2.h:881:9
pub const pcre2_set_compile_extra_options = @compileError("unable to translate macro: undefined identifier `pcre2_set_compile_extra_options_`"); // /usr/include/pcre2.h:882:9
pub const pcre2_set_compile_recursion_guard = @compileError("unable to translate macro: undefined identifier `pcre2_set_compile_recursion_guard_`"); // /usr/include/pcre2.h:883:9
pub const pcre2_set_depth_limit = @compileError("unable to translate macro: undefined identifier `pcre2_set_depth_limit_`"); // /usr/include/pcre2.h:884:9
pub const pcre2_set_glob_escape = @compileError("unable to translate macro: undefined identifier `pcre2_set_glob_escape_`"); // /usr/include/pcre2.h:885:9
pub const pcre2_set_glob_separator = @compileError("unable to translate macro: undefined identifier `pcre2_set_glob_separator_`"); // /usr/include/pcre2.h:886:9
pub const pcre2_set_heap_limit = @compileError("unable to translate macro: undefined identifier `pcre2_set_heap_limit_`"); // /usr/include/pcre2.h:887:9
pub const pcre2_set_match_limit = @compileError("unable to translate macro: undefined identifier `pcre2_set_match_limit_`"); // /usr/include/pcre2.h:888:9
pub const pcre2_set_max_pattern_length = @compileError("unable to translate macro: undefined identifier `pcre2_set_max_pattern_length_`"); // /usr/include/pcre2.h:889:9
pub const pcre2_set_newline = @compileError("unable to translate macro: undefined identifier `pcre2_set_newline_`"); // /usr/include/pcre2.h:890:9
pub const pcre2_set_parens_nest_limit = @compileError("unable to translate macro: undefined identifier `pcre2_set_parens_nest_limit_`"); // /usr/include/pcre2.h:891:9
pub const pcre2_set_offset_limit = @compileError("unable to translate macro: undefined identifier `pcre2_set_offset_limit_`"); // /usr/include/pcre2.h:892:9
pub const pcre2_set_substitute_callout = @compileError("unable to translate macro: undefined identifier `pcre2_set_substitute_callout_`"); // /usr/include/pcre2.h:893:9
pub const pcre2_substitute = @compileError("unable to translate macro: undefined identifier `pcre2_substitute_`"); // /usr/include/pcre2.h:894:9
pub const pcre2_substring_copy_byname = @compileError("unable to translate macro: undefined identifier `pcre2_substring_copy_byname_`"); // /usr/include/pcre2.h:895:9
pub const pcre2_substring_copy_bynumber = @compileError("unable to translate macro: undefined identifier `pcre2_substring_copy_bynumber_`"); // /usr/include/pcre2.h:896:9
pub const pcre2_substring_free = @compileError("unable to translate macro: undefined identifier `pcre2_substring_free_`"); // /usr/include/pcre2.h:897:9
pub const pcre2_substring_get_byname = @compileError("unable to translate macro: undefined identifier `pcre2_substring_get_byname_`"); // /usr/include/pcre2.h:898:9
pub const pcre2_substring_get_bynumber = @compileError("unable to translate macro: undefined identifier `pcre2_substring_get_bynumber_`"); // /usr/include/pcre2.h:899:9
pub const pcre2_substring_length_byname = @compileError("unable to translate macro: undefined identifier `pcre2_substring_length_byname_`"); // /usr/include/pcre2.h:900:9
pub const pcre2_substring_length_bynumber = @compileError("unable to translate macro: undefined identifier `pcre2_substring_length_bynumber_`"); // /usr/include/pcre2.h:901:9
pub const pcre2_substring_list_get = @compileError("unable to translate macro: undefined identifier `pcre2_substring_list_get_`"); // /usr/include/pcre2.h:902:9
pub const pcre2_substring_list_free = @compileError("unable to translate macro: undefined identifier `pcre2_substring_list_free_`"); // /usr/include/pcre2.h:903:9
pub const pcre2_substring_nametable_scan = @compileError("unable to translate macro: undefined identifier `pcre2_substring_nametable_scan_`"); // /usr/include/pcre2.h:904:9
pub const pcre2_substring_number_from_name = @compileError("unable to translate macro: undefined identifier `pcre2_substring_number_from_name_`"); // /usr/include/pcre2.h:905:9
pub const pcre2_set_recursion_limit = @compileError("unable to translate macro: undefined identifier `pcre2_set_recursion_limit_`"); // /usr/include/pcre2.h:908:9
pub const pcre2_set_recursion_memory_management = @compileError("unable to translate macro: undefined identifier `pcre2_set_recursion_memory_management_`"); // /usr/include/pcre2.h:911:9
pub inline fn PCRE2_SUFFIX(a: anytype) @TypeOf(PCRE2_GLUE(a, PCRE2_CODE_UNIT_WIDTH)) {
    _ = &a;
    return PCRE2_GLUE(a, PCRE2_CODE_UNIT_WIDTH);
}
pub const _ERRNO_H = @as(c_int, 1);
pub const _BITS_ERRNO_H = @as(c_int, 1);
pub const _ASM_GENERIC_ERRNO_H = "";
pub const _ASM_GENERIC_ERRNO_BASE_H = "";
pub const EPERM = @as(c_int, 1);
pub const ENOENT = @as(c_int, 2);
pub const ESRCH = @as(c_int, 3);
pub const EINTR = @as(c_int, 4);
pub const EIO = @as(c_int, 5);
pub const ENXIO = @as(c_int, 6);
pub const E2BIG = @as(c_int, 7);
pub const ENOEXEC = @as(c_int, 8);
pub const EBADF = @as(c_int, 9);
pub const ECHILD = @as(c_int, 10);
pub const EAGAIN = @as(c_int, 11);
pub const ENOMEM = @as(c_int, 12);
pub const EACCES = @as(c_int, 13);
pub const EFAULT = @as(c_int, 14);
pub const ENOTBLK = @as(c_int, 15);
pub const EBUSY = @as(c_int, 16);
pub const EEXIST = @as(c_int, 17);
pub const EXDEV = @as(c_int, 18);
pub const ENODEV = @as(c_int, 19);
pub const ENOTDIR = @as(c_int, 20);
pub const EISDIR = @as(c_int, 21);
pub const EINVAL = @as(c_int, 22);
pub const ENFILE = @as(c_int, 23);
pub const EMFILE = @as(c_int, 24);
pub const ENOTTY = @as(c_int, 25);
pub const ETXTBSY = @as(c_int, 26);
pub const EFBIG = @as(c_int, 27);
pub const ENOSPC = @as(c_int, 28);
pub const ESPIPE = @as(c_int, 29);
pub const EROFS = @as(c_int, 30);
pub const EMLINK = @as(c_int, 31);
pub const EPIPE = @as(c_int, 32);
pub const EDOM = @as(c_int, 33);
pub const ERANGE = @as(c_int, 34);
pub const EDEADLK = @as(c_int, 35);
pub const ENAMETOOLONG = @as(c_int, 36);
pub const ENOLCK = @as(c_int, 37);
pub const ENOSYS = @as(c_int, 38);
pub const ENOTEMPTY = @as(c_int, 39);
pub const ELOOP = @as(c_int, 40);
pub const EWOULDBLOCK = EAGAIN;
pub const ENOMSG = @as(c_int, 42);
pub const EIDRM = @as(c_int, 43);
pub const ECHRNG = @as(c_int, 44);
pub const EL2NSYNC = @as(c_int, 45);
pub const EL3HLT = @as(c_int, 46);
pub const EL3RST = @as(c_int, 47);
pub const ELNRNG = @as(c_int, 48);
pub const EUNATCH = @as(c_int, 49);
pub const ENOCSI = @as(c_int, 50);
pub const EL2HLT = @as(c_int, 51);
pub const EBADE = @as(c_int, 52);
pub const EBADR = @as(c_int, 53);
pub const EXFULL = @as(c_int, 54);
pub const ENOANO = @as(c_int, 55);
pub const EBADRQC = @as(c_int, 56);
pub const EBADSLT = @as(c_int, 57);
pub const EDEADLOCK = EDEADLK;
pub const EBFONT = @as(c_int, 59);
pub const ENOSTR = @as(c_int, 60);
pub const ENODATA = @as(c_int, 61);
pub const ETIME = @as(c_int, 62);
pub const ENOSR = @as(c_int, 63);
pub const ENONET = @as(c_int, 64);
pub const ENOPKG = @as(c_int, 65);
pub const EREMOTE = @as(c_int, 66);
pub const ENOLINK = @as(c_int, 67);
pub const EADV = @as(c_int, 68);
pub const ESRMNT = @as(c_int, 69);
pub const ECOMM = @as(c_int, 70);
pub const EPROTO = @as(c_int, 71);
pub const EMULTIHOP = @as(c_int, 72);
pub const EDOTDOT = @as(c_int, 73);
pub const EBADMSG = @as(c_int, 74);
pub const EOVERFLOW = @as(c_int, 75);
pub const ENOTUNIQ = @as(c_int, 76);
pub const EBADFD = @as(c_int, 77);
pub const EREMCHG = @as(c_int, 78);
pub const ELIBACC = @as(c_int, 79);
pub const ELIBBAD = @as(c_int, 80);
pub const ELIBSCN = @as(c_int, 81);
pub const ELIBMAX = @as(c_int, 82);
pub const ELIBEXEC = @as(c_int, 83);
pub const EILSEQ = @as(c_int, 84);
pub const ERESTART = @as(c_int, 85);
pub const ESTRPIPE = @as(c_int, 86);
pub const EUSERS = @as(c_int, 87);
pub const ENOTSOCK = @as(c_int, 88);
pub const EDESTADDRREQ = @as(c_int, 89);
pub const EMSGSIZE = @as(c_int, 90);
pub const EPROTOTYPE = @as(c_int, 91);
pub const ENOPROTOOPT = @as(c_int, 92);
pub const EPROTONOSUPPORT = @as(c_int, 93);
pub const ESOCKTNOSUPPORT = @as(c_int, 94);
pub const EOPNOTSUPP = @as(c_int, 95);
pub const EPFNOSUPPORT = @as(c_int, 96);
pub const EAFNOSUPPORT = @as(c_int, 97);
pub const EADDRINUSE = @as(c_int, 98);
pub const EADDRNOTAVAIL = @as(c_int, 99);
pub const ENETDOWN = @as(c_int, 100);
pub const ENETUNREACH = @as(c_int, 101);
pub const ENETRESET = @as(c_int, 102);
pub const ECONNABORTED = @as(c_int, 103);
pub const ECONNRESET = @as(c_int, 104);
pub const ENOBUFS = @as(c_int, 105);
pub const EISCONN = @as(c_int, 106);
pub const ENOTCONN = @as(c_int, 107);
pub const ESHUTDOWN = @as(c_int, 108);
pub const ETOOMANYREFS = @as(c_int, 109);
pub const ETIMEDOUT = @as(c_int, 110);
pub const ECONNREFUSED = @as(c_int, 111);
pub const EHOSTDOWN = @as(c_int, 112);
pub const EHOSTUNREACH = @as(c_int, 113);
pub const EALREADY = @as(c_int, 114);
pub const EINPROGRESS = @as(c_int, 115);
pub const ESTALE = @as(c_int, 116);
pub const EUCLEAN = @as(c_int, 117);
pub const ENOTNAM = @as(c_int, 118);
pub const ENAVAIL = @as(c_int, 119);
pub const EISNAM = @as(c_int, 120);
pub const EREMOTEIO = @as(c_int, 121);
pub const EDQUOT = @as(c_int, 122);
pub const ENOMEDIUM = @as(c_int, 123);
pub const EMEDIUMTYPE = @as(c_int, 124);
pub const ECANCELED = @as(c_int, 125);
pub const ENOKEY = @as(c_int, 126);
pub const EKEYEXPIRED = @as(c_int, 127);
pub const EKEYREVOKED = @as(c_int, 128);
pub const EKEYREJECTED = @as(c_int, 129);
pub const EOWNERDEAD = @as(c_int, 130);
pub const ENOTRECOVERABLE = @as(c_int, 131);
pub const ERFKILL = @as(c_int, 132);
pub const EHWPOISON = @as(c_int, 133);
pub const ENOTSUP = EOPNOTSUPP;
pub const errno = __errno_location().*;
pub const __error_t_defined = @as(c_int, 1);
pub const _MATH_H = @as(c_int, 1);
pub const _BITS_LIBM_SIMD_DECL_STUBS_H = @as(c_int, 1);
pub const __DECL_SIMD_cos = "";
pub const __DECL_SIMD_cosf = "";
pub const __DECL_SIMD_cosl = "";
pub const __DECL_SIMD_cosf16 = "";
pub const __DECL_SIMD_cosf32 = "";
pub const __DECL_SIMD_cosf64 = "";
pub const __DECL_SIMD_cosf128 = "";
pub const __DECL_SIMD_cosf32x = "";
pub const __DECL_SIMD_cosf64x = "";
pub const __DECL_SIMD_cosf128x = "";
pub const __DECL_SIMD_sin = "";
pub const __DECL_SIMD_sinf = "";
pub const __DECL_SIMD_sinl = "";
pub const __DECL_SIMD_sinf16 = "";
pub const __DECL_SIMD_sinf32 = "";
pub const __DECL_SIMD_sinf64 = "";
pub const __DECL_SIMD_sinf128 = "";
pub const __DECL_SIMD_sinf32x = "";
pub const __DECL_SIMD_sinf64x = "";
pub const __DECL_SIMD_sinf128x = "";
pub const __DECL_SIMD_sincos = "";
pub const __DECL_SIMD_sincosf = "";
pub const __DECL_SIMD_sincosl = "";
pub const __DECL_SIMD_sincosf16 = "";
pub const __DECL_SIMD_sincosf32 = "";
pub const __DECL_SIMD_sincosf64 = "";
pub const __DECL_SIMD_sincosf128 = "";
pub const __DECL_SIMD_sincosf32x = "";
pub const __DECL_SIMD_sincosf64x = "";
pub const __DECL_SIMD_sincosf128x = "";
pub const __DECL_SIMD_log = "";
pub const __DECL_SIMD_logf = "";
pub const __DECL_SIMD_logl = "";
pub const __DECL_SIMD_logf16 = "";
pub const __DECL_SIMD_logf32 = "";
pub const __DECL_SIMD_logf64 = "";
pub const __DECL_SIMD_logf128 = "";
pub const __DECL_SIMD_logf32x = "";
pub const __DECL_SIMD_logf64x = "";
pub const __DECL_SIMD_logf128x = "";
pub const __DECL_SIMD_exp = "";
pub const __DECL_SIMD_expf = "";
pub const __DECL_SIMD_expl = "";
pub const __DECL_SIMD_expf16 = "";
pub const __DECL_SIMD_expf32 = "";
pub const __DECL_SIMD_expf64 = "";
pub const __DECL_SIMD_expf128 = "";
pub const __DECL_SIMD_expf32x = "";
pub const __DECL_SIMD_expf64x = "";
pub const __DECL_SIMD_expf128x = "";
pub const __DECL_SIMD_pow = "";
pub const __DECL_SIMD_powf = "";
pub const __DECL_SIMD_powl = "";
pub const __DECL_SIMD_powf16 = "";
pub const __DECL_SIMD_powf32 = "";
pub const __DECL_SIMD_powf64 = "";
pub const __DECL_SIMD_powf128 = "";
pub const __DECL_SIMD_powf32x = "";
pub const __DECL_SIMD_powf64x = "";
pub const __DECL_SIMD_powf128x = "";
pub const __DECL_SIMD_acos = "";
pub const __DECL_SIMD_acosf = "";
pub const __DECL_SIMD_acosl = "";
pub const __DECL_SIMD_acosf16 = "";
pub const __DECL_SIMD_acosf32 = "";
pub const __DECL_SIMD_acosf64 = "";
pub const __DECL_SIMD_acosf128 = "";
pub const __DECL_SIMD_acosf32x = "";
pub const __DECL_SIMD_acosf64x = "";
pub const __DECL_SIMD_acosf128x = "";
pub const __DECL_SIMD_atan = "";
pub const __DECL_SIMD_atanf = "";
pub const __DECL_SIMD_atanl = "";
pub const __DECL_SIMD_atanf16 = "";
pub const __DECL_SIMD_atanf32 = "";
pub const __DECL_SIMD_atanf64 = "";
pub const __DECL_SIMD_atanf128 = "";
pub const __DECL_SIMD_atanf32x = "";
pub const __DECL_SIMD_atanf64x = "";
pub const __DECL_SIMD_atanf128x = "";
pub const __DECL_SIMD_asin = "";
pub const __DECL_SIMD_asinf = "";
pub const __DECL_SIMD_asinl = "";
pub const __DECL_SIMD_asinf16 = "";
pub const __DECL_SIMD_asinf32 = "";
pub const __DECL_SIMD_asinf64 = "";
pub const __DECL_SIMD_asinf128 = "";
pub const __DECL_SIMD_asinf32x = "";
pub const __DECL_SIMD_asinf64x = "";
pub const __DECL_SIMD_asinf128x = "";
pub const __DECL_SIMD_hypot = "";
pub const __DECL_SIMD_hypotf = "";
pub const __DECL_SIMD_hypotl = "";
pub const __DECL_SIMD_hypotf16 = "";
pub const __DECL_SIMD_hypotf32 = "";
pub const __DECL_SIMD_hypotf64 = "";
pub const __DECL_SIMD_hypotf128 = "";
pub const __DECL_SIMD_hypotf32x = "";
pub const __DECL_SIMD_hypotf64x = "";
pub const __DECL_SIMD_hypotf128x = "";
pub const __DECL_SIMD_exp2 = "";
pub const __DECL_SIMD_exp2f = "";
pub const __DECL_SIMD_exp2l = "";
pub const __DECL_SIMD_exp2f16 = "";
pub const __DECL_SIMD_exp2f32 = "";
pub const __DECL_SIMD_exp2f64 = "";
pub const __DECL_SIMD_exp2f128 = "";
pub const __DECL_SIMD_exp2f32x = "";
pub const __DECL_SIMD_exp2f64x = "";
pub const __DECL_SIMD_exp2f128x = "";
pub const __DECL_SIMD_exp10 = "";
pub const __DECL_SIMD_exp10f = "";
pub const __DECL_SIMD_exp10l = "";
pub const __DECL_SIMD_exp10f16 = "";
pub const __DECL_SIMD_exp10f32 = "";
pub const __DECL_SIMD_exp10f64 = "";
pub const __DECL_SIMD_exp10f128 = "";
pub const __DECL_SIMD_exp10f32x = "";
pub const __DECL_SIMD_exp10f64x = "";
pub const __DECL_SIMD_exp10f128x = "";
pub const __DECL_SIMD_cosh = "";
pub const __DECL_SIMD_coshf = "";
pub const __DECL_SIMD_coshl = "";
pub const __DECL_SIMD_coshf16 = "";
pub const __DECL_SIMD_coshf32 = "";
pub const __DECL_SIMD_coshf64 = "";
pub const __DECL_SIMD_coshf128 = "";
pub const __DECL_SIMD_coshf32x = "";
pub const __DECL_SIMD_coshf64x = "";
pub const __DECL_SIMD_coshf128x = "";
pub const __DECL_SIMD_expm1 = "";
pub const __DECL_SIMD_expm1f = "";
pub const __DECL_SIMD_expm1l = "";
pub const __DECL_SIMD_expm1f16 = "";
pub const __DECL_SIMD_expm1f32 = "";
pub const __DECL_SIMD_expm1f64 = "";
pub const __DECL_SIMD_expm1f128 = "";
pub const __DECL_SIMD_expm1f32x = "";
pub const __DECL_SIMD_expm1f64x = "";
pub const __DECL_SIMD_expm1f128x = "";
pub const __DECL_SIMD_sinh = "";
pub const __DECL_SIMD_sinhf = "";
pub const __DECL_SIMD_sinhl = "";
pub const __DECL_SIMD_sinhf16 = "";
pub const __DECL_SIMD_sinhf32 = "";
pub const __DECL_SIMD_sinhf64 = "";
pub const __DECL_SIMD_sinhf128 = "";
pub const __DECL_SIMD_sinhf32x = "";
pub const __DECL_SIMD_sinhf64x = "";
pub const __DECL_SIMD_sinhf128x = "";
pub const __DECL_SIMD_cbrt = "";
pub const __DECL_SIMD_cbrtf = "";
pub const __DECL_SIMD_cbrtl = "";
pub const __DECL_SIMD_cbrtf16 = "";
pub const __DECL_SIMD_cbrtf32 = "";
pub const __DECL_SIMD_cbrtf64 = "";
pub const __DECL_SIMD_cbrtf128 = "";
pub const __DECL_SIMD_cbrtf32x = "";
pub const __DECL_SIMD_cbrtf64x = "";
pub const __DECL_SIMD_cbrtf128x = "";
pub const __DECL_SIMD_atan2 = "";
pub const __DECL_SIMD_atan2f = "";
pub const __DECL_SIMD_atan2l = "";
pub const __DECL_SIMD_atan2f16 = "";
pub const __DECL_SIMD_atan2f32 = "";
pub const __DECL_SIMD_atan2f64 = "";
pub const __DECL_SIMD_atan2f128 = "";
pub const __DECL_SIMD_atan2f32x = "";
pub const __DECL_SIMD_atan2f64x = "";
pub const __DECL_SIMD_atan2f128x = "";
pub const __DECL_SIMD_log10 = "";
pub const __DECL_SIMD_log10f = "";
pub const __DECL_SIMD_log10l = "";
pub const __DECL_SIMD_log10f16 = "";
pub const __DECL_SIMD_log10f32 = "";
pub const __DECL_SIMD_log10f64 = "";
pub const __DECL_SIMD_log10f128 = "";
pub const __DECL_SIMD_log10f32x = "";
pub const __DECL_SIMD_log10f64x = "";
pub const __DECL_SIMD_log10f128x = "";
pub const __DECL_SIMD_log2 = "";
pub const __DECL_SIMD_log2f = "";
pub const __DECL_SIMD_log2l = "";
pub const __DECL_SIMD_log2f16 = "";
pub const __DECL_SIMD_log2f32 = "";
pub const __DECL_SIMD_log2f64 = "";
pub const __DECL_SIMD_log2f128 = "";
pub const __DECL_SIMD_log2f32x = "";
pub const __DECL_SIMD_log2f64x = "";
pub const __DECL_SIMD_log2f128x = "";
pub const __DECL_SIMD_log1p = "";
pub const __DECL_SIMD_log1pf = "";
pub const __DECL_SIMD_log1pl = "";
pub const __DECL_SIMD_log1pf16 = "";
pub const __DECL_SIMD_log1pf32 = "";
pub const __DECL_SIMD_log1pf64 = "";
pub const __DECL_SIMD_log1pf128 = "";
pub const __DECL_SIMD_log1pf32x = "";
pub const __DECL_SIMD_log1pf64x = "";
pub const __DECL_SIMD_log1pf128x = "";
pub const __DECL_SIMD_atanh = "";
pub const __DECL_SIMD_atanhf = "";
pub const __DECL_SIMD_atanhl = "";
pub const __DECL_SIMD_atanhf16 = "";
pub const __DECL_SIMD_atanhf32 = "";
pub const __DECL_SIMD_atanhf64 = "";
pub const __DECL_SIMD_atanhf128 = "";
pub const __DECL_SIMD_atanhf32x = "";
pub const __DECL_SIMD_atanhf64x = "";
pub const __DECL_SIMD_atanhf128x = "";
pub const __DECL_SIMD_acosh = "";
pub const __DECL_SIMD_acoshf = "";
pub const __DECL_SIMD_acoshl = "";
pub const __DECL_SIMD_acoshf16 = "";
pub const __DECL_SIMD_acoshf32 = "";
pub const __DECL_SIMD_acoshf64 = "";
pub const __DECL_SIMD_acoshf128 = "";
pub const __DECL_SIMD_acoshf32x = "";
pub const __DECL_SIMD_acoshf64x = "";
pub const __DECL_SIMD_acoshf128x = "";
pub const __DECL_SIMD_erf = "";
pub const __DECL_SIMD_erff = "";
pub const __DECL_SIMD_erfl = "";
pub const __DECL_SIMD_erff16 = "";
pub const __DECL_SIMD_erff32 = "";
pub const __DECL_SIMD_erff64 = "";
pub const __DECL_SIMD_erff128 = "";
pub const __DECL_SIMD_erff32x = "";
pub const __DECL_SIMD_erff64x = "";
pub const __DECL_SIMD_erff128x = "";
pub const __DECL_SIMD_tanh = "";
pub const __DECL_SIMD_tanhf = "";
pub const __DECL_SIMD_tanhl = "";
pub const __DECL_SIMD_tanhf16 = "";
pub const __DECL_SIMD_tanhf32 = "";
pub const __DECL_SIMD_tanhf64 = "";
pub const __DECL_SIMD_tanhf128 = "";
pub const __DECL_SIMD_tanhf32x = "";
pub const __DECL_SIMD_tanhf64x = "";
pub const __DECL_SIMD_tanhf128x = "";
pub const __DECL_SIMD_asinh = "";
pub const __DECL_SIMD_asinhf = "";
pub const __DECL_SIMD_asinhl = "";
pub const __DECL_SIMD_asinhf16 = "";
pub const __DECL_SIMD_asinhf32 = "";
pub const __DECL_SIMD_asinhf64 = "";
pub const __DECL_SIMD_asinhf128 = "";
pub const __DECL_SIMD_asinhf32x = "";
pub const __DECL_SIMD_asinhf64x = "";
pub const __DECL_SIMD_asinhf128x = "";
pub const __DECL_SIMD_erfc = "";
pub const __DECL_SIMD_erfcf = "";
pub const __DECL_SIMD_erfcl = "";
pub const __DECL_SIMD_erfcf16 = "";
pub const __DECL_SIMD_erfcf32 = "";
pub const __DECL_SIMD_erfcf64 = "";
pub const __DECL_SIMD_erfcf128 = "";
pub const __DECL_SIMD_erfcf32x = "";
pub const __DECL_SIMD_erfcf64x = "";
pub const __DECL_SIMD_erfcf128x = "";
pub const __DECL_SIMD_tan = "";
pub const __DECL_SIMD_tanf = "";
pub const __DECL_SIMD_tanl = "";
pub const __DECL_SIMD_tanf16 = "";
pub const __DECL_SIMD_tanf32 = "";
pub const __DECL_SIMD_tanf64 = "";
pub const __DECL_SIMD_tanf128 = "";
pub const __DECL_SIMD_tanf32x = "";
pub const __DECL_SIMD_tanf64x = "";
pub const __DECL_SIMD_tanf128x = "";
pub const HUGE_VAL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/math.h:48:10
pub const HUGE_VALF = __builtin.huge_valf();
pub const HUGE_VALL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // /usr/include/math.h:60:11
pub const HUGE_VAL_F32 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_valf32`"); // /usr/include/math.h:70:10
pub const HUGE_VAL_F64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_valf64`"); // /usr/include/math.h:73:10
pub const HUGE_VAL_F128 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_valf128`"); // /usr/include/math.h:76:10
pub const HUGE_VAL_F32X = @compileError("unable to translate macro: undefined identifier `__builtin_huge_valf32x`"); // /usr/include/math.h:79:10
pub const HUGE_VAL_F64X = @compileError("unable to translate macro: undefined identifier `__builtin_huge_valf64x`"); // /usr/include/math.h:82:10
pub const INFINITY = __builtin.inff();
pub const NAN = __builtin.nanf("");
pub const SNANF = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`"); // /usr/include/math.h:110:11
pub const SNAN = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/math.h:111:11
pub const SNANL = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`"); // /usr/include/math.h:112:11
pub const SNANF32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf32`"); // /usr/include/math.h:123:10
pub const SNANF64 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf64`"); // /usr/include/math.h:128:10
pub const SNANF128 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf128`"); // /usr/include/math.h:133:10
pub const SNANF32X = @compileError("unable to translate macro: undefined identifier `__builtin_nansf32x`"); // /usr/include/math.h:138:10
pub const SNANF64X = @compileError("unable to translate macro: undefined identifier `__builtin_nansf64x`"); // /usr/include/math.h:143:10
pub const __GLIBC_FLT_EVAL_METHOD = __FLT_EVAL_METHOD__;
pub const __FP_LOGB0_IS_MIN = @as(c_int, 1);
pub const __FP_LOGBNAN_IS_MIN = @as(c_int, 1);
pub const FP_ILOGB0 = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const FP_ILOGBNAN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const __FP_LONG_MAX = __helpers.promoteIntLiteral(c_long, 0x7fffffffffffffff, .hex);
pub const FP_LLOGB0 = -__FP_LONG_MAX - @as(c_int, 1);
pub const FP_LLOGBNAN = -__FP_LONG_MAX - @as(c_int, 1);
pub const __SIMD_DECL = @compileError("unable to translate macro: undefined identifier `__DECL_SIMD_`"); // /usr/include/math.h:276:9
pub const __MATHCALL_VEC = @compileError("unable to translate macro: undefined identifier `__MATH_PRECNAME`"); // /usr/include/math.h:278:9
pub const __MATHDECL_VEC = @compileError("unable to translate macro: undefined identifier `__MATH_PRECNAME`"); // /usr/include/math.h:282:9
pub const __MATHCALLX = @compileError("unable to translate macro: undefined identifier `_Mdouble_`"); // /usr/include/math.h:291:9
pub const __MATHDECLX = @compileError("unable to translate macro: undefined identifier `__MATHDECL_1`"); // /usr/include/math.h:293:9
pub const __MATHREDIR = @compileError("unable to translate macro: undefined identifier `__MATH_PRECNAME`"); // /usr/include/math.h:305:9
pub const __MATH_DECLARE_LDOUBLE = @as(c_int, 1);
pub const __MATH_TG_F32 = @compileError("unable to translate macro: undefined identifier `f`"); // /usr/include/math.h:884:12
pub const __MATH_TG_F64X = @compileError("unable to translate macro: undefined identifier `l`"); // /usr/include/math.h:890:13
pub const __MATH_TG = @compileError("unable to translate macro: undefined identifier `f`"); // /usr/include/math.h:897:11
pub const fpclassify = @compileError("unable to translate macro: undefined identifier `__builtin_fpclassify`"); // /usr/include/math.h:967:11
pub inline fn signbit(x: anytype) @TypeOf(__builtin.signbit(x)) {
    _ = &x;
    return __builtin.signbit(x);
}
pub const isfinite = @compileError("unable to translate macro: undefined identifier `__builtin_isfinite`"); // /usr/include/math.h:994:11
pub const isnormal = @compileError("unable to translate macro: undefined identifier `__builtin_isnormal`"); // /usr/include/math.h:1002:11
pub const MATH_ERRNO = @as(c_int, 1);
pub const MATH_ERREXCEPT = @as(c_int, 2);
pub const math_errhandling = MATH_ERRNO | MATH_ERREXCEPT;
pub const __iscanonicalf = @compileError("unable to translate C expr: unexpected token '__typeof'"); // /usr/include/x86_64-linux-gnu/bits/iscanonical.h:25:9
pub const __iscanonical = @compileError("unable to translate C expr: unexpected token '__typeof'"); // /usr/include/x86_64-linux-gnu/bits/iscanonical.h:26:9
pub const __iscanonicalf128 = @compileError("unable to translate C expr: unexpected token '__typeof'"); // /usr/include/x86_64-linux-gnu/bits/iscanonical.h:28:10
pub inline fn iscanonical(x: anytype) @TypeOf(__MATH_TG(x, __iscanonical, x)) {
    _ = &x;
    return __MATH_TG(x, __iscanonical, x);
}
pub inline fn issignaling(x: anytype) @TypeOf(__MATH_TG(x, __issignaling, x)) {
    _ = &x;
    return __MATH_TG(x, __issignaling, x);
}
pub inline fn issubnormal(x: anytype) @TypeOf(fpclassify(x) == FP_SUBNORMAL) {
    _ = &x;
    return fpclassify(x) == FP_SUBNORMAL;
}
pub const iszero = @compileError("unable to translate C expr: unexpected token '__typeof'"); // /usr/include/math.h:1094:12
pub const MAXFLOAT = @as(f32, 3.40282347e+38);
pub const M_E = @as(f64, 2.7182818284590452354);
pub const M_LOG2E = @as(f64, 1.4426950408889634074);
pub const M_LOG10E = @as(f64, 0.43429448190325182765);
pub const M_LN2 = @as(f64, 0.69314718055994530942);
pub const M_LN10 = @as(f64, 2.30258509299404568402);
pub const M_PI = @as(f64, 3.14159265358979323846);
pub const M_PI_2 = @as(f64, 1.57079632679489661923);
pub const M_PI_4 = @as(f64, 0.78539816339744830962);
pub const M_1_PI = @as(f64, 0.31830988618379067154);
pub const M_2_PI = @as(f64, 0.63661977236758134308);
pub const M_2_SQRTPI = @as(f64, 1.12837916709551257390);
pub const M_SQRT2 = @as(f64, 1.41421356237309504880);
pub const M_SQRT1_2 = @as(f64, 0.70710678118654752440);
pub const M_Ef = @as(f32, 2.7182818284590452354);
pub const M_LOG2Ef = @as(f32, 1.4426950408889634074);
pub const M_LOG10Ef = @as(f32, 0.43429448190325182765);
pub const M_LN2f = @as(f32, 0.69314718055994530942);
pub const M_LN10f = @as(f32, 2.30258509299404568402);
pub const M_PIf = @as(f32, 3.14159265358979323846);
pub const M_PI_2f = @as(f32, 1.57079632679489661923);
pub const M_PI_4f = @as(f32, 0.78539816339744830962);
pub const M_1_PIf = @as(f32, 0.31830988618379067154);
pub const M_2_PIf = @as(f32, 0.63661977236758134308);
pub const M_2_SQRTPIf = @as(f32, 1.12837916709551257390);
pub const M_SQRT2f = @as(f32, 1.41421356237309504880);
pub const M_SQRT1_2f = @as(f32, 0.70710678118654752440);
pub const M_El = @as(c_longdouble, 2.718281828459045235360287471352662498);
pub const M_LOG2El = @as(c_longdouble, 1.442695040888963407359924681001892137);
pub const M_LOG10El = @as(c_longdouble, 0.434294481903251827651128918916605082);
pub const M_LN2l = @as(c_longdouble, 0.693147180559945309417232121458176568);
pub const M_LN10l = @as(c_longdouble, 2.302585092994045684017991454684364208);
pub const M_PIl = @as(c_longdouble, 3.141592653589793238462643383279502884);
pub const M_PI_2l = @as(c_longdouble, 1.570796326794896619231321691639751442);
pub const M_PI_4l = @as(c_longdouble, 0.785398163397448309615660845819875721);
pub const M_1_PIl = @as(c_longdouble, 0.318309886183790671537767526745028724);
pub const M_2_PIl = @as(c_longdouble, 0.636619772367581343075535053490057448);
pub const M_2_SQRTPIl = @as(c_longdouble, 1.128379167095512573896158903121545172);
pub const M_SQRT2l = @as(c_longdouble, 1.414213562373095048801688724209698079);
pub const M_SQRT1_2l = @as(c_longdouble, 0.707106781186547524400844362104849039);
pub const M_Ef32 = __f32(@as(f64, 2.718281828459045235360287471352662498));
pub const M_LOG2Ef32 = __f32(@as(f64, 1.442695040888963407359924681001892137));
pub const M_LOG10Ef32 = __f32(@as(f64, 0.434294481903251827651128918916605082));
pub const M_LN2f32 = __f32(@as(f64, 0.693147180559945309417232121458176568));
pub const M_LN10f32 = __f32(@as(f64, 2.302585092994045684017991454684364208));
pub const M_PIf32 = __f32(@as(f64, 3.141592653589793238462643383279502884));
pub const M_PI_2f32 = __f32(@as(f64, 1.570796326794896619231321691639751442));
pub const M_PI_4f32 = __f32(@as(f64, 0.785398163397448309615660845819875721));
pub const M_1_PIf32 = __f32(@as(f64, 0.318309886183790671537767526745028724));
pub const M_2_PIf32 = __f32(@as(f64, 0.636619772367581343075535053490057448));
pub const M_2_SQRTPIf32 = __f32(@as(f64, 1.128379167095512573896158903121545172));
pub const M_SQRT2f32 = __f32(@as(f64, 1.414213562373095048801688724209698079));
pub const M_SQRT1_2f32 = __f32(@as(f64, 0.707106781186547524400844362104849039));
pub const M_Ef64 = __f64(@as(f64, 2.718281828459045235360287471352662498));
pub const M_LOG2Ef64 = __f64(@as(f64, 1.442695040888963407359924681001892137));
pub const M_LOG10Ef64 = __f64(@as(f64, 0.434294481903251827651128918916605082));
pub const M_LN2f64 = __f64(@as(f64, 0.693147180559945309417232121458176568));
pub const M_LN10f64 = __f64(@as(f64, 2.302585092994045684017991454684364208));
pub const M_PIf64 = __f64(@as(f64, 3.141592653589793238462643383279502884));
pub const M_PI_2f64 = __f64(@as(f64, 1.570796326794896619231321691639751442));
pub const M_PI_4f64 = __f64(@as(f64, 0.785398163397448309615660845819875721));
pub const M_1_PIf64 = __f64(@as(f64, 0.318309886183790671537767526745028724));
pub const M_2_PIf64 = __f64(@as(f64, 0.636619772367581343075535053490057448));
pub const M_2_SQRTPIf64 = __f64(@as(f64, 1.128379167095512573896158903121545172));
pub const M_SQRT2f64 = __f64(@as(f64, 1.414213562373095048801688724209698079));
pub const M_SQRT1_2f64 = __f64(@as(f64, 0.707106781186547524400844362104849039));
pub const M_Ef128 = __f128(@as(f64, 2.718281828459045235360287471352662498));
pub const M_LOG2Ef128 = __f128(@as(f64, 1.442695040888963407359924681001892137));
pub const M_LOG10Ef128 = __f128(@as(f64, 0.434294481903251827651128918916605082));
pub const M_LN2f128 = __f128(@as(f64, 0.693147180559945309417232121458176568));
pub const M_LN10f128 = __f128(@as(f64, 2.302585092994045684017991454684364208));
pub const M_PIf128 = __f128(@as(f64, 3.141592653589793238462643383279502884));
pub const M_PI_2f128 = __f128(@as(f64, 1.570796326794896619231321691639751442));
pub const M_PI_4f128 = __f128(@as(f64, 0.785398163397448309615660845819875721));
pub const M_1_PIf128 = __f128(@as(f64, 0.318309886183790671537767526745028724));
pub const M_2_PIf128 = __f128(@as(f64, 0.636619772367581343075535053490057448));
pub const M_2_SQRTPIf128 = __f128(@as(f64, 1.128379167095512573896158903121545172));
pub const M_SQRT2f128 = __f128(@as(f64, 1.414213562373095048801688724209698079));
pub const M_SQRT1_2f128 = __f128(@as(f64, 0.707106781186547524400844362104849039));
pub const M_Ef32x = __f32x(@as(f64, 2.718281828459045235360287471352662498));
pub const M_LOG2Ef32x = __f32x(@as(f64, 1.442695040888963407359924681001892137));
pub const M_LOG10Ef32x = __f32x(@as(f64, 0.434294481903251827651128918916605082));
pub const M_LN2f32x = __f32x(@as(f64, 0.693147180559945309417232121458176568));
pub const M_LN10f32x = __f32x(@as(f64, 2.302585092994045684017991454684364208));
pub const M_PIf32x = __f32x(@as(f64, 3.141592653589793238462643383279502884));
pub const M_PI_2f32x = __f32x(@as(f64, 1.570796326794896619231321691639751442));
pub const M_PI_4f32x = __f32x(@as(f64, 0.785398163397448309615660845819875721));
pub const M_1_PIf32x = __f32x(@as(f64, 0.318309886183790671537767526745028724));
pub const M_2_PIf32x = __f32x(@as(f64, 0.636619772367581343075535053490057448));
pub const M_2_SQRTPIf32x = __f32x(@as(f64, 1.128379167095512573896158903121545172));
pub const M_SQRT2f32x = __f32x(@as(f64, 1.414213562373095048801688724209698079));
pub const M_SQRT1_2f32x = __f32x(@as(f64, 0.707106781186547524400844362104849039));
pub const M_Ef64x = __f64x(@as(f64, 2.718281828459045235360287471352662498));
pub const M_LOG2Ef64x = __f64x(@as(f64, 1.442695040888963407359924681001892137));
pub const M_LOG10Ef64x = __f64x(@as(f64, 0.434294481903251827651128918916605082));
pub const M_LN2f64x = __f64x(@as(f64, 0.693147180559945309417232121458176568));
pub const M_LN10f64x = __f64x(@as(f64, 2.302585092994045684017991454684364208));
pub const M_PIf64x = __f64x(@as(f64, 3.141592653589793238462643383279502884));
pub const M_PI_2f64x = __f64x(@as(f64, 1.570796326794896619231321691639751442));
pub const M_PI_4f64x = __f64x(@as(f64, 0.785398163397448309615660845819875721));
pub const M_1_PIf64x = __f64x(@as(f64, 0.318309886183790671537767526745028724));
pub const M_2_PIf64x = __f64x(@as(f64, 0.636619772367581343075535053490057448));
pub const M_2_SQRTPIf64x = __f64x(@as(f64, 1.128379167095512573896158903121545172));
pub const M_SQRT2f64x = __f64x(@as(f64, 1.414213562373095048801688724209698079));
pub const M_SQRT1_2f64x = __f64x(@as(f64, 0.707106781186547524400844362104849039));
pub const isgreater = @compileError("unable to translate macro: undefined identifier `__builtin_isgreater`"); // /usr/include/math.h:1305:11
pub const isgreaterequal = @compileError("unable to translate macro: undefined identifier `__builtin_isgreaterequal`"); // /usr/include/math.h:1306:11
pub const isless = @compileError("unable to translate macro: undefined identifier `__builtin_isless`"); // /usr/include/math.h:1307:11
pub const islessequal = @compileError("unable to translate macro: undefined identifier `__builtin_islessequal`"); // /usr/include/math.h:1308:11
pub const islessgreater = @compileError("unable to translate macro: undefined identifier `__builtin_islessgreater`"); // /usr/include/math.h:1309:11
pub const isunordered = @compileError("unable to translate macro: undefined identifier `__builtin_isunordered`"); // /usr/include/math.h:1310:11
pub inline fn __MATH_EVAL_FMT2(x: anytype, y: anytype) @TypeOf((x + y) + @as(f32, 0.0)) {
    _ = &x;
    _ = &y;
    return (x + y) + @as(f32, 0.0);
}
pub inline fn iseqsig(x: anytype, y: anytype) @TypeOf(__MATH_TG(__MATH_EVAL_FMT2(x, y), __iseqsig, blk_1: {
    _ = &x;
    break :blk_1 y;
})) {
    _ = &x;
    _ = &y;
    return __MATH_TG(__MATH_EVAL_FMT2(x, y), __iseqsig, blk_1: {
        _ = &x;
        break :blk_1 y;
    });
}
pub const HAVE_ARPA_INET_H = @as(c_int, 1);
pub const HAVE_CTYPE_H = @as(c_int, 1);
pub const HAVE_DIRENT_H = @as(c_int, 1);
pub const HAVE_FCNTL_H = @as(c_int, 1);
pub const HAVE_FORKPTY = @as(c_int, 1);
pub const HAVE__DEV_PTMX = @as(c_int, 1);
pub const HAVE_GETADDRINFO = @as(c_int, 1);
pub const HAVE_GETHOSTBYNAME = @as(c_int, 1);
pub const HAVE_GETHOSTNAME = @as(c_int, 1);
pub const HAVE_GETMNTENT = @as(c_int, 1);
pub const HAVE_GETTIMEOFDAY = @as(c_int, 1);
pub const HAVE_GNUTLS_H = @as(c_int, 1);
pub const HAVE_INET_NTOA = @as(c_int, 1);
pub const HAVE_INTTYPES_H = @as(c_int, 1);
pub const HAVE_LIBNSL = @as(c_int, 1);
pub const HAVE_LIBPTHREAD = @as(c_int, 1);
pub const HAVE_LIBUTIL = @as(c_int, 1);
pub const HAVE_LIBZ = @as(c_int, 1);
pub const HAVE_MEMSET = @as(c_int, 1);
pub const HAVE_NETDB_H = @as(c_int, 1);
pub const HAVE_NETINET_IN_H = @as(c_int, 1);
pub const HAVE_POPEN = @as(c_int, 1);
pub const HAVE_PTHREAD_H = @as(c_int, 1);
pub const HAVE_PTY_H = @as(c_int, 1);
pub const HAVE_REALLOC = @as(c_int, 1);
pub const HAVE_SELECT = @as(c_int, 1);
pub const HAVE_SOCKET = @as(c_int, 1);
pub const HAVE_STDBOOL_H = @as(c_int, 1);
pub const HAVE_STDINT_H = @as(c_int, 1);
pub const HAVE_STDLIB_H = @as(c_int, 1);
pub const HAVE_STRCASECMP = @as(c_int, 1);
pub const HAVE_STRCHR = @as(c_int, 1);
pub const HAVE_STRDUP = @as(c_int, 1);
pub const HAVE_STRERROR = @as(c_int, 1);
pub const HAVE_STRFTIME = @as(c_int, 1);
pub const HAVE_STRINGS_H = @as(c_int, 1);
pub const HAVE_STRING_H = @as(c_int, 1);
pub const HAVE_STRNCASECMP = @as(c_int, 1);
pub const HAVE_STRSTR = @as(c_int, 1);
pub const HAVE_SYS_IOCTL_H = @as(c_int, 1);
pub const HAVE_SYS_PARAM_H = @as(c_int, 1);
pub const HAVE_SYS_SELECT_H = @as(c_int, 1);
pub const HAVE_SYS_SOCKET_H = @as(c_int, 1);
pub const HAVE_SYS_STAT_H = @as(c_int, 1);
pub const HAVE_SYS_TIME_H = @as(c_int, 1);
pub const HAVE_SYS_TYPES_H = @as(c_int, 1);
pub const HAVE_TIME_H = @as(c_int, 1);
pub const HAVE_UNISTD_H = @as(c_int, 1);
pub const HAVE_UTIME = @as(c_int, 1);
pub const HAVE_UTIME_NULL = @as(c_int, 1);
pub const HAVE_VPRINTF = @as(c_int, 1);
pub const HAVE_ZLIB_H = @as(c_int, 1);
pub const HAVE__BOOL = @as(c_int, 1);
pub const LSTAT_FOLLOWS_SLASHED_SYMLINK = @as(c_int, 1);
pub const PACKAGE_BUGREPORT = "";
pub const PACKAGE_NAME = "";
pub const PACKAGE_STRING = "";
pub const PACKAGE_TARNAME = "";
pub const PACKAGE_VERSION = "";
pub const SELECT_TYPE_ARG1 = c_int;
pub const SELECT_TYPE_ARG234 = @compileError("unable to translate C expr: unexpected token ''"); // ./config.h:237:9
pub const SELECT_TYPE_ARG5 = @compileError("unable to translate C expr: unexpected token ''"); // ./config.h:240:9
pub const STDC_HEADERS = @as(c_int, 1);
pub const _STRING_H = @as(c_int, 1);
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 1);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 1);
pub const strdupa = @compileError("unable to translate macro: undefined identifier `__old`"); // /usr/include/string.h:201:10
pub const strndupa = @compileError("unable to translate macro: undefined identifier `__old`"); // /usr/include/string.h:211:10
pub const _STRINGS_H = @as(c_int, 1);
pub const _TIME_H = @as(c_int, 1);
pub const _BITS_TIME_H = @as(c_int, 1);
pub const CLOCKS_PER_SEC = __helpers.cast(__clock_t, __helpers.promoteIntLiteral(c_int, 1000000, .decimal));
pub const CLOCK_REALTIME = @as(c_int, 0);
pub const CLOCK_MONOTONIC = @as(c_int, 1);
pub const CLOCK_PROCESS_CPUTIME_ID = @as(c_int, 2);
pub const CLOCK_THREAD_CPUTIME_ID = @as(c_int, 3);
pub const CLOCK_MONOTONIC_RAW = @as(c_int, 4);
pub const CLOCK_REALTIME_COARSE = @as(c_int, 5);
pub const CLOCK_MONOTONIC_COARSE = @as(c_int, 6);
pub const CLOCK_BOOTTIME = @as(c_int, 7);
pub const CLOCK_REALTIME_ALARM = @as(c_int, 8);
pub const CLOCK_BOOTTIME_ALARM = @as(c_int, 9);
pub const CLOCK_TAI = @as(c_int, 11);
pub const TIMER_ABSTIME = @as(c_int, 1);
pub const _BITS_TIMEX_H = @as(c_int, 1);
pub const ADJ_OFFSET = @as(c_int, 0x0001);
pub const ADJ_FREQUENCY = @as(c_int, 0x0002);
pub const ADJ_MAXERROR = @as(c_int, 0x0004);
pub const ADJ_ESTERROR = @as(c_int, 0x0008);
pub const ADJ_STATUS = @as(c_int, 0x0010);
pub const ADJ_TIMECONST = @as(c_int, 0x0020);
pub const ADJ_TAI = @as(c_int, 0x0080);
pub const ADJ_SETOFFSET = @as(c_int, 0x0100);
pub const ADJ_MICRO = @as(c_int, 0x1000);
pub const ADJ_NANO = @as(c_int, 0x2000);
pub const ADJ_TICK = @as(c_int, 0x4000);
pub const ADJ_OFFSET_SINGLESHOT = __helpers.promoteIntLiteral(c_int, 0x8001, .hex);
pub const ADJ_OFFSET_SS_READ = __helpers.promoteIntLiteral(c_int, 0xa001, .hex);
pub const MOD_OFFSET = ADJ_OFFSET;
pub const MOD_FREQUENCY = ADJ_FREQUENCY;
pub const MOD_MAXERROR = ADJ_MAXERROR;
pub const MOD_ESTERROR = ADJ_ESTERROR;
pub const MOD_STATUS = ADJ_STATUS;
pub const MOD_TIMECONST = ADJ_TIMECONST;
pub const MOD_CLKB = ADJ_TICK;
pub const MOD_CLKA = ADJ_OFFSET_SINGLESHOT;
pub const MOD_TAI = ADJ_TAI;
pub const MOD_MICRO = ADJ_MICRO;
pub const MOD_NANO = ADJ_NANO;
pub const STA_PLL = @as(c_int, 0x0001);
pub const STA_PPSFREQ = @as(c_int, 0x0002);
pub const STA_PPSTIME = @as(c_int, 0x0004);
pub const STA_FLL = @as(c_int, 0x0008);
pub const STA_INS = @as(c_int, 0x0010);
pub const STA_DEL = @as(c_int, 0x0020);
pub const STA_UNSYNC = @as(c_int, 0x0040);
pub const STA_FREQHOLD = @as(c_int, 0x0080);
pub const STA_PPSSIGNAL = @as(c_int, 0x0100);
pub const STA_PPSJITTER = @as(c_int, 0x0200);
pub const STA_PPSWANDER = @as(c_int, 0x0400);
pub const STA_PPSERROR = @as(c_int, 0x0800);
pub const STA_CLOCKERR = @as(c_int, 0x1000);
pub const STA_NANO = @as(c_int, 0x2000);
pub const STA_MODE = @as(c_int, 0x4000);
pub const STA_CLK = __helpers.promoteIntLiteral(c_int, 0x8000, .hex);
pub const STA_RONLY = ((((((STA_PPSSIGNAL | STA_PPSJITTER) | STA_PPSWANDER) | STA_PPSERROR) | STA_CLOCKERR) | STA_NANO) | STA_MODE) | STA_CLK;
pub const __struct_tm_defined = @as(c_int, 1);
pub const __itimerspec_defined = @as(c_int, 1);
pub const TIME_UTC = @as(c_int, 1);
pub inline fn __isleap(year: anytype) @TypeOf((__helpers.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((__helpers.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (__helpers.rem(year, @as(c_int, 400)) == @as(c_int, 0)))) {
    _ = &year;
    return (__helpers.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((__helpers.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (__helpers.rem(year, @as(c_int, 400)) == @as(c_int, 0)));
}
pub const _SYS_TIME_H = @as(c_int, 1);
pub const TIMEVAL_TO_TIMESPEC = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/x86_64-linux-gnu/sys/time.h:38:10
pub const TIMESPEC_TO_TIMEVAL = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/x86_64-linux-gnu/sys/time.h:42:10
pub inline fn timerisset(tvp: anytype) @TypeOf((tvp.*.tv_sec != 0) or (tvp.*.tv_usec != 0)) {
    _ = &tvp;
    return (tvp.*.tv_sec != 0) or (tvp.*.tv_usec != 0);
}
pub const timerclear = @compileError("unable to translate C expr: expected ')' instead got '='"); // /usr/include/x86_64-linux-gnu/sys/time.h:232:10
pub inline fn timercmp(a: anytype, b: anytype, CMP: anytype) @TypeOf(if (__helpers.cast(bool, a.*.tv_sec == b.*.tv_sec)) a.*.tv_usec ++ CMP(b).*.tv_usec else a.*.tv_sec ++ CMP(b).*.tv_sec) {
    _ = &a;
    _ = &b;
    _ = &CMP;
    return if (__helpers.cast(bool, a.*.tv_sec == b.*.tv_sec)) a.*.tv_usec ++ CMP(b).*.tv_usec else a.*.tv_sec ++ CMP(b).*.tv_sec;
}
pub const timeradd = @compileError("unable to translate C expr: unexpected token 'do'"); // /usr/include/x86_64-linux-gnu/sys/time.h:237:10
pub const timersub = @compileError("unable to translate C expr: unexpected token 'do'"); // /usr/include/x86_64-linux-gnu/sys/time.h:247:10
pub const BADSIG = @compileError("unable to translate C expr: expected ')' instead got '('"); // tintin.h:80:9
pub const GNUTLS_GNUTLS_H = "";
pub const GNUTLS_VERSION = "3.7.3";
pub const GNUTLS_VERSION_MAJOR = @as(c_int, 3);
pub const GNUTLS_VERSION_MINOR = @as(c_int, 7);
pub const GNUTLS_VERSION_PATCH = @as(c_int, 3);
pub const GNUTLS_VERSION_NUMBER = __helpers.promoteIntLiteral(c_int, 0x030703, .hex);
pub const GNUTLS_CIPHER_RIJNDAEL_128_CBC = GNUTLS_CIPHER_AES_128_CBC;
pub const GNUTLS_CIPHER_RIJNDAEL_256_CBC = GNUTLS_CIPHER_AES_256_CBC;
pub const GNUTLS_CIPHER_RIJNDAEL_CBC = GNUTLS_CIPHER_AES_128_CBC;
pub const GNUTLS_CIPHER_ARCFOUR = GNUTLS_CIPHER_ARCFOUR_128;
pub const _SYM_EXPORT = "";
pub const __GNUTLS_CONST__ = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // /usr/include/gnutls/gnutls.h:74:10
pub const __GNUTLS_PURE__ = @compileError("unable to translate macro: undefined identifier `pure`"); // /usr/include/gnutls/gnutls.h:75:10
pub const GNUTLS_SKIP_GLOBAL_INIT = @compileError("unable to translate macro: undefined identifier `_gnutls_global_init_skip`"); // /usr/include/gnutls/gnutls.h:84:9
pub const GNUTLS_MAC_SHA = GNUTLS_MAC_SHA1;
pub const GNUTLS_DIG_SHA = GNUTLS_DIG_SHA1;
pub const GNUTLS_MAX_ALGORITHM_NUM = @as(c_int, 64);
pub const GNUTLS_MAX_SESSION_ID_SIZE = @as(c_int, 32);
pub const GNUTLS_ENABLE_CERT_TYPE_NEG = @as(c_int, 0);
pub const GNUTLS_HANDSHAKE_ANY = __helpers.cast(c_uint, -@as(c_int, 1));
pub const GNUTLS_CRT_RAW = GNUTLS_CRT_RAWPK;
pub const GNUTLS_PK_ECC = GNUTLS_PK_ECDSA;
pub const GNUTLS_PK_EC = GNUTLS_PK_ECDSA;
pub const GNUTLS_PK_ECDHX = GNUTLS_PK_ECDH_X25519;
pub inline fn GNUTLS_CURVE_TO_BITS(curve: anytype) c_uint {
    _ = &curve;
    return __helpers.cast(c_uint, (__helpers.cast(c_uint, @as(c_int, 1)) << @as(c_int, 31)) | __helpers.cast(c_uint, curve));
}
pub inline fn GNUTLS_BITS_TO_CURVE(bits: anytype) @TypeOf(__helpers.cast(c_uint, bits) & __helpers.promoteIntLiteral(c_int, 0x7FFFFFFF, .hex)) {
    _ = &bits;
    return __helpers.cast(c_uint, bits) & __helpers.promoteIntLiteral(c_int, 0x7FFFFFFF, .hex);
}
pub inline fn GNUTLS_BITS_ARE_CURVE(bits: anytype) @TypeOf(__helpers.cast(c_uint, bits) & __helpers.promoteIntLiteral(c_int, 0x80000000, .hex)) {
    _ = &bits;
    return __helpers.cast(c_uint, bits) & __helpers.promoteIntLiteral(c_int, 0x80000000, .hex);
}
pub const GNUTLS_SEC_PARAM_NORMAL = GNUTLS_SEC_PARAM_MEDIUM;
pub inline fn _gnutls_deinit(x: anytype) @TypeOf(gnutls_deinit(x)) {
    _ = &x;
    return gnutls_deinit(x);
}
pub const GNUTLS_DEFAULT_HANDSHAKE_TIMEOUT = __helpers.cast(c_uint, -@as(c_int, 1));
pub const GNUTLS_INDEFINITE_TIMEOUT = __helpers.cast(c_uint, -@as(c_int, 2));
pub const GNUTLS_KU_PEER = @as(c_int, 1);
pub const GNUTLS_SIGN_FLAG_SECURE_FOR_CERTS = @as(c_int, 1);
pub const gnutls_sign_algorithm_get_name = gnutls_sign_get_name;
pub const GNUTLS_HEARTBEAT_WAIT = @as(c_int, 1);
pub const GNUTLS_RECORD_WAIT = @as(c_int, 1);
pub const gnutls_read = gnutls_record_recv;
pub const gnutls_write = gnutls_record_send;
pub inline fn gnutls_record_set_max_empty_records(session_1: anytype, x: anytype) void {
    _ = &session_1;
    _ = &x;
    return;
}
pub const GNUTLS_HB_PEER_ALLOWED_TO_SEND = @as(c_int, 1);
pub const GNUTLS_HB_PEER_NOT_ALLOWED_TO_SEND = @as(c_int, 1) << @as(c_int, 1);
pub const GNUTLS_HB_LOCAL_ALLOWED_TO_SEND = @as(c_int, 1) << @as(c_int, 2);
pub const GNUTLS_ALPN_MAND = GNUTLS_ALPN_MANDATORY;
pub const GNUTLS_PRIORITY_INIT_DEF_APPEND = @as(c_int, 1);
pub const GNUTLS_PRIORITY_LIST_INIT_KEYWORDS = @as(c_int, 1);
pub const GNUTLS_PRIORITY_LIST_SPECIAL = @as(c_int, 2);
pub const GNUTLS_MAX_SESSION_ID = @as(c_int, 32);
pub const GNUTLS_HOOK_POST = @as(c_int, 1);
pub const GNUTLS_HOOK_PRE = @as(c_int, 0);
pub const GNUTLS_HOOK_BOTH = -@as(c_int, 1);
pub const gnutls_handshake_post_client_hello_func = gnutls_handshake_simple_hook_func;
pub const gnutls_check_version_numeric = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/gnutls/gnutls.h:1981:9
pub const gnutls_cred_set = gnutls_credentials_set;
pub const GNUTLS_OCSP_SR_IS_AVAIL = @as(c_int, 1);
pub const _SYS_UIO_H = @as(c_int, 1);
pub const __iovec_defined = @as(c_int, 1);
pub const UIO_MAXIOV = __IOV_MAX;
pub const _BITS_UIO_EXT_H = @as(c_int, 1);
pub const RWF_HIPRI = @as(c_int, 0x00000001);
pub const RWF_DSYNC = @as(c_int, 0x00000002);
pub const RWF_SYNC = @as(c_int, 0x00000004);
pub const RWF_NOWAIT = @as(c_int, 0x00000008);
pub const RWF_APPEND = @as(c_int, 0x00000010);
pub inline fn gnutls_transport_set_int(s: anytype, i: anytype) @TypeOf(gnutls_transport_set_int2(s, i, i)) {
    _ = &s;
    _ = &i;
    return gnutls_transport_set_int2(s, i, i);
}
pub const GNUTLS_IDNA_FORCE_2008 = @as(c_int, 1) << @as(c_int, 1);
pub const gnutls_srp_base64_encode_alloc = gnutls_srp_base64_encode2;
pub const gnutls_srp_base64_decode_alloc = gnutls_srp_base64_decode2;
pub const gnutls_pem_base64_encode_alloc = gnutls_pem_base64_encode2;
pub const gnutls_pem_base64_decode_alloc = gnutls_pem_base64_decode2;
pub const GNUTLS_KEY_DIGITAL_SIGNATURE = @as(c_int, 128);
pub const GNUTLS_KEY_NON_REPUDIATION = @as(c_int, 64);
pub const GNUTLS_KEY_KEY_ENCIPHERMENT = @as(c_int, 32);
pub const GNUTLS_KEY_DATA_ENCIPHERMENT = @as(c_int, 16);
pub const GNUTLS_KEY_KEY_AGREEMENT = @as(c_int, 8);
pub const GNUTLS_KEY_KEY_CERT_SIGN = @as(c_int, 4);
pub const GNUTLS_KEY_CRL_SIGN = @as(c_int, 2);
pub const GNUTLS_KEY_ENCIPHER_ONLY = @as(c_int, 1);
pub const GNUTLS_KEY_DECIPHER_ONLY = __helpers.promoteIntLiteral(c_int, 32768, .decimal);
pub const GNUTLS_SCOMMIT_FLAG_ALLOW_BROKEN = @as(c_int, 1);
pub const GNUTLS_PKCS11_PIN_USER = GNUTLS_PIN_USER;
pub const GNUTLS_PKCS11_PIN_SO = GNUTLS_PIN_SO;
pub const GNUTLS_PKCS11_PIN_FINAL_TRY = GNUTLS_PIN_FINAL_TRY;
pub const GNUTLS_PKCS11_PIN_COUNT_LOW = GNUTLS_PIN_COUNT_LOW;
pub const GNUTLS_PKCS11_PIN_CONTEXT_SPECIFIC = GNUTLS_PIN_CONTEXT_SPECIFIC;
pub const GNUTLS_PKCS11_PIN_WRONG = GNUTLS_PIN_WRONG;
pub const GNUTLS_UTF8_IGNORE_ERRS = @as(c_int, 1);
pub const GNUTLS_EXT_RAW_FLAG_TLS_CLIENT_HELLO = @as(c_int, 1);
pub const GNUTLS_EXT_RAW_FLAG_DTLS_CLIENT_HELLO = @as(c_int, 1) << @as(c_int, 1);
pub const GNUTLS_FIPS140_SET_MODE_THREAD = @as(c_int, 1);
pub const GNUTLS_FIPS140_SET_LAX_MODE = @compileError("unable to translate C expr: unexpected token 'do'"); // /usr/include/gnutls/gnutls.h:3349:9
pub const GNUTLS_FIPS140_SET_STRICT_MODE = @compileError("unable to translate C expr: unexpected token 'do'"); // /usr/include/gnutls/gnutls.h:3354:9
pub const GNUTLS_E_SUCCESS = @as(c_int, 0);
pub const GNUTLS_E_UNKNOWN_COMPRESSION_ALGORITHM = -@as(c_int, 3);
pub const GNUTLS_E_UNKNOWN_CIPHER_TYPE = -@as(c_int, 6);
pub const GNUTLS_E_LARGE_PACKET = -@as(c_int, 7);
pub const GNUTLS_E_UNSUPPORTED_VERSION_PACKET = -@as(c_int, 8);
pub const GNUTLS_E_TLS_PACKET_DECODING_ERROR = GNUTLS_E_UNEXPECTED_PACKET_LENGTH;
pub const GNUTLS_E_UNEXPECTED_PACKET_LENGTH = -@as(c_int, 9);
pub const GNUTLS_E_INVALID_SESSION = -@as(c_int, 10);
pub const GNUTLS_E_FATAL_ALERT_RECEIVED = -@as(c_int, 12);
pub const GNUTLS_E_UNEXPECTED_PACKET = -@as(c_int, 15);
pub const GNUTLS_E_WARNING_ALERT_RECEIVED = -@as(c_int, 16);
pub const GNUTLS_E_ERROR_IN_FINISHED_PACKET = -@as(c_int, 18);
pub const GNUTLS_E_UNEXPECTED_HANDSHAKE_PACKET = -@as(c_int, 19);
pub const GNUTLS_E_UNKNOWN_CIPHER_SUITE = -@as(c_int, 21);
pub const GNUTLS_E_UNWANTED_ALGORITHM = -@as(c_int, 22);
pub const GNUTLS_E_MPI_SCAN_FAILED = -@as(c_int, 23);
pub const GNUTLS_E_DECRYPTION_FAILED = -@as(c_int, 24);
pub const GNUTLS_E_MEMORY_ERROR = -@as(c_int, 25);
pub const GNUTLS_E_DECOMPRESSION_FAILED = -@as(c_int, 26);
pub const GNUTLS_E_COMPRESSION_FAILED = -@as(c_int, 27);
pub const GNUTLS_E_AGAIN = -@as(c_int, 28);
pub const GNUTLS_E_EXPIRED = -@as(c_int, 29);
pub const GNUTLS_E_DB_ERROR = -@as(c_int, 30);
pub const GNUTLS_E_SRP_PWD_ERROR = GNUTLS_E_KEYFILE_ERROR;
pub const GNUTLS_E_KEYFILE_ERROR = -@as(c_int, 31);
pub const GNUTLS_E_INSUFFICIENT_CREDENTIALS = -@as(c_int, 32);
pub const GNUTLS_E_INSUFICIENT_CREDENTIALS = GNUTLS_E_INSUFFICIENT_CREDENTIALS;
pub const GNUTLS_E_INSUFFICIENT_CRED = GNUTLS_E_INSUFFICIENT_CREDENTIALS;
pub const GNUTLS_E_INSUFICIENT_CRED = GNUTLS_E_INSUFFICIENT_CREDENTIALS;
pub const GNUTLS_E_HASH_FAILED = -@as(c_int, 33);
pub const GNUTLS_E_BASE64_DECODING_ERROR = -@as(c_int, 34);
pub const GNUTLS_E_MPI_PRINT_FAILED = -@as(c_int, 35);
pub const GNUTLS_E_REHANDSHAKE = -@as(c_int, 37);
pub const GNUTLS_E_GOT_APPLICATION_DATA = -@as(c_int, 38);
pub const GNUTLS_E_RECORD_LIMIT_REACHED = -@as(c_int, 39);
pub const GNUTLS_E_ENCRYPTION_FAILED = -@as(c_int, 40);
pub const GNUTLS_E_PK_ENCRYPTION_FAILED = -@as(c_int, 44);
pub const GNUTLS_E_PK_DECRYPTION_FAILED = -@as(c_int, 45);
pub const GNUTLS_E_PK_SIGN_FAILED = -@as(c_int, 46);
pub const GNUTLS_E_X509_UNSUPPORTED_CRITICAL_EXTENSION = -@as(c_int, 47);
pub const GNUTLS_E_KEY_USAGE_VIOLATION = -@as(c_int, 48);
pub const GNUTLS_E_NO_CERTIFICATE_FOUND = -@as(c_int, 49);
pub const GNUTLS_E_INVALID_REQUEST = -@as(c_int, 50);
pub const GNUTLS_E_SHORT_MEMORY_BUFFER = -@as(c_int, 51);
pub const GNUTLS_E_INTERRUPTED = -@as(c_int, 52);
pub const GNUTLS_E_PUSH_ERROR = -@as(c_int, 53);
pub const GNUTLS_E_PULL_ERROR = -@as(c_int, 54);
pub const GNUTLS_E_RECEIVED_ILLEGAL_PARAMETER = -@as(c_int, 55);
pub const GNUTLS_E_REQUESTED_DATA_NOT_AVAILABLE = -@as(c_int, 56);
pub const GNUTLS_E_PKCS1_WRONG_PAD = -@as(c_int, 57);
pub const GNUTLS_E_RECEIVED_ILLEGAL_EXTENSION = -@as(c_int, 58);
pub const GNUTLS_E_INTERNAL_ERROR = -@as(c_int, 59);
pub const GNUTLS_E_DH_PRIME_UNACCEPTABLE = -@as(c_int, 63);
pub const GNUTLS_E_FILE_ERROR = -@as(c_int, 64);
pub const GNUTLS_E_TOO_MANY_EMPTY_PACKETS = -@as(c_int, 78);
pub const GNUTLS_E_UNKNOWN_PK_ALGORITHM = -@as(c_int, 80);
pub const GNUTLS_E_TOO_MANY_HANDSHAKE_PACKETS = -@as(c_int, 81);
pub const GNUTLS_E_RECEIVED_DISALLOWED_NAME = -@as(c_int, 82);
pub const GNUTLS_E_CERTIFICATE_REQUIRED = -@as(c_int, 112);
pub const GNUTLS_E_NO_TEMPORARY_RSA_PARAMS = -@as(c_int, 84);
pub const GNUTLS_E_NO_COMPRESSION_ALGORITHMS = -@as(c_int, 86);
pub const GNUTLS_E_NO_CIPHER_SUITES = -@as(c_int, 87);
pub const GNUTLS_E_OPENPGP_GETKEY_FAILED = -@as(c_int, 88);
pub const GNUTLS_E_PK_SIG_VERIFY_FAILED = -@as(c_int, 89);
pub const GNUTLS_E_ILLEGAL_SRP_USERNAME = -@as(c_int, 90);
pub const GNUTLS_E_SRP_PWD_PARSING_ERROR = GNUTLS_E_KEYFILE_PARSING_ERROR;
pub const GNUTLS_E_KEYFILE_PARSING_ERROR = -@as(c_int, 91);
pub const GNUTLS_E_NO_TEMPORARY_DH_PARAMS = -@as(c_int, 93);
pub const GNUTLS_E_ASN1_ELEMENT_NOT_FOUND = -@as(c_int, 67);
pub const GNUTLS_E_ASN1_IDENTIFIER_NOT_FOUND = -@as(c_int, 68);
pub const GNUTLS_E_ASN1_DER_ERROR = -@as(c_int, 69);
pub const GNUTLS_E_ASN1_VALUE_NOT_FOUND = -@as(c_int, 70);
pub const GNUTLS_E_ASN1_GENERIC_ERROR = -@as(c_int, 71);
pub const GNUTLS_E_ASN1_VALUE_NOT_VALID = -@as(c_int, 72);
pub const GNUTLS_E_ASN1_TAG_ERROR = -@as(c_int, 73);
pub const GNUTLS_E_ASN1_TAG_IMPLICIT = -@as(c_int, 74);
pub const GNUTLS_E_ASN1_TYPE_ANY_ERROR = -@as(c_int, 75);
pub const GNUTLS_E_ASN1_SYNTAX_ERROR = -@as(c_int, 76);
pub const GNUTLS_E_ASN1_DER_OVERFLOW = -@as(c_int, 77);
pub const GNUTLS_E_OPENPGP_UID_REVOKED = -@as(c_int, 79);
pub const GNUTLS_E_CERTIFICATE_ERROR = -@as(c_int, 43);
pub const GNUTLS_E_X509_CERTIFICATE_ERROR = GNUTLS_E_CERTIFICATE_ERROR;
pub const GNUTLS_E_CERTIFICATE_KEY_MISMATCH = -@as(c_int, 60);
pub const GNUTLS_E_UNSUPPORTED_CERTIFICATE_TYPE = -@as(c_int, 61);
pub const GNUTLS_E_X509_UNKNOWN_SAN = -@as(c_int, 62);
pub const GNUTLS_E_OPENPGP_FINGERPRINT_UNSUPPORTED = -@as(c_int, 94);
pub const GNUTLS_E_X509_UNSUPPORTED_ATTRIBUTE = -@as(c_int, 95);
pub const GNUTLS_E_UNKNOWN_HASH_ALGORITHM = -@as(c_int, 96);
pub const GNUTLS_E_UNKNOWN_PKCS_CONTENT_TYPE = -@as(c_int, 97);
pub const GNUTLS_E_UNKNOWN_PKCS_BAG_TYPE = -@as(c_int, 98);
pub const GNUTLS_E_INVALID_PASSWORD = -@as(c_int, 99);
pub const GNUTLS_E_MAC_VERIFY_FAILED = -@as(c_int, 100);
pub const GNUTLS_E_CONSTRAINT_ERROR = -@as(c_int, 101);
pub const GNUTLS_E_WARNING_IA_IPHF_RECEIVED = -@as(c_int, 102);
pub const GNUTLS_E_WARNING_IA_FPHF_RECEIVED = -@as(c_int, 103);
pub const GNUTLS_E_IA_VERIFY_FAILED = -@as(c_int, 104);
pub const GNUTLS_E_UNKNOWN_ALGORITHM = -@as(c_int, 105);
pub const GNUTLS_E_UNSUPPORTED_SIGNATURE_ALGORITHM = -@as(c_int, 106);
pub const GNUTLS_E_SAFE_RENEGOTIATION_FAILED = -@as(c_int, 107);
pub const GNUTLS_E_UNSAFE_RENEGOTIATION_DENIED = -@as(c_int, 108);
pub const GNUTLS_E_UNKNOWN_SRP_USERNAME = -@as(c_int, 109);
pub const GNUTLS_E_PREMATURE_TERMINATION = -@as(c_int, 110);
pub const GNUTLS_E_MALFORMED_CIDR = -@as(c_int, 111);
pub const GNUTLS_E_BASE64_ENCODING_ERROR = -@as(c_int, 201);
pub const GNUTLS_E_INCOMPATIBLE_GCRYPT_LIBRARY = -@as(c_int, 202);
pub const GNUTLS_E_INCOMPATIBLE_CRYPTO_LIBRARY = -@as(c_int, 202);
pub const GNUTLS_E_INCOMPATIBLE_LIBTASN1_LIBRARY = -@as(c_int, 203);
pub const GNUTLS_E_OPENPGP_KEYRING_ERROR = -@as(c_int, 204);
pub const GNUTLS_E_X509_UNSUPPORTED_OID = -@as(c_int, 205);
pub const GNUTLS_E_RANDOM_FAILED = -@as(c_int, 206);
pub const GNUTLS_E_BASE64_UNEXPECTED_HEADER_ERROR = -@as(c_int, 207);
pub const GNUTLS_E_OPENPGP_SUBKEY_ERROR = -@as(c_int, 208);
pub const GNUTLS_E_CRYPTO_ALREADY_REGISTERED = GNUTLS_E_ALREADY_REGISTERED;
pub const GNUTLS_E_ALREADY_REGISTERED = -@as(c_int, 209);
pub const GNUTLS_E_HANDSHAKE_TOO_LARGE = -@as(c_int, 210);
pub const GNUTLS_E_CRYPTODEV_IOCTL_ERROR = -@as(c_int, 211);
pub const GNUTLS_E_CRYPTODEV_DEVICE_ERROR = -@as(c_int, 212);
pub const GNUTLS_E_CHANNEL_BINDING_NOT_AVAILABLE = -@as(c_int, 213);
pub const GNUTLS_E_BAD_COOKIE = -@as(c_int, 214);
pub const GNUTLS_E_OPENPGP_PREFERRED_KEY_ERROR = -@as(c_int, 215);
pub const GNUTLS_E_INCOMPAT_DSA_KEY_WITH_TLS_PROTOCOL = -@as(c_int, 216);
pub const GNUTLS_E_INSUFFICIENT_SECURITY = -@as(c_int, 217);
pub const GNUTLS_E_HEARTBEAT_PONG_RECEIVED = -@as(c_int, 292);
pub const GNUTLS_E_HEARTBEAT_PING_RECEIVED = -@as(c_int, 293);
pub const GNUTLS_E_UNRECOGNIZED_NAME = -@as(c_int, 294);
pub const GNUTLS_E_PKCS11_ERROR = -@as(c_int, 300);
pub const GNUTLS_E_PKCS11_LOAD_ERROR = -@as(c_int, 301);
pub const GNUTLS_E_PARSING_ERROR = -@as(c_int, 302);
pub const GNUTLS_E_PKCS11_PIN_ERROR = -@as(c_int, 303);
pub const GNUTLS_E_PKCS11_SLOT_ERROR = -@as(c_int, 305);
pub const GNUTLS_E_LOCKING_ERROR = -@as(c_int, 306);
pub const GNUTLS_E_PKCS11_ATTRIBUTE_ERROR = -@as(c_int, 307);
pub const GNUTLS_E_PKCS11_DEVICE_ERROR = -@as(c_int, 308);
pub const GNUTLS_E_PKCS11_DATA_ERROR = -@as(c_int, 309);
pub const GNUTLS_E_PKCS11_UNSUPPORTED_FEATURE_ERROR = -@as(c_int, 310);
pub const GNUTLS_E_PKCS11_KEY_ERROR = -@as(c_int, 311);
pub const GNUTLS_E_PKCS11_PIN_EXPIRED = -@as(c_int, 312);
pub const GNUTLS_E_PKCS11_PIN_LOCKED = -@as(c_int, 313);
pub const GNUTLS_E_PKCS11_SESSION_ERROR = -@as(c_int, 314);
pub const GNUTLS_E_PKCS11_SIGNATURE_ERROR = -@as(c_int, 315);
pub const GNUTLS_E_PKCS11_TOKEN_ERROR = -@as(c_int, 316);
pub const GNUTLS_E_PKCS11_USER_ERROR = -@as(c_int, 317);
pub const GNUTLS_E_CRYPTO_INIT_FAILED = -@as(c_int, 318);
pub const GNUTLS_E_TIMEDOUT = -@as(c_int, 319);
pub const GNUTLS_E_USER_ERROR = -@as(c_int, 320);
pub const GNUTLS_E_ECC_NO_SUPPORTED_CURVES = -@as(c_int, 321);
pub const GNUTLS_E_ECC_UNSUPPORTED_CURVE = -@as(c_int, 322);
pub const GNUTLS_E_PKCS11_REQUESTED_OBJECT_NOT_AVAILBLE = -@as(c_int, 323);
pub const GNUTLS_E_CERTIFICATE_LIST_UNSORTED = -@as(c_int, 324);
pub const GNUTLS_E_ILLEGAL_PARAMETER = -@as(c_int, 325);
pub const GNUTLS_E_NO_PRIORITIES_WERE_SET = -@as(c_int, 326);
pub const GNUTLS_E_X509_UNSUPPORTED_EXTENSION = -@as(c_int, 327);
pub const GNUTLS_E_SESSION_EOF = -@as(c_int, 328);
pub const GNUTLS_E_TPM_ERROR = -@as(c_int, 329);
pub const GNUTLS_E_TPM_KEY_PASSWORD_ERROR = -@as(c_int, 330);
pub const GNUTLS_E_TPM_SRK_PASSWORD_ERROR = -@as(c_int, 331);
pub const GNUTLS_E_TPM_SESSION_ERROR = -@as(c_int, 332);
pub const GNUTLS_E_TPM_KEY_NOT_FOUND = -@as(c_int, 333);
pub const GNUTLS_E_TPM_UNINITIALIZED = -@as(c_int, 334);
pub const GNUTLS_E_TPM_NO_LIB = -@as(c_int, 335);
pub const GNUTLS_E_NO_CERTIFICATE_STATUS = -@as(c_int, 340);
pub const GNUTLS_E_OCSP_RESPONSE_ERROR = -@as(c_int, 341);
pub const GNUTLS_E_RANDOM_DEVICE_ERROR = -@as(c_int, 342);
pub const GNUTLS_E_AUTH_ERROR = -@as(c_int, 343);
pub const GNUTLS_E_NO_APPLICATION_PROTOCOL = -@as(c_int, 344);
pub const GNUTLS_E_SOCKETS_INIT_ERROR = -@as(c_int, 345);
pub const GNUTLS_E_KEY_IMPORT_FAILED = -@as(c_int, 346);
pub const GNUTLS_E_INAPPROPRIATE_FALLBACK = -@as(c_int, 347);
pub const GNUTLS_E_CERTIFICATE_VERIFICATION_ERROR = -@as(c_int, 348);
pub const GNUTLS_E_PRIVKEY_VERIFICATION_ERROR = -@as(c_int, 349);
pub const GNUTLS_E_UNEXPECTED_EXTENSIONS_LENGTH = -@as(c_int, 350);
pub const GNUTLS_E_ASN1_EMBEDDED_NULL_IN_STRING = -@as(c_int, 351);
pub const GNUTLS_E_SELF_TEST_ERROR = -@as(c_int, 400);
pub const GNUTLS_E_NO_SELF_TEST = -@as(c_int, 401);
pub const GNUTLS_E_LIB_IN_ERROR_STATE = -@as(c_int, 402);
pub const GNUTLS_E_PK_GENERATION_ERROR = -@as(c_int, 403);
pub const GNUTLS_E_IDNA_ERROR = -@as(c_int, 404);
pub const GNUTLS_E_NEED_FALLBACK = -@as(c_int, 405);
pub const GNUTLS_E_SESSION_USER_ID_CHANGED = -@as(c_int, 406);
pub const GNUTLS_E_HANDSHAKE_DURING_FALSE_START = -@as(c_int, 407);
pub const GNUTLS_E_UNAVAILABLE_DURING_HANDSHAKE = -@as(c_int, 408);
pub const GNUTLS_E_PK_INVALID_PUBKEY = -@as(c_int, 409);
pub const GNUTLS_E_PK_INVALID_PRIVKEY = -@as(c_int, 410);
pub const GNUTLS_E_NOT_YET_ACTIVATED = -@as(c_int, 411);
pub const GNUTLS_E_INVALID_UTF8_STRING = -@as(c_int, 412);
pub const GNUTLS_E_NO_EMBEDDED_DATA = -@as(c_int, 413);
pub const GNUTLS_E_INVALID_UTF8_EMAIL = -@as(c_int, 414);
pub const GNUTLS_E_INVALID_PASSWORD_STRING = -@as(c_int, 415);
pub const GNUTLS_E_CERTIFICATE_TIME_ERROR = -@as(c_int, 416);
pub const GNUTLS_E_RECORD_OVERFLOW = -@as(c_int, 417);
pub const GNUTLS_E_ASN1_TIME_ERROR = -@as(c_int, 418);
pub const GNUTLS_E_INCOMPATIBLE_SIG_WITH_KEY = -@as(c_int, 419);
pub const GNUTLS_E_PK_INVALID_PUBKEY_PARAMS = -@as(c_int, 420);
pub const GNUTLS_E_PK_NO_VALIDATION_PARAMS = -@as(c_int, 421);
pub const GNUTLS_E_OCSP_MISMATCH_WITH_CERTS = -@as(c_int, 422);
pub const GNUTLS_E_NO_COMMON_KEY_SHARE = -@as(c_int, 423);
pub const GNUTLS_E_REAUTH_REQUEST = -@as(c_int, 424);
pub const GNUTLS_E_TOO_MANY_MATCHES = -@as(c_int, 425);
pub const GNUTLS_E_CRL_VERIFICATION_ERROR = -@as(c_int, 426);
pub const GNUTLS_E_MISSING_EXTENSION = -@as(c_int, 427);
pub const GNUTLS_E_DB_ENTRY_EXISTS = -@as(c_int, 428);
pub const GNUTLS_E_EARLY_DATA_REJECTED = -@as(c_int, 429);
pub const GNUTLS_E_X509_DUPLICATE_EXTENSION = -@as(c_int, 430);
pub const GNUTLS_E_UNIMPLEMENTED_FEATURE = -@as(c_int, 1250);
pub const GNUTLS_E_INT_RET_0 = -@as(c_int, 1251);
pub const GNUTLS_E_INT_CHECK_AGAIN = -@as(c_int, 1252);
pub const GNUTLS_E_APPLICATION_ERROR_MAX = -__helpers.promoteIntLiteral(c_int, 65000, .decimal);
pub const GNUTLS_E_APPLICATION_ERROR_MIN = -__helpers.promoteIntLiteral(c_int, 65500, .decimal);
pub const GNUTLS_COMPAT_H = "";
pub const _GNUTLS_GCC_VERSION = ((__GNUC__ * @as(c_int, 10000)) + (__GNUC_MINOR__ * @as(c_int, 100))) + __GNUC_PATCHLEVEL__;
pub const _GNUTLS_GCC_ATTR_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /usr/include/gnutls/compat.h:40:9
pub const GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT = @as(c_int, 0);
pub const GNUTLS_A_MISSING_SRP_USERNAME = GNUTLS_A_UNKNOWN_PSK_IDENTITY;
pub const GNUTLS_A_UNKNOWN_SRP_USERNAME = GNUTLS_A_UNKNOWN_PSK_IDENTITY;
pub const GNUTLS_OPENPGP_KEY = GNUTLS_OPENPGP_CERT;
pub const GNUTLS_OPENPGP_KEY_FINGERPRINT = GNUTLS_OPENPGP_CERT_FINGERPRINT;
pub const gnutls_openpgp_send_key = gnutls_openpgp_send_cert;
pub const gnutls_openpgp_key_init = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_init`"); // /usr/include/gnutls/compat.h:132:9
pub const gnutls_openpgp_key_deinit = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_deinit`"); // /usr/include/gnutls/compat.h:133:9
pub const gnutls_openpgp_key_import = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_import`"); // /usr/include/gnutls/compat.h:134:9
pub const gnutls_openpgp_key_export = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_export`"); // /usr/include/gnutls/compat.h:135:9
pub const gnutls_openpgp_key_get_key_usage = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_key_usage`"); // /usr/include/gnutls/compat.h:136:9
pub const gnutls_openpgp_key_get_fingerprint = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_fingerprint`"); // /usr/include/gnutls/compat.h:137:9
pub const gnutls_openpgp_key_get_pk_algorithm = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_pk_algorithm`"); // /usr/include/gnutls/compat.h:138:9
pub const gnutls_openpgp_key_get_name = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_name`"); // /usr/include/gnutls/compat.h:139:9
pub const gnutls_openpgp_key_get_version = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_version`"); // /usr/include/gnutls/compat.h:140:9
pub const gnutls_openpgp_key_get_creation_time = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_creation_time`"); // /usr/include/gnutls/compat.h:141:9
pub const gnutls_openpgp_key_get_expiration_time = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_expiration_time`"); // /usr/include/gnutls/compat.h:142:9
pub const gnutls_openpgp_key_get_id = gnutls_openpgp_crt_get_id;
pub const gnutls_openpgp_key_check_hostname = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_check_hostname`"); // /usr/include/gnutls/compat.h:144:9
pub const gnutls_openpgp_crt_get_id = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_key_id`"); // /usr/include/gnutls/compat.h:147:9
pub const GNUTLS_X509_CRT_FULL = GNUTLS_CRT_PRINT_FULL;
pub const GNUTLS_X509_CRT_ONELINE = GNUTLS_CRT_PRINT_ONELINE;
pub const GNUTLS_X509_CRT_UNSIGNED_FULL = GNUTLS_CRT_PRINT_UNSIGNED_FULL;
pub const LIBGNUTLS_VERSION = GNUTLS_VERSION;
pub const LIBGNUTLS_VERSION_MAJOR = GNUTLS_VERSION_MAJOR;
pub const LIBGNUTLS_VERSION_MINOR = GNUTLS_VERSION_MINOR;
pub const LIBGNUTLS_VERSION_PATCH = GNUTLS_VERSION_PATCH;
pub const LIBGNUTLS_VERSION_NUMBER = GNUTLS_VERSION_NUMBER;
pub const LIBGNUTLS_EXTRA_VERSION = GNUTLS_VERSION;
pub const GNUTLS_SUPPLEMENTAL_USER_MAPPING_DATA = @as(c_int, 0);
pub const GNUTLS_X509_H = "";
pub const GNUTLS_OID_X520_COUNTRY_NAME = "2.5.4.6";
pub const GNUTLS_OID_X520_ORGANIZATION_NAME = "2.5.4.10";
pub const GNUTLS_OID_X520_ORGANIZATIONAL_UNIT_NAME = "2.5.4.11";
pub const GNUTLS_OID_X520_COMMON_NAME = "2.5.4.3";
pub const GNUTLS_OID_X520_LOCALITY_NAME = "2.5.4.7";
pub const GNUTLS_OID_X520_STATE_OR_PROVINCE_NAME = "2.5.4.8";
pub const GNUTLS_OID_X520_INITIALS = "2.5.4.43";
pub const GNUTLS_OID_X520_GENERATION_QUALIFIER = "2.5.4.44";
pub const GNUTLS_OID_X520_SURNAME = "2.5.4.4";
pub const GNUTLS_OID_X520_GIVEN_NAME = "2.5.4.42";
pub const GNUTLS_OID_X520_TITLE = "2.5.4.12";
pub const GNUTLS_OID_X520_DN_QUALIFIER = "2.5.4.46";
pub const GNUTLS_OID_X520_PSEUDONYM = "2.5.4.65";
pub const GNUTLS_OID_X520_POSTALCODE = "2.5.4.17";
pub const GNUTLS_OID_X520_NAME = "2.5.4.41";
pub const GNUTLS_OID_LDAP_DC = "0.9.2342.19200300.100.1.25";
pub const GNUTLS_OID_LDAP_UID = "0.9.2342.19200300.100.1.1";
pub const GNUTLS_OID_PKCS9_EMAIL = "1.2.840.113549.1.9.1";
pub const GNUTLS_OID_PKIX_DATE_OF_BIRTH = "1.3.6.1.5.5.7.9.1";
pub const GNUTLS_OID_PKIX_PLACE_OF_BIRTH = "1.3.6.1.5.5.7.9.2";
pub const GNUTLS_OID_PKIX_GENDER = "1.3.6.1.5.5.7.9.3";
pub const GNUTLS_OID_PKIX_COUNTRY_OF_CITIZENSHIP = "1.3.6.1.5.5.7.9.4";
pub const GNUTLS_OID_PKIX_COUNTRY_OF_RESIDENCE = "1.3.6.1.5.5.7.9.5";
pub const GNUTLS_KP_TLS_WWW_SERVER = "1.3.6.1.5.5.7.3.1";
pub const GNUTLS_KP_TLS_WWW_CLIENT = "1.3.6.1.5.5.7.3.2";
pub const GNUTLS_KP_CODE_SIGNING = "1.3.6.1.5.5.7.3.3";
pub const GNUTLS_KP_MS_SMART_CARD_LOGON = "1.3.6.1.4.1.311.20.2.2";
pub const GNUTLS_KP_EMAIL_PROTECTION = "1.3.6.1.5.5.7.3.4";
pub const GNUTLS_KP_TIME_STAMPING = "1.3.6.1.5.5.7.3.8";
pub const GNUTLS_KP_OCSP_SIGNING = "1.3.6.1.5.5.7.3.9";
pub const GNUTLS_KP_IPSEC_IKE = "1.3.6.1.5.5.7.3.17";
pub const GNUTLS_KP_ANY = "2.5.29.37.0";
pub const GNUTLS_KP_FLAG_DISALLOW_ANY = @as(c_int, 1);
pub const GNUTLS_OID_AIA = "1.3.6.1.5.5.7.1.1";
pub const GNUTLS_OID_AD_OCSP = "1.3.6.1.5.5.7.48.1";
pub const GNUTLS_OID_AD_CAISSUERS = "1.3.6.1.5.5.7.48.2";
pub const GNUTLS_FSAN_SET = @as(c_int, 0);
pub const GNUTLS_FSAN_APPEND = @as(c_int, 1);
pub const GNUTLS_FSAN_ENCODE_OCTET_STRING = @as(c_int, 1) << @as(c_int, 1);
pub const GNUTLS_FSAN_ENCODE_UTF8_STRING = @as(c_int, 1) << @as(c_int, 2);
pub const GNUTLS_X509EXT_OID_SUBJECT_KEY_ID = "2.5.29.14";
pub const GNUTLS_X509EXT_OID_KEY_USAGE = "2.5.29.15";
pub const GNUTLS_X509EXT_OID_PRIVATE_KEY_USAGE_PERIOD = "2.5.29.16";
pub const GNUTLS_X509EXT_OID_SAN = "2.5.29.17";
pub const GNUTLS_X509EXT_OID_IAN = "2.5.29.18";
pub const GNUTLS_X509EXT_OID_BASIC_CONSTRAINTS = "2.5.29.19";
pub const GNUTLS_X509EXT_OID_NAME_CONSTRAINTS = "2.5.29.30";
pub const GNUTLS_X509EXT_OID_CRL_DIST_POINTS = "2.5.29.31";
pub const GNUTLS_X509EXT_OID_CRT_POLICY = "2.5.29.32";
pub const GNUTLS_X509EXT_OID_AUTHORITY_KEY_ID = "2.5.29.35";
pub const GNUTLS_X509EXT_OID_EXTENDED_KEY_USAGE = "2.5.29.37";
pub const GNUTLS_X509EXT_OID_INHIBIT_ANYPOLICY = "2.5.29.52";
pub const GNUTLS_X509EXT_OID_AUTHORITY_INFO_ACCESS = "1.3.6.1.5.5.7.1.1";
pub const GNUTLS_X509EXT_OID_PROXY_CRT_INFO = "1.3.6.1.5.5.7.1.14";
pub const GNUTLS_X509EXT_OID_TLSFEATURES = "1.3.6.1.5.5.7.1.24";
pub const GNUTLS_X509EXT_OID_CT_SCT_V1 = "1.3.6.1.4.1.11129.2.4.2";
pub const GNUTLS_X509_OID_POLICY_ANY = "2.5.29.54";
pub const GNUTLS_EXT_FLAG_APPEND = @as(c_int, 1);
pub const GNUTLS_NAME_CONSTRAINTS_FLAG_APPEND = GNUTLS_EXT_FLAG_APPEND;
pub const GNUTLS_CRL_REASON_SUPERSEEDED = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/gnutls/x509.h:366:9
pub const GNUTLS_X509_NO_WELL_DEFINED_EXPIRATION = __helpers.cast(time_t, __helpers.promoteIntLiteral(c_int, 4294197631, .decimal));
pub const GNUTLS_MAX_QUALIFIERS = @as(c_int, 8);
pub const GNUTLS_X509_DN_OID_RETURN_OID = @as(c_int, 1);
pub const GNUTLS_X509_DN_FLAG_COMPAT = @as(c_int, 1);
pub const gnutls_x509_crl_get_certificate_count = gnutls_x509_crl_get_crt_count;
pub const gnutls_x509_crl_get_certificate = gnutls_x509_crl_get_crt_serial;
pub const GNUTLS_VERIFY_ALLOW_BROKEN = GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD2 | GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD5;
pub inline fn GNUTLS_PROFILE_TO_VFLAGS(x: anytype) @TypeOf(__helpers.cast(c_uint, x) << @as(c_int, 24)) {
    _ = &x;
    return __helpers.cast(c_uint, x) << @as(c_int, 24);
}
pub const GNUTLS_VFLAGS_PROFILE_MASK = __helpers.promoteIntLiteral(c_int, 0xff000000, .hex);
pub inline fn GNUTLS_VFLAGS_TO_PROFILE(x: anytype) @TypeOf((__helpers.cast(c_uint, x) >> @as(c_int, 24)) & @as(c_int, 0xff)) {
    _ = &x;
    return (__helpers.cast(c_uint, x) >> @as(c_int, 24)) & @as(c_int, 0xff);
}
pub const GNUTLS_PKCS8_PLAIN = GNUTLS_PKCS_PLAIN;
pub const GNUTLS_PKCS8_USE_PKCS12_3DES = GNUTLS_PKCS_PKCS12_3DES;
pub const GNUTLS_PKCS8_USE_PKCS12_ARCFOUR = GNUTLS_PKCS_PKCS12_ARCFOUR;
pub const GNUTLS_PKCS8_USE_PKCS12_RC2_40 = GNUTLS_PKCS_PKCS12_RC2_40;
pub inline fn GNUTLS_PKCS_CIPHER_MASK(x: anytype) @TypeOf(x & ~GNUTLS_PKCS_NULL_PASSWORD) {
    _ = &x;
    return x & ~GNUTLS_PKCS_NULL_PASSWORD;
}
pub const GNUTLS_PKCS_USE_PKCS12_3DES = GNUTLS_PKCS_PKCS12_3DES;
pub const GNUTLS_PKCS_USE_PKCS12_ARCFOUR = GNUTLS_PKCS_PKCS12_ARCFOUR;
pub const GNUTLS_PKCS_USE_PKCS12_RC2_40 = GNUTLS_PKCS_PKCS12_RC2_40;
pub const GNUTLS_PKCS_USE_PBES2_3DES = GNUTLS_PKCS_PBES2_3DES;
pub const GNUTLS_PKCS_USE_PBES2_AES_128 = GNUTLS_PKCS_PBES2_AES_128;
pub const GNUTLS_PKCS_USE_PBES2_AES_192 = GNUTLS_PKCS_PBES2_AES_192;
pub const GNUTLS_PKCS_USE_PBES2_AES_256 = GNUTLS_PKCS_PBES2_AES_256;
pub const GNUTLS_PKCS_USE_PBES2_GOST_TC26Z = GNUTLS_PKCS_PBES2_GOST_TC26Z;
pub const GNUTLS_PKCS_USE_PBES2_GOST_CPA = GNUTLS_PKCS_PBES2_GOST_CPA;
pub const GNUTLS_PKCS_USE_PBES2_GOST_CPB = GNUTLS_PKCS_PBES2_GOST_CPB;
pub const GNUTLS_PKCS_USE_PBES2_GOST_CPC = GNUTLS_PKCS_PBES2_GOST_CPC;
pub const GNUTLS_PKCS_USE_PBES2_GOST_CPD = GNUTLS_PKCS_PBES2_GOST_CPD;
pub const GNUTLS_PKCS7_H = "";
pub const GNUTLS_PKCS7_EDATA_GET_RAW = @as(c_int, 1) << @as(c_int, 24);
pub const GNUTLS_PKCS7_ATTR_ENCODE_OCTET_STRING = @as(c_int, 1);
pub const _SYS_SOCKET_H = @as(c_int, 1);
pub const __BITS_SOCKET_H = "";
pub const PF_UNSPEC = @as(c_int, 0);
pub const PF_LOCAL = @as(c_int, 1);
pub const PF_UNIX = PF_LOCAL;
pub const PF_FILE = PF_LOCAL;
pub const PF_INET = @as(c_int, 2);
pub const PF_AX25 = @as(c_int, 3);
pub const PF_IPX = @as(c_int, 4);
pub const PF_APPLETALK = @as(c_int, 5);
pub const PF_NETROM = @as(c_int, 6);
pub const PF_BRIDGE = @as(c_int, 7);
pub const PF_ATMPVC = @as(c_int, 8);
pub const PF_X25 = @as(c_int, 9);
pub const PF_INET6 = @as(c_int, 10);
pub const PF_ROSE = @as(c_int, 11);
pub const PF_DECnet = @as(c_int, 12);
pub const PF_NETBEUI = @as(c_int, 13);
pub const PF_SECURITY = @as(c_int, 14);
pub const PF_KEY = @as(c_int, 15);
pub const PF_NETLINK = @as(c_int, 16);
pub const PF_ROUTE = PF_NETLINK;
pub const PF_PACKET = @as(c_int, 17);
pub const PF_ASH = @as(c_int, 18);
pub const PF_ECONET = @as(c_int, 19);
pub const PF_ATMSVC = @as(c_int, 20);
pub const PF_RDS = @as(c_int, 21);
pub const PF_SNA = @as(c_int, 22);
pub const PF_IRDA = @as(c_int, 23);
pub const PF_PPPOX = @as(c_int, 24);
pub const PF_WANPIPE = @as(c_int, 25);
pub const PF_LLC = @as(c_int, 26);
pub const PF_IB = @as(c_int, 27);
pub const PF_MPLS = @as(c_int, 28);
pub const PF_CAN = @as(c_int, 29);
pub const PF_TIPC = @as(c_int, 30);
pub const PF_BLUETOOTH = @as(c_int, 31);
pub const PF_IUCV = @as(c_int, 32);
pub const PF_RXRPC = @as(c_int, 33);
pub const PF_ISDN = @as(c_int, 34);
pub const PF_PHONET = @as(c_int, 35);
pub const PF_IEEE802154 = @as(c_int, 36);
pub const PF_CAIF = @as(c_int, 37);
pub const PF_ALG = @as(c_int, 38);
pub const PF_NFC = @as(c_int, 39);
pub const PF_VSOCK = @as(c_int, 40);
pub const PF_KCM = @as(c_int, 41);
pub const PF_QIPCRTR = @as(c_int, 42);
pub const PF_SMC = @as(c_int, 43);
pub const PF_XDP = @as(c_int, 44);
pub const PF_MCTP = @as(c_int, 45);
pub const PF_MAX = @as(c_int, 46);
pub const AF_UNSPEC = PF_UNSPEC;
pub const AF_LOCAL = PF_LOCAL;
pub const AF_UNIX = PF_UNIX;
pub const AF_FILE = PF_FILE;
pub const AF_INET = PF_INET;
pub const AF_AX25 = PF_AX25;
pub const AF_IPX = PF_IPX;
pub const AF_APPLETALK = PF_APPLETALK;
pub const AF_NETROM = PF_NETROM;
pub const AF_BRIDGE = PF_BRIDGE;
pub const AF_ATMPVC = PF_ATMPVC;
pub const AF_X25 = PF_X25;
pub const AF_INET6 = PF_INET6;
pub const AF_ROSE = PF_ROSE;
pub const AF_DECnet = PF_DECnet;
pub const AF_NETBEUI = PF_NETBEUI;
pub const AF_SECURITY = PF_SECURITY;
pub const AF_KEY = PF_KEY;
pub const AF_NETLINK = PF_NETLINK;
pub const AF_ROUTE = PF_ROUTE;
pub const AF_PACKET = PF_PACKET;
pub const AF_ASH = PF_ASH;
pub const AF_ECONET = PF_ECONET;
pub const AF_ATMSVC = PF_ATMSVC;
pub const AF_RDS = PF_RDS;
pub const AF_SNA = PF_SNA;
pub const AF_IRDA = PF_IRDA;
pub const AF_PPPOX = PF_PPPOX;
pub const AF_WANPIPE = PF_WANPIPE;
pub const AF_LLC = PF_LLC;
pub const AF_IB = PF_IB;
pub const AF_MPLS = PF_MPLS;
pub const AF_CAN = PF_CAN;
pub const AF_TIPC = PF_TIPC;
pub const AF_BLUETOOTH = PF_BLUETOOTH;
pub const AF_IUCV = PF_IUCV;
pub const AF_RXRPC = PF_RXRPC;
pub const AF_ISDN = PF_ISDN;
pub const AF_PHONET = PF_PHONET;
pub const AF_IEEE802154 = PF_IEEE802154;
pub const AF_CAIF = PF_CAIF;
pub const AF_ALG = PF_ALG;
pub const AF_NFC = PF_NFC;
pub const AF_VSOCK = PF_VSOCK;
pub const AF_KCM = PF_KCM;
pub const AF_QIPCRTR = PF_QIPCRTR;
pub const AF_SMC = PF_SMC;
pub const AF_XDP = PF_XDP;
pub const AF_MCTP = PF_MCTP;
pub const AF_MAX = PF_MAX;
pub const SOL_RAW = @as(c_int, 255);
pub const SOL_DECNET = @as(c_int, 261);
pub const SOL_X25 = @as(c_int, 262);
pub const SOL_PACKET = @as(c_int, 263);
pub const SOL_ATM = @as(c_int, 264);
pub const SOL_AAL = @as(c_int, 265);
pub const SOL_IRDA = @as(c_int, 266);
pub const SOL_NETBEUI = @as(c_int, 267);
pub const SOL_LLC = @as(c_int, 268);
pub const SOL_DCCP = @as(c_int, 269);
pub const SOL_NETLINK = @as(c_int, 270);
pub const SOL_TIPC = @as(c_int, 271);
pub const SOL_RXRPC = @as(c_int, 272);
pub const SOL_PPPOL2TP = @as(c_int, 273);
pub const SOL_BLUETOOTH = @as(c_int, 274);
pub const SOL_PNPIPE = @as(c_int, 275);
pub const SOL_RDS = @as(c_int, 276);
pub const SOL_IUCV = @as(c_int, 277);
pub const SOL_CAIF = @as(c_int, 278);
pub const SOL_ALG = @as(c_int, 279);
pub const SOL_NFC = @as(c_int, 280);
pub const SOL_KCM = @as(c_int, 281);
pub const SOL_TLS = @as(c_int, 282);
pub const SOL_XDP = @as(c_int, 283);
pub const SOMAXCONN = @as(c_int, 4096);
pub const _BITS_SOCKADDR_H = @as(c_int, 1);
pub const __SOCKADDR_COMMON = @compileError("unable to translate macro: undefined identifier `family`"); // /usr/include/x86_64-linux-gnu/bits/sockaddr.h:34:9
pub const __SOCKADDR_COMMON_SIZE = __helpers.sizeof(c_ushort);
pub const _SS_SIZE = @as(c_int, 128);
pub const __ss_aligntype = c_ulong;
pub const _SS_PADSIZE = (_SS_SIZE - __SOCKADDR_COMMON_SIZE) - __helpers.sizeof(__ss_aligntype);
pub inline fn CMSG_DATA(cmsg: anytype) @TypeOf(cmsg.*.__cmsg_data) {
    _ = &cmsg;
    return cmsg.*.__cmsg_data;
}
pub inline fn CMSG_NXTHDR(mhdr: anytype, cmsg: anytype) @TypeOf(__cmsg_nxthdr(mhdr, cmsg)) {
    _ = &mhdr;
    _ = &cmsg;
    return __cmsg_nxthdr(mhdr, cmsg);
}
pub inline fn CMSG_FIRSTHDR(mhdr: anytype) @TypeOf(if (__helpers.cast(bool, __helpers.cast(usize, mhdr.*.msg_controllen) >= __helpers.sizeof(struct_cmsghdr))) __helpers.cast([*c]struct_cmsghdr, mhdr.*.msg_control) else __helpers.cast([*c]struct_cmsghdr, @as(c_int, 0))) {
    _ = &mhdr;
    return if (__helpers.cast(bool, __helpers.cast(usize, mhdr.*.msg_controllen) >= __helpers.sizeof(struct_cmsghdr))) __helpers.cast([*c]struct_cmsghdr, mhdr.*.msg_control) else __helpers.cast([*c]struct_cmsghdr, @as(c_int, 0));
}
pub inline fn CMSG_ALIGN(len: anytype) @TypeOf(((len + __helpers.sizeof(usize)) - @as(c_int, 1)) & __helpers.cast(usize, ~(__helpers.sizeof(usize) - @as(c_int, 1)))) {
    _ = &len;
    return ((len + __helpers.sizeof(usize)) - @as(c_int, 1)) & __helpers.cast(usize, ~(__helpers.sizeof(usize) - @as(c_int, 1)));
}
pub inline fn CMSG_SPACE(len: anytype) @TypeOf(CMSG_ALIGN(len) + CMSG_ALIGN(__helpers.sizeof(struct_cmsghdr))) {
    _ = &len;
    return CMSG_ALIGN(len) + CMSG_ALIGN(__helpers.sizeof(struct_cmsghdr));
}
pub inline fn CMSG_LEN(len: anytype) @TypeOf(CMSG_ALIGN(__helpers.sizeof(struct_cmsghdr)) + len) {
    _ = &len;
    return CMSG_ALIGN(__helpers.sizeof(struct_cmsghdr)) + len;
}
pub const __ASM_GENERIC_SOCKET_H = "";
pub const _LINUX_POSIX_TYPES_H = "";
pub const _LINUX_STDDEF_H = "";
pub const __struct_group = @compileError("unable to translate macro: untranslatable usage of arg `TAG`"); // /usr/include/linux/stddef.h:26:9
pub const __DECLARE_FLEX_ARRAY = @compileError("unable to translate macro: undefined identifier `__empty_`"); // /usr/include/linux/stddef.h:42:9
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _ASM_X86_POSIX_TYPES_64_H = "";
pub const __ASM_GENERIC_POSIX_TYPES_H = "";
pub const __ASM_X86_BITSPERLONG_H = "";
pub const __BITS_PER_LONG = @as(c_int, 64);
pub const __ASM_GENERIC_BITS_PER_LONG = "";
pub const __ASM_GENERIC_SOCKIOS_H = "";
pub const FIOSETOWN = __helpers.promoteIntLiteral(c_int, 0x8901, .hex);
pub const SIOCSPGRP = __helpers.promoteIntLiteral(c_int, 0x8902, .hex);
pub const FIOGETOWN = __helpers.promoteIntLiteral(c_int, 0x8903, .hex);
pub const SIOCGPGRP = __helpers.promoteIntLiteral(c_int, 0x8904, .hex);
pub const SIOCATMARK = __helpers.promoteIntLiteral(c_int, 0x8905, .hex);
pub const SIOCGSTAMP_OLD = __helpers.promoteIntLiteral(c_int, 0x8906, .hex);
pub const SIOCGSTAMPNS_OLD = __helpers.promoteIntLiteral(c_int, 0x8907, .hex);
pub const SOL_SOCKET = @as(c_int, 1);
pub const SO_DEBUG = @as(c_int, 1);
pub const SO_REUSEADDR = @as(c_int, 2);
pub const SO_TYPE = @as(c_int, 3);
pub const SO_ERROR = @as(c_int, 4);
pub const SO_DONTROUTE = @as(c_int, 5);
pub const SO_BROADCAST = @as(c_int, 6);
pub const SO_SNDBUF = @as(c_int, 7);
pub const SO_RCVBUF = @as(c_int, 8);
pub const SO_SNDBUFFORCE = @as(c_int, 32);
pub const SO_RCVBUFFORCE = @as(c_int, 33);
pub const SO_KEEPALIVE = @as(c_int, 9);
pub const SO_OOBINLINE = @as(c_int, 10);
pub const SO_NO_CHECK = @as(c_int, 11);
pub const SO_PRIORITY = @as(c_int, 12);
pub const SO_LINGER = @as(c_int, 13);
pub const SO_BSDCOMPAT = @as(c_int, 14);
pub const SO_REUSEPORT = @as(c_int, 15);
pub const SO_PASSCRED = @as(c_int, 16);
pub const SO_PEERCRED = @as(c_int, 17);
pub const SO_RCVLOWAT = @as(c_int, 18);
pub const SO_SNDLOWAT = @as(c_int, 19);
pub const SO_RCVTIMEO_OLD = @as(c_int, 20);
pub const SO_SNDTIMEO_OLD = @as(c_int, 21);
pub const SO_SECURITY_AUTHENTICATION = @as(c_int, 22);
pub const SO_SECURITY_ENCRYPTION_TRANSPORT = @as(c_int, 23);
pub const SO_SECURITY_ENCRYPTION_NETWORK = @as(c_int, 24);
pub const SO_BINDTODEVICE = @as(c_int, 25);
pub const SO_ATTACH_FILTER = @as(c_int, 26);
pub const SO_DETACH_FILTER = @as(c_int, 27);
pub const SO_GET_FILTER = SO_ATTACH_FILTER;
pub const SO_PEERNAME = @as(c_int, 28);
pub const SO_ACCEPTCONN = @as(c_int, 30);
pub const SO_PEERSEC = @as(c_int, 31);
pub const SO_PASSSEC = @as(c_int, 34);
pub const SO_MARK = @as(c_int, 36);
pub const SO_PROTOCOL = @as(c_int, 38);
pub const SO_DOMAIN = @as(c_int, 39);
pub const SO_RXQ_OVFL = @as(c_int, 40);
pub const SO_WIFI_STATUS = @as(c_int, 41);
pub const SCM_WIFI_STATUS = SO_WIFI_STATUS;
pub const SO_PEEK_OFF = @as(c_int, 42);
pub const SO_NOFCS = @as(c_int, 43);
pub const SO_LOCK_FILTER = @as(c_int, 44);
pub const SO_SELECT_ERR_QUEUE = @as(c_int, 45);
pub const SO_BUSY_POLL = @as(c_int, 46);
pub const SO_MAX_PACING_RATE = @as(c_int, 47);
pub const SO_BPF_EXTENSIONS = @as(c_int, 48);
pub const SO_INCOMING_CPU = @as(c_int, 49);
pub const SO_ATTACH_BPF = @as(c_int, 50);
pub const SO_DETACH_BPF = SO_DETACH_FILTER;
pub const SO_ATTACH_REUSEPORT_CBPF = @as(c_int, 51);
pub const SO_ATTACH_REUSEPORT_EBPF = @as(c_int, 52);
pub const SO_CNX_ADVICE = @as(c_int, 53);
pub const SCM_TIMESTAMPING_OPT_STATS = @as(c_int, 54);
pub const SO_MEMINFO = @as(c_int, 55);
pub const SO_INCOMING_NAPI_ID = @as(c_int, 56);
pub const SO_COOKIE = @as(c_int, 57);
pub const SCM_TIMESTAMPING_PKTINFO = @as(c_int, 58);
pub const SO_PEERGROUPS = @as(c_int, 59);
pub const SO_ZEROCOPY = @as(c_int, 60);
pub const SO_TXTIME = @as(c_int, 61);
pub const SCM_TXTIME = SO_TXTIME;
pub const SO_BINDTOIFINDEX = @as(c_int, 62);
pub const SO_TIMESTAMP_OLD = @as(c_int, 29);
pub const SO_TIMESTAMPNS_OLD = @as(c_int, 35);
pub const SO_TIMESTAMPING_OLD = @as(c_int, 37);
pub const SO_TIMESTAMP_NEW = @as(c_int, 63);
pub const SO_TIMESTAMPNS_NEW = @as(c_int, 64);
pub const SO_TIMESTAMPING_NEW = @as(c_int, 65);
pub const SO_RCVTIMEO_NEW = @as(c_int, 66);
pub const SO_SNDTIMEO_NEW = @as(c_int, 67);
pub const SO_DETACH_REUSEPORT_BPF = @as(c_int, 68);
pub const SO_PREFER_BUSY_POLL = @as(c_int, 69);
pub const SO_BUSY_POLL_BUDGET = @as(c_int, 70);
pub const SO_NETNS_COOKIE = @as(c_int, 71);
pub const SO_BUF_LOCK = @as(c_int, 72);
pub const SO_TIMESTAMP = SO_TIMESTAMP_OLD;
pub const SO_TIMESTAMPNS = SO_TIMESTAMPNS_OLD;
pub const SO_TIMESTAMPING = SO_TIMESTAMPING_OLD;
pub const SO_RCVTIMEO = SO_RCVTIMEO_OLD;
pub const SO_SNDTIMEO = SO_SNDTIMEO_OLD;
pub const SCM_TIMESTAMP = SO_TIMESTAMP;
pub const SCM_TIMESTAMPNS = SO_TIMESTAMPNS;
pub const SCM_TIMESTAMPING = SO_TIMESTAMPING;
pub const __osockaddr_defined = @as(c_int, 1);
pub const __SOCKADDR_ALLTYPES = @compileError("unable to translate macro: undefined identifier `__SOCKADDR_ONETYPE`"); // /usr/include/x86_64-linux-gnu/sys/socket.h:63:10
pub const _SYS_STAT_H = @as(c_int, 1);
pub const _BITS_STAT_H = @as(c_int, 1);
pub const _BITS_STRUCT_STAT_H = @as(c_int, 1);
pub const st_atime = @compileError("unable to translate macro: undefined identifier `st_atim`"); // /usr/include/x86_64-linux-gnu/bits/struct_stat.h:77:11
pub const st_mtime = @compileError("unable to translate macro: undefined identifier `st_mtim`"); // /usr/include/x86_64-linux-gnu/bits/struct_stat.h:78:11
pub const st_ctime = @compileError("unable to translate macro: undefined identifier `st_ctim`"); // /usr/include/x86_64-linux-gnu/bits/struct_stat.h:79:11
pub const _STATBUF_ST_BLKSIZE = "";
pub const _STATBUF_ST_RDEV = "";
pub const _STATBUF_ST_NSEC = "";
pub const __S_IFMT = __helpers.promoteIntLiteral(c_int, 0o170000, .octal);
pub const __S_IFDIR = @as(c_int, 0o040000);
pub const __S_IFCHR = @as(c_int, 0o020000);
pub const __S_IFBLK = @as(c_int, 0o060000);
pub const __S_IFREG = __helpers.promoteIntLiteral(c_int, 0o100000, .octal);
pub const __S_IFIFO = @as(c_int, 0o010000);
pub const __S_IFLNK = __helpers.promoteIntLiteral(c_int, 0o120000, .octal);
pub const __S_IFSOCK = __helpers.promoteIntLiteral(c_int, 0o140000, .octal);
pub inline fn __S_TYPEISMQ(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSEM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSHM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub const __S_ISUID = @as(c_int, 0o4000);
pub const __S_ISGID = @as(c_int, 0o2000);
pub const __S_ISVTX = @as(c_int, 0o1000);
pub const __S_IREAD = @as(c_int, 0o400);
pub const __S_IWRITE = @as(c_int, 0o200);
pub const __S_IEXEC = @as(c_int, 0o100);
pub const UTIME_NOW = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 1);
pub const UTIME_OMIT = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 2);
pub const S_IFMT = __S_IFMT;
pub const S_IFDIR = __S_IFDIR;
pub const S_IFCHR = __S_IFCHR;
pub const S_IFBLK = __S_IFBLK;
pub const S_IFREG = __S_IFREG;
pub const S_IFIFO = __S_IFIFO;
pub const S_IFLNK = __S_IFLNK;
pub const S_IFSOCK = __S_IFSOCK;
pub inline fn __S_ISTYPE(mode: anytype, mask: anytype) @TypeOf((mode & __S_IFMT) == mask) {
    _ = &mode;
    _ = &mask;
    return (mode & __S_IFMT) == mask;
}
pub inline fn S_ISDIR(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFDIR)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFDIR);
}
pub inline fn S_ISCHR(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFCHR)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFCHR);
}
pub inline fn S_ISBLK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFBLK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFBLK);
}
pub inline fn S_ISREG(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFREG)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFREG);
}
pub inline fn S_ISFIFO(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFIFO)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFIFO);
}
pub inline fn S_ISLNK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFLNK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFLNK);
}
pub inline fn S_ISSOCK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFSOCK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFSOCK);
}
pub inline fn S_TYPEISMQ(buf: anytype) @TypeOf(__S_TYPEISMQ(buf)) {
    _ = &buf;
    return __S_TYPEISMQ(buf);
}
pub inline fn S_TYPEISSEM(buf: anytype) @TypeOf(__S_TYPEISSEM(buf)) {
    _ = &buf;
    return __S_TYPEISSEM(buf);
}
pub inline fn S_TYPEISSHM(buf: anytype) @TypeOf(__S_TYPEISSHM(buf)) {
    _ = &buf;
    return __S_TYPEISSHM(buf);
}
pub const S_ISUID = __S_ISUID;
pub const S_ISGID = __S_ISGID;
pub const S_ISVTX = __S_ISVTX;
pub const S_IRUSR = __S_IREAD;
pub const S_IWUSR = __S_IWRITE;
pub const S_IXUSR = __S_IEXEC;
pub const S_IRWXU = (__S_IREAD | __S_IWRITE) | __S_IEXEC;
pub const S_IREAD = S_IRUSR;
pub const S_IWRITE = S_IWUSR;
pub const S_IEXEC = S_IXUSR;
pub const S_IRGRP = S_IRUSR >> @as(c_int, 3);
pub const S_IWGRP = S_IWUSR >> @as(c_int, 3);
pub const S_IXGRP = S_IXUSR >> @as(c_int, 3);
pub const S_IRWXG = S_IRWXU >> @as(c_int, 3);
pub const S_IROTH = S_IRGRP >> @as(c_int, 3);
pub const S_IWOTH = S_IWGRP >> @as(c_int, 3);
pub const S_IXOTH = S_IXGRP >> @as(c_int, 3);
pub const S_IRWXO = S_IRWXG >> @as(c_int, 3);
pub const ACCESSPERMS = (S_IRWXU | S_IRWXG) | S_IRWXO;
pub const ALLPERMS = ((((S_ISUID | S_ISGID) | S_ISVTX) | S_IRWXU) | S_IRWXG) | S_IRWXO;
pub const DEFFILEMODE = ((((S_IRUSR | S_IWUSR) | S_IRGRP) | S_IWGRP) | S_IROTH) | S_IWOTH;
pub const S_BLKSIZE = @as(c_int, 512);
pub const _LINUX_STAT_H = "";
pub const _LINUX_TYPES_H = "";
pub const _ASM_GENERIC_TYPES_H = "";
pub const _ASM_GENERIC_INT_LL64_H = "";
pub const __bitwise__ = "";
pub const __bitwise = "";
pub const __aligned_u64 = @compileError("unable to translate macro: undefined identifier `aligned`"); // /usr/include/linux/types.h:43:9
pub const __aligned_s64 = @compileError("unable to translate macro: undefined identifier `aligned`"); // /usr/include/linux/types.h:44:9
pub const __aligned_be64 = @compileError("unable to translate macro: undefined identifier `aligned`"); // /usr/include/linux/types.h:45:9
pub const __aligned_le64 = @compileError("unable to translate macro: undefined identifier `aligned`"); // /usr/include/linux/types.h:46:9
pub const STATX_TYPE = @as(c_uint, 0x00000001);
pub const STATX_MODE = @as(c_uint, 0x00000002);
pub const STATX_NLINK = @as(c_uint, 0x00000004);
pub const STATX_UID = @as(c_uint, 0x00000008);
pub const STATX_GID = @as(c_uint, 0x00000010);
pub const STATX_ATIME = @as(c_uint, 0x00000020);
pub const STATX_MTIME = @as(c_uint, 0x00000040);
pub const STATX_CTIME = @as(c_uint, 0x00000080);
pub const STATX_INO = @as(c_uint, 0x00000100);
pub const STATX_SIZE = @as(c_uint, 0x00000200);
pub const STATX_BLOCKS = @as(c_uint, 0x00000400);
pub const STATX_BASIC_STATS = @as(c_uint, 0x000007ff);
pub const STATX_BTIME = @as(c_uint, 0x00000800);
pub const STATX_MNT_ID = @as(c_uint, 0x00001000);
pub const STATX__RESERVED = __helpers.promoteIntLiteral(c_uint, 0x80000000, .hex);
pub const STATX_ALL = @as(c_uint, 0x00000fff);
pub const STATX_ATTR_COMPRESSED = @as(c_int, 0x00000004);
pub const STATX_ATTR_IMMUTABLE = @as(c_int, 0x00000010);
pub const STATX_ATTR_APPEND = @as(c_int, 0x00000020);
pub const STATX_ATTR_NODUMP = @as(c_int, 0x00000040);
pub const STATX_ATTR_ENCRYPTED = @as(c_int, 0x00000800);
pub const STATX_ATTR_AUTOMOUNT = @as(c_int, 0x00001000);
pub const STATX_ATTR_MOUNT_ROOT = @as(c_int, 0x00002000);
pub const STATX_ATTR_VERITY = __helpers.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const STATX_ATTR_DAX = __helpers.promoteIntLiteral(c_int, 0x00200000, .hex);
pub const __statx_timestamp_defined = @as(c_int, 1);
pub const __statx_defined = @as(c_int, 1);
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
pub const MALLOC_SIZE = __helpers.promoteIntLiteral(c_int, 1000000, .decimal);
pub const STRING_SIZE = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const BUFFER_SIZE = __helpers.promoteIntLiteral(c_int, 50000, .decimal);
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
pub const CLIENT_VERSION = "2.02.61 ";
pub const XT_E = @as(c_int, 0x27);
pub const XT_C = @as(c_int, 0x5B);
pub const XT_O = @as(c_int, 0x5D);
pub const XT_W = @as(c_int, 0x74);
pub const XT_T = @as(c_int, 0x07);
pub const XT_CS = @as(c_int, 0x73);
pub const XT_S = "\x3b";
pub const XT_V = "\x00";
pub const COLOR_BRACE = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:247:9
pub const COLOR_COMMAND = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:248:9
pub const COLOR_CONFIG = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:249:9
pub const COLOR_RESET = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:250:9
pub const COLOR_SEPARATOR = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:251:9
pub const COLOR_SESSION = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:252:9
pub const COLOR_STATEMENT = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:253:9
pub const COLOR_STRING = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:254:9
pub const COLOR_DEBUG = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:255:9
pub const COLOR_TEXT = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:257:9
pub const COLOR_TINTIN = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:258:9
pub const COLOR_REPEAT = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:259:9
pub const COLOR_HELP_DIM = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:260:9
pub const COLOR_HELP_BOLD = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:261:9
pub const COLOR_HELP_TITLE = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:262:9
pub const COLOR_HELP_TABLE = @compileError("macro tokenizing failed: unknown escape sequence"); // tintin.h:263:9
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
pub const TINTIN_FLAG_REPORTCSIT = BV17;
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
pub const LINK = @compileError("unable to translate C expr: unexpected token '{'"); // tintin.h:917:9
pub const UNLINK = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // tintin.h:967:9
pub const RESTRING = @compileError("unable to translate C expr: unexpected token '{'"); // tintin.h:999:9
pub inline fn HAS_BIT(bitvector: anytype, bit: anytype) @TypeOf(bitvector & bit) {
    _ = &bitvector;
    _ = &bit;
    return bitvector & bit;
}
pub const SET_BIT = @compileError("unable to translate C expr: expected ')' instead got '|='"); // tintin.h:1019:9
pub const DEL_BIT = @compileError("unable to translate C expr: expected ')' instead got '&='"); // tintin.h:1020:9
pub const TOG_BIT = @compileError("unable to translate C expr: expected ')' instead got '^='"); // tintin.h:1021:9
pub inline fn FFS_BIT(bitvector: anytype) @TypeOf(ffs(bitvector) - @as(c_int, 1)) {
    _ = &bitvector;
    return ffs(bitvector) - @as(c_int, 1);
}
pub inline fn URANGE(a: anytype, b: anytype, c: anytype) @TypeOf(if (__helpers.cast(bool, b < a)) a else if (__helpers.cast(bool, b > c)) c else b) {
    _ = &a;
    _ = &b;
    _ = &c;
    return if (__helpers.cast(bool, b < a)) a else if (__helpers.cast(bool, b > c)) c else b;
}
pub inline fn UMAX(a: anytype, b: anytype) @TypeOf(if (__helpers.cast(bool, a > b)) a else b) {
    _ = &a;
    _ = &b;
    return if (__helpers.cast(bool, a > b)) a else b;
}
pub inline fn UMIN(a: anytype, b: anytype) @TypeOf(if (__helpers.cast(bool, a < b)) a else b) {
    _ = &a;
    _ = &b;
    return if (__helpers.cast(bool, a < b)) a else b;
}
pub const next_arg = @compileError("TODO postfix inc/dec expr"); // tintin.h:1034:9
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
pub const DO_BUFFER = @compileError("unable to translate macro: undefined identifier `ses`"); // tintin.h:1686:9
pub const DO_CHAT = @compileError("unable to translate macro: undefined identifier `arg1`"); // tintin.h:1687:9
pub const DO_COMMAND = @compileError("unable to translate macro: undefined identifier `ses`"); // tintin.h:1688:9
pub const DO_CURSOR = @compileError("unable to translate macro: undefined identifier `ses`"); // tintin.h:1689:9
pub const DO_DAEMON = @compileError("unable to translate macro: undefined identifier `ses`"); // tintin.h:1690:9
pub const DO_EDIT = @compileError("unable to translate macro: undefined identifier `ses`"); // tintin.h:1691:9
pub const DO_HISTORY = @compileError("unable to translate macro: undefined identifier `ses`"); // tintin.h:1692:9
pub const DO_LINE = @compileError("unable to translate macro: undefined identifier `ses`"); // tintin.h:1693:9
pub const DO_MAP = @compileError("unable to translate macro: undefined identifier `ses`"); // tintin.h:1694:9
pub const DO_PATH = @compileError("unable to translate macro: undefined identifier `ses`"); // tintin.h:1695:9
pub const DO_PORT = @compileError("unable to translate macro: undefined identifier `ses`"); // tintin.h:1696:9
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
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const _IO_cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const obstack = struct_obstack;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const internal_state = struct_internal_state;
pub const z_stream_s = struct_z_stream_s;
pub const gz_header_s = struct_gz_header_s;
pub const gzFile_s = struct_gzFile_s;
pub const __locale_struct = struct___locale_struct;
pub const termios = struct_termios;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const pcre2_real_general_context_8 = struct_pcre2_real_general_context_8;
pub const pcre2_real_compile_context_8 = struct_pcre2_real_compile_context_8;
pub const pcre2_real_match_context_8 = struct_pcre2_real_match_context_8;
pub const pcre2_real_convert_context_8 = struct_pcre2_real_convert_context_8;
pub const pcre2_real_code_8 = struct_pcre2_real_code_8;
pub const pcre2_real_match_data_8 = struct_pcre2_real_match_data_8;
pub const pcre2_real_jit_stack_8 = struct_pcre2_real_jit_stack_8;
pub const pcre2_real_general_context_16 = struct_pcre2_real_general_context_16;
pub const pcre2_real_compile_context_16 = struct_pcre2_real_compile_context_16;
pub const pcre2_real_match_context_16 = struct_pcre2_real_match_context_16;
pub const pcre2_real_convert_context_16 = struct_pcre2_real_convert_context_16;
pub const pcre2_real_code_16 = struct_pcre2_real_code_16;
pub const pcre2_real_match_data_16 = struct_pcre2_real_match_data_16;
pub const pcre2_real_jit_stack_16 = struct_pcre2_real_jit_stack_16;
pub const pcre2_real_general_context_32 = struct_pcre2_real_general_context_32;
pub const pcre2_real_compile_context_32 = struct_pcre2_real_compile_context_32;
pub const pcre2_real_match_context_32 = struct_pcre2_real_match_context_32;
pub const pcre2_real_convert_context_32 = struct_pcre2_real_convert_context_32;
pub const pcre2_real_code_32 = struct_pcre2_real_code_32;
pub const pcre2_real_match_data_32 = struct_pcre2_real_match_data_32;
pub const pcre2_real_jit_stack_32 = struct_pcre2_real_jit_stack_32;
pub const timex = struct_timex;
pub const tm = struct_tm;
pub const itimerspec = struct_itimerspec;
pub const sigevent = struct_sigevent;
pub const __itimer_which = enum___itimer_which;
pub const itimerval = struct_itimerval;
pub const gnutls_certificate_print_formats = enum_gnutls_certificate_print_formats;
pub const gnutls_session_int = struct_gnutls_session_int;
pub const gnutls_dh_params_int = struct_gnutls_dh_params_int;
pub const gnutls_x509_privkey_int = struct_gnutls_x509_privkey_int;
pub const gnutls_priority_st = struct_gnutls_priority_st;
pub const mbuffer_st = struct_mbuffer_st;
pub const gnutls_pubkey_st = struct_gnutls_pubkey_st;
pub const gnutls_privkey_st = struct_gnutls_privkey_st;
pub const gnutls_x509_crl_int = struct_gnutls_x509_crl_int;
pub const gnutls_x509_crt_int = struct_gnutls_x509_crt_int;
pub const gnutls_x509_crq_int = struct_gnutls_x509_crq_int;
pub const gnutls_openpgp_keyring_int = struct_gnutls_openpgp_keyring_int;
pub const gnutls_certificate_credentials_st = struct_gnutls_certificate_credentials_st;
pub const gnutls_anon_server_credentials_st = struct_gnutls_anon_server_credentials_st;
pub const gnutls_anon_client_credentials_st = struct_gnutls_anon_client_credentials_st;
pub const iovec = struct_iovec;
pub const gnutls_srp_server_credentials_st = struct_gnutls_srp_server_credentials_st;
pub const gnutls_srp_client_credentials_st = struct_gnutls_srp_client_credentials_st;
pub const gnutls_psk_server_credentials_st = struct_gnutls_psk_server_credentials_st;
pub const gnutls_psk_client_credentials_st = struct_gnutls_psk_client_credentials_st;
pub const gnutls_openpgp_crt_int = struct_gnutls_openpgp_crt_int;
pub const gnutls_openpgp_privkey_int = struct_gnutls_openpgp_privkey_int;
pub const gnutls_pkcs11_privkey_st = struct_gnutls_pkcs11_privkey_st;
pub const gnutls_tdb_int = struct_gnutls_tdb_int;
pub const gnutls_buffer_st = struct_gnutls_buffer_st;
pub const gnutls_anti_replay_st = struct_gnutls_anti_replay_st;
pub const gnutls_fips140_context_st = struct_gnutls_fips140_context_st;
pub const gnutls_name_constraints_st = struct_gnutls_name_constraints_st;
pub const gnutls_x509_spki_st = struct_gnutls_x509_spki_st;
pub const gnutls_x509_tlsfeatures_st = struct_gnutls_x509_tlsfeatures_st;
pub const gnutls_x509_dn_st = struct_gnutls_x509_dn_st;
pub const gnutls_x509_crl_iter = struct_gnutls_x509_crl_iter;
pub const gnutls_x509_trust_list_st = struct_gnutls_x509_trust_list_st;
pub const gnutls_x509_trust_list_iter = struct_gnutls_x509_trust_list_iter;
pub const gnutls_pkcs7_int = struct_gnutls_pkcs7_int;
pub const gnutls_pkcs7_attrs_st = struct_gnutls_pkcs7_attrs_st;
pub const __socket_type = enum___socket_type;
pub const sockaddr = struct_sockaddr;
pub const sockaddr_storage = struct_sockaddr_storage;
pub const msghdr = struct_msghdr;
pub const cmsghdr = struct_cmsghdr;
pub const ucred = struct_ucred;
pub const linger = struct_linger;
pub const osockaddr = struct_osockaddr;
pub const mmsghdr = struct_mmsghdr;
pub const statx_timestamp = struct_statx_timestamp;
pub const lists = enum_lists;
pub const operators = enum_operators;
pub const exit_data = struct_exit_data;
pub const room_data = struct_room_data;
pub const listnode = struct_listnode;
pub const link_data = struct_link_data;
pub const search_data = struct_search_data;
pub const map_data = struct_map_data;
pub const msdp_data = struct_msdp_data;
pub const port_data = struct_port_data;
pub const log_data = struct_log_data;
pub const buffer_data = struct_buffer_data;
pub const scroll_data = struct_scroll_data;
pub const split_data = struct_split_data;
pub const row_data = struct_row_data;
pub const edit_data = struct_edit_data;
pub const input_data = struct_input_data;
pub const session = struct_session;
pub const listroot = struct_listroot;
pub const scriptdata = struct_scriptdata;
pub const script_regex = struct_script_regex;
pub const scriptnode = struct_scriptnode;
pub const scriptroot = struct_scriptroot;
pub const process_data = struct_process_data;
pub const chat_data = struct_chat_data;
pub const screen_data = struct_screen_data;
pub const level_data = struct_level_data;
pub const stack_data = struct_stack_data;
pub const str_data = struct_str_data;
pub const memory_data = struct_memory_data;
pub const system_data = struct_system_data;
pub const tintin_data = struct_tintin_data;
pub const window_data = struct_window_data;
pub const buffer_type = struct_buffer_type;
pub const charset_type = struct_charset_type;
pub const chat_type = struct_chat_type;
pub const color_type = struct_color_type;
pub const command_type = struct_command_type;
pub const cursor_type = struct_cursor_type;
pub const daemon_type = struct_daemon_type;
pub const edit_type = struct_edit_type;
pub const event_type = struct_event_type;
pub const history_type = struct_history_type;
pub const list_type = struct_list_type;
pub const map_type = struct_map_type;
pub const map_legend_type = struct_map_legend_type;
pub const map_legend_group_type = struct_map_legend_group_type;
pub const msdp_type = struct_msdp_type;
pub const path_type = struct_path_type;
pub const port_type = struct_port_type;
pub const pulse_type = struct_pulse_type;
pub const rank_type = struct_rank_type;
pub const stamp_type = struct_stamp_type;
pub const substitution_type = struct_substitution_type;
pub const timer_type = struct_timer_type;
pub const telopt_type = struct_telopt_type;
