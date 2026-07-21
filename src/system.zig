const std = @import("std");

pub const tintin_c = @cImport({
    @cInclude("tintin.h");
});


pub const FILE = tintin_c.FILE;
pub const GNUTLS_ALPN_MANDATORY = tintin_c.GNUTLS_ALPN_MANDATORY;
pub const GNUTLS_A_UNKNOWN_PSK_IDENTITY = tintin_c.GNUTLS_A_UNKNOWN_PSK_IDENTITY;
pub const GNUTLS_CIPHER_AES_128_CBC = tintin_c.GNUTLS_CIPHER_AES_128_CBC;
pub const GNUTLS_CIPHER_AES_256_CBC = tintin_c.GNUTLS_CIPHER_AES_256_CBC;
pub const GNUTLS_CIPHER_ARCFOUR_128 = tintin_c.GNUTLS_CIPHER_ARCFOUR_128;
pub const GNUTLS_CRT_PRINT_FULL = tintin_c.GNUTLS_CRT_PRINT_FULL;
pub const GNUTLS_CRT_PRINT_ONELINE = tintin_c.GNUTLS_CRT_PRINT_ONELINE;
pub const GNUTLS_CRT_PRINT_UNSIGNED_FULL = tintin_c.GNUTLS_CRT_PRINT_UNSIGNED_FULL;
pub const GNUTLS_CRT_RAWPK = tintin_c.GNUTLS_CRT_RAWPK;
pub const GNUTLS_DIG_SHA1 = tintin_c.GNUTLS_DIG_SHA1;
pub const GNUTLS_MAC_SHA1 = tintin_c.GNUTLS_MAC_SHA1;
pub const GNUTLS_NO_DEFAULT_EXTENSIONS = tintin_c.GNUTLS_NO_DEFAULT_EXTENSIONS;
pub const GNUTLS_OPENPGP_CERT = tintin_c.GNUTLS_OPENPGP_CERT;
pub const GNUTLS_OPENPGP_CERT_FINGERPRINT = tintin_c.GNUTLS_OPENPGP_CERT_FINGERPRINT;
pub const GNUTLS_PIN_CONTEXT_SPECIFIC = tintin_c.GNUTLS_PIN_CONTEXT_SPECIFIC;
pub const GNUTLS_PIN_COUNT_LOW = tintin_c.GNUTLS_PIN_COUNT_LOW;
pub const GNUTLS_PIN_FINAL_TRY = tintin_c.GNUTLS_PIN_FINAL_TRY;
pub const GNUTLS_PIN_SO = tintin_c.GNUTLS_PIN_SO;
pub const GNUTLS_PIN_USER = tintin_c.GNUTLS_PIN_USER;
pub const GNUTLS_PIN_WRONG = tintin_c.GNUTLS_PIN_WRONG;
pub const GNUTLS_PKCS_NULL_PASSWORD = tintin_c.GNUTLS_PKCS_NULL_PASSWORD;
pub const GNUTLS_PKCS_PBES2_3DES = tintin_c.GNUTLS_PKCS_PBES2_3DES;
pub const GNUTLS_PKCS_PBES2_AES_128 = tintin_c.GNUTLS_PKCS_PBES2_AES_128;
pub const GNUTLS_PKCS_PBES2_AES_192 = tintin_c.GNUTLS_PKCS_PBES2_AES_192;
pub const GNUTLS_PKCS_PBES2_AES_256 = tintin_c.GNUTLS_PKCS_PBES2_AES_256;
pub const GNUTLS_PKCS_PBES2_GOST_CPA = tintin_c.GNUTLS_PKCS_PBES2_GOST_CPA;
pub const GNUTLS_PKCS_PBES2_GOST_CPB = tintin_c.GNUTLS_PKCS_PBES2_GOST_CPB;
pub const GNUTLS_PKCS_PBES2_GOST_CPC = tintin_c.GNUTLS_PKCS_PBES2_GOST_CPC;
pub const GNUTLS_PKCS_PBES2_GOST_CPD = tintin_c.GNUTLS_PKCS_PBES2_GOST_CPD;
pub const GNUTLS_PKCS_PBES2_GOST_TC26Z = tintin_c.GNUTLS_PKCS_PBES2_GOST_TC26Z;
pub const GNUTLS_PKCS_PKCS12_3DES = tintin_c.GNUTLS_PKCS_PKCS12_3DES;
pub const GNUTLS_PKCS_PKCS12_ARCFOUR = tintin_c.GNUTLS_PKCS_PKCS12_ARCFOUR;
pub const GNUTLS_PKCS_PKCS12_RC2_40 = tintin_c.GNUTLS_PKCS_PKCS12_RC2_40;
pub const GNUTLS_PKCS_PLAIN = tintin_c.GNUTLS_PKCS_PLAIN;
pub const GNUTLS_PK_ECDH_X25519 = tintin_c.GNUTLS_PK_ECDH_X25519;
pub const GNUTLS_PK_ECDSA = tintin_c.GNUTLS_PK_ECDSA;
pub const GNUTLS_SEC_PARAM_MEDIUM = tintin_c.GNUTLS_SEC_PARAM_MEDIUM;
pub const GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD2 = tintin_c.GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD2;
pub const GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD5 = tintin_c.GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD5;
pub const LIST_COMMAND = tintin_c.LIST_COMMAND;
pub const _CLOCK_MONOTONIC = tintin_c._CLOCK_MONOTONIC;
pub const _CLOCK_MONOTONIC_RAW = tintin_c._CLOCK_MONOTONIC_RAW;
pub const _CLOCK_MONOTONIC_RAW_APPROX = tintin_c._CLOCK_MONOTONIC_RAW_APPROX;
pub const _CLOCK_PROCESS_CPUTIME_ID = tintin_c._CLOCK_PROCESS_CPUTIME_ID;
pub const _CLOCK_REALTIME = tintin_c._CLOCK_REALTIME;
pub const _CLOCK_THREAD_CPUTIME_ID = tintin_c._CLOCK_THREAD_CPUTIME_ID;
pub const _CLOCK_UPTIME_RAW = tintin_c._CLOCK_UPTIME_RAW;
pub const _CLOCK_UPTIME_RAW_APPROX = tintin_c._CLOCK_UPTIME_RAW_APPROX;
pub const _OSSwapInt16 = tintin_c._OSSwapInt16;
pub const _OSSwapInt32 = tintin_c._OSSwapInt32;
pub const _OSSwapInt64 = tintin_c._OSSwapInt64;
pub const __builtin = tintin_c.__builtin;
pub const __darwin_fd_clr = tintin_c.__darwin_fd_clr;
pub const __darwin_fd_isset = tintin_c.__darwin_fd_isset;
pub const __darwin_fd_set = tintin_c.__darwin_fd_set;
pub const __darwin_pthread_mutex_t = tintin_c.__darwin_pthread_mutex_t;
pub const __darwin_size_t = tintin_c.__darwin_size_t;
pub const __darwin_time_t = tintin_c.__darwin_time_t;
pub const __darwin_uuid_string_t = tintin_c.__darwin_uuid_string_t;
pub const __darwin_wint_t = tintin_c.__darwin_wint_t;
pub const __error = tintin_c.__error;
pub const __helpers = tintin_c.__helpers;
pub const __int32_t = tintin_c.__int32_t;
pub const __int64_t = tintin_c.__int64_t;
pub const __math_errhandling = tintin_c.__math_errhandling;
pub const __mb_cur_max = tintin_c.__mb_cur_max;
pub const __root = tintin_c.__root;
pub const __stderrp = tintin_c.__stderrp;
pub const __stdinp = tintin_c.__stdinp;
pub const __stdoutp = tintin_c.__stdoutp;
pub const __tolower = tintin_c.__tolower;
pub const __toupper = tintin_c.__toupper;
pub const __uint16_t = tintin_c.__uint16_t;
pub const __uint32_t = tintin_c.__uint32_t;
pub const __uint64_t = tintin_c.__uint64_t;
pub const __uint8_t = tintin_c.__uint8_t;
pub fn add_nest_node_ses(arg0: anytype, arg1: anytype, arg_format: [*c]const u8, args: anytype) [*c]struct_listnode { return @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@import("variadics.zig").add_nest_node_ses(arg0, arg1, arg_format, args))))); }
pub const bcopy = tintin_c.bcopy;
pub const clock_t = tintin_c.clock_t;
pub const deflateInit2_ = tintin_c.deflateInit2_;
pub const deflateInit_ = tintin_c.deflateInit_;
pub const dev_t = tintin_c.dev_t;
pub const dirty_screen = tintin_c.dirty_screen;
pub const enum_gnutls_certificate_print_formats = tintin_c.enum_gnutls_certificate_print_formats;
pub const enum_lists = tintin_c.enum_lists;
pub const enum_operators = tintin_c.enum_operators;
pub const enum_uio_rw = tintin_c.enum_uio_rw;
pub const execv = tintin_c.execv;
pub const fclose = tintin_c.fclose;
pub const fflush = tintin_c.fflush;
pub const ffs = tintin_c.ffs;
pub const fgets = tintin_c.fgets;
pub const filesec_t = tintin_c.filesec_t;
pub const fopen = tintin_c.fopen;
pub const funopen = tintin_c.funopen;
pub const get_arg_in_braces = tintin_c.get_arg_in_braces;
pub const get_number = tintin_c.get_number;
pub const gid_t = tintin_c.gid_t;
pub const gnutls_credentials_set = tintin_c.gnutls_credentials_set;
pub const gnutls_deinit = tintin_c.gnutls_deinit;
pub const gnutls_handshake_simple_hook_func = tintin_c.gnutls_handshake_simple_hook_func;
pub const gnutls_openpgp_send_cert = tintin_c.gnutls_openpgp_send_cert;
pub const gnutls_pem_base64_decode2 = tintin_c.gnutls_pem_base64_decode2;
pub const gnutls_pem_base64_encode2 = tintin_c.gnutls_pem_base64_encode2;
pub const gnutls_record_recv = tintin_c.gnutls_record_recv;
pub const gnutls_record_send = tintin_c.gnutls_record_send;
pub const gnutls_sign_get_name = tintin_c.gnutls_sign_get_name;
pub const gnutls_srp_base64_decode2 = tintin_c.gnutls_srp_base64_decode2;
pub const gnutls_srp_base64_encode2 = tintin_c.gnutls_srp_base64_encode2;
pub const gnutls_transport_set_int2 = tintin_c.gnutls_transport_set_int2;
pub const gnutls_x509_crl_get_crt_count = tintin_c.gnutls_x509_crl_get_crt_count;
pub const gnutls_x509_crl_get_crt_serial = tintin_c.gnutls_x509_crl_get_crt_serial;
pub const inflateBackInit_ = tintin_c.inflateBackInit_;
pub const inflateInit2_ = tintin_c.inflateInit2_;
pub const inflateInit_ = tintin_c.inflateInit_;
pub const mode_t = tintin_c.mode_t;
pub const new_session = tintin_c.new_session;
pub const off_t = tintin_c.off_t;
pub const pclose = tintin_c.pclose;
pub const pcre2_code_8 = tintin_c.pcre2_code_8;
pub const pid_t = tintin_c.pid_t;
pub const popen = tintin_c.popen;
pub const pthread_t = tintin_c.pthread_t;
pub const sa_family_t = tintin_c.sa_family_t;
pub const sae_associd_t = tintin_c.sae_associd_t;
pub const sae_connid_t = tintin_c.sae_connid_t;
pub fn set_nest_node_ses(arg0: anytype, arg1: anytype, arg_format: [*c]const u8, args: anytype) [*c]struct_listnode { return @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@import("variadics.zig").set_nest_node_ses(arg0, arg1, arg_format, args))))); }
pub fn show_error(arg0: anytype, arg1: anytype, arg_format: [*c]const u8, args: anytype) void { @import("variadics.zig").show_error(arg0, arg1, arg_format, args); }
pub fn show_message(arg0: anytype, arg1: anytype, arg_format: [*c]const u8, args: anytype) void { @import("variadics.zig").show_message(arg0, arg1, arg_format, args); }
pub const sigset_t = tintin_c.sigset_t;
pub const sprintf = tintin_c.sprintf;
pub const stack_t = tintin_c.stack_t;
pub const strchr = tintin_c.strchr;
pub const strcmp = tintin_c.strcmp;
pub const strlen = tintin_c.strlen;
pub const struct___arm_legacy_debug_state = tintin_c.struct___arm_legacy_debug_state;
pub const struct___arm_pagein_state = tintin_c.struct___arm_pagein_state;
pub const struct___darwin_arm_cpmu_state64 = tintin_c.struct___darwin_arm_cpmu_state64;
pub const struct___darwin_arm_debug_state32 = tintin_c.struct___darwin_arm_debug_state32;
pub const struct___darwin_arm_debug_state64 = tintin_c.struct___darwin_arm_debug_state64;
pub const struct___darwin_arm_exception_state = tintin_c.struct___darwin_arm_exception_state;
pub const struct___darwin_arm_exception_state64 = tintin_c.struct___darwin_arm_exception_state64;
pub const struct___darwin_arm_exception_state64_v2 = tintin_c.struct___darwin_arm_exception_state64_v2;
pub const struct___darwin_arm_neon_state = tintin_c.struct___darwin_arm_neon_state;
pub const struct___darwin_arm_neon_state64 = tintin_c.struct___darwin_arm_neon_state64;
pub const struct___darwin_arm_sme2_state = tintin_c.struct___darwin_arm_sme2_state;
pub const struct___darwin_arm_sme_state = tintin_c.struct___darwin_arm_sme_state;
pub const struct___darwin_arm_sme_za_state = tintin_c.struct___darwin_arm_sme_za_state;
pub const struct___darwin_arm_sve_p_state = tintin_c.struct___darwin_arm_sve_p_state;
pub const struct___darwin_arm_sve_z_state = tintin_c.struct___darwin_arm_sve_z_state;
pub const struct___darwin_arm_thread_state = tintin_c.struct___darwin_arm_thread_state;
pub const struct___darwin_arm_thread_state64 = tintin_c.struct___darwin_arm_thread_state64;
pub const struct___darwin_arm_vfp_state = tintin_c.struct___darwin_arm_vfp_state;
pub const struct___darwin_mcontext32 = tintin_c.struct___darwin_mcontext32;
pub const struct___darwin_mcontext64 = tintin_c.struct___darwin_mcontext64;
pub const struct___darwin_pthread_handler_rec = tintin_c.struct___darwin_pthread_handler_rec;
pub const struct___darwin_sigaltstack = tintin_c.struct___darwin_sigaltstack;
pub const struct___darwin_ucontext = tintin_c.struct___darwin_ucontext;
pub const struct___double2 = tintin_c.struct___double2;
pub const struct___float2 = tintin_c.struct___float2;
pub const struct___sFILE = tintin_c.struct___sFILE;
pub const struct___sFILEX = tintin_c.struct___sFILEX;
pub const struct___sbuf = tintin_c.struct___sbuf;
pub const struct___sigaction = tintin_c.struct___sigaction;
pub const struct___siginfo = tintin_c.struct___siginfo;
pub const struct___sockaddr_header = tintin_c.struct___sockaddr_header;
pub const struct__filesec = tintin_c.struct__filesec;
pub const struct__malloc_zone_t = tintin_c.struct__malloc_zone_t;
pub const struct__opaque_pthread_attr_t = tintin_c.struct__opaque_pthread_attr_t;
pub const struct__opaque_pthread_cond_t = tintin_c.struct__opaque_pthread_cond_t;
pub const struct__opaque_pthread_condattr_t = tintin_c.struct__opaque_pthread_condattr_t;
pub const struct__opaque_pthread_mutex_t = tintin_c.struct__opaque_pthread_mutex_t;
pub const struct__opaque_pthread_mutexattr_t = tintin_c.struct__opaque_pthread_mutexattr_t;
pub const struct__opaque_pthread_once_t = tintin_c.struct__opaque_pthread_once_t;
pub const struct__opaque_pthread_rwlock_t = tintin_c.struct__opaque_pthread_rwlock_t;
pub const struct__opaque_pthread_rwlockattr_t = tintin_c.struct__opaque_pthread_rwlockattr_t;
pub const struct__opaque_pthread_t = tintin_c.struct__opaque_pthread_t;
pub const struct_accessx_descriptor = tintin_c.struct_accessx_descriptor;
pub const struct_buffer_data = tintin_c.struct_buffer_data;
pub const struct_buffer_type = tintin_c.struct_buffer_type;
pub const struct_charset_type = tintin_c.struct_charset_type;
pub const struct_chat_data = tintin_c.struct_chat_data;
pub const struct_chat_type = tintin_c.struct_chat_type;
pub const struct_clockinfo = tintin_c.struct_clockinfo;
pub const struct_cmsghdr = tintin_c.struct_cmsghdr;
pub const struct_color_type = tintin_c.struct_color_type;
pub const struct_command_type = tintin_c.struct_command_type;
pub const struct_cursor_type = tintin_c.struct_cursor_type;
pub const struct_daemon_type = tintin_c.struct_daemon_type;
pub const struct_edit_data = tintin_c.struct_edit_data;
pub const struct_edit_type = tintin_c.struct_edit_type;
pub const struct_event_type = tintin_c.struct_event_type;
pub const struct_exception = tintin_c.struct_exception;
pub const struct_exit_data = tintin_c.struct_exit_data;
pub const struct_fssearchblock = tintin_c.struct_fssearchblock;
pub const struct_gnutls_anon_client_credentials_st = tintin_c.struct_gnutls_anon_client_credentials_st;
pub const struct_gnutls_anon_server_credentials_st = tintin_c.struct_gnutls_anon_server_credentials_st;
pub const struct_gnutls_anti_replay_st = tintin_c.struct_gnutls_anti_replay_st;
pub const struct_gnutls_buffer_st = tintin_c.struct_gnutls_buffer_st;
pub const struct_gnutls_certificate_credentials_st = tintin_c.struct_gnutls_certificate_credentials_st;
pub const struct_gnutls_dh_params_int = tintin_c.struct_gnutls_dh_params_int;
pub const struct_gnutls_fips140_context_st = tintin_c.struct_gnutls_fips140_context_st;
pub const struct_gnutls_name_constraints_st = tintin_c.struct_gnutls_name_constraints_st;
pub const struct_gnutls_openpgp_crt_int = tintin_c.struct_gnutls_openpgp_crt_int;
pub const struct_gnutls_openpgp_keyring_int = tintin_c.struct_gnutls_openpgp_keyring_int;
pub const struct_gnutls_openpgp_privkey_int = tintin_c.struct_gnutls_openpgp_privkey_int;
pub const struct_gnutls_pkcs11_privkey_st = tintin_c.struct_gnutls_pkcs11_privkey_st;
pub const struct_gnutls_pkcs7_attrs_st = tintin_c.struct_gnutls_pkcs7_attrs_st;
pub const struct_gnutls_pkcs7_int = tintin_c.struct_gnutls_pkcs7_int;
pub const struct_gnutls_priority_st = tintin_c.struct_gnutls_priority_st;
pub const struct_gnutls_privkey_st = tintin_c.struct_gnutls_privkey_st;
pub const struct_gnutls_psk_client_credentials_st = tintin_c.struct_gnutls_psk_client_credentials_st;
pub const struct_gnutls_psk_server_credentials_st = tintin_c.struct_gnutls_psk_server_credentials_st;
pub const struct_gnutls_pubkey_st = tintin_c.struct_gnutls_pubkey_st;
pub const struct_gnutls_session_int = tintin_c.struct_gnutls_session_int;
pub const struct_gnutls_srp_client_credentials_st = tintin_c.struct_gnutls_srp_client_credentials_st;
pub const struct_gnutls_srp_server_credentials_st = tintin_c.struct_gnutls_srp_server_credentials_st;
pub const struct_gnutls_tdb_int = tintin_c.struct_gnutls_tdb_int;
pub const struct_gnutls_x509_crl_int = tintin_c.struct_gnutls_x509_crl_int;
pub const struct_gnutls_x509_crl_iter = tintin_c.struct_gnutls_x509_crl_iter;
pub const struct_gnutls_x509_crq_int = tintin_c.struct_gnutls_x509_crq_int;
pub const struct_gnutls_x509_crt_int = tintin_c.struct_gnutls_x509_crt_int;
pub const struct_gnutls_x509_dn_st = tintin_c.struct_gnutls_x509_dn_st;
pub const struct_gnutls_x509_privkey_int = tintin_c.struct_gnutls_x509_privkey_int;
pub const struct_gnutls_x509_spki_st = tintin_c.struct_gnutls_x509_spki_st;
pub const struct_gnutls_x509_tlsfeatures_st = tintin_c.struct_gnutls_x509_tlsfeatures_st;
pub const struct_gnutls_x509_trust_list_iter = tintin_c.struct_gnutls_x509_trust_list_iter;
pub const struct_gnutls_x509_trust_list_st = tintin_c.struct_gnutls_x509_trust_list_st;
pub const struct_gzFile_s = tintin_c.struct_gzFile_s;
pub const struct_gz_header_s = tintin_c.struct_gz_header_s;
pub const struct_history_type = tintin_c.struct_history_type;
pub const struct_input_data = tintin_c.struct_input_data;
pub const struct_internal_state = tintin_c.struct_internal_state;
pub const struct_iovec = tintin_c.struct_iovec;
pub const struct_itimerval = tintin_c.struct_itimerval;
pub const struct_level_data = tintin_c.struct_level_data;
pub const struct_linger = tintin_c.struct_linger;
pub const struct_link_data = tintin_c.struct_link_data;
pub const struct_list_type = tintin_c.struct_list_type;
pub const struct_listnode = tintin_c.struct_listnode;
pub const struct_listroot = tintin_c.struct_listroot;
pub const struct_log_data = tintin_c.struct_log_data;
pub const struct_map_data = tintin_c.struct_map_data;
pub const struct_map_legend_group_type = tintin_c.struct_map_legend_group_type;
pub const struct_map_legend_type = tintin_c.struct_map_legend_type;
pub const struct_map_type = tintin_c.struct_map_type;
pub const struct_mbuffer_st = tintin_c.struct_mbuffer_st;
pub const struct_memory_data = tintin_c.struct_memory_data;
pub const struct_msdp_data = tintin_c.struct_msdp_data;
pub const struct_msdp_type = tintin_c.struct_msdp_type;
pub const struct_msghdr = tintin_c.struct_msghdr;
pub const struct_ostat = tintin_c.struct_ostat;
pub const struct_path_type = tintin_c.struct_path_type;
pub const struct_pcre2_real_code_16 = tintin_c.struct_pcre2_real_code_16;
pub const struct_pcre2_real_code_32 = tintin_c.struct_pcre2_real_code_32;
pub const struct_pcre2_real_code_8 = tintin_c.struct_pcre2_real_code_8;
pub const struct_pcre2_real_compile_context_16 = tintin_c.struct_pcre2_real_compile_context_16;
pub const struct_pcre2_real_compile_context_32 = tintin_c.struct_pcre2_real_compile_context_32;
pub const struct_pcre2_real_compile_context_8 = tintin_c.struct_pcre2_real_compile_context_8;
pub const struct_pcre2_real_convert_context_16 = tintin_c.struct_pcre2_real_convert_context_16;
pub const struct_pcre2_real_convert_context_32 = tintin_c.struct_pcre2_real_convert_context_32;
pub const struct_pcre2_real_convert_context_8 = tintin_c.struct_pcre2_real_convert_context_8;
pub const struct_pcre2_real_general_context_16 = tintin_c.struct_pcre2_real_general_context_16;
pub const struct_pcre2_real_general_context_32 = tintin_c.struct_pcre2_real_general_context_32;
pub const struct_pcre2_real_general_context_8 = tintin_c.struct_pcre2_real_general_context_8;
pub const struct_pcre2_real_jit_stack_16 = tintin_c.struct_pcre2_real_jit_stack_16;
pub const struct_pcre2_real_jit_stack_32 = tintin_c.struct_pcre2_real_jit_stack_32;
pub const struct_pcre2_real_jit_stack_8 = tintin_c.struct_pcre2_real_jit_stack_8;
pub const struct_pcre2_real_match_context_16 = tintin_c.struct_pcre2_real_match_context_16;
pub const struct_pcre2_real_match_context_32 = tintin_c.struct_pcre2_real_match_context_32;
pub const struct_pcre2_real_match_context_8 = tintin_c.struct_pcre2_real_match_context_8;
pub const struct_pcre2_real_match_data_16 = tintin_c.struct_pcre2_real_match_data_16;
pub const struct_pcre2_real_match_data_32 = tintin_c.struct_pcre2_real_match_data_32;
pub const struct_pcre2_real_match_data_8 = tintin_c.struct_pcre2_real_match_data_8;
pub const struct_port_data = tintin_c.struct_port_data;
pub const struct_port_type = tintin_c.struct_port_type;
pub const struct_proc_rlimit_control_wakeupmon = tintin_c.struct_proc_rlimit_control_wakeupmon;
pub const struct_process_data = tintin_c.struct_process_data;
pub const struct_pulse_type = tintin_c.struct_pulse_type;
pub const struct_rank_type = tintin_c.struct_rank_type;
pub const struct_rlimit = tintin_c.struct_rlimit;
pub const struct_room_data = tintin_c.struct_room_data;
pub const struct_row_data = tintin_c.struct_row_data;
pub const struct_rusage = tintin_c.struct_rusage;
pub const struct_rusage_info_v0 = tintin_c.struct_rusage_info_v0;
pub const struct_rusage_info_v1 = tintin_c.struct_rusage_info_v1;
pub const struct_rusage_info_v2 = tintin_c.struct_rusage_info_v2;
pub const struct_rusage_info_v3 = tintin_c.struct_rusage_info_v3;
pub const struct_rusage_info_v4 = tintin_c.struct_rusage_info_v4;
pub const struct_rusage_info_v5 = tintin_c.struct_rusage_info_v5;
pub const struct_rusage_info_v6 = tintin_c.struct_rusage_info_v6;
pub const struct_sa_endpoints = tintin_c.struct_sa_endpoints;
pub const struct_screen_data = tintin_c.struct_screen_data;
pub const struct_scriptroot = tintin_c.struct_scriptroot;
pub const struct_scroll_data = tintin_c.struct_scroll_data;
pub const struct_search_data = tintin_c.struct_search_data;
pub const struct_searchstate = tintin_c.struct_searchstate;
pub const struct_session = tintin_c.struct_session;
pub const struct_sf_hdtr = tintin_c.struct_sf_hdtr;
pub const struct_sigaction = tintin_c.struct_sigaction;
pub const struct_sigevent = tintin_c.struct_sigevent;
pub const struct_sigstack = tintin_c.struct_sigstack;
pub const struct_sigvec = tintin_c.struct_sigvec;
pub const struct_so_np_extensions = tintin_c.struct_so_np_extensions;
pub const struct_sockaddr = tintin_c.struct_sockaddr;
pub const struct_sockaddr_storage = tintin_c.struct_sockaddr_storage;
pub const struct_sockproto = tintin_c.struct_sockproto;
pub const struct_split_data = tintin_c.struct_split_data;
pub const struct_stack_data = tintin_c.struct_stack_data;
pub const struct_stamp_type = tintin_c.struct_stamp_type;
pub const struct_str_data = tintin_c.struct_str_data;
pub const struct_substitution_type = tintin_c.struct_substitution_type;
pub const struct_system_data = tintin_c.struct_system_data;
pub const struct_telopt_type = tintin_c.struct_telopt_type;
pub const struct_termios = tintin_c.struct_termios;
pub const struct_timer_type = tintin_c.struct_timer_type;
pub const struct_timespec = tintin_c.struct_timespec;
pub const struct_timeval = tintin_c.struct_timeval;
pub const struct_timeval64 = tintin_c.struct_timeval64;
pub const struct_tintin_data = tintin_c.struct_tintin_data;
pub const struct_tm = tintin_c.struct_tm;
pub const struct_window_data = tintin_c.struct_window_data;
pub const struct_winsize = extern struct {
    ws_row: c_ushort = 0,
    ws_col: c_ushort = 0,
    ws_xpixel: c_ushort = 0,
    ws_ypixel: c_ushort = 0,
};
pub const struct_z_stream_s = tintin_c.struct_z_stream_s;
pub const sub_arg_in_braces = tintin_c.sub_arg_in_braces;
pub fn syserr_printf(arg0: anytype, arg_format: [*c]const u8, args: anytype) void { @import("variadics.zig").syserr_printf(arg0, arg_format, args); }
pub const system = tintin_c.system;
pub const time_t = tintin_c.time_t;
pub fn tintin_printf(arg0: anytype, arg_format: [*c]const u8, args: anytype) void { @import("variadics.zig").tintin_printf(arg0, arg_format, args); }
pub const u_int32_t = tintin_c.u_int32_t;
pub const uid_t = tintin_c.uid_t;
pub const union___sigaction_u = tintin_c.union___sigaction_u;
pub const union_sigval = tintin_c.union_sigval;
pub const user_addr_t = tintin_c.user_addr_t;
pub const usleep = tintin_c.usleep;
pub const uuid_t = tintin_c.uuid_t;
pub const write_mud = tintin_c.write_mud;
pub const z_stream = tintin_c.z_stream;
pub const zlibVersion = tintin_c.zlibVersion;

pub export fn do_suspend(arg_ses: [*c]struct_session, arg_arg: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8, arg_arg3: [*c]u8, arg_arg4: [*c]u8) [*c]struct_session {
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
    if (!(strcmp(tintin_c.gtd.*.system.*.os, "WINTIN++") != 0)) {
        show_error(tintin_c.gtd.*.ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#ERROR: #SUSPEND / ctrl-z is not supported for WinTin++."))))))), .{});
        return ses;
    }
    print_stdout(0, 0, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("\x1b[?1049l\x1b[r\x1b[%d;%dH"))))))), tintin_c.gtd.*.screen.*.rows, @as(c_int, 1));
    _ = fflush(null);
    reset_terminal(tintin_c.gtd.*.ses);
    _ = kill(0, SIGSTOP);
    init_terminal(tintin_c.gtd.*.ses);
    dirty_screen(tintin_c.gtd.*.ses);
    tintin_printf(tintin_c.gtd.*.ses, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#RETURNING BACK TO TINTIN++."))))))), .{});
    return ses;
}
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
pub const struct_passwd = extern struct {
    pw_name: [*c]u8 = null,
    pw_passwd: [*c]u8 = null,
    pw_uid: uid_t = 0,
    pw_gid: gid_t = 0,
    pw_change: __darwin_time_t = 0,
    pw_class: [*c]u8 = null,
    pw_gecos: [*c]u8 = null,
    pw_dir: [*c]u8 = null,
    pw_shell: [*c]u8 = null,
    pw_expire: __darwin_time_t = 0,
};
pub extern fn getpwuid(uid_t) [*c]struct_passwd;
pub extern fn getpwnam([*c]const u8) [*c]struct_passwd;
pub extern fn getpwuid_r(uid_t, [*c]struct_passwd, [*c]u8, usize, [*c][*c]struct_passwd) c_int;
pub extern fn getpwnam_r([*c]const u8, [*c]struct_passwd, [*c]u8, usize, [*c][*c]struct_passwd) c_int;
pub extern fn getpwent() [*c]struct_passwd;
pub extern fn setpwent() void;
pub extern fn endpwent() void;
pub const uuid_string_t = __darwin_uuid_string_t;
pub const UUID_NULL: uuid_t = [16]u8{
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
};
pub extern fn uuid_clear(uu: [*c]u8) void;
pub extern fn uuid_compare(uu1: [*c]const u8, uu2: [*c]const u8) c_int;
pub extern fn uuid_copy(dst: [*c]u8, src: [*c]const u8) void;
pub extern fn uuid_generate(out: [*c]u8) void;
pub extern fn uuid_generate_random(out: [*c]u8) void;
pub extern fn uuid_generate_time(out: [*c]u8) void;
pub extern fn uuid_is_null(uu: [*c]const u8) c_int;
pub extern fn uuid_parse(in: [*c]const u8, uu: [*c]u8) c_int;
pub extern fn uuid_unparse(uu: [*c]const u8, out: [*c]u8) void;
pub extern fn uuid_unparse_lower(uu: [*c]const u8, out: [*c]u8) void;
pub extern fn uuid_unparse_upper(uu: [*c]const u8, out: [*c]u8) void;
pub extern fn setpassent(c_int) c_int;
pub extern fn user_from_uid(uid_t, c_int) [*c]u8;
pub extern fn getpwuuid([*c]u8) [*c]struct_passwd;
pub extern fn getpwuuid_r([*c]u8, [*c]struct_passwd, [*c]u8, usize, [*c][*c]struct_passwd) c_int;
pub const struct_utmp = extern struct {
    ut_line: [8]u8 = @import("std").mem.zeroes([8]u8),
    ut_name: [8]u8 = @import("std").mem.zeroes([8]u8),
    ut_host: [16]u8 = @import("std").mem.zeroes([16]u8),
    ut_time: c_long = 0,
    pub const login = __root.login;
};
pub extern fn login([*c]struct_utmp) void;
pub extern fn login_tty(c_int) c_int;
pub extern fn logout([*c]const u8) c_int;
pub extern fn logwtmp([*c]const u8, [*c]const u8, [*c]const u8) void;
pub extern fn opendev([*c]u8, c_int, c_int, [*c][*c]u8) c_int;
pub extern fn openpty([*c]c_int, [*c]c_int, [*c]u8, [*c]struct_termios, [*c]struct_winsize) c_int;
pub extern fn fparseln(?*FILE, [*c]usize, [*c]usize, [*c]const u8, c_int) [*c]u8;
pub extern fn forkpty([*c]c_int, [*c]u8, [*c]struct_termios, [*c]struct_winsize) pid_t;
pub const struct_lastlog = extern struct {
    ll_time: time_t = 0,
    ll_line: [8]u8 = @import("std").mem.zeroes([8]u8),
    ll_host: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const struct_flock = extern struct {
    l_start: off_t = 0,
    l_len: off_t = 0,
    l_pid: pid_t = 0,
    l_type: c_short = 0,
    l_whence: c_short = 0,
};
pub const struct_flocktimeout = extern struct {
    fl: struct_flock = @import("std").mem.zeroes(struct_flock),
    timeout: struct_timespec = @import("std").mem.zeroes(struct_timespec),
};
pub const struct_radvisory = extern struct {
    ra_offset: off_t = 0,
    ra_count: c_int = 0,
};
pub const struct_fsignatures = extern struct {
    fs_file_start: off_t = 0,
    fs_blob_start: ?*anyopaque = null,
    fs_blob_size: usize = 0,
    fs_fsignatures_size: usize = 0,
    fs_cdhash: [20]u8 = @import("std").mem.zeroes([20]u8),
    fs_hash_type: c_int = 0,
};
pub const fsignatures_t = struct_fsignatures;
pub const struct_fsupplement = extern struct {
    fs_file_start: off_t = 0,
    fs_blob_start: off_t = 0,
    fs_blob_size: usize = 0,
    fs_orig_fd: c_int = 0,
};
pub const fsupplement_t = struct_fsupplement;
pub const struct_fchecklv = extern struct {
    lv_file_start: off_t = 0,
    lv_error_message_size: usize = 0,
    lv_error_message: ?*anyopaque = null,
};
pub const fchecklv_t = struct_fchecklv;
pub const struct_fgetsigsinfo = extern struct {
    fg_file_start: off_t = 0,
    fg_info_request: c_int = 0,
    fg_sig_is_platform: c_int = 0,
};
pub const fgetsigsinfo_t = struct_fgetsigsinfo;
pub const struct_fstore = extern struct {
    fst_flags: c_uint = 0,
    fst_posmode: c_int = 0,
    fst_offset: off_t = 0,
    fst_length: off_t = 0,
    fst_bytesalloc: off_t = 0,
};
pub const fstore_t = struct_fstore;
pub const struct_fpunchhole = extern struct {
    fp_flags: c_uint = 0,
    reserved: c_uint = 0,
    fp_offset: off_t = 0,
    fp_length: off_t = 0,
};
pub const fpunchhole_t = struct_fpunchhole;
pub const struct_ftrimactivefile = extern struct {
    fta_offset: off_t = 0,
    fta_length: off_t = 0,
};
pub const ftrimactivefile_t = struct_ftrimactivefile;
pub const struct_fspecread = extern struct {
    fsr_flags: c_uint = 0,
    reserved: c_uint = 0,
    fsr_offset: off_t = 0,
    fsr_length: off_t = 0,
};
pub const fspecread_t = struct_fspecread;
pub const struct_fattributiontag = extern struct {
    ft_flags: c_uint = 0,
    ft_hash: c_ulonglong = 0,
    ft_attribution_name: [255]u8 = @import("std").mem.zeroes([255]u8),
};
pub const fattributiontag_t = struct_fattributiontag;
pub const struct_log2phys = extern struct {
    l2p_flags: c_uint = 0,
    l2p_contigbytes: off_t = 0,
    l2p_devoffset: off_t = 0,
};
pub const FILESEC_OWNER: c_int = 1;
pub const FILESEC_GROUP: c_int = 2;
pub const FILESEC_UUID: c_int = 3;
pub const FILESEC_MODE: c_int = 4;
pub const FILESEC_ACL: c_int = 5;
pub const FILESEC_GRPUUID: c_int = 6;
pub const FILESEC_ACL_RAW: c_int = 100;
pub const FILESEC_ACL_ALLOCSIZE: c_int = 101;
pub const filesec_property_t = c_uint;
pub extern fn open([*c]const u8, c_int, ...) c_int;
pub extern fn openat(c_int, [*c]const u8, c_int, ...) c_int;
pub extern fn creat([*c]const u8, mode_t) c_int;
pub extern fn fcntl(c_int, c_int, ...) c_int;
pub extern fn openx_np([*c]const u8, c_int, filesec_t) c_int;
pub extern fn open_dprotected_np([*c]const u8, c_int, c_int, c_int, ...) c_int;
pub extern fn openat_dprotected_np(c_int, [*c]const u8, c_int, c_int, c_int, ...) c_int;
pub extern fn openat_authenticated_np(c_int, [*c]const u8, c_int, c_int) c_int;
pub extern fn flock(c_int, c_int) c_int;
pub extern fn filesec_init() filesec_t;
pub extern fn filesec_dup(filesec_t) filesec_t;
pub extern fn filesec_free(filesec_t) void;
pub extern fn filesec_get_property(filesec_t, filesec_property_t, ?*anyopaque) c_int;
pub extern fn filesec_query_property(filesec_t, filesec_property_t, [*c]c_int) c_int;
pub extern fn filesec_set_property(filesec_t, filesec_property_t, ?*const anyopaque) c_int;
pub extern fn filesec_unset_property(filesec_t, filesec_property_t) c_int;
pub const struct_dirent = extern struct {
    d_ino: __uint64_t = 0,
    d_seekoff: __uint64_t = 0,
    d_reclen: __uint16_t = 0,
    d_namlen: __uint16_t = 0,
    d_type: __uint8_t = 0,
    d_name: [1024]u8 = @import("std").mem.zeroes([1024]u8),
};
pub const struct__telldir = opaque {};
pub const DIR = extern struct {
    __dd_fd: c_int = 0,
    __dd_loc: usize = 0,
    __dd_size: usize = 0,
    __dd_buf: [*c]u8 = null,
    __dd_len: c_int = 0,
    __dd_seek: c_long = 0,
    __padding: c_long = 0,
    __dd_flags: c_int = 0,
    __dd_lock: __darwin_pthread_mutex_t = @import("std").mem.zeroes(__darwin_pthread_mutex_t),
    __dd_td: ?*struct__telldir = null,
    pub const closedir = __root.closedir;
    pub const readdir = __root.readdir;
    pub const readdir_r = __root.readdir_r;
    pub const rewinddir = __root.rewinddir;
    pub const seekdir = __root.seekdir;
    pub const telldir = __root.telldir;
    pub const dirfd = __root.dirfd;
    pub const fdclosedir = __root.fdclosedir;
    pub const r = __root.readdir_r;
};
pub extern fn closedir([*c]DIR) c_int;
pub extern fn opendir([*c]const u8) [*c]DIR;
pub extern fn readdir([*c]DIR) [*c]struct_dirent;
pub extern fn readdir_r([*c]DIR, [*c]struct_dirent, [*c][*c]struct_dirent) c_int;
pub extern fn rewinddir([*c]DIR) void;
pub extern fn seekdir([*c]DIR, c_long) void;
pub extern fn telldir([*c]DIR) c_long;
pub extern fn fdopendir(c_int) [*c]DIR;
pub extern fn alphasort([*c][*c]const struct_dirent, [*c][*c]const struct_dirent) c_int;
pub extern fn dirfd(dirp: [*c]DIR) c_int;
pub extern fn scandir([*c]const u8, [*c][*c][*c]struct_dirent, ?*const fn ([*c]const struct_dirent) callconv(.c) c_int, ?*const fn ([*c][*c]const struct_dirent, [*c][*c]const struct_dirent) callconv(.c) c_int) c_int;
pub extern fn fdclosedir([*c]DIR) c_int;
pub extern fn fdscandir(c_int, [*c][*c][*c]struct_dirent, ?*const fn ([*c]const struct_dirent) callconv(.c) c_int, ?*const fn ([*c][*c]const struct_dirent, [*c][*c]const struct_dirent) callconv(.c) c_int) c_int;
pub extern fn scandirat(c_int, [*c]const u8, [*c][*c][*c]struct_dirent, ?*const fn ([*c]const struct_dirent) callconv(.c) c_int, ?*const fn ([*c][*c]const struct_dirent, [*c][*c]const struct_dirent) callconv(.c) c_int) c_int;
pub extern fn getdirentries(c_int, [*c]u8, __nbytes: c_int, [*c]c_long) c_int;
pub extern fn __opendir2([*c]const u8, c_int) [*c]DIR;
pub const struct_sockaddr_un = extern struct {
    sun_len: u8 = 0,
    sun_family: sa_family_t = 0,
    sun_path: [104]u8 = @import("std").mem.zeroes([104]u8),
};
pub extern const sys_signame: [32][*c]const u8;
pub extern const sys_siglist: [32][*c]const u8;
pub extern fn raise(c_int) c_int;
pub extern fn bsd_signal(c_int, ?*const fn (c_int) callconv(.c) void) ?*const fn (c_int) callconv(.c) void;
pub extern fn kill(pid_t, c_int) c_int;
pub extern fn killpg(pid_t, c_int) c_int;
pub extern fn pthread_kill(pthread_t, c_int) c_int;
pub extern fn pthread_sigmask(c_int, [*c]const sigset_t, [*c]sigset_t) c_int;
pub extern fn sigaction(c_int, noalias [*c]const struct_sigaction, noalias [*c]struct_sigaction) c_int;
pub extern fn sigaddset([*c]sigset_t, c_int) c_int;
pub extern fn sigaltstack(noalias [*c]const stack_t, noalias [*c]stack_t) c_int;
pub extern fn sigdelset([*c]sigset_t, c_int) c_int;
pub extern fn sigemptyset([*c]sigset_t) c_int;
pub extern fn sigfillset([*c]sigset_t) c_int;
pub extern fn sighold(c_int) c_int;
pub extern fn sigignore(c_int) c_int;
pub extern fn siginterrupt(c_int, c_int) c_int;
pub extern fn sigismember([*c]const sigset_t, c_int) c_int;
pub extern fn sigpause(c_int) c_int;
pub extern fn sigpending([*c]sigset_t) c_int;
pub extern fn sigprocmask(c_int, noalias [*c]const sigset_t, noalias [*c]sigset_t) c_int;
pub extern fn sigrelse(c_int) c_int;
pub extern fn sigset(c_int, ?*const fn (c_int) callconv(.c) void) ?*const fn (c_int) callconv(.c) void;
pub extern fn sigsuspend([*c]const sigset_t) c_int;
pub extern fn sigwait(noalias [*c]const sigset_t, noalias [*c]c_int) c_int;
pub extern fn psignal(c_int, [*c]const u8) void;
pub extern fn sigblock(c_int) c_int;
pub extern fn sigsetmask(c_int) c_int;
pub extern fn sigvec(c_int, [*c]struct_sigvec, [*c]struct_sigvec) c_int;
pub inline fn __sigbits(arg___signo: c_int) c_uint {
    var __signo = arg___signo;
    _ = &__signo;
    if ((__signo == @as(c_int, 0)) or (__signo > __DARWIN_NSIG)) return @bitCast(@as(c_int, @as(c_int, 0)));
    return @as(c_uint, 1) << @intCast(@as(c_uint, @bitCast(@as(c_int, __signo - @as(c_int, 1)))));
} // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h:87:2: warning: TODO implement function '__builtin___sprintf_chk' in std.zig.c_builtins
// src/system.c:43:12: warning: unable to translate function, demoted to extern
pub export fn do_run(arg_ses: [*c]struct_session, arg_arg: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8, arg_arg3: [*c]u8, arg_arg4: [*c]u8) [*c]struct_session {
    var ses = arg_ses;
    var arg = arg_arg;
    const arg1 = arg_arg1;
    const arg2 = arg_arg2;
    const arg3 = arg_arg3;
    const arg4 = arg_arg4;
    _ = arg4;

    var temp: [BUFFER_SIZE]u8 = undefined;
    var desc: c_int = 0;
    var size: struct_winsize = undefined;

    var argv: [4][*c]u8 = [_][*c]u8{
        @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("sh"))))))))),
        @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("-c"))))))))),
        @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast(""))))))))),
        null,
    };

    arg = sub_arg_in_braces(ses, arg, arg1, GET_ONE, SUB_VAR | SUB_FUN);
    arg = sub_arg_in_braces(ses, arg, arg2, GET_ALL, SUB_VAR | SUB_FUN);
    arg = sub_arg_in_braces(ses, arg, arg3, GET_ONE, SUB_VAR | SUB_FUN);

    if (arg1[0] == 0 or arg2[0] == 0) {
        show_error(ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#SYNTAX: #RUN <NAME> <SHELL COMMAND>"))))))))), .{});
        return ses;
    }

    size.ws_row = @as(c_ushort, @intCast(get_scroll_rows(ses)));
    size.ws_col = @as(c_ushort, @intCast(get_scroll_cols(ses)));
    size.ws_ypixel = @as(c_ushort, @intCast(size.ws_row * tintin_c.gtd.*.screen.*.char_height));
    size.ws_xpixel = @as(c_ushort, @intCast(size.ws_col * tintin_c.gtd.*.screen.*.char_width));

    const pid = forkpty(&desc, @as([*c]u8, @ptrCast(&temp)), &tintin_c.gtd.*.old_terminal, &size);

    switch (pid) {
        -1 => {
            syserr_printf(ses, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("do_run: forkpty"))))))))), .{});
        },
        0 => {
            _ = sprintf(@as([*c]u8, @ptrCast(&temp)), "exec %s", arg2);
            argv[2] = @as([*c]u8, @ptrCast(&temp));
            _ = execv(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("/bin/sh"))))))))), @as([*c][*c]u8, @ptrCast(&argv)));
        },
        else => {
            _ = sprintf(@as([*c]u8, @ptrCast(&temp)), "{%s} {%d} {%s}", arg2, pid, arg3);
            ses = new_session(ses, arg1, @as([*c]u8, @ptrCast(&temp)), desc, 0);
        },
    }
    return ses;
}
pub export fn do_script(arg_ses: [*c]struct_session, arg_arg: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8, arg_arg3: [*c]u8, arg_arg4: [*c]u8) [*c]struct_session {
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
    var cptr: [*c]u8 = undefined;
    _ = &cptr;
    var buf: [50000]u8 = undefined;
    _ = &buf;
    var tmp: [50000]u8 = undefined;
    _ = &tmp;
    var script: ?*FILE = undefined;
    _ = &script;
    var index_1: c_int = undefined;
    _ = &index_1;
    arg = sub_arg_in_braces(ses, arg, arg1, GET_ONE, (@as(c_int, 1) << @intCast(@as(c_int, 4))) | (@as(c_int, 1) << @intCast(@as(c_int, 5))));
    arg = sub_arg_in_braces(ses, arg, arg2, GET_ALL, (@as(c_int, 1) << @intCast(@as(c_int, 4))) | (@as(c_int, 1) << @intCast(@as(c_int, 5))));
    if (@as(c_int, arg1.*) == @as(c_int, 0)) {
        show_error(ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#SYNTAX: #SCRIPT <VARIABLE> <SHELL COMMAND>"))))))), .{});
    } else if (@as(c_int, arg2.*) == @as(c_int, 0)) {
        script = popen(arg1, "r");
        if (script != null) {
            while (fgets(@ptrCast(@alignCast(&buf)), BUFFER_SIZE - @as(c_int, 1), script) != null) {
                cptr = strchr(@ptrCast(@alignCast(&buf)), '\n');
                if (cptr != null) {
                    cptr.* = 0;
                }
                ses = script_driver(ses, LIST_COMMAND, null, @ptrCast(@alignCast(&buf)));
            }
            _ = pclose(script);
        } else {
            syserr_printf(ses, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("do_script: popen 1"))))))), .{});
        }
    } else {
        index_1 = 1;
        script = popen(arg2, "r");
        if (script != null) {
            _ = set_nest_node_ses(ses, arg1, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast(""))))))), .{});
            while (fgets(@ptrCast(@alignCast(&buf)), BUFFER_SIZE - @as(c_int, 1), script) != null) {
                cptr = strchr(@ptrCast(@alignCast(&buf)), '\n');
                if (cptr != null) {
                    cptr.* = 0;
                }
                _ = substitute(ses, @ptrCast(@alignCast(&buf)), @ptrCast(@alignCast(&tmp)), @as(c_int, 1) << @intCast(@as(c_int, 1)));
                _ = add_nest_node_ses(ses, arg1, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("{%d}{%s}"))))))), .{blk: {
                    const ref = &index_1;
                    const tmp_1 = ref.*;
                    ref.* += 1;
                    break :blk tmp_1;
                }, @as([*c]u8, @ptrCast(@alignCast(&tmp)))});
            }
            _ = pclose(script);
        } else {
            syserr_printf(ses, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("do_script: popen 2"))))))), .{});
        }
    }
    refresh_session_terminal(ses);
    return ses;
}
pub export fn do_system(arg_ses: [*c]struct_session, arg_arg: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8, arg_arg3: [*c]u8, arg_arg4: [*c]u8) [*c]struct_session {
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
    _ = sub_arg_in_braces(ses, arg, arg1, GET_ALL, (@as(c_int, 1) << @intCast(@as(c_int, 4))) | (@as(c_int, 1) << @intCast(@as(c_int, 5))));
    if (@as(c_int, arg1.*) == @as(c_int, 0)) {
        show_error(ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#SYNTAX: #SYSTEM <COMMAND>"))))))), .{});
        return ses;
    }
    show_message(ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#SYSTEM: EXECUTING {%s}."))))))), .{arg1});
    if (!((tintin_c.gtd.*.ses.*.flags & (@as(c_int, 1) << @intCast(@as(c_int, 7)))) != 0) and (tintin_c.gtd.*.screen.*.rows != tintin_c.gtd.*.ses.*.split.*.bot_row)) {
        save_pos(tintin_c.gtd.*.ses);
        goto_pos(tintin_c.gtd.*.ses, tintin_c.gtd.*.ses.*.split.*.bot_row, 1);
    }
    if (system(arg1) == -@as(c_int, 1)) {
        syserr_printf(ses, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("do_system: system:"))))))), .{});
    }
    if (!((tintin_c.gtd.*.ses.*.flags & (@as(c_int, 1) << @intCast(@as(c_int, 7)))) != 0) and (tintin_c.gtd.*.screen.*.rows != tintin_c.gtd.*.ses.*.split.*.bot_row)) {
        restore_pos(tintin_c.gtd.*.ses);
    }
    refresh_session_terminal(tintin_c.gtd.*.ses);
    return ses;
}
pub export fn do_textin(arg_ses: [*c]struct_session, arg_arg: [*c]u8, arg_arg1: [*c]u8, arg_arg2: [*c]u8, arg_arg3: [*c]u8, arg_arg4: [*c]u8) [*c]struct_session {
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
    var fp: ?*FILE = undefined;
    _ = &fp;
    var buffer: [50000]u8 = undefined;
    _ = &buffer;
    var cptr: [*c]u8 = undefined;
    _ = &cptr;
    arg = sub_arg_in_braces(ses, arg, arg1, GET_ONE, (@as(c_int, 1) << @intCast(@as(c_int, 4))) | (@as(c_int, 1) << @intCast(@as(c_int, 5))));
    arg = get_arg_in_braces(ses, arg, arg2, GET_ALL);
    if (@as(?*anyopaque, @ptrCast(@alignCast(blk: {
        const tmp = fopen(arg1, "r");
        fp = tmp;
        break :blk tmp;
    }))) == @as(?*anyopaque, null)) {
        show_error(ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#ERROR: #TEXTIN {%s}: FILE NOT FOUND."))))))), .{arg1});
        return ses;
    }
    while (fgets(@ptrCast(@alignCast(&buffer)), BUFFER_SIZE - @as(c_int, 1), fp) != null) {
        cptr = strchr(@ptrCast(@alignCast(&buffer)), '\n');
        if (cptr != null) {
            cptr.* = 0;
        }
        write_mud(ses, @ptrCast(@alignCast(&buffer)), @as(c_int, 1) << @intCast(@as(c_int, 8)));
        if (@as(c_int, arg2.*) != 0) {
            _ = usleep(@bitCast(@as(c_int, @truncate(@as(c_longlong, @intFromFloat(get_number(ses, arg2) * @as(c_longdouble, @floatFromInt(@as(c_int, 1000000)))))))));
        }
    }
    _ = fclose(fp);
    show_message(ses, LIST_COMMAND, @as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@as([*c]u8, @ptrCast(@constCast("#TEXTIN {%s}: FILE READ."))))))), .{arg1});
    return ses;
}

pub const __VERSION__ = "Aro aro-zig";
pub const __Aro__ = "";
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __STDC_NO_THREADS__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __ARO_EMULATE_NO__ = @as(c_int, 0);
pub const __ARO_EMULATE_CLANG__ = @as(c_int, 1);
pub const __ARO_EMULATE_GCC__ = @as(c_int, 2);
pub const __ARO_EMULATE_MSVC__ = @as(c_int, 3);
pub const __ARO_EMULATE__ = __ARO_EMULATE_CLANG__;
pub inline fn __building_module(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub const __APPLE__ = @as(c_int, 1);
pub const __APPLE_CC__ = @as(c_int, 6000);
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = __helpers.promoteIntLiteral(c_int, 260500, .decimal);
pub const __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__ = __helpers.promoteIntLiteral(c_int, 260500, .decimal);
pub const __aarch64__ = @as(c_int, 1);
pub const __AARCH64EL__ = @as(c_int, 1);
pub const __AARCH64_SIMD__ = @as(c_int, 1);
pub const __ARM64_ARCH_8__ = @as(c_int, 1);
pub const __ARM_NEON__ = @as(c_int, 1);
pub const __arm64 = @as(c_int, 1);
pub const __arm64__ = @as(c_int, 1);
pub const __AARCH64_CMODEL_SMALL__ = @as(c_int, 1);
pub const __ARM_FP = @as(c_int, 0xE);
pub const __ARM_NEON = @as(c_int, 1);
pub const __ARM_NEON_FP = @as(c_int, 0xE);
pub const __ARM_FEATURE_BF16 = @as(c_int, 1);
pub const __ARM_FEATURE_BF16_VECTOR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_BF16_FORMAT_ALTERNATIVE = @as(c_int, 1);
pub const __ARM_FEATURE_BF16_SCALAR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_SHA3 = @as(c_int, 1);
pub const __ARM_FEATURE_SHA512 = @as(c_int, 1);
pub const __ARM_FEATURE_UNALIGNED = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_VECTOR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_RCPC = @as(c_int, 1);
pub const __ARM_FEATURE_CRC32 = @as(c_int, 1);
pub const __ARM_FEATURE_AES = @as(c_int, 1);
pub const __ARM_FEATURE_SHA2 = @as(c_int, 1);
pub const __ARM_FEATURE_PAUTH = @as(c_int, 1);
pub const __ARM_FEATURE_BTI = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_SCALAR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_DOTPROD = @as(c_int, 1);
pub const __ARM_FEATURE_MATMUL_INT8 = @as(c_int, 1);
pub const __ARM_FEATURE_ATOMICS = @as(c_int, 1);
pub const __ARM_FEATURE_SVE_MATMUL_INT8 = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_FML = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __MACH__ = @as(c_int, 1);
pub const __nonnull = @compileError("unable to translate C expr: unexpected token '_Nonnull'"); // <builtin>:64:9
pub const __null_unspecified = @compileError("unable to translate C expr: unexpected token '_Null_unspecified'"); // <builtin>:65:9
pub const __nullable = @compileError("unable to translate C expr: unexpected token '_Nullable'"); // <builtin>:66:9
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
pub const __WINT_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
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
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 8);
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
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // <builtin>:131:9
pub const __INTMAX_C = __helpers.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // <builtin>:134:9
pub const __UINTMAX_C = __helpers.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __SIZE_TYPE__ = c_ulong;
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_int;
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
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // <builtin>:160:9
pub const __INT64_C = __helpers.LL_SUFFIX;
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
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // <builtin>:185:9
pub const __UINT32_C = __helpers.U_SUFFIX;
pub const __UINT32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // <builtin>:194:9
pub const __UINT64_C = __helpers.ULL_SUFFIX;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
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
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const INT_LEAST64_FMTd__ = "lld";
pub const INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const UINT_LEAST64_FMTo__ = "llo";
pub const UINT_LEAST64_FMTu__ = "llu";
pub const UINT_LEAST64_FMTx__ = "llx";
pub const UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const INT_FAST64_FMTd__ = "lld";
pub const INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const UINT_FAST64_FMTo__ = "llo";
pub const UINT_FAST64_FMTu__ = "llu";
pub const UINT_FAST64_FMTx__ = "llx";
pub const UINT_FAST64_FMTX__ = "llX";
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
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 4.9406564584124654e-324);
pub const __LDBL_HAS_DENORM__ = "";
pub const __LDBL_DIG__ = @as(c_int, 15);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 2.2204460492503131e-16);
pub const __LDBL_HAS_INFINITY__ = "";
pub const __LDBL_HAS_QUIET_NAN__ = "";
pub const __LDBL_MANT_DIG__ = @as(c_int, 53);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __LDBL_MAX_EXP__ = @as(c_int, 1024);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.7976931348623157e+308);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __LDBL_MIN__ = @as(c_longdouble, 2.2250738585072014e-308);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __pic__ = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const _STDIO_H_ = "";
pub const __STDIO_H_ = "";
pub const _LIBC_BOUNDS_H_ = "";
pub const _CDEFS_H_ = "";
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __has_cpp_attribute(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub inline fn __P(protos: anytype) @TypeOf(protos) {
    _ = &protos;
    return protos;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:116:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token ''"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:117:9
pub const __const = @compileError("unable to translate C expr: unexpected token 'const'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:119:9
pub const __signed = c_int;
pub const __volatile = @compileError("unable to translate C expr: unexpected token 'volatile'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:121:9
pub const __dead2 = @compileError("unable to translate macro: undefined identifier `__noreturn__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:165:9
pub const __pure2 = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:166:9
pub const __stateful_pure = @compileError("unable to translate macro: undefined identifier `__pure__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:167:9
pub const __unused = @compileError("unable to translate macro: undefined identifier `__unused__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:172:9
pub const __used = @compileError("unable to translate macro: undefined identifier `__used__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:177:9
pub const __cold = @compileError("unable to translate macro: undefined identifier `__cold__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:183:9
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `returns_nonnull`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:190:9
pub const __exported = @compileError("unable to translate macro: undefined identifier `__visibility__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:200:9
pub const __exported_push = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:201:9
pub const __exported_push_hidden = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:203:9
pub const __exported_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:204:9
pub const __exported_hidden = @compileError("unable to translate macro: undefined identifier `__private_extern__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:205:9
pub const __deprecated = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:223:9
pub const __deprecated_msg = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:229:10
pub inline fn __deprecated_enum_msg(_msg: anytype) void {
    _ = &_msg;
    return;
}
pub inline fn __kpi_deprecated(_msg: anytype) void {
    _ = &_msg;
    return;
}
pub const __unavailable = @compileError("unable to translate macro: undefined identifier `__unavailable__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:244:9
pub const __kpi_unavailable = "";
pub const __kpi_deprecated_arm64_macos_unavailable = "";
pub const __dead = "";
pub const __pure = "";
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:266:9
pub const __disable_tail_calls = "";
pub const __not_tail_called = "";
pub const __result_use_check = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:322:9
pub const __swift_unavailable = @compileError("unable to translate macro: undefined identifier `__availability__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:332:9
pub inline fn __swift_unavailable_from_async(_msg: anytype) void {
    _ = &_msg;
    return;
}
pub const __swift_nonisolated = "";
pub const __swift_nonisolated_unsafe = "";
pub const __abortlike = __dead2 ++ __cold;
pub const __header_inline = @compileError("unable to translate C expr: unexpected token 'extern'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:383:10
pub const __header_always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:392:10
pub const __unreachable_ok_push = "";
pub const __unreachable_ok_pop = "";
pub const __printflike = @compileError("unable to translate macro: undefined identifier `__format__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:429:9
pub const __printf0like = @compileError("unable to translate macro: undefined identifier `__format__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:431:9
pub const __scanflike = @compileError("unable to translate macro: undefined identifier `__format__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:433:9
pub const __osloglike = @compileError("unable to translate macro: undefined identifier `__format__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:435:9
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token 'static'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:438:9
pub const __COPYRIGHT = @compileError("unable to translate macro: undefined identifier `copyright`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:441:9
pub const __RCSID = @compileError("unable to translate macro: undefined identifier `rcsid`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:445:9
pub const __SCCSID = @compileError("unable to translate macro: undefined identifier `sccsid`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:449:9
pub const __PROJECT_VERSION = @compileError("unable to translate macro: undefined identifier `project_version`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:453:9
pub inline fn __FBSDID(s: anytype) void {
    _ = &s;
    return;
}
pub const __DECONST = @compileError("unable to translate C expr: unexpected token 'const'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:462:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token 'volatile'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:466:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token 'const'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:470:9
pub const __alloc_align = @compileError("unable to translate macro: undefined identifier `alloc_align`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:479:9
pub const __alloc_size = @compileError("unable to translate macro: undefined identifier `alloc_size`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:500:9
pub const __has_safe_buffers = @as(c_int, 0);
pub const __unsafe_buffer_usage = "";
pub const __unsafe_buffer_usage_begin = "";
pub const __unsafe_buffer_usage_end = "";
pub const __DARWIN_ONLY_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const __DARWIN_ONLY_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_UNIX03 = @as(c_int, 1);
pub const __DARWIN_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_NON_CANCELABLE = @as(c_int, 0);
pub const __DARWIN_SUF_UNIX03 = "";
pub const __DARWIN_SUF_64_BIT_INO_T = "";
pub const __DARWIN_SUF_1050 = "";
pub const __DARWIN_SUF_NON_CANCELABLE = "";
pub const __DARWIN_SUF_EXTSN = "$DARWIN_EXTSN";
pub const __DARWIN_ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:790:9
pub const __DARWIN_ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:791:9
pub const __DARWIN_ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:792:9
pub const __DARWIN_NOCANCEL = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:793:9
pub const __DARWIN_INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:794:9
pub const __DARWIN_1050 = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:796:9
pub const __DARWIN_1050ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:797:9
pub const __DARWIN_1050ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:798:9
pub const __DARWIN_1050ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:799:9
pub const __DARWIN_1050INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:800:9
pub const __DARWIN_EXTSN = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:802:9
pub const __DARWIN_EXTSN_C = @compileError("unable to translate C expr: unexpected token '__asm'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:803:9
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_5(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_6(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_7(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_5(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_6(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_7(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_8(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_5(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_6(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_7(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_8(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_5(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_6(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_7(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_5(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_6(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_7(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_5(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_6(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_19_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_26_0(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_26_1(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_26_2(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_26_3(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_26_4(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_26_5(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_8(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_9(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_16(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_16_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_26_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_26_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_26_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_26_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_26_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_26_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __DARWIN_ALIAS_STARTING = @compileError("unable to translate macro: undefined identifier `__DARWIN_ALIAS_STARTING_MAC_`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:813:9
pub const ___POSIX_C_DEPRECATED_STARTING_198808L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199009L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199209L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199309L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199506L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200112L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200809L = "";
pub const __POSIX_C_DEPRECATED = @compileError("unable to translate macro: undefined identifier `___POSIX_C_DEPRECATED_STARTING_`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:876:9
pub const __DARWIN_C_ANSI = @as(c_long, 0o10000);
pub const __DARWIN_C_FULL = @as(c_long, 900000);
pub const __DARWIN_C_LEVEL = __DARWIN_C_FULL;
pub const __STDC_WANT_LIB_EXT1__ = @as(c_int, 1);
pub const __DARWIN_NO_LONG_LONG = @as(c_int, 0);
pub const _DARWIN_FEATURE_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_VERS_1050 = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const _DARWIN_FEATURE_UNIX_CONFORMANCE = @as(c_int, 3);
pub const __CAST_AWAY_QUALIFIER = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:974:9
pub const __XNU_PRIVATE_EXTERN = @compileError("unable to translate macro: undefined identifier `visibility`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:988:9
pub const __has_ptrcheck = @as(c_int, 0);
pub const __single = "";
pub const __unsafe_indexable = "";
pub inline fn __counted_by(N: anytype) void {
    _ = &N;
    return;
}
pub inline fn __counted_by_or_null(N: anytype) void {
    _ = &N;
    return;
}
pub inline fn __sized_by(N: anytype) void {
    _ = &N;
    return;
}
pub inline fn __sized_by_or_null(N: anytype) void {
    _ = &N;
    return;
}
pub inline fn __ended_by(E: anytype) void {
    _ = &E;
    return;
}
pub inline fn __terminated_by(T: anytype) void {
    _ = &T;
    return;
}
pub const __null_terminated = "";
pub inline fn __ptrcheck_abi_assume_single() void {
    return;
}
pub inline fn __ptrcheck_abi_assume_unsafe_indexable() void {
    return;
}
pub inline fn __unsafe_forge_bidi_indexable(T: anytype, P: anytype, S: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &S;
    return T(P);
}
pub const __unsafe_forge_single = __helpers.CAST_OR_CALL;
pub inline fn __unsafe_forge_terminated_by(T: anytype, P: anytype, E: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &E;
    return T(P);
}
pub const __unsafe_forge_null_terminated = __helpers.CAST_OR_CALL;
pub inline fn __terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_terminated_by_from_indexable(T: anytype, P: anytype) @TypeOf(P) {
    _ = &T;
    _ = &P;
    return P;
}
pub inline fn __unsafe_null_terminated_from_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub const __array_decay_dicards_count_in_parameters = "";
pub const __ptrcheck_unavailable = "";
pub inline fn __ptrcheck_unavailable_r(REPLACEMENT: anytype) void {
    _ = &REPLACEMENT;
    return;
}
pub const __ASSUME_PTR_ABI_SINGLE_BEGIN = __ptrcheck_abi_assume_single();
pub const __ASSUME_PTR_ABI_SINGLE_END = __ptrcheck_abi_assume_unsafe_indexable();
pub const __header_indexable = "";
pub const __header_bidi_indexable = "";
pub const __compiler_barrier = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1073:9
pub const __enum_open = "";
pub const __enum_closed = "";
pub const __enum_options = "";
pub const __enum_decl = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1106:9
pub const __enum_closed_decl = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1108:9
pub const __options_decl = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1110:9
pub const __options_closed_decl = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1112:9
pub const __kernel_ptr_semantics = "";
pub const __kernel_data_semantics = "";
pub const __kernel_dual_semantics = "";
pub const __xnu_data_size = "";
pub const __xnu_returns_data_pointer = "";
pub inline fn _LIBC_COUNT(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn _LIBC_COUNT_OR_NULL(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn _LIBC_SIZE(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn _LIBC_SIZE_OR_NULL(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn _LIBC_ENDED_BY(x: anytype) void {
    _ = &x;
    return;
}
pub const _LIBC_SINGLE = "";
pub const _LIBC_UNSAFE_INDEXABLE = "";
pub const _LIBC_CSTR = "";
pub const _LIBC_NULL_TERMINATED = "";
pub inline fn _LIBC_FLEX_COUNT(FIELD: anytype, INTCOUNT: anytype) @TypeOf(INTCOUNT) {
    _ = &FIELD;
    _ = &INTCOUNT;
    return INTCOUNT;
}
pub inline fn _LIBC_SINGLE_BY_DEFAULT() void {
    return;
}
pub inline fn _LIBC_PTRCHECK_REPLACED(R: anytype) void {
    _ = &R;
    return;
}
pub inline fn _LIBC_FORGE_PTR(P: anytype, S: anytype) @TypeOf(P) {
    _ = &P;
    _ = &S;
    return P;
}
pub const __AVAILABILITY__ = "";
pub const __API_TO_BE_DEPRECATED = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_MACOS = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_MACOSAPPLICATIONEXTENSION = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_IOS = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_IOSAPPLICATIONEXTENSION = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_MACCATALYST = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_MACCATALYSTAPPLICATIONEXTENSION = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_WATCHOS = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_WATCHOSAPPLICATIONEXTENSION = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_TVOS = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_TVOSAPPLICATIONEXTENSION = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_DRIVERKIT = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_VISIONOS = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_VISIONOSAPPLICATIONEXTENSION = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_KERNELKIT = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __AVAILABILITY_VERSIONS__ = "";
pub const __MAC_10_0 = @as(c_int, 1000);
pub const __MAC_10_1 = @as(c_int, 1010);
pub const __MAC_10_2 = @as(c_int, 1020);
pub const __MAC_10_3 = @as(c_int, 1030);
pub const __MAC_10_4 = @as(c_int, 1040);
pub const __MAC_10_5 = @as(c_int, 1050);
pub const __MAC_10_6 = @as(c_int, 1060);
pub const __MAC_10_7 = @as(c_int, 1070);
pub const __MAC_10_8 = @as(c_int, 1080);
pub const __MAC_10_9 = @as(c_int, 1090);
pub const __MAC_10_10 = __helpers.promoteIntLiteral(c_int, 101000, .decimal);
pub const __MAC_10_10_2 = __helpers.promoteIntLiteral(c_int, 101002, .decimal);
pub const __MAC_10_10_3 = __helpers.promoteIntLiteral(c_int, 101003, .decimal);
pub const __MAC_10_11 = __helpers.promoteIntLiteral(c_int, 101100, .decimal);
pub const __MAC_10_11_2 = __helpers.promoteIntLiteral(c_int, 101102, .decimal);
pub const __MAC_10_11_3 = __helpers.promoteIntLiteral(c_int, 101103, .decimal);
pub const __MAC_10_11_4 = __helpers.promoteIntLiteral(c_int, 101104, .decimal);
pub const __MAC_10_12 = __helpers.promoteIntLiteral(c_int, 101200, .decimal);
pub const __MAC_10_12_1 = __helpers.promoteIntLiteral(c_int, 101201, .decimal);
pub const __MAC_10_12_2 = __helpers.promoteIntLiteral(c_int, 101202, .decimal);
pub const __MAC_10_12_4 = __helpers.promoteIntLiteral(c_int, 101204, .decimal);
pub const __MAC_10_13 = __helpers.promoteIntLiteral(c_int, 101300, .decimal);
pub const __MAC_10_13_1 = __helpers.promoteIntLiteral(c_int, 101301, .decimal);
pub const __MAC_10_13_2 = __helpers.promoteIntLiteral(c_int, 101302, .decimal);
pub const __MAC_10_13_4 = __helpers.promoteIntLiteral(c_int, 101304, .decimal);
pub const __MAC_10_14 = __helpers.promoteIntLiteral(c_int, 101400, .decimal);
pub const __MAC_10_14_1 = __helpers.promoteIntLiteral(c_int, 101401, .decimal);
pub const __MAC_10_14_4 = __helpers.promoteIntLiteral(c_int, 101404, .decimal);
pub const __MAC_10_14_5 = __helpers.promoteIntLiteral(c_int, 101405, .decimal);
pub const __MAC_10_14_6 = __helpers.promoteIntLiteral(c_int, 101406, .decimal);
pub const __MAC_10_15 = __helpers.promoteIntLiteral(c_int, 101500, .decimal);
pub const __MAC_10_15_1 = __helpers.promoteIntLiteral(c_int, 101501, .decimal);
pub const __MAC_10_15_4 = __helpers.promoteIntLiteral(c_int, 101504, .decimal);
pub const __MAC_10_16 = __helpers.promoteIntLiteral(c_int, 101600, .decimal);
pub const __MAC_11_0 = __helpers.promoteIntLiteral(c_int, 110000, .decimal);
pub const __MAC_11_1 = __helpers.promoteIntLiteral(c_int, 110100, .decimal);
pub const __MAC_11_3 = __helpers.promoteIntLiteral(c_int, 110300, .decimal);
pub const __MAC_11_4 = __helpers.promoteIntLiteral(c_int, 110400, .decimal);
pub const __MAC_11_5 = __helpers.promoteIntLiteral(c_int, 110500, .decimal);
pub const __MAC_11_6 = __helpers.promoteIntLiteral(c_int, 110600, .decimal);
pub const __MAC_12_0 = __helpers.promoteIntLiteral(c_int, 120000, .decimal);
pub const __MAC_12_1 = __helpers.promoteIntLiteral(c_int, 120100, .decimal);
pub const __MAC_12_2 = __helpers.promoteIntLiteral(c_int, 120200, .decimal);
pub const __MAC_12_3 = __helpers.promoteIntLiteral(c_int, 120300, .decimal);
pub const __MAC_12_4 = __helpers.promoteIntLiteral(c_int, 120400, .decimal);
pub const __MAC_12_5 = __helpers.promoteIntLiteral(c_int, 120500, .decimal);
pub const __MAC_12_6 = __helpers.promoteIntLiteral(c_int, 120600, .decimal);
pub const __MAC_12_7 = __helpers.promoteIntLiteral(c_int, 120700, .decimal);
pub const __MAC_13_0 = __helpers.promoteIntLiteral(c_int, 130000, .decimal);
pub const __MAC_13_1 = __helpers.promoteIntLiteral(c_int, 130100, .decimal);
pub const __MAC_13_2 = __helpers.promoteIntLiteral(c_int, 130200, .decimal);
pub const __MAC_13_3 = __helpers.promoteIntLiteral(c_int, 130300, .decimal);
pub const __MAC_13_4 = __helpers.promoteIntLiteral(c_int, 130400, .decimal);
pub const __MAC_13_5 = __helpers.promoteIntLiteral(c_int, 130500, .decimal);
pub const __MAC_13_6 = __helpers.promoteIntLiteral(c_int, 130600, .decimal);
pub const __MAC_13_7 = __helpers.promoteIntLiteral(c_int, 130700, .decimal);
pub const __MAC_14_0 = __helpers.promoteIntLiteral(c_int, 140000, .decimal);
pub const __MAC_14_1 = __helpers.promoteIntLiteral(c_int, 140100, .decimal);
pub const __MAC_14_2 = __helpers.promoteIntLiteral(c_int, 140200, .decimal);
pub const __MAC_14_3 = __helpers.promoteIntLiteral(c_int, 140300, .decimal);
pub const __MAC_14_4 = __helpers.promoteIntLiteral(c_int, 140400, .decimal);
pub const __MAC_14_5 = __helpers.promoteIntLiteral(c_int, 140500, .decimal);
pub const __MAC_14_6 = __helpers.promoteIntLiteral(c_int, 140600, .decimal);
pub const __MAC_14_7 = __helpers.promoteIntLiteral(c_int, 140700, .decimal);
pub const __MAC_15_0 = __helpers.promoteIntLiteral(c_int, 150000, .decimal);
pub const __MAC_15_1 = __helpers.promoteIntLiteral(c_int, 150100, .decimal);
pub const __MAC_15_2 = __helpers.promoteIntLiteral(c_int, 150200, .decimal);
pub const __MAC_15_3 = __helpers.promoteIntLiteral(c_int, 150300, .decimal);
pub const __MAC_15_4 = __helpers.promoteIntLiteral(c_int, 150400, .decimal);
pub const __MAC_15_5 = __helpers.promoteIntLiteral(c_int, 150500, .decimal);
pub const __MAC_15_6 = __helpers.promoteIntLiteral(c_int, 150600, .decimal);
pub const __MAC_16_0 = __helpers.promoteIntLiteral(c_int, 160000, .decimal);
pub const __MAC_26_0 = __helpers.promoteIntLiteral(c_int, 260000, .decimal);
pub const __MAC_26_1 = __helpers.promoteIntLiteral(c_int, 260100, .decimal);
pub const __MAC_26_2 = __helpers.promoteIntLiteral(c_int, 260200, .decimal);
pub const __MAC_26_3 = __helpers.promoteIntLiteral(c_int, 260300, .decimal);
pub const __MAC_26_4 = __helpers.promoteIntLiteral(c_int, 260400, .decimal);
pub const __MAC_26_5 = __helpers.promoteIntLiteral(c_int, 260500, .decimal);
pub const __IPHONE_2_0 = @as(c_int, 20000);
pub const __IPHONE_2_1 = @as(c_int, 20100);
pub const __IPHONE_2_2 = @as(c_int, 20200);
pub const __IPHONE_3_0 = @as(c_int, 30000);
pub const __IPHONE_3_1 = @as(c_int, 30100);
pub const __IPHONE_3_2 = @as(c_int, 30200);
pub const __IPHONE_4_0 = __helpers.promoteIntLiteral(c_int, 40000, .decimal);
pub const __IPHONE_4_1 = __helpers.promoteIntLiteral(c_int, 40100, .decimal);
pub const __IPHONE_4_2 = __helpers.promoteIntLiteral(c_int, 40200, .decimal);
pub const __IPHONE_4_3 = __helpers.promoteIntLiteral(c_int, 40300, .decimal);
pub const __IPHONE_5_0 = __helpers.promoteIntLiteral(c_int, 50000, .decimal);
pub const __IPHONE_5_1 = __helpers.promoteIntLiteral(c_int, 50100, .decimal);
pub const __IPHONE_6_0 = __helpers.promoteIntLiteral(c_int, 60000, .decimal);
pub const __IPHONE_6_1 = __helpers.promoteIntLiteral(c_int, 60100, .decimal);
pub const __IPHONE_7_0 = __helpers.promoteIntLiteral(c_int, 70000, .decimal);
pub const __IPHONE_7_1 = __helpers.promoteIntLiteral(c_int, 70100, .decimal);
pub const __IPHONE_8_0 = __helpers.promoteIntLiteral(c_int, 80000, .decimal);
pub const __IPHONE_8_1 = __helpers.promoteIntLiteral(c_int, 80100, .decimal);
pub const __IPHONE_8_2 = __helpers.promoteIntLiteral(c_int, 80200, .decimal);
pub const __IPHONE_8_3 = __helpers.promoteIntLiteral(c_int, 80300, .decimal);
pub const __IPHONE_8_4 = __helpers.promoteIntLiteral(c_int, 80400, .decimal);
pub const __IPHONE_9_0 = __helpers.promoteIntLiteral(c_int, 90000, .decimal);
pub const __IPHONE_9_1 = __helpers.promoteIntLiteral(c_int, 90100, .decimal);
pub const __IPHONE_9_2 = __helpers.promoteIntLiteral(c_int, 90200, .decimal);
pub const __IPHONE_9_3 = __helpers.promoteIntLiteral(c_int, 90300, .decimal);
pub const __IPHONE_10_0 = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __IPHONE_10_1 = __helpers.promoteIntLiteral(c_int, 100100, .decimal);
pub const __IPHONE_10_2 = __helpers.promoteIntLiteral(c_int, 100200, .decimal);
pub const __IPHONE_10_3 = __helpers.promoteIntLiteral(c_int, 100300, .decimal);
pub const __IPHONE_11_0 = __helpers.promoteIntLiteral(c_int, 110000, .decimal);
pub const __IPHONE_11_1 = __helpers.promoteIntLiteral(c_int, 110100, .decimal);
pub const __IPHONE_11_2 = __helpers.promoteIntLiteral(c_int, 110200, .decimal);
pub const __IPHONE_11_3 = __helpers.promoteIntLiteral(c_int, 110300, .decimal);
pub const __IPHONE_11_4 = __helpers.promoteIntLiteral(c_int, 110400, .decimal);
pub const __IPHONE_12_0 = __helpers.promoteIntLiteral(c_int, 120000, .decimal);
pub const __IPHONE_12_1 = __helpers.promoteIntLiteral(c_int, 120100, .decimal);
pub const __IPHONE_12_2 = __helpers.promoteIntLiteral(c_int, 120200, .decimal);
pub const __IPHONE_12_3 = __helpers.promoteIntLiteral(c_int, 120300, .decimal);
pub const __IPHONE_12_4 = __helpers.promoteIntLiteral(c_int, 120400, .decimal);
pub const __IPHONE_13_0 = __helpers.promoteIntLiteral(c_int, 130000, .decimal);
pub const __IPHONE_13_1 = __helpers.promoteIntLiteral(c_int, 130100, .decimal);
pub const __IPHONE_13_2 = __helpers.promoteIntLiteral(c_int, 130200, .decimal);
pub const __IPHONE_13_3 = __helpers.promoteIntLiteral(c_int, 130300, .decimal);
pub const __IPHONE_13_4 = __helpers.promoteIntLiteral(c_int, 130400, .decimal);
pub const __IPHONE_13_5 = __helpers.promoteIntLiteral(c_int, 130500, .decimal);
pub const __IPHONE_13_6 = __helpers.promoteIntLiteral(c_int, 130600, .decimal);
pub const __IPHONE_13_7 = __helpers.promoteIntLiteral(c_int, 130700, .decimal);
pub const __IPHONE_14_0 = __helpers.promoteIntLiteral(c_int, 140000, .decimal);
pub const __IPHONE_14_1 = __helpers.promoteIntLiteral(c_int, 140100, .decimal);
pub const __IPHONE_14_2 = __helpers.promoteIntLiteral(c_int, 140200, .decimal);
pub const __IPHONE_14_3 = __helpers.promoteIntLiteral(c_int, 140300, .decimal);
pub const __IPHONE_14_5 = __helpers.promoteIntLiteral(c_int, 140500, .decimal);
pub const __IPHONE_14_6 = __helpers.promoteIntLiteral(c_int, 140600, .decimal);
pub const __IPHONE_14_7 = __helpers.promoteIntLiteral(c_int, 140700, .decimal);
pub const __IPHONE_14_8 = __helpers.promoteIntLiteral(c_int, 140800, .decimal);
pub const __IPHONE_15_0 = __helpers.promoteIntLiteral(c_int, 150000, .decimal);
pub const __IPHONE_15_1 = __helpers.promoteIntLiteral(c_int, 150100, .decimal);
pub const __IPHONE_15_2 = __helpers.promoteIntLiteral(c_int, 150200, .decimal);
pub const __IPHONE_15_3 = __helpers.promoteIntLiteral(c_int, 150300, .decimal);
pub const __IPHONE_15_4 = __helpers.promoteIntLiteral(c_int, 150400, .decimal);
pub const __IPHONE_15_5 = __helpers.promoteIntLiteral(c_int, 150500, .decimal);
pub const __IPHONE_15_6 = __helpers.promoteIntLiteral(c_int, 150600, .decimal);
pub const __IPHONE_15_7 = __helpers.promoteIntLiteral(c_int, 150700, .decimal);
pub const __IPHONE_15_8 = __helpers.promoteIntLiteral(c_int, 150800, .decimal);
pub const __IPHONE_16_0 = __helpers.promoteIntLiteral(c_int, 160000, .decimal);
pub const __IPHONE_16_1 = __helpers.promoteIntLiteral(c_int, 160100, .decimal);
pub const __IPHONE_16_2 = __helpers.promoteIntLiteral(c_int, 160200, .decimal);
pub const __IPHONE_16_3 = __helpers.promoteIntLiteral(c_int, 160300, .decimal);
pub const __IPHONE_16_4 = __helpers.promoteIntLiteral(c_int, 160400, .decimal);
pub const __IPHONE_16_5 = __helpers.promoteIntLiteral(c_int, 160500, .decimal);
pub const __IPHONE_16_6 = __helpers.promoteIntLiteral(c_int, 160600, .decimal);
pub const __IPHONE_16_7 = __helpers.promoteIntLiteral(c_int, 160700, .decimal);
pub const __IPHONE_17_0 = __helpers.promoteIntLiteral(c_int, 170000, .decimal);
pub const __IPHONE_17_1 = __helpers.promoteIntLiteral(c_int, 170100, .decimal);
pub const __IPHONE_17_2 = __helpers.promoteIntLiteral(c_int, 170200, .decimal);
pub const __IPHONE_17_3 = __helpers.promoteIntLiteral(c_int, 170300, .decimal);
pub const __IPHONE_17_4 = __helpers.promoteIntLiteral(c_int, 170400, .decimal);
pub const __IPHONE_17_5 = __helpers.promoteIntLiteral(c_int, 170500, .decimal);
pub const __IPHONE_17_6 = __helpers.promoteIntLiteral(c_int, 170600, .decimal);
pub const __IPHONE_17_7 = __helpers.promoteIntLiteral(c_int, 170700, .decimal);
pub const __IPHONE_18_0 = __helpers.promoteIntLiteral(c_int, 180000, .decimal);
pub const __IPHONE_18_1 = __helpers.promoteIntLiteral(c_int, 180100, .decimal);
pub const __IPHONE_18_2 = __helpers.promoteIntLiteral(c_int, 180200, .decimal);
pub const __IPHONE_18_3 = __helpers.promoteIntLiteral(c_int, 180300, .decimal);
pub const __IPHONE_18_4 = __helpers.promoteIntLiteral(c_int, 180400, .decimal);
pub const __IPHONE_18_5 = __helpers.promoteIntLiteral(c_int, 180500, .decimal);
pub const __IPHONE_18_6 = __helpers.promoteIntLiteral(c_int, 180600, .decimal);
pub const __IPHONE_19_0 = __helpers.promoteIntLiteral(c_int, 190000, .decimal);
pub const __IPHONE_26_0 = __helpers.promoteIntLiteral(c_int, 260000, .decimal);
pub const __IPHONE_26_1 = __helpers.promoteIntLiteral(c_int, 260100, .decimal);
pub const __IPHONE_26_2 = __helpers.promoteIntLiteral(c_int, 260200, .decimal);
pub const __IPHONE_26_3 = __helpers.promoteIntLiteral(c_int, 260300, .decimal);
pub const __IPHONE_26_4 = __helpers.promoteIntLiteral(c_int, 260400, .decimal);
pub const __IPHONE_26_5 = __helpers.promoteIntLiteral(c_int, 260500, .decimal);
pub const __WATCHOS_1_0 = @as(c_int, 10000);
pub const __WATCHOS_2_0 = @as(c_int, 20000);
pub const __WATCHOS_2_1 = @as(c_int, 20100);
pub const __WATCHOS_2_2 = @as(c_int, 20200);
pub const __WATCHOS_3_0 = @as(c_int, 30000);
pub const __WATCHOS_3_1 = @as(c_int, 30100);
pub const __WATCHOS_3_1_1 = @as(c_int, 30101);
pub const __WATCHOS_3_2 = @as(c_int, 30200);
pub const __WATCHOS_4_0 = __helpers.promoteIntLiteral(c_int, 40000, .decimal);
pub const __WATCHOS_4_1 = __helpers.promoteIntLiteral(c_int, 40100, .decimal);
pub const __WATCHOS_4_2 = __helpers.promoteIntLiteral(c_int, 40200, .decimal);
pub const __WATCHOS_4_3 = __helpers.promoteIntLiteral(c_int, 40300, .decimal);
pub const __WATCHOS_5_0 = __helpers.promoteIntLiteral(c_int, 50000, .decimal);
pub const __WATCHOS_5_1 = __helpers.promoteIntLiteral(c_int, 50100, .decimal);
pub const __WATCHOS_5_2 = __helpers.promoteIntLiteral(c_int, 50200, .decimal);
pub const __WATCHOS_5_3 = __helpers.promoteIntLiteral(c_int, 50300, .decimal);
pub const __WATCHOS_6_0 = __helpers.promoteIntLiteral(c_int, 60000, .decimal);
pub const __WATCHOS_6_1 = __helpers.promoteIntLiteral(c_int, 60100, .decimal);
pub const __WATCHOS_6_2 = __helpers.promoteIntLiteral(c_int, 60200, .decimal);
pub const __WATCHOS_7_0 = __helpers.promoteIntLiteral(c_int, 70000, .decimal);
pub const __WATCHOS_7_1 = __helpers.promoteIntLiteral(c_int, 70100, .decimal);
pub const __WATCHOS_7_2 = __helpers.promoteIntLiteral(c_int, 70200, .decimal);
pub const __WATCHOS_7_3 = __helpers.promoteIntLiteral(c_int, 70300, .decimal);
pub const __WATCHOS_7_4 = __helpers.promoteIntLiteral(c_int, 70400, .decimal);
pub const __WATCHOS_7_5 = __helpers.promoteIntLiteral(c_int, 70500, .decimal);
pub const __WATCHOS_7_6 = __helpers.promoteIntLiteral(c_int, 70600, .decimal);
pub const __WATCHOS_8_0 = __helpers.promoteIntLiteral(c_int, 80000, .decimal);
pub const __WATCHOS_8_1 = __helpers.promoteIntLiteral(c_int, 80100, .decimal);
pub const __WATCHOS_8_3 = __helpers.promoteIntLiteral(c_int, 80300, .decimal);
pub const __WATCHOS_8_4 = __helpers.promoteIntLiteral(c_int, 80400, .decimal);
pub const __WATCHOS_8_5 = __helpers.promoteIntLiteral(c_int, 80500, .decimal);
pub const __WATCHOS_8_6 = __helpers.promoteIntLiteral(c_int, 80600, .decimal);
pub const __WATCHOS_8_7 = __helpers.promoteIntLiteral(c_int, 80700, .decimal);
pub const __WATCHOS_8_8 = __helpers.promoteIntLiteral(c_int, 80800, .decimal);
pub const __WATCHOS_9_0 = __helpers.promoteIntLiteral(c_int, 90000, .decimal);
pub const __WATCHOS_9_1 = __helpers.promoteIntLiteral(c_int, 90100, .decimal);
pub const __WATCHOS_9_2 = __helpers.promoteIntLiteral(c_int, 90200, .decimal);
pub const __WATCHOS_9_3 = __helpers.promoteIntLiteral(c_int, 90300, .decimal);
pub const __WATCHOS_9_4 = __helpers.promoteIntLiteral(c_int, 90400, .decimal);
pub const __WATCHOS_9_5 = __helpers.promoteIntLiteral(c_int, 90500, .decimal);
pub const __WATCHOS_9_6 = __helpers.promoteIntLiteral(c_int, 90600, .decimal);
pub const __WATCHOS_10_0 = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __WATCHOS_10_1 = __helpers.promoteIntLiteral(c_int, 100100, .decimal);
pub const __WATCHOS_10_2 = __helpers.promoteIntLiteral(c_int, 100200, .decimal);
pub const __WATCHOS_10_3 = __helpers.promoteIntLiteral(c_int, 100300, .decimal);
pub const __WATCHOS_10_4 = __helpers.promoteIntLiteral(c_int, 100400, .decimal);
pub const __WATCHOS_10_5 = __helpers.promoteIntLiteral(c_int, 100500, .decimal);
pub const __WATCHOS_10_6 = __helpers.promoteIntLiteral(c_int, 100600, .decimal);
pub const __WATCHOS_10_7 = __helpers.promoteIntLiteral(c_int, 100700, .decimal);
pub const __WATCHOS_11_0 = __helpers.promoteIntLiteral(c_int, 110000, .decimal);
pub const __WATCHOS_11_1 = __helpers.promoteIntLiteral(c_int, 110100, .decimal);
pub const __WATCHOS_11_2 = __helpers.promoteIntLiteral(c_int, 110200, .decimal);
pub const __WATCHOS_11_3 = __helpers.promoteIntLiteral(c_int, 110300, .decimal);
pub const __WATCHOS_11_4 = __helpers.promoteIntLiteral(c_int, 110400, .decimal);
pub const __WATCHOS_11_5 = __helpers.promoteIntLiteral(c_int, 110500, .decimal);
pub const __WATCHOS_11_6 = __helpers.promoteIntLiteral(c_int, 110600, .decimal);
pub const __WATCHOS_12_0 = __helpers.promoteIntLiteral(c_int, 120000, .decimal);
pub const __WATCHOS_26_0 = __helpers.promoteIntLiteral(c_int, 260000, .decimal);
pub const __WATCHOS_26_1 = __helpers.promoteIntLiteral(c_int, 260100, .decimal);
pub const __WATCHOS_26_2 = __helpers.promoteIntLiteral(c_int, 260200, .decimal);
pub const __WATCHOS_26_3 = __helpers.promoteIntLiteral(c_int, 260300, .decimal);
pub const __WATCHOS_26_4 = __helpers.promoteIntLiteral(c_int, 260400, .decimal);
pub const __WATCHOS_26_5 = __helpers.promoteIntLiteral(c_int, 260500, .decimal);
pub const __TVOS_9_0 = __helpers.promoteIntLiteral(c_int, 90000, .decimal);
pub const __TVOS_9_1 = __helpers.promoteIntLiteral(c_int, 90100, .decimal);
pub const __TVOS_9_2 = __helpers.promoteIntLiteral(c_int, 90200, .decimal);
pub const __TVOS_10_0 = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __TVOS_10_0_1 = __helpers.promoteIntLiteral(c_int, 100001, .decimal);
pub const __TVOS_10_1 = __helpers.promoteIntLiteral(c_int, 100100, .decimal);
pub const __TVOS_10_2 = __helpers.promoteIntLiteral(c_int, 100200, .decimal);
pub const __TVOS_11_0 = __helpers.promoteIntLiteral(c_int, 110000, .decimal);
pub const __TVOS_11_1 = __helpers.promoteIntLiteral(c_int, 110100, .decimal);
pub const __TVOS_11_2 = __helpers.promoteIntLiteral(c_int, 110200, .decimal);
pub const __TVOS_11_3 = __helpers.promoteIntLiteral(c_int, 110300, .decimal);
pub const __TVOS_11_4 = __helpers.promoteIntLiteral(c_int, 110400, .decimal);
pub const __TVOS_12_0 = __helpers.promoteIntLiteral(c_int, 120000, .decimal);
pub const __TVOS_12_1 = __helpers.promoteIntLiteral(c_int, 120100, .decimal);
pub const __TVOS_12_2 = __helpers.promoteIntLiteral(c_int, 120200, .decimal);
pub const __TVOS_12_3 = __helpers.promoteIntLiteral(c_int, 120300, .decimal);
pub const __TVOS_12_4 = __helpers.promoteIntLiteral(c_int, 120400, .decimal);
pub const __TVOS_13_0 = __helpers.promoteIntLiteral(c_int, 130000, .decimal);
pub const __TVOS_13_2 = __helpers.promoteIntLiteral(c_int, 130200, .decimal);
pub const __TVOS_13_3 = __helpers.promoteIntLiteral(c_int, 130300, .decimal);
pub const __TVOS_13_4 = __helpers.promoteIntLiteral(c_int, 130400, .decimal);
pub const __TVOS_14_0 = __helpers.promoteIntLiteral(c_int, 140000, .decimal);
pub const __TVOS_14_1 = __helpers.promoteIntLiteral(c_int, 140100, .decimal);
pub const __TVOS_14_2 = __helpers.promoteIntLiteral(c_int, 140200, .decimal);
pub const __TVOS_14_3 = __helpers.promoteIntLiteral(c_int, 140300, .decimal);
pub const __TVOS_14_5 = __helpers.promoteIntLiteral(c_int, 140500, .decimal);
pub const __TVOS_14_6 = __helpers.promoteIntLiteral(c_int, 140600, .decimal);
pub const __TVOS_14_7 = __helpers.promoteIntLiteral(c_int, 140700, .decimal);
pub const __TVOS_15_0 = __helpers.promoteIntLiteral(c_int, 150000, .decimal);
pub const __TVOS_15_1 = __helpers.promoteIntLiteral(c_int, 150100, .decimal);
pub const __TVOS_15_2 = __helpers.promoteIntLiteral(c_int, 150200, .decimal);
pub const __TVOS_15_3 = __helpers.promoteIntLiteral(c_int, 150300, .decimal);
pub const __TVOS_15_4 = __helpers.promoteIntLiteral(c_int, 150400, .decimal);
pub const __TVOS_15_5 = __helpers.promoteIntLiteral(c_int, 150500, .decimal);
pub const __TVOS_15_6 = __helpers.promoteIntLiteral(c_int, 150600, .decimal);
pub const __TVOS_16_0 = __helpers.promoteIntLiteral(c_int, 160000, .decimal);
pub const __TVOS_16_1 = __helpers.promoteIntLiteral(c_int, 160100, .decimal);
pub const __TVOS_16_2 = __helpers.promoteIntLiteral(c_int, 160200, .decimal);
pub const __TVOS_16_3 = __helpers.promoteIntLiteral(c_int, 160300, .decimal);
pub const __TVOS_16_4 = __helpers.promoteIntLiteral(c_int, 160400, .decimal);
pub const __TVOS_16_5 = __helpers.promoteIntLiteral(c_int, 160500, .decimal);
pub const __TVOS_16_6 = __helpers.promoteIntLiteral(c_int, 160600, .decimal);
pub const __TVOS_17_0 = __helpers.promoteIntLiteral(c_int, 170000, .decimal);
pub const __TVOS_17_1 = __helpers.promoteIntLiteral(c_int, 170100, .decimal);
pub const __TVOS_17_2 = __helpers.promoteIntLiteral(c_int, 170200, .decimal);
pub const __TVOS_17_3 = __helpers.promoteIntLiteral(c_int, 170300, .decimal);
pub const __TVOS_17_4 = __helpers.promoteIntLiteral(c_int, 170400, .decimal);
pub const __TVOS_17_5 = __helpers.promoteIntLiteral(c_int, 170500, .decimal);
pub const __TVOS_17_6 = __helpers.promoteIntLiteral(c_int, 170600, .decimal);
pub const __TVOS_18_0 = __helpers.promoteIntLiteral(c_int, 180000, .decimal);
pub const __TVOS_18_1 = __helpers.promoteIntLiteral(c_int, 180100, .decimal);
pub const __TVOS_18_2 = __helpers.promoteIntLiteral(c_int, 180200, .decimal);
pub const __TVOS_18_3 = __helpers.promoteIntLiteral(c_int, 180300, .decimal);
pub const __TVOS_18_4 = __helpers.promoteIntLiteral(c_int, 180400, .decimal);
pub const __TVOS_18_5 = __helpers.promoteIntLiteral(c_int, 180500, .decimal);
pub const __TVOS_18_6 = __helpers.promoteIntLiteral(c_int, 180600, .decimal);
pub const __TVOS_19_0 = __helpers.promoteIntLiteral(c_int, 190000, .decimal);
pub const __TVOS_26_0 = __helpers.promoteIntLiteral(c_int, 260000, .decimal);
pub const __TVOS_26_1 = __helpers.promoteIntLiteral(c_int, 260100, .decimal);
pub const __TVOS_26_2 = __helpers.promoteIntLiteral(c_int, 260200, .decimal);
pub const __TVOS_26_3 = __helpers.promoteIntLiteral(c_int, 260300, .decimal);
pub const __TVOS_26_4 = __helpers.promoteIntLiteral(c_int, 260400, .decimal);
pub const __TVOS_26_5 = __helpers.promoteIntLiteral(c_int, 260500, .decimal);
pub const __BRIDGEOS_2_0 = @as(c_int, 20000);
pub const __BRIDGEOS_3_0 = @as(c_int, 30000);
pub const __BRIDGEOS_3_1 = @as(c_int, 30100);
pub const __BRIDGEOS_3_4 = @as(c_int, 30400);
pub const __BRIDGEOS_4_0 = __helpers.promoteIntLiteral(c_int, 40000, .decimal);
pub const __BRIDGEOS_4_1 = __helpers.promoteIntLiteral(c_int, 40100, .decimal);
pub const __BRIDGEOS_5_0 = __helpers.promoteIntLiteral(c_int, 50000, .decimal);
pub const __BRIDGEOS_5_1 = __helpers.promoteIntLiteral(c_int, 50100, .decimal);
pub const __BRIDGEOS_5_3 = __helpers.promoteIntLiteral(c_int, 50300, .decimal);
pub const __BRIDGEOS_6_0 = __helpers.promoteIntLiteral(c_int, 60000, .decimal);
pub const __BRIDGEOS_6_2 = __helpers.promoteIntLiteral(c_int, 60200, .decimal);
pub const __BRIDGEOS_6_4 = __helpers.promoteIntLiteral(c_int, 60400, .decimal);
pub const __BRIDGEOS_6_5 = __helpers.promoteIntLiteral(c_int, 60500, .decimal);
pub const __BRIDGEOS_6_6 = __helpers.promoteIntLiteral(c_int, 60600, .decimal);
pub const __BRIDGEOS_7_0 = __helpers.promoteIntLiteral(c_int, 70000, .decimal);
pub const __BRIDGEOS_7_1 = __helpers.promoteIntLiteral(c_int, 70100, .decimal);
pub const __BRIDGEOS_7_2 = __helpers.promoteIntLiteral(c_int, 70200, .decimal);
pub const __BRIDGEOS_7_3 = __helpers.promoteIntLiteral(c_int, 70300, .decimal);
pub const __BRIDGEOS_7_4 = __helpers.promoteIntLiteral(c_int, 70400, .decimal);
pub const __BRIDGEOS_7_6 = __helpers.promoteIntLiteral(c_int, 70600, .decimal);
pub const __BRIDGEOS_8_0 = __helpers.promoteIntLiteral(c_int, 80000, .decimal);
pub const __BRIDGEOS_8_1 = __helpers.promoteIntLiteral(c_int, 80100, .decimal);
pub const __BRIDGEOS_8_2 = __helpers.promoteIntLiteral(c_int, 80200, .decimal);
pub const __BRIDGEOS_8_3 = __helpers.promoteIntLiteral(c_int, 80300, .decimal);
pub const __BRIDGEOS_8_4 = __helpers.promoteIntLiteral(c_int, 80400, .decimal);
pub const __BRIDGEOS_8_5 = __helpers.promoteIntLiteral(c_int, 80500, .decimal);
pub const __BRIDGEOS_8_6 = __helpers.promoteIntLiteral(c_int, 80600, .decimal);
pub const __BRIDGEOS_9_0 = __helpers.promoteIntLiteral(c_int, 90000, .decimal);
pub const __BRIDGEOS_9_1 = __helpers.promoteIntLiteral(c_int, 90100, .decimal);
pub const __BRIDGEOS_9_2 = __helpers.promoteIntLiteral(c_int, 90200, .decimal);
pub const __BRIDGEOS_9_3 = __helpers.promoteIntLiteral(c_int, 90300, .decimal);
pub const __BRIDGEOS_9_4 = __helpers.promoteIntLiteral(c_int, 90400, .decimal);
pub const __BRIDGEOS_9_5 = __helpers.promoteIntLiteral(c_int, 90500, .decimal);
pub const __BRIDGEOS_9_6 = __helpers.promoteIntLiteral(c_int, 90600, .decimal);
pub const __BRIDGEOS_10_0 = __helpers.promoteIntLiteral(c_int, 100000, .decimal);
pub const __BRIDGEOS_10_1 = __helpers.promoteIntLiteral(c_int, 100100, .decimal);
pub const __BRIDGEOS_10_2 = __helpers.promoteIntLiteral(c_int, 100200, .decimal);
pub const __BRIDGEOS_10_3 = __helpers.promoteIntLiteral(c_int, 100300, .decimal);
pub const __BRIDGEOS_10_4 = __helpers.promoteIntLiteral(c_int, 100400, .decimal);
pub const __BRIDGEOS_26_5 = __helpers.promoteIntLiteral(c_int, 260500, .decimal);
pub const __DRIVERKIT_19_0 = __helpers.promoteIntLiteral(c_int, 190000, .decimal);
pub const __DRIVERKIT_20_0 = __helpers.promoteIntLiteral(c_int, 200000, .decimal);
pub const __DRIVERKIT_21_0 = __helpers.promoteIntLiteral(c_int, 210000, .decimal);
pub const __DRIVERKIT_22_0 = __helpers.promoteIntLiteral(c_int, 220000, .decimal);
pub const __DRIVERKIT_22_4 = __helpers.promoteIntLiteral(c_int, 220400, .decimal);
pub const __DRIVERKIT_22_5 = __helpers.promoteIntLiteral(c_int, 220500, .decimal);
pub const __DRIVERKIT_22_6 = __helpers.promoteIntLiteral(c_int, 220600, .decimal);
pub const __DRIVERKIT_23_0 = __helpers.promoteIntLiteral(c_int, 230000, .decimal);
pub const __DRIVERKIT_23_1 = __helpers.promoteIntLiteral(c_int, 230100, .decimal);
pub const __DRIVERKIT_23_2 = __helpers.promoteIntLiteral(c_int, 230200, .decimal);
pub const __DRIVERKIT_23_3 = __helpers.promoteIntLiteral(c_int, 230300, .decimal);
pub const __DRIVERKIT_23_4 = __helpers.promoteIntLiteral(c_int, 230400, .decimal);
pub const __DRIVERKIT_23_5 = __helpers.promoteIntLiteral(c_int, 230500, .decimal);
pub const __DRIVERKIT_23_6 = __helpers.promoteIntLiteral(c_int, 230600, .decimal);
pub const __DRIVERKIT_24_0 = __helpers.promoteIntLiteral(c_int, 240000, .decimal);
pub const __DRIVERKIT_24_1 = __helpers.promoteIntLiteral(c_int, 240100, .decimal);
pub const __DRIVERKIT_24_2 = __helpers.promoteIntLiteral(c_int, 240200, .decimal);
pub const __DRIVERKIT_24_3 = __helpers.promoteIntLiteral(c_int, 240300, .decimal);
pub const __DRIVERKIT_24_4 = __helpers.promoteIntLiteral(c_int, 240400, .decimal);
pub const __DRIVERKIT_24_5 = __helpers.promoteIntLiteral(c_int, 240500, .decimal);
pub const __DRIVERKIT_24_6 = __helpers.promoteIntLiteral(c_int, 240600, .decimal);
pub const __DRIVERKIT_25_0 = __helpers.promoteIntLiteral(c_int, 250000, .decimal);
pub const __DRIVERKIT_25_1 = __helpers.promoteIntLiteral(c_int, 250100, .decimal);
pub const __DRIVERKIT_25_2 = __helpers.promoteIntLiteral(c_int, 250200, .decimal);
pub const __DRIVERKIT_25_3 = __helpers.promoteIntLiteral(c_int, 250300, .decimal);
pub const __DRIVERKIT_25_4 = __helpers.promoteIntLiteral(c_int, 250400, .decimal);
pub const __DRIVERKIT_25_5 = __helpers.promoteIntLiteral(c_int, 250500, .decimal);
pub const __VISIONOS_1_0 = @as(c_int, 10000);
pub const __VISIONOS_1_1 = @as(c_int, 10100);
pub const __VISIONOS_1_2 = @as(c_int, 10200);
pub const __VISIONOS_1_3 = @as(c_int, 10300);
pub const __VISIONOS_2_0 = @as(c_int, 20000);
pub const __VISIONOS_2_1 = @as(c_int, 20100);
pub const __VISIONOS_2_2 = @as(c_int, 20200);
pub const __VISIONOS_2_3 = @as(c_int, 20300);
pub const __VISIONOS_2_4 = @as(c_int, 20400);
pub const __VISIONOS_2_5 = @as(c_int, 20500);
pub const __VISIONOS_2_6 = @as(c_int, 20600);
pub const __VISIONOS_3_0 = @as(c_int, 30000);
pub const __VISIONOS_26_0 = __helpers.promoteIntLiteral(c_int, 260000, .decimal);
pub const __VISIONOS_26_1 = __helpers.promoteIntLiteral(c_int, 260100, .decimal);
pub const __VISIONOS_26_2 = __helpers.promoteIntLiteral(c_int, 260200, .decimal);
pub const __VISIONOS_26_3 = __helpers.promoteIntLiteral(c_int, 260300, .decimal);
pub const __VISIONOS_26_4 = __helpers.promoteIntLiteral(c_int, 260400, .decimal);
pub const __VISIONOS_26_5 = __helpers.promoteIntLiteral(c_int, 260500, .decimal);
pub const MAC_OS_X_VERSION_10_0 = __MAC_10_0;
pub const MAC_OS_X_VERSION_10_1 = __MAC_10_1;
pub const MAC_OS_X_VERSION_10_2 = __MAC_10_2;
pub const MAC_OS_X_VERSION_10_3 = __MAC_10_3;
pub const MAC_OS_X_VERSION_10_4 = __MAC_10_4;
pub const MAC_OS_X_VERSION_10_5 = __MAC_10_5;
pub const MAC_OS_X_VERSION_10_6 = __MAC_10_6;
pub const MAC_OS_X_VERSION_10_7 = __MAC_10_7;
pub const MAC_OS_X_VERSION_10_8 = __MAC_10_8;
pub const MAC_OS_X_VERSION_10_9 = __MAC_10_9;
pub const MAC_OS_X_VERSION_10_10 = __MAC_10_10;
pub const MAC_OS_X_VERSION_10_10_2 = __MAC_10_10_2;
pub const MAC_OS_X_VERSION_10_10_3 = __MAC_10_10_3;
pub const MAC_OS_X_VERSION_10_11 = __MAC_10_11;
pub const MAC_OS_X_VERSION_10_11_2 = __MAC_10_11_2;
pub const MAC_OS_X_VERSION_10_11_3 = __MAC_10_11_3;
pub const MAC_OS_X_VERSION_10_11_4 = __MAC_10_11_4;
pub const MAC_OS_X_VERSION_10_12 = __MAC_10_12;
pub const MAC_OS_X_VERSION_10_12_1 = __MAC_10_12_1;
pub const MAC_OS_X_VERSION_10_12_2 = __MAC_10_12_2;
pub const MAC_OS_X_VERSION_10_12_4 = __MAC_10_12_4;
pub const MAC_OS_X_VERSION_10_13 = __MAC_10_13;
pub const MAC_OS_X_VERSION_10_13_1 = __MAC_10_13_1;
pub const MAC_OS_X_VERSION_10_13_2 = __MAC_10_13_2;
pub const MAC_OS_X_VERSION_10_13_4 = __MAC_10_13_4;
pub const MAC_OS_X_VERSION_10_14 = __MAC_10_14;
pub const MAC_OS_X_VERSION_10_14_1 = __MAC_10_14_1;
pub const MAC_OS_X_VERSION_10_14_4 = __MAC_10_14_4;
pub const MAC_OS_X_VERSION_10_14_5 = __MAC_10_14_5;
pub const MAC_OS_X_VERSION_10_14_6 = __MAC_10_14_6;
pub const MAC_OS_X_VERSION_10_15 = __MAC_10_15;
pub const MAC_OS_X_VERSION_10_15_1 = __MAC_10_15_1;
pub const MAC_OS_X_VERSION_10_15_4 = __MAC_10_15_4;
pub const MAC_OS_X_VERSION_10_16 = __MAC_10_16;
pub const MAC_OS_VERSION_11_0 = __MAC_11_0;
pub const MAC_OS_VERSION_11_1 = __MAC_11_1;
pub const MAC_OS_VERSION_11_3 = __MAC_11_3;
pub const MAC_OS_VERSION_11_4 = __MAC_11_4;
pub const MAC_OS_VERSION_11_5 = __MAC_11_5;
pub const MAC_OS_VERSION_11_6 = __MAC_11_6;
pub const MAC_OS_VERSION_12_0 = __MAC_12_0;
pub const MAC_OS_VERSION_12_1 = __MAC_12_1;
pub const MAC_OS_VERSION_12_2 = __MAC_12_2;
pub const MAC_OS_VERSION_12_3 = __MAC_12_3;
pub const MAC_OS_VERSION_12_4 = __MAC_12_4;
pub const MAC_OS_VERSION_12_5 = __MAC_12_5;
pub const MAC_OS_VERSION_12_6 = __MAC_12_6;
pub const MAC_OS_VERSION_12_7 = __MAC_12_7;
pub const MAC_OS_VERSION_13_0 = __MAC_13_0;
pub const MAC_OS_VERSION_13_1 = __MAC_13_1;
pub const MAC_OS_VERSION_13_2 = __MAC_13_2;
pub const MAC_OS_VERSION_13_3 = __MAC_13_3;
pub const MAC_OS_VERSION_13_4 = __MAC_13_4;
pub const MAC_OS_VERSION_13_5 = __MAC_13_5;
pub const MAC_OS_VERSION_13_6 = __MAC_13_6;
pub const MAC_OS_VERSION_13_7 = __MAC_13_7;
pub const MAC_OS_VERSION_14_0 = __MAC_14_0;
pub const MAC_OS_VERSION_14_1 = __MAC_14_1;
pub const MAC_OS_VERSION_14_2 = __MAC_14_2;
pub const MAC_OS_VERSION_14_3 = __MAC_14_3;
pub const MAC_OS_VERSION_14_4 = __MAC_14_4;
pub const MAC_OS_VERSION_14_5 = __MAC_14_5;
pub const MAC_OS_VERSION_14_6 = __MAC_14_6;
pub const MAC_OS_VERSION_14_7 = __MAC_14_7;
pub const MAC_OS_VERSION_15_0 = __MAC_15_0;
pub const MAC_OS_VERSION_15_1 = __MAC_15_1;
pub const MAC_OS_VERSION_15_2 = __MAC_15_2;
pub const MAC_OS_VERSION_15_3 = __MAC_15_3;
pub const MAC_OS_VERSION_15_4 = __MAC_15_4;
pub const MAC_OS_VERSION_15_5 = __MAC_15_5;
pub const MAC_OS_VERSION_15_6 = __MAC_15_6;
pub const MAC_OS_VERSION_16_0 = __MAC_16_0;
pub const MAC_OS_VERSION_26_0 = __MAC_26_0;
pub const MAC_OS_VERSION_26_1 = __MAC_26_1;
pub const MAC_OS_VERSION_26_2 = __MAC_26_2;
pub const MAC_OS_VERSION_26_3 = __MAC_26_3;
pub const MAC_OS_VERSION_26_4 = __MAC_26_4;
pub const MAC_OS_VERSION_26_5 = __MAC_26_5;
pub const __AVAILABILITY_VERSIONS_VERSION_HASH = __helpers.promoteIntLiteral(c_uint, 93585900, .decimal);
pub const __AVAILABILITY_VERSIONS_VERSION_STRING = "Local";
pub const __AVAILABILITY_FILE = "AvailabilityVersions.h";
pub const __AVAILABILITY_INTERNAL__ = "";
pub const __MAC_OS_X_VERSION_MIN_REQUIRED = __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__;
pub const __MAC_OS_X_VERSION_MAX_ALLOWED = __MAC_26_5;
pub const __IPHONE_OS_VERSION_MIN_REQUIRED = __IPHONE_17_1;
pub const __IPHONE_OS_VERSION_MAX_ALLOWED = __IPHONE_26_5;
pub const __WATCH_OS_VERSION_MIN_REQUIRED = __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__;
pub const __WATCH_OS_VERSION_MAX_ALLOWED = __WATCHOS_26_5;
pub const __TV_OS_VERSION_MIN_REQUIRED = __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__;
pub const __TV_OS_VERSION_MAX_ALLOWED = __TVOS_26_5;
pub const __DRIVERKIT_VERSION_MIN_REQUIRED = __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__;
pub const __DRIVERKIT_VERSION_MAX_ALLOWED = __DRIVERKIT_25_5;
pub const __VISION_OS_VERSION_MIN_REQUIRED = __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__;
pub const __VISION_OS_VERSION_MAX_ALLOWED = __VISIONOS_26_5;
pub const __AVAILABILITY_INTERNAL_DEPRECATED = @compileError("unable to translate macro: undefined identifier `deprecated`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:142:9
pub const __AVAILABILITY_INTERNAL_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `deprecated`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:145:17
pub const __AVAILABILITY_INTERNAL_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `unavailable`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:154:9
pub const __AVAILABILITY_INTERNAL_WEAK_IMPORT = @compileError("unable to translate macro: undefined identifier `weak_import`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:155:9
pub const __AVAILABILITY_INTERNAL_REGULAR = "";
pub const __API_AVAILABLE_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:160:12
pub const __API_DEPRECATED_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:161:12
pub const __API_OBSOLETED_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:162:12
pub const __API_UNAVAILABLE_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:163:12
pub const __API_AVAILABLE_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:164:12
pub const __API_DEPRECATED_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:165:12
pub const __API_OBSOLETED_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:166:12
pub const __API_UNAVAILABLE_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:167:12
pub const __API_AVAILABLE_PLATFORM_macOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `macOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:168:12
pub const __API_DEPRECATED_PLATFORM_macOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `macOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:169:12
pub const __API_OBSOLETED_PLATFORM_macOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `macOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:170:12
pub const __API_UNAVAILABLE_PLATFORM_macOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `macOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:171:12
pub const __API_AVAILABLE_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:172:12
pub const __API_DEPRECATED_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:173:12
pub const __API_OBSOLETED_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:174:12
pub const __API_UNAVAILABLE_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:175:12
pub const __API_AVAILABLE_PLATFORM_iOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `iOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:176:12
pub const __API_DEPRECATED_PLATFORM_iOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `iOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:177:12
pub const __API_OBSOLETED_PLATFORM_iOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `iOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:178:12
pub const __API_UNAVAILABLE_PLATFORM_iOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `iOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:179:12
pub const __API_AVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:180:12
pub const __API_DEPRECATED_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:181:12
pub const __API_OBSOLETED_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:182:12
pub const __API_UNAVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:183:12
pub const __API_AVAILABLE_PLATFORM_macCatalystApplicationExtension = @compileError("unable to translate macro: undefined identifier `macCatalystApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:184:12
pub const __API_DEPRECATED_PLATFORM_macCatalystApplicationExtension = @compileError("unable to translate macro: undefined identifier `macCatalystApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:185:12
pub const __API_OBSOLETED_PLATFORM_macCatalystApplicationExtension = @compileError("unable to translate macro: undefined identifier `macCatalystApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:186:12
pub const __API_UNAVAILABLE_PLATFORM_macCatalystApplicationExtension = @compileError("unable to translate macro: undefined identifier `macCatalystApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:187:12
pub const __API_AVAILABLE_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:188:12
pub const __API_DEPRECATED_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:189:12
pub const __API_OBSOLETED_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:190:12
pub const __API_UNAVAILABLE_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:191:12
pub const __API_AVAILABLE_PLATFORM_watchOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `watchOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:192:12
pub const __API_DEPRECATED_PLATFORM_watchOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `watchOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:193:12
pub const __API_OBSOLETED_PLATFORM_watchOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `watchOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:194:12
pub const __API_UNAVAILABLE_PLATFORM_watchOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `watchOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:195:12
pub const __API_AVAILABLE_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:196:12
pub const __API_DEPRECATED_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:197:12
pub const __API_OBSOLETED_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:198:12
pub const __API_UNAVAILABLE_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:199:12
pub const __API_AVAILABLE_PLATFORM_tvOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `tvOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:200:12
pub const __API_DEPRECATED_PLATFORM_tvOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `tvOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:201:12
pub const __API_OBSOLETED_PLATFORM_tvOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `tvOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:202:12
pub const __API_UNAVAILABLE_PLATFORM_tvOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `tvOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:203:12
pub const __API_AVAILABLE_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:205:12
pub const __API_DEPRECATED_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:206:12
pub const __API_OBSOLETED_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:207:12
pub const __API_UNAVAILABLE_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:208:12
pub const __API_AVAILABLE_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:209:12
pub const __API_DEPRECATED_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:210:12
pub const __API_OBSOLETED_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:211:12
pub const __API_UNAVAILABLE_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:212:12
pub const __API_AVAILABLE_PLATFORM_visionOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `visionOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:213:12
pub const __API_DEPRECATED_PLATFORM_visionOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `visionOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:214:12
pub const __API_OBSOLETED_PLATFORM_visionOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `visionOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:215:12
pub const __API_UNAVAILABLE_PLATFORM_visionOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `visionOSApplicationExtension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:216:12
pub const __API_UNAVAILABLE_PLATFORM_kernelkit = @compileError("unable to translate macro: undefined identifier `kernelkit`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:218:12
pub const __API_APPLY_TO = @compileError("unable to translate macro: undefined identifier `any`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:228:11
pub inline fn __API_RANGE_STRINGIFY(x: anytype) @TypeOf(__API_RANGE_STRINGIFY2(x)) {
    _ = &x;
    return __API_RANGE_STRINGIFY2(x);
}
pub const __API_RANGE_STRINGIFY2 = @compileError("unable to translate C expr: unexpected token ''"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:230:11
pub const __API_A = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:244:13
pub inline fn __API_AVAILABLE0(arg0: anytype) @TypeOf(__API_A(arg0)) {
    _ = &arg0;
    return __API_A(arg0);
}
pub inline fn __API_AVAILABLE1(arg0: anytype, arg1: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_A(arg0) ++ __API_A(arg1);
}
pub inline fn __API_AVAILABLE2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2);
}
pub inline fn __API_AVAILABLE3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3);
}
pub inline fn __API_AVAILABLE4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4);
}
pub inline fn __API_AVAILABLE5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5);
}
pub inline fn __API_AVAILABLE6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6);
}
pub inline fn __API_AVAILABLE7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7);
}
pub inline fn __API_AVAILABLE8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8);
}
pub inline fn __API_AVAILABLE9(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9);
}
pub inline fn __API_AVAILABLE10(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10);
}
pub inline fn __API_AVAILABLE11(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11);
}
pub inline fn __API_AVAILABLE12(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12);
}
pub inline fn __API_AVAILABLE13(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12) ++ __API_A(arg13)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12) ++ __API_A(arg13);
}
pub inline fn __API_AVAILABLE14(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12) ++ __API_A(arg13) ++ __API_A(arg14)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12) ++ __API_A(arg13) ++ __API_A(arg14);
}
pub inline fn __API_AVAILABLE15(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12) ++ __API_A(arg13) ++ __API_A(arg14) ++ __API_A(arg15)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12) ++ __API_A(arg13) ++ __API_A(arg14) ++ __API_A(arg15);
}
pub inline fn __API_AVAILABLE_GET_MACRO_93585900(_0: anytype, _1: anytype, _2: anytype, _3: anytype, _4: anytype, _5: anytype, _6: anytype, _7: anytype, _8: anytype, _9: anytype, _10: anytype, _11: anytype, _12: anytype, _13: anytype, _14: anytype, _15: anytype, NAME: anytype) @TypeOf(NAME) {
    _ = &_0;
    _ = &_1;
    _ = &_2;
    _ = &_3;
    _ = &_4;
    _ = &_5;
    _ = &_6;
    _ = &_7;
    _ = &_8;
    _ = &_9;
    _ = &_10;
    _ = &_11;
    _ = &_12;
    _ = &_13;
    _ = &_14;
    _ = &_15;
    _ = &NAME;
    return NAME;
}
pub const __API_A_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:264:13
pub inline fn __API_AVAILABLE_BEGIN0(arg0: anytype) @TypeOf(__API_A_BEGIN(arg0)) {
    _ = &arg0;
    return __API_A_BEGIN(arg0);
}
pub inline fn __API_AVAILABLE_BEGIN1(arg0: anytype, arg1: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1);
}
pub inline fn __API_AVAILABLE_BEGIN2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2);
}
pub inline fn __API_AVAILABLE_BEGIN3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3);
}
pub inline fn __API_AVAILABLE_BEGIN4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4);
}
pub inline fn __API_AVAILABLE_BEGIN5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5);
}
pub inline fn __API_AVAILABLE_BEGIN6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6);
}
pub inline fn __API_AVAILABLE_BEGIN7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7);
}
pub inline fn __API_AVAILABLE_BEGIN8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8);
}
pub inline fn __API_AVAILABLE_BEGIN9(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9);
}
pub inline fn __API_AVAILABLE_BEGIN10(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10);
}
pub inline fn __API_AVAILABLE_BEGIN11(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11);
}
pub inline fn __API_AVAILABLE_BEGIN12(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12);
}
pub inline fn __API_AVAILABLE_BEGIN13(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12) ++ __API_A_BEGIN(arg13)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12) ++ __API_A_BEGIN(arg13);
}
pub inline fn __API_AVAILABLE_BEGIN14(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12) ++ __API_A_BEGIN(arg13) ++ __API_A_BEGIN(arg14)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12) ++ __API_A_BEGIN(arg13) ++ __API_A_BEGIN(arg14);
}
pub inline fn __API_AVAILABLE_BEGIN15(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12) ++ __API_A_BEGIN(arg13) ++ __API_A_BEGIN(arg14) ++ __API_A_BEGIN(arg15)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12) ++ __API_A_BEGIN(arg13) ++ __API_A_BEGIN(arg14) ++ __API_A_BEGIN(arg15);
}
pub inline fn __API_AVAILABLE_BEGIN_GET_MACRO_93585900(_0: anytype, _1: anytype, _2: anytype, _3: anytype, _4: anytype, _5: anytype, _6: anytype, _7: anytype, _8: anytype, _9: anytype, _10: anytype, _11: anytype, _12: anytype, _13: anytype, _14: anytype, _15: anytype, NAME: anytype) @TypeOf(NAME) {
    _ = &_0;
    _ = &_1;
    _ = &_2;
    _ = &_3;
    _ = &_4;
    _ = &_5;
    _ = &_6;
    _ = &_7;
    _ = &_8;
    _ = &_9;
    _ = &_10;
    _ = &_11;
    _ = &_12;
    _ = &_13;
    _ = &_14;
    _ = &_15;
    _ = &NAME;
    return NAME;
}
pub const __API_D = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:286:13
pub inline fn __API_DEPRECATED_MSG0(msg: anytype, arg0: anytype) @TypeOf(__API_D(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_D(msg, arg0);
}
pub inline fn __API_DEPRECATED_MSG1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1);
}
pub inline fn __API_DEPRECATED_MSG2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2);
}
pub inline fn __API_DEPRECATED_MSG3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3);
}
pub inline fn __API_DEPRECATED_MSG4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4);
}
pub inline fn __API_DEPRECATED_MSG5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5);
}
pub inline fn __API_DEPRECATED_MSG6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6);
}
pub inline fn __API_DEPRECATED_MSG7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7);
}
pub inline fn __API_DEPRECATED_MSG8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8);
}
pub inline fn __API_DEPRECATED_MSG9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9);
}
pub inline fn __API_DEPRECATED_MSG10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10);
}
pub inline fn __API_DEPRECATED_MSG11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11);
}
pub inline fn __API_DEPRECATED_MSG12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12);
}
pub inline fn __API_DEPRECATED_MSG13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12) ++ __API_D(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12) ++ __API_D(msg, arg13);
}
pub inline fn __API_DEPRECATED_MSG14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12) ++ __API_D(msg, arg13) ++ __API_D(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12) ++ __API_D(msg, arg13) ++ __API_D(msg, arg14);
}
pub inline fn __API_DEPRECATED_MSG15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12) ++ __API_D(msg, arg13) ++ __API_D(msg, arg14) ++ __API_D(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12) ++ __API_D(msg, arg13) ++ __API_D(msg, arg14) ++ __API_D(msg, arg15);
}
pub inline fn __API_DEPRECATED_MSG_GET_MACRO_93585900(_0: anytype, _1: anytype, _2: anytype, _3: anytype, _4: anytype, _5: anytype, _6: anytype, _7: anytype, _8: anytype, _9: anytype, _10: anytype, _11: anytype, _12: anytype, _13: anytype, _14: anytype, _15: anytype, _16: anytype, NAME: anytype) @TypeOf(NAME) {
    _ = &_0;
    _ = &_1;
    _ = &_2;
    _ = &_3;
    _ = &_4;
    _ = &_5;
    _ = &_6;
    _ = &_7;
    _ = &_8;
    _ = &_9;
    _ = &_10;
    _ = &_11;
    _ = &_12;
    _ = &_13;
    _ = &_14;
    _ = &_15;
    _ = &_16;
    _ = &NAME;
    return NAME;
}
pub const __API_D_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:306:13
pub inline fn __API_DEPRECATED_BEGIN0(msg: anytype, arg0: anytype) @TypeOf(__API_D_BEGIN(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_D_BEGIN(msg, arg0);
}
pub inline fn __API_DEPRECATED_BEGIN1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1);
}
pub inline fn __API_DEPRECATED_BEGIN2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2);
}
pub inline fn __API_DEPRECATED_BEGIN3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3);
}
pub inline fn __API_DEPRECATED_BEGIN4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4);
}
pub inline fn __API_DEPRECATED_BEGIN5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5);
}
pub inline fn __API_DEPRECATED_BEGIN6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6);
}
pub inline fn __API_DEPRECATED_BEGIN7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7);
}
pub inline fn __API_DEPRECATED_BEGIN8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8);
}
pub inline fn __API_DEPRECATED_BEGIN9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9);
}
pub inline fn __API_DEPRECATED_BEGIN10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10);
}
pub inline fn __API_DEPRECATED_BEGIN11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11);
}
pub inline fn __API_DEPRECATED_BEGIN12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12);
}
pub inline fn __API_DEPRECATED_BEGIN13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12) ++ __API_D_BEGIN(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12) ++ __API_D_BEGIN(msg, arg13);
}
pub inline fn __API_DEPRECATED_BEGIN14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12) ++ __API_D_BEGIN(msg, arg13) ++ __API_D_BEGIN(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12) ++ __API_D_BEGIN(msg, arg13) ++ __API_D_BEGIN(msg, arg14);
}
pub inline fn __API_DEPRECATED_BEGIN15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12) ++ __API_D_BEGIN(msg, arg13) ++ __API_D_BEGIN(msg, arg14) ++ __API_D_BEGIN(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12) ++ __API_D_BEGIN(msg, arg13) ++ __API_D_BEGIN(msg, arg14) ++ __API_D_BEGIN(msg, arg15);
}
pub inline fn __API_DEPRECATED_BEGIN_GET_MACRO_93585900(_0: anytype, _1: anytype, _2: anytype, _3: anytype, _4: anytype, _5: anytype, _6: anytype, _7: anytype, _8: anytype, _9: anytype, _10: anytype, _11: anytype, _12: anytype, _13: anytype, _14: anytype, _15: anytype, _16: anytype, NAME: anytype) @TypeOf(NAME) {
    _ = &_0;
    _ = &_1;
    _ = &_2;
    _ = &_3;
    _ = &_4;
    _ = &_5;
    _ = &_6;
    _ = &_7;
    _ = &_8;
    _ = &_9;
    _ = &_10;
    _ = &_11;
    _ = &_12;
    _ = &_13;
    _ = &_14;
    _ = &_15;
    _ = &_16;
    _ = &NAME;
    return NAME;
}
pub const __API_DR = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:327:17
pub inline fn __API_DEPRECATED_REP0(msg: anytype, arg0: anytype) @TypeOf(__API_DR(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_DR(msg, arg0);
}
pub inline fn __API_DEPRECATED_REP1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1);
}
pub inline fn __API_DEPRECATED_REP2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2);
}
pub inline fn __API_DEPRECATED_REP3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3);
}
pub inline fn __API_DEPRECATED_REP4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4);
}
pub inline fn __API_DEPRECATED_REP5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5);
}
pub inline fn __API_DEPRECATED_REP6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6);
}
pub inline fn __API_DEPRECATED_REP7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7);
}
pub inline fn __API_DEPRECATED_REP8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8);
}
pub inline fn __API_DEPRECATED_REP9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9);
}
pub inline fn __API_DEPRECATED_REP10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10);
}
pub inline fn __API_DEPRECATED_REP11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11);
}
pub inline fn __API_DEPRECATED_REP12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12);
}
pub inline fn __API_DEPRECATED_REP13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12) ++ __API_DR(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12) ++ __API_DR(msg, arg13);
}
pub inline fn __API_DEPRECATED_REP14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12) ++ __API_DR(msg, arg13) ++ __API_DR(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12) ++ __API_DR(msg, arg13) ++ __API_DR(msg, arg14);
}
pub inline fn __API_DEPRECATED_REP15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12) ++ __API_DR(msg, arg13) ++ __API_DR(msg, arg14) ++ __API_DR(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12) ++ __API_DR(msg, arg13) ++ __API_DR(msg, arg14) ++ __API_DR(msg, arg15);
}
pub inline fn __API_DEPRECATED_REP_GET_MACRO_93585900(_0: anytype, _1: anytype, _2: anytype, _3: anytype, _4: anytype, _5: anytype, _6: anytype, _7: anytype, _8: anytype, _9: anytype, _10: anytype, _11: anytype, _12: anytype, _13: anytype, _14: anytype, _15: anytype, _16: anytype, NAME: anytype) @TypeOf(NAME) {
    _ = &_0;
    _ = &_1;
    _ = &_2;
    _ = &_3;
    _ = &_4;
    _ = &_5;
    _ = &_6;
    _ = &_7;
    _ = &_8;
    _ = &_9;
    _ = &_10;
    _ = &_11;
    _ = &_12;
    _ = &_13;
    _ = &_14;
    _ = &_15;
    _ = &_16;
    _ = &NAME;
    return NAME;
}
pub const __API_DR_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:351:17
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN0(msg: anytype, arg0: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_DR_BEGIN(msg, arg0);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12) ++ __API_DR_BEGIN(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12) ++ __API_DR_BEGIN(msg, arg13);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12) ++ __API_DR_BEGIN(msg, arg13) ++ __API_DR_BEGIN(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12) ++ __API_DR_BEGIN(msg, arg13) ++ __API_DR_BEGIN(msg, arg14);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12) ++ __API_DR_BEGIN(msg, arg13) ++ __API_DR_BEGIN(msg, arg14) ++ __API_DR_BEGIN(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12) ++ __API_DR_BEGIN(msg, arg13) ++ __API_DR_BEGIN(msg, arg14) ++ __API_DR_BEGIN(msg, arg15);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN_GET_MACRO_93585900(_0: anytype, _1: anytype, _2: anytype, _3: anytype, _4: anytype, _5: anytype, _6: anytype, _7: anytype, _8: anytype, _9: anytype, _10: anytype, _11: anytype, _12: anytype, _13: anytype, _14: anytype, _15: anytype, _16: anytype, NAME: anytype) @TypeOf(NAME) {
    _ = &_0;
    _ = &_1;
    _ = &_2;
    _ = &_3;
    _ = &_4;
    _ = &_5;
    _ = &_6;
    _ = &_7;
    _ = &_8;
    _ = &_9;
    _ = &_10;
    _ = &_11;
    _ = &_12;
    _ = &_13;
    _ = &_14;
    _ = &_15;
    _ = &_16;
    _ = &NAME;
    return NAME;
}
pub const __API_O = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:376:9
pub inline fn __API_OBSOLETED_MSG0(msg: anytype, arg0: anytype) @TypeOf(__API_O(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_O(msg, arg0);
}
pub inline fn __API_OBSOLETED_MSG1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1);
}
pub inline fn __API_OBSOLETED_MSG2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2);
}
pub inline fn __API_OBSOLETED_MSG3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3);
}
pub inline fn __API_OBSOLETED_MSG4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4);
}
pub inline fn __API_OBSOLETED_MSG5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5);
}
pub inline fn __API_OBSOLETED_MSG6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6);
}
pub inline fn __API_OBSOLETED_MSG7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7);
}
pub inline fn __API_OBSOLETED_MSG8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8);
}
pub inline fn __API_OBSOLETED_MSG9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9);
}
pub inline fn __API_OBSOLETED_MSG10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10);
}
pub inline fn __API_OBSOLETED_MSG11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11);
}
pub inline fn __API_OBSOLETED_MSG12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12);
}
pub inline fn __API_OBSOLETED_MSG13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12) ++ __API_O(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12) ++ __API_O(msg, arg13);
}
pub inline fn __API_OBSOLETED_MSG14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12) ++ __API_O(msg, arg13) ++ __API_O(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12) ++ __API_O(msg, arg13) ++ __API_O(msg, arg14);
}
pub inline fn __API_OBSOLETED_MSG15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12) ++ __API_O(msg, arg13) ++ __API_O(msg, arg14) ++ __API_O(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12) ++ __API_O(msg, arg13) ++ __API_O(msg, arg14) ++ __API_O(msg, arg15);
}
pub inline fn __API_OBSOLETED_MSG_GET_MACRO_93585900(_0: anytype, _1: anytype, _2: anytype, _3: anytype, _4: anytype, _5: anytype, _6: anytype, _7: anytype, _8: anytype, _9: anytype, _10: anytype, _11: anytype, _12: anytype, _13: anytype, _14: anytype, _15: anytype, _16: anytype, NAME: anytype) @TypeOf(NAME) {
    _ = &_0;
    _ = &_1;
    _ = &_2;
    _ = &_3;
    _ = &_4;
    _ = &_5;
    _ = &_6;
    _ = &_7;
    _ = &_8;
    _ = &_9;
    _ = &_10;
    _ = &_11;
    _ = &_12;
    _ = &_13;
    _ = &_14;
    _ = &_15;
    _ = &_16;
    _ = &NAME;
    return NAME;
}
pub const __API_O_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:396:9
pub inline fn __API_OBSOLETED_BEGIN0(msg: anytype, arg0: anytype) @TypeOf(__API_O_BEGIN(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_O_BEGIN(msg, arg0);
}
pub inline fn __API_OBSOLETED_BEGIN1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1);
}
pub inline fn __API_OBSOLETED_BEGIN2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2);
}
pub inline fn __API_OBSOLETED_BEGIN3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3);
}
pub inline fn __API_OBSOLETED_BEGIN4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4);
}
pub inline fn __API_OBSOLETED_BEGIN5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5);
}
pub inline fn __API_OBSOLETED_BEGIN6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6);
}
pub inline fn __API_OBSOLETED_BEGIN7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7);
}
pub inline fn __API_OBSOLETED_BEGIN8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8);
}
pub inline fn __API_OBSOLETED_BEGIN9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9);
}
pub inline fn __API_OBSOLETED_BEGIN10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10);
}
pub inline fn __API_OBSOLETED_BEGIN11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11);
}
pub inline fn __API_OBSOLETED_BEGIN12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12);
}
pub inline fn __API_OBSOLETED_BEGIN13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12) ++ __API_O_BEGIN(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12) ++ __API_O_BEGIN(msg, arg13);
}
pub inline fn __API_OBSOLETED_BEGIN14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12) ++ __API_O_BEGIN(msg, arg13) ++ __API_O_BEGIN(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12) ++ __API_O_BEGIN(msg, arg13) ++ __API_O_BEGIN(msg, arg14);
}
pub inline fn __API_OBSOLETED_BEGIN15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12) ++ __API_O_BEGIN(msg, arg13) ++ __API_O_BEGIN(msg, arg14) ++ __API_O_BEGIN(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12) ++ __API_O_BEGIN(msg, arg13) ++ __API_O_BEGIN(msg, arg14) ++ __API_O_BEGIN(msg, arg15);
}
pub inline fn __API_OBSOLETED_BEGIN_GET_MACRO_93585900(_0: anytype, _1: anytype, _2: anytype, _3: anytype, _4: anytype, _5: anytype, _6: anytype, _7: anytype, _8: anytype, _9: anytype, _10: anytype, _11: anytype, _12: anytype, _13: anytype, _14: anytype, _15: anytype, _16: anytype, NAME: anytype) @TypeOf(NAME) {
    _ = &_0;
    _ = &_1;
    _ = &_2;
    _ = &_3;
    _ = &_4;
    _ = &_5;
    _ = &_6;
    _ = &_7;
    _ = &_8;
    _ = &_9;
    _ = &_10;
    _ = &_11;
    _ = &_12;
    _ = &_13;
    _ = &_14;
    _ = &_15;
    _ = &_16;
    _ = &NAME;
    return NAME;
}
pub const __API_OR = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:417:13
pub inline fn __API_OBSOLETED_REP0(msg: anytype, arg0: anytype) @TypeOf(__API_OR(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_OR(msg, arg0);
}
pub inline fn __API_OBSOLETED_REP1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1);
}
pub inline fn __API_OBSOLETED_REP2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2);
}
pub inline fn __API_OBSOLETED_REP3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3);
}
pub inline fn __API_OBSOLETED_REP4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4);
}
pub inline fn __API_OBSOLETED_REP5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5);
}
pub inline fn __API_OBSOLETED_REP6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6);
}
pub inline fn __API_OBSOLETED_REP7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7);
}
pub inline fn __API_OBSOLETED_REP8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8);
}
pub inline fn __API_OBSOLETED_REP9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9);
}
pub inline fn __API_OBSOLETED_REP10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10);
}
pub inline fn __API_OBSOLETED_REP11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11);
}
pub inline fn __API_OBSOLETED_REP12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12);
}
pub inline fn __API_OBSOLETED_REP13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12) ++ __API_OR(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12) ++ __API_OR(msg, arg13);
}
pub inline fn __API_OBSOLETED_REP14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12) ++ __API_OR(msg, arg13) ++ __API_OR(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12) ++ __API_OR(msg, arg13) ++ __API_OR(msg, arg14);
}
pub inline fn __API_OBSOLETED_REP15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12) ++ __API_OR(msg, arg13) ++ __API_OR(msg, arg14) ++ __API_OR(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12) ++ __API_OR(msg, arg13) ++ __API_OR(msg, arg14) ++ __API_OR(msg, arg15);
}
pub inline fn __API_OBSOLETED_REP_GET_MACRO_93585900(_0: anytype, _1: anytype, _2: anytype, _3: anytype, _4: anytype, _5: anytype, _6: anytype, _7: anytype, _8: anytype, _9: anytype, _10: anytype, _11: anytype, _12: anytype, _13: anytype, _14: anytype, _15: anytype, _16: anytype, NAME: anytype) @TypeOf(NAME) {
    _ = &_0;
    _ = &_1;
    _ = &_2;
    _ = &_3;
    _ = &_4;
    _ = &_5;
    _ = &_6;
    _ = &_7;
    _ = &_8;
    _ = &_9;
    _ = &_10;
    _ = &_11;
    _ = &_12;
    _ = &_13;
    _ = &_14;
    _ = &_15;
    _ = &_16;
    _ = &NAME;
    return NAME;
}
pub const __API_OR_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:441:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN0 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:446:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN1 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:447:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN2 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:448:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN3 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:449:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN4 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:450:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN5 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:451:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN6 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:452:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN7 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:453:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN8 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:454:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN9 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:455:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN10 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:456:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN11 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:457:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN12 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:458:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN13 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:459:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN14 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:460:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN15 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:461:13
pub inline fn __API_OBSOLETED_WITH_REPLACEMENT_BEGIN_GET_MACRO_93585900(_0: anytype, _1: anytype, _2: anytype, _3: anytype, _4: anytype, _5: anytype, _6: anytype, _7: anytype, _8: anytype, _9: anytype, _10: anytype, _11: anytype, _12: anytype, _13: anytype, _14: anytype, _15: anytype, _16: anytype, NAME: anytype) @TypeOf(NAME) {
    _ = &_0;
    _ = &_1;
    _ = &_2;
    _ = &_3;
    _ = &_4;
    _ = &_5;
    _ = &_6;
    _ = &_7;
    _ = &_8;
    _ = &_9;
    _ = &_10;
    _ = &_11;
    _ = &_12;
    _ = &_13;
    _ = &_14;
    _ = &_15;
    _ = &_16;
    _ = &NAME;
    return NAME;
}
pub const __API_U = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:473:13
pub inline fn __API_UNAVAILABLE0(arg0: anytype) @TypeOf(__API_U(arg0)) {
    _ = &arg0;
    return __API_U(arg0);
}
pub inline fn __API_UNAVAILABLE1(arg0: anytype, arg1: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_U(arg0) ++ __API_U(arg1);
}
pub inline fn __API_UNAVAILABLE2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2);
}
pub inline fn __API_UNAVAILABLE3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3);
}
pub inline fn __API_UNAVAILABLE4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4);
}
pub inline fn __API_UNAVAILABLE5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5);
}
pub inline fn __API_UNAVAILABLE6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6);
}
pub inline fn __API_UNAVAILABLE7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7);
}
pub inline fn __API_UNAVAILABLE8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8);
}
pub inline fn __API_UNAVAILABLE9(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9);
}
pub inline fn __API_UNAVAILABLE10(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10);
}
pub inline fn __API_UNAVAILABLE11(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11);
}
pub inline fn __API_UNAVAILABLE12(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12);
}
pub inline fn __API_UNAVAILABLE13(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12) ++ __API_U(arg13)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12) ++ __API_U(arg13);
}
pub inline fn __API_UNAVAILABLE14(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12) ++ __API_U(arg13) ++ __API_U(arg14)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12) ++ __API_U(arg13) ++ __API_U(arg14);
}
pub inline fn __API_UNAVAILABLE15(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12) ++ __API_U(arg13) ++ __API_U(arg14) ++ __API_U(arg15)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12) ++ __API_U(arg13) ++ __API_U(arg14) ++ __API_U(arg15);
}
pub inline fn __API_UNAVAILABLE_GET_MACRO_93585900(_0: anytype, _1: anytype, _2: anytype, _3: anytype, _4: anytype, _5: anytype, _6: anytype, _7: anytype, _8: anytype, _9: anytype, _10: anytype, _11: anytype, _12: anytype, _13: anytype, _14: anytype, _15: anytype, NAME: anytype) @TypeOf(NAME) {
    _ = &_0;
    _ = &_1;
    _ = &_2;
    _ = &_3;
    _ = &_4;
    _ = &_5;
    _ = &_6;
    _ = &_7;
    _ = &_8;
    _ = &_9;
    _ = &_10;
    _ = &_11;
    _ = &_12;
    _ = &_13;
    _ = &_14;
    _ = &_15;
    _ = &NAME;
    return NAME;
}
pub const __API_U_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:493:13
pub inline fn __API_UNAVAILABLE_BEGIN0(arg0: anytype) @TypeOf(__API_U_BEGIN(arg0)) {
    _ = &arg0;
    return __API_U_BEGIN(arg0);
}
pub inline fn __API_UNAVAILABLE_BEGIN1(arg0: anytype, arg1: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1);
}
pub inline fn __API_UNAVAILABLE_BEGIN2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2);
}
pub inline fn __API_UNAVAILABLE_BEGIN3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3);
}
pub inline fn __API_UNAVAILABLE_BEGIN4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4);
}
pub inline fn __API_UNAVAILABLE_BEGIN5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5);
}
pub inline fn __API_UNAVAILABLE_BEGIN6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6);
}
pub inline fn __API_UNAVAILABLE_BEGIN7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7);
}
pub inline fn __API_UNAVAILABLE_BEGIN8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8);
}
pub inline fn __API_UNAVAILABLE_BEGIN9(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9);
}
pub inline fn __API_UNAVAILABLE_BEGIN10(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10);
}
pub inline fn __API_UNAVAILABLE_BEGIN11(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11);
}
pub inline fn __API_UNAVAILABLE_BEGIN12(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12);
}
pub inline fn __API_UNAVAILABLE_BEGIN13(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12) ++ __API_U_BEGIN(arg13)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12) ++ __API_U_BEGIN(arg13);
}
pub inline fn __API_UNAVAILABLE_BEGIN14(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12) ++ __API_U_BEGIN(arg13) ++ __API_U_BEGIN(arg14)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12) ++ __API_U_BEGIN(arg13) ++ __API_U_BEGIN(arg14);
}
pub inline fn __API_UNAVAILABLE_BEGIN15(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12) ++ __API_U_BEGIN(arg13) ++ __API_U_BEGIN(arg14) ++ __API_U_BEGIN(arg15)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12) ++ __API_U_BEGIN(arg13) ++ __API_U_BEGIN(arg14) ++ __API_U_BEGIN(arg15);
}
pub inline fn __API_UNAVAILABLE_BEGIN_GET_MACRO_93585900(_0: anytype, _1: anytype, _2: anytype, _3: anytype, _4: anytype, _5: anytype, _6: anytype, _7: anytype, _8: anytype, _9: anytype, _10: anytype, _11: anytype, _12: anytype, _13: anytype, _14: anytype, _15: anytype, NAME: anytype) @TypeOf(NAME) {
    _ = &_0;
    _ = &_1;
    _ = &_2;
    _ = &_3;
    _ = &_4;
    _ = &_5;
    _ = &_6;
    _ = &_7;
    _ = &_8;
    _ = &_9;
    _ = &_10;
    _ = &_11;
    _ = &_12;
    _ = &_13;
    _ = &_14;
    _ = &_15;
    _ = &NAME;
    return NAME;
}
pub inline fn __swift_compiler_version_at_least() @TypeOf(@as(c_int, 1)) {
    return @as(c_int, 1);
}
pub const __AVAILABILITY_INTERNAL_LEGACY__ = "";
pub const __ENABLE_LEGACY_IPHONE_AVAILABILITY = @as(c_int, 1);
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:67:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:68:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:70:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:74:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:76:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:80:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:82:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:86:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:88:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_11_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:92:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_2_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:93:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_2_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:95:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_2_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:99:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_2_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:101:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_2_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:105:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_2_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:107:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_3_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:111:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_3_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:113:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_3_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:117:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_3_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:119:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_3_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:123:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_3_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:125:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_4_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:129:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_4_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:131:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_4_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:135:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_4_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:137:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_4_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:141:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_4_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:143:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_4_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:147:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_4_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:149:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_5_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:153:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_5_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:155:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_5_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:159:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_5_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:161:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:165:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_6_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:167:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:171:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:173:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:177:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:179:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:183:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:185:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:189:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:191:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:195:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:197:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:201:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:203:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:207:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:209:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:213:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:215:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:219:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:221:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:225:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:227:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:231:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:233:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:237:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:239:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:243:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_0_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:244:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:245:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:246:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:248:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:252:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:254:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:258:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:260:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:264:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:266:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_2_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:270:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_2_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:272:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_2_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:276:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_2_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:278:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_3_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:282:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_3_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:284:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_3_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:288:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_3_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:290:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_3_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:294:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_3_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:296:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_4_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:300:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_4_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:302:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_4_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:306:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_4_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:308:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_4_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:312:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_4_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:314:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_4_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:318:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_4_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:320:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_5_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:324:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_5_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:326:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_5_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:330:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_5_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:332:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:336:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_6_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:338:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:342:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:344:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:348:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:350:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:354:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:356:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:360:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:362:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:366:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:368:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:372:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:374:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:378:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:380:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:384:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:386:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:390:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:392:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:396:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:398:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:402:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:404:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:408:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:410:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:414:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_1_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:415:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:416:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:417:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:419:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:423:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:425:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:429:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:431:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:435:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:437:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_2_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:441:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_2_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:443:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_3_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:447:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_3_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:449:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_3_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:453:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_3_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:455:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_3_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:459:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_3_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:461:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_4_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:465:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_4_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:467:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_4_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:471:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_4_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:473:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_4_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:477:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_4_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:479:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_4_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:483:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_4_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:485:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_5_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:489:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_5_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:491:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_5_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:495:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_5_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:497:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:501:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_6_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:503:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:507:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:509:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:513:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:515:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:519:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:521:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:525:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:527:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:531:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:533:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:537:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:539:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:543:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:545:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:549:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:551:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:555:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:557:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:561:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:563:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:567:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:569:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:573:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:575:25
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:579:21
pub const __AVAILABILITY_INTERNAL__IPHONE_2_2_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:580:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:581:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:582:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:584:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:588:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:590:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:594:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:596:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:600:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:602:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_3_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:606:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_3_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:608:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_3_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:612:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_3_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:614:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_3_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:618:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_3_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:620:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_4_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:624:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_4_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:626:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_4_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:630:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_4_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:632:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_4_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:636:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_4_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:638:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_4_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:642:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_4_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:644:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_5_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:648:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_5_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:650:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_5_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:654:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_5_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:656:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:660:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_6_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:662:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:666:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:668:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:672:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:674:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:678:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:680:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:684:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:686:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:690:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:692:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:696:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:698:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:702:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:704:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:708:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:710:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:714:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:716:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:720:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:722:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:726:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:728:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:732:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:734:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:738:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_0_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:739:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:740:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:741:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:743:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:747:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:749:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:753:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:755:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:759:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:761:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_3_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:765:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_3_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:767:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_3_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:771:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_3_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:773:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_4_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:777:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_4_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:779:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_4_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:783:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_4_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:785:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_4_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:789:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_4_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:791:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_4_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:795:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_4_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:797:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_5_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:801:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_5_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:803:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_5_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:807:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_5_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:809:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:813:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_6_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:815:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:819:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:821:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:825:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:827:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:831:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:833:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:837:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:839:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:843:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:845:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:849:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:851:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:855:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:857:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:861:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:863:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:867:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:869:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:873:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:875:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:879:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:881:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:885:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:887:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:891:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_1_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:892:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:893:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:894:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:896:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:900:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:902:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:906:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:908:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:912:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:914:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_3_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:918:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_3_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:920:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_4_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:924:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_4_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:926:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_4_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:930:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_4_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:932:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_4_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:936:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_4_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:938:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_4_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:942:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_4_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:944:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_5_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:948:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_5_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:950:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_5_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:954:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_5_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:956:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:960:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_6_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:962:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:966:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:968:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:972:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:974:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:978:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:980:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:984:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:986:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:990:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:992:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:996:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:998:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1002:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1004:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1008:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1010:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1014:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1016:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1020:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1022:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1026:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1028:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1032:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1034:25
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1038:21
pub const __AVAILABILITY_INTERNAL__IPHONE_3_2_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1039:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1040:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1041:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1043:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1047:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1049:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1053:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1055:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1059:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1061:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_12_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1066:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_4_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1070:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_4_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1072:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_4_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1076:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_4_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1078:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_4_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1082:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_4_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1084:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_4_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1088:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_4_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1090:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_5_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1094:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_5_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1096:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_5_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1100:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_5_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1102:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1106:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_6_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1108:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1112:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1114:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1118:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1120:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1124:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1126:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1130:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1132:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1136:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1138:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1142:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1144:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1148:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1150:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1154:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1156:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1160:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1162:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1166:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1168:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1172:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1174:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1178:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1180:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1184:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_0_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1185:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1186:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1187:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1189:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1193:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1195:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1199:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1201:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1205:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1207:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_4_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1211:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_4_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1213:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_4_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1217:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_4_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1219:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_4_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1223:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_4_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1225:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_5_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1229:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_5_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1231:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_5_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1235:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_5_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1237:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1241:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_6_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1243:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1247:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1249:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1253:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1255:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1259:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1261:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1265:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1267:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1271:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1273:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1277:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1279:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1283:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1285:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1289:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1291:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1295:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1297:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1301:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1303:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1307:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1309:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1313:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1315:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1319:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_1_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1320:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1321:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1322:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1324:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1328:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1330:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1334:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1336:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1340:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1342:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_4_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1346:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_4_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1348:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_4_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1352:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_4_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1354:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_5_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1358:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_5_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1360:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_5_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1364:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_5_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1366:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1370:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_6_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1372:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1376:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1378:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1382:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1384:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1388:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1390:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1394:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1396:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1400:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1402:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1406:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1408:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1412:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1414:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1418:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1420:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1424:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1426:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1430:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1432:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1436:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1438:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1442:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1444:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1448:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_2_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1449:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1450:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1451:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1453:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1457:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1459:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1463:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1465:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1469:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1471:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_4_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1475:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_4_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1477:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_5_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1481:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_5_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1483:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_5_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1487:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_5_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1489:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1493:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_6_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1495:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1499:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1501:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1505:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1507:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1511:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1513:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1517:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1519:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1523:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1525:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1529:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1531:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1535:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1537:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1541:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1543:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1547:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1549:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1553:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1555:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1559:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1561:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1565:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1567:25
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1571:21
pub const __AVAILABILITY_INTERNAL__IPHONE_4_3_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1572:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1573:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1574:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1576:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1580:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1582:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1586:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1588:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1592:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1594:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_11_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1598:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_5_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1599:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_5_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1601:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_5_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1605:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_5_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1607:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1611:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_6_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1613:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1617:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1619:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1623:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1625:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1629:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1631:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1635:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1637:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1641:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1643:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1647:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1649:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1653:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1655:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1659:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1661:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1665:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1667:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1671:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1673:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1677:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1679:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1683:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1685:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1689:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_0_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1690:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1691:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1692:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1694:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1698:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1700:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1704:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1706:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1710:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1712:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_5_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1716:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_5_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1718:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1722:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_6_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1724:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1728:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1730:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1734:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1736:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1740:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1742:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1746:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1748:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1752:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1754:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1758:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1760:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1764:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1766:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1770:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1772:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1776:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1778:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1782:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1784:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1788:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1790:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1794:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1796:25
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1800:21
pub const __AVAILABILITY_INTERNAL__IPHONE_5_1_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1801:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1802:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1803:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1805:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1809:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1811:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1815:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1817:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1821:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1823:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_6_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1827:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_6_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1829:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1833:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1835:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1839:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1841:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1845:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1847:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1851:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1853:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1857:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1859:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1863:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1865:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1869:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1871:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1875:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1877:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1881:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1883:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1887:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1889:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1893:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1895:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1899:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1901:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1905:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_0_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1906:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1907:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1908:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1910:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1914:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1916:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1920:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1922:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1926:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1928:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_6_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1932:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_6_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1934:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1938:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1940:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1944:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1946:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1950:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1952:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1956:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1958:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1962:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1964:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1968:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1970:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1974:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1976:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1980:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1982:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1986:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1988:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1992:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1994:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:1998:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2000:25
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2004:21
pub const __AVAILABILITY_INTERNAL__IPHONE_6_1_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2005:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2006:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2007:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2009:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2013:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2015:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2019:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2021:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2025:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2027:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_11_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2031:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_11_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2032:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_12_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2034:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_7_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2038:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_7_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2040:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2044:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2046:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2050:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2052:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2056:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2058:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2062:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2064:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2068:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2070:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2074:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2076:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2080:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2082:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2086:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2088:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2092:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2094:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2098:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2100:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2104:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_0_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2105:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2106:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2107:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2109:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2113:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2115:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2119:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2121:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2125:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2127:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_7_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2131:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_7_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2133:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2137:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2139:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2143:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2145:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2149:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2151:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2155:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2157:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2161:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2163:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2167:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2169:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2173:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2175:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2179:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2181:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2185:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2187:25
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2191:21
pub const __AVAILABILITY_INTERNAL__IPHONE_7_1_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2192:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2193:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2194:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2196:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2200:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2202:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2206:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2208:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2212:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2214:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_11_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2219:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_11_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2223:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_12_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2224:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_8_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2225:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_8_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2227:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2231:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2233:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2237:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2239:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2243:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2245:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2249:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2251:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2255:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2257:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2261:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2263:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2267:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2269:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2273:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2275:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2279:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_0_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2280:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2281:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2282:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2284:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2288:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2290:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2294:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2296:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2300:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2302:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_8_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2306:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_8_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2308:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2312:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2314:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2318:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2320:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2324:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2326:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2330:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2332:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2336:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2338:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2342:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2344:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2348:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2350:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2354:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_1_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2355:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2356:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2357:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2359:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2363:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2365:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2369:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2371:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2375:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2377:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_8_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2381:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_8_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2383:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2387:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2389:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2393:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2395:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2399:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2401:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2405:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2407:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2411:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2413:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2417:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2419:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2423:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_2_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2424:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2425:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2426:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2428:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2432:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2434:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2438:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2440:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2444:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2446:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_8_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2450:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_8_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2452:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2456:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2458:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2462:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2464:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2468:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2470:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2474:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2476:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2480:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2482:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2486:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_3_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2487:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2488:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2489:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2491:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2495:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2497:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2501:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2503:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2507:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2509:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_8_4 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2513:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_8_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2515:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2519:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2521:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2525:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2527:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2531:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2533:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2537:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2539:25
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2543:21
pub const __AVAILABILITY_INTERNAL__IPHONE_8_4_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2544:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2545:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2546:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2548:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2552:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2554:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2558:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2560:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2564:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2566:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_9_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2570:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_9_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2572:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2576:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2578:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2582:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2584:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2588:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2590:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2594:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_0_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2595:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2596:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2597:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2599:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2603:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2605:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2609:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2611:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2615:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2617:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_9_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2621:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_9_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2623:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2627:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2629:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2633:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2635:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2639:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_1_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2640:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2641:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2642:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2644:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2648:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2650:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2654:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2656:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2660:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2662:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_9_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2666:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_9_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2668:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2672:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2674:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2678:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_2_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2679:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2680:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_3_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2681:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_3_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2683:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_3_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2687:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_3_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2689:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_3_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2693:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_3_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2695:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_3_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2699:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_3_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2701:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_3_DEP__IPHONE_9_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2705:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_3_DEP__IPHONE_9_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2707:25
pub const __AVAILABILITY_INTERNAL__IPHONE_9_3_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2711:21
pub const __AVAILABILITY_INTERNAL__IPHONE_9_3_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2712:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2713:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_0_DEP__IPHONE_10_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2714:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_0_DEP__IPHONE_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2716:25
pub const __AVAILABILITY_INTERNAL__IPHONE_10_0_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2720:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_0_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2722:25
pub const __AVAILABILITY_INTERNAL__IPHONE_10_0_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2726:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_0_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2728:25
pub const __AVAILABILITY_INTERNAL__IPHONE_10_0_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2732:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_0_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2734:25
pub const __AVAILABILITY_INTERNAL__IPHONE_10_0_DEP__IPHONE_11_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2738:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_0_DEP__IPHONE_12_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2739:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_0_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2740:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_0_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2741:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2742:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_1_DEP__IPHONE_10_1 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2743:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_1_DEP__IPHONE_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2745:25
pub const __AVAILABILITY_INTERNAL__IPHONE_10_1_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2749:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_1_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2751:25
pub const __AVAILABILITY_INTERNAL__IPHONE_10_1_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2755:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_1_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2757:25
pub const __AVAILABILITY_INTERNAL__IPHONE_10_1_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2761:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_1_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2762:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2763:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_2_DEP__IPHONE_10_2 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2764:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_2_DEP__IPHONE_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2766:25
pub const __AVAILABILITY_INTERNAL__IPHONE_10_2_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2770:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_2_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2772:25
pub const __AVAILABILITY_INTERNAL__IPHONE_10_2_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2776:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_2_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2777:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2778:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_3_DEP__IPHONE_10_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2779:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_3_DEP__IPHONE_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2781:25
pub const __AVAILABILITY_INTERNAL__IPHONE_10_3_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2785:21
pub const __AVAILABILITY_INTERNAL__IPHONE_10_3_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2786:21
pub const __AVAILABILITY_INTERNAL__IPHONE_11 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2787:21
pub const __AVAILABILITY_INTERNAL__IPHONE_11_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2788:21
pub const __AVAILABILITY_INTERNAL__IPHONE_11_3 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2789:21
pub const __AVAILABILITY_INTERNAL__IPHONE_12_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2790:21
pub const __AVAILABILITY_INTERNAL__IPHONE_13_0 = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2791:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2793:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2794:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2795:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2796:21
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2817:25
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2818:25
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2820:25
pub const __OSX_AVAILABLE_STARTING = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:204:13
pub const __OSX_AVAILABLE_BUT_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:205:13
pub const __OSX_AVAILABLE_BUT_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:207:13
pub const __OS_AVAILABILITY = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:263:13
pub const __OS_AVAILABILITY_MSG = @compileError("unable to translate macro: undefined identifier `availability`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:264:13
pub const __OSX_EXTENSION_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx_app_extension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:281:13
pub const __IOS_EXTENSION_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `ios_app_extension`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:282:13
pub inline fn __OS_EXTENSION_UNAVAILABLE(_msg: anytype) @TypeOf(__OSX_EXTENSION_UNAVAILABLE(_msg) ++ __IOS_EXTENSION_UNAVAILABLE(_msg)) {
    _ = &_msg;
    return __OSX_EXTENSION_UNAVAILABLE(_msg) ++ __IOS_EXTENSION_UNAVAILABLE(_msg);
}
pub const __OSX_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:299:13
pub const __OSX_AVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:300:13
pub const __OSX_DEPRECATED = @compileError("unable to translate macro: undefined identifier `macosx`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:301:13
pub const __IOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `ios`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:325:13
pub const __IOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `ios`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:327:15
pub const __IOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `ios`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:329:13
pub const __IOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `ios`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:330:13
pub const __TVOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:354:13
pub const __TVOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:356:15
pub const __TVOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:358:13
pub const __TVOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:359:13
pub const __WATCHOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:383:13
pub const __WATCHOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:385:15
pub const __WATCHOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:387:13
pub const __WATCHOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:388:13
pub const __SWIFT_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `swift`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:411:13
pub const __SWIFT_UNAVAILABLE_MSG = @compileError("unable to translate macro: undefined identifier `swift`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:412:13
pub const __API_AVAILABLE = @compileError("unable to translate C expr: unexpected token '__VA_ARGS__'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:457:13
pub const __API_AVAILABLE_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:459:13
pub const __API_AVAILABLE_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:460:13
pub const __API_DEPRECATED = @compileError("unable to translate C expr: unexpected token '__VA_ARGS__'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:483:13
pub const __API_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: unexpected token '__VA_ARGS__'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:484:13
pub const __API_DEPRECATED_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:486:13
pub const __API_DEPRECATED_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:487:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:489:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:490:13
pub const __API_OBSOLETED = @compileError("unable to translate C expr: unexpected token '__VA_ARGS__'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:494:13
pub const __API_OBSOLETED_WITH_REPLACEMENT = @compileError("unable to translate C expr: unexpected token '__VA_ARGS__'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:495:13
pub const __API_OBSOLETED_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:497:13
pub const __API_OBSOLETED_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:498:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:500:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:501:13
pub const __API_UNAVAILABLE = @compileError("unable to translate C expr: unexpected token '__VA_ARGS__'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:512:13
pub const __API_UNAVAILABLE_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:514:13
pub const __API_UNAVAILABLE_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:515:13
pub inline fn __SPI_AVAILABLE() void {
    return;
}
pub inline fn __SPI_AVAILABLE_BEGIN() void {
    return;
}
pub const __SPI_AVAILABLE_END = "";
pub inline fn __SPI_DEPRECATED() void {
    return;
}
pub inline fn __SPI_DEPRECATED_WITH_REPLACEMENT() void {
    return;
}
pub const __TYPES_H_ = "";
pub const _SYS__TYPES_H_ = "";
pub const _BSD_MACHINE__TYPES_H_ = "";
pub const _BSD_ARM__TYPES_H_ = "";
pub const __DARWIN_NULL = __helpers.cast(?*anyopaque, @as(c_int, 0));
pub const _SYS__PTHREAD_TYPES_H_ = "";
pub const __PTHREAD_SIZE__ = @as(c_int, 8176);
pub const __PTHREAD_ATTR_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_MUTEXATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_MUTEX_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_CONDATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_COND_SIZE__ = @as(c_int, 40);
pub const __PTHREAD_ONCE_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_RWLOCK_SIZE__ = @as(c_int, 192);
pub const __PTHREAD_RWLOCKATTR_SIZE__ = @as(c_int, 16);
pub const __offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h:97:9
pub const __strfmonlike = @compileError("unable to translate macro: undefined identifier `__format__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h:34:9
pub const __strftimelike = @compileError("unable to translate macro: undefined identifier `__format__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h:36:9
pub const __DARWIN_WCHAR_MAX = __WCHAR_MAX__;
pub const __DARWIN_WCHAR_MIN = -__helpers.promoteIntLiteral(c_int, 0x7fffffff, .hex) - @as(c_int, 1);
pub const __DARWIN_WEOF = __helpers.cast(__darwin_wint_t, -@as(c_int, 1));
pub const _FORTIFY_SOURCE = @as(c_int, 2);
pub const _VA_LIST_T = "";
pub const _BSD_MACHINE_TYPES_H_ = "";
pub const _ARM_MACHTYPES_H_ = "";
pub const _MACHTYPES_H_ = "";
pub const _INT8_T = "";
pub const _INT16_T = "";
pub const _INT32_T = "";
pub const _INT64_T = "";
pub const _U_INT8_T = "";
pub const _U_INT16_T = "";
pub const _U_INT32_T = "";
pub const _U_INT64_T = "";
pub const _INTPTR_T = "";
pub const _UINTPTR_T = "";
pub const USER_ADDR_NULL = __helpers.cast(user_addr_t, @as(c_int, 0));
pub inline fn CAST_USER_ADDR_T(a_ptr: anytype) user_addr_t {
    _ = &a_ptr;
    return __helpers.cast(user_addr_t, __helpers.cast(usize, a_ptr));
}
pub const _SIZE_T = "";
pub const NULL = __helpers.cast(?*anyopaque, @as(c_int, 0));
pub const _SYS_STDIO_H_ = "";
pub const RENAME_SECLUDE = @as(c_int, 0x00000001);
pub const RENAME_SWAP = @as(c_int, 0x00000002);
pub const RENAME_EXCL = @as(c_int, 0x00000004);
pub const RENAME_RESERVED1 = @as(c_int, 0x00000008);
pub const RENAME_NOFOLLOW_ANY = @as(c_int, 0x00000010);
pub const RENAME_RESOLVE_BENEATH = @as(c_int, 0x00000020);
pub const __PRINTF_H_ = "";
pub const _FSTDIO = "";
pub const _SEEK_SET_H_ = "";
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const SEEK_HOLE = @as(c_int, 3);
pub const SEEK_DATA = @as(c_int, 4);
pub const __SLBF = @as(c_int, 0x0001);
pub const __SNBF = @as(c_int, 0x0002);
pub const __SRD = @as(c_int, 0x0004);
pub const __SWR = @as(c_int, 0x0008);
pub const __SRW = @as(c_int, 0x0010);
pub const __SEOF = @as(c_int, 0x0020);
pub const __SERR = @as(c_int, 0x0040);
pub const __SMBF = @as(c_int, 0x0080);
pub const __SAPP = @as(c_int, 0x0100);
pub const __SSTR = @as(c_int, 0x0200);
pub const __SOPT = @as(c_int, 0x0400);
pub const __SNPT = @as(c_int, 0x0800);
pub const __SOFF = @as(c_int, 0x1000);
pub const __SMOD = @as(c_int, 0x2000);
pub const __SALC = @as(c_int, 0x4000);
pub const __SIGN = __helpers.promoteIntLiteral(c_int, 0x8000, .hex);
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 1024);
pub const EOF = -@as(c_int, 1);
pub const FOPEN_MAX = @as(c_int, 20);
pub const FILENAME_MAX = @as(c_int, 1024);
pub const P_tmpdir = "/var/tmp/";
pub const L_tmpnam = @as(c_int, 1024);
pub const TMP_MAX = __helpers.promoteIntLiteral(c_int, 308915776, .decimal);
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h:217:9: warning: macro 'stdin' contains a runtime value, translated to function
pub inline fn stdin() @TypeOf(__stdinp) {
    return __stdinp;
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h:218:9: warning: macro 'stdout' contains a runtime value, translated to function
pub inline fn stdout() @TypeOf(__stdoutp) {
    return __stdoutp;
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h:219:9: warning: macro 'stderr' contains a runtime value, translated to function
pub inline fn stderr() @TypeOf(__stderrp) {
    return __stderrp;
}
pub const L_ctermid = @as(c_int, 1024);
pub const _LIBC_COUNT__L_CTERMID = _LIBC_COUNT_OR_NULL(L_ctermid);
pub const _CTERMID_H_ = "";
pub const __sgetc = @compileError("TODO unary inc/dec expr"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h:363:9
pub inline fn __sfeof(p: anytype) @TypeOf((p.*._flags & __SEOF) != @as(c_int, 0)) {
    _ = &p;
    return (p.*._flags & __SEOF) != @as(c_int, 0);
}
pub inline fn __sferror(p: anytype) @TypeOf((p.*._flags & __SERR) != @as(c_int, 0)) {
    _ = &p;
    return (p.*._flags & __SERR) != @as(c_int, 0);
}
pub const __sclearerr = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h:387:9
pub inline fn __sfileno(p: anytype) @TypeOf(p.*._file) {
    _ = &p;
    return p.*._file;
}
pub const _OFF_T = "";
pub const _SSIZE_T = "";
pub inline fn fropen(cookie: anytype, @"fn": anytype) @TypeOf(funopen(cookie, @"fn", @as(c_int, 0), @as(c_int, 0), @as(c_int, 0))) {
    _ = &cookie;
    _ = &@"fn";
    return funopen(cookie, @"fn", @as(c_int, 0), @as(c_int, 0), @as(c_int, 0));
}
pub inline fn fwopen(cookie: anytype, @"fn": anytype) @TypeOf(funopen(cookie, @as(c_int, 0), @"fn", @as(c_int, 0), @as(c_int, 0))) {
    _ = &cookie;
    _ = &@"fn";
    return funopen(cookie, @as(c_int, 0), @"fn", @as(c_int, 0), @as(c_int, 0));
}
pub inline fn feof_unlocked(p: anytype) @TypeOf(__sfeof(p)) {
    _ = &p;
    return __sfeof(p);
}
pub inline fn ferror_unlocked(p: anytype) @TypeOf(__sferror(p)) {
    _ = &p;
    return __sferror(p);
}
pub inline fn clearerr_unlocked(p: anytype) @TypeOf(__sclearerr(p)) {
    _ = &p;
    return __sclearerr(p);
}
pub inline fn fileno_unlocked(p: anytype) @TypeOf(__sfileno(p)) {
    _ = &p;
    return __sfileno(p);
}
pub const _SECURE__STDIO_H_ = "";
pub const _SECURE__COMMON_H_ = "";
pub const _USE_FORTIFY_LEVEL = @as(c_int, 2);
pub inline fn __darwin_obsz0(object: anytype) @TypeOf(__builtin.object_size(object, @as(c_int, 0))) {
    _ = &object;
    return __builtin.object_size(object, @as(c_int, 0));
}
pub inline fn __darwin_obsz(object: anytype) @TypeOf(__builtin.object_size(object, if (__helpers.cast(bool, _USE_FORTIFY_LEVEL > @as(c_int, 1))) @as(c_int, 1) else @as(c_int, 0))) {
    _ = &object;
    return __builtin.object_size(object, if (__helpers.cast(bool, _USE_FORTIFY_LEVEL > @as(c_int, 1))) @as(c_int, 1) else @as(c_int, 0));
}
pub const __darwin_pass_obsz0 = @compileError("unable to translate macro: undefined identifier `__pass_object_size__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_common.h:42:9
pub const __darwin_pass_obsz = @compileError("unable to translate macro: undefined identifier `__pass_object_size__`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_common.h:43:9
pub const __snprintf_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___snprintf_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h:75:9
pub const __vsnprintf_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___vsnprintf_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h:80:9
pub const __sprintf_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___sprintf_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h:86:9
pub const __vsprintf_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___vsprintf_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h:91:9
pub const ZLIB_H = "";
pub const ZCONF_H = "";
pub const STDC = "";
pub const STDC99 = "";
pub const z_const = "";
pub const __STDC_VERSION_STDDEF_H__ = @as(c_long, 202311);
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /opt/homebrew/Cellar/zig/0.16.0_1/lib/zig/compiler/aro/include/stddef.h:18:9
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
pub const ZEXTERN = @compileError("unable to translate C expr: unexpected token 'extern'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/zconf.h:377:11
pub const ZEXPORT = "";
pub const ZEXPORTVA = "";
pub const FAR = "";
pub const Z_HAVE_UNISTD_H = "";
pub const Z_HAVE_STDARG_H = "";
pub const _SYS_TYPES_H_ = "";
pub const __SYS_APPLEAPIOPTS_H__ = "";
pub const __APPLE_API_STANDARD = "";
pub const __APPLE_API_STABLE = "";
pub const __APPLE_API_EVOLVING = "";
pub const __APPLE_API_UNSTABLE = "";
pub const __APPLE_API_PRIVATE = "";
pub const __APPLE_API_OBSOLETE = "";
pub const _BSD_MACHINE_ENDIAN_H_ = "";
pub const _ARM__ENDIAN_H_ = "";
pub const _QUAD_HIGHWORD = @as(c_int, 1);
pub const _QUAD_LOWWORD = @as(c_int, 0);
pub const _SYS__ENDIAN_H_ = "";
pub const _BSD_MACHINE__ENDIAN_H_ = "";
pub const _ARM___ENDIAN_H_ = "";
pub const _SYS___ENDIAN_H_ = "";
pub const __DARWIN_LITTLE_ENDIAN = @as(c_int, 1234);
pub const __DARWIN_BIG_ENDIAN = @as(c_int, 4321);
pub const __DARWIN_PDP_ENDIAN = @as(c_int, 3412);
pub const LITTLE_ENDIAN = __DARWIN_LITTLE_ENDIAN;
pub const BIG_ENDIAN = __DARWIN_BIG_ENDIAN;
pub const PDP_ENDIAN = __DARWIN_PDP_ENDIAN;
pub const __DARWIN_BYTE_ORDER = __DARWIN_LITTLE_ENDIAN;
pub const BYTE_ORDER = __DARWIN_BYTE_ORDER;
pub const _OS__OSBYTEORDER_H = "";
pub inline fn __DARWIN_OSSwapConstInt16(x: anytype) __uint16_t {
    _ = &x;
    return __helpers.cast(__uint16_t, ((__helpers.cast(__uint16_t, x) & @as(c_uint, 0xff00)) >> @as(c_int, 8)) | ((__helpers.cast(__uint16_t, x) & @as(c_uint, 0x00ff)) << @as(c_int, 8)));
}
pub inline fn __DARWIN_OSSwapConstInt32(x: anytype) __uint32_t {
    _ = &x;
    return __helpers.cast(__uint32_t, ((((__helpers.cast(__uint32_t, x) & __helpers.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((__helpers.cast(__uint32_t, x) & __helpers.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((__helpers.cast(__uint32_t, x) & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((__helpers.cast(__uint32_t, x) & @as(c_uint, 0x000000ff)) << @as(c_int, 24)));
}
pub inline fn __DARWIN_OSSwapConstInt64(x: anytype) __uint64_t {
    _ = &x;
    return __helpers.cast(__uint64_t, ((((((((__helpers.cast(__uint64_t, x) & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((__helpers.cast(__uint64_t, x) & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((__helpers.cast(__uint64_t, x) & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((__helpers.cast(__uint64_t, x) & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((__helpers.cast(__uint64_t, x) & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((__helpers.cast(__uint64_t, x) & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((__helpers.cast(__uint64_t, x) & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((__helpers.cast(__uint64_t, x) & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56)));
}
pub const _OS__OSBYTEORDERARM_H = "";
pub const __DARWIN_OS_INLINE = @compileError("unable to translate C expr: unexpected token 'static'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/libkern/arm/_OSByteOrder.h:38:17
pub inline fn __DARWIN_OSSwapInt16(x: anytype) __uint16_t {
    _ = &x;
    return __helpers.cast(__uint16_t, if (__helpers.cast(bool, __builtin.constant_p(x))) __DARWIN_OSSwapConstInt16(x) else _OSSwapInt16(x));
}
pub inline fn __DARWIN_OSSwapInt32(x: anytype) @TypeOf(if (__helpers.cast(bool, __builtin.constant_p(x))) __DARWIN_OSSwapConstInt32(x) else _OSSwapInt32(x)) {
    _ = &x;
    return if (__helpers.cast(bool, __builtin.constant_p(x))) __DARWIN_OSSwapConstInt32(x) else _OSSwapInt32(x);
}
pub inline fn __DARWIN_OSSwapInt64(x: anytype) @TypeOf(if (__helpers.cast(bool, __builtin.constant_p(x))) __DARWIN_OSSwapConstInt64(x) else _OSSwapInt64(x)) {
    _ = &x;
    return if (__helpers.cast(bool, __builtin.constant_p(x))) __DARWIN_OSSwapConstInt64(x) else _OSSwapInt64(x);
}
pub inline fn ntohs(x: anytype) @TypeOf(__DARWIN_OSSwapInt16(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt16(x);
}
pub inline fn htons(x: anytype) @TypeOf(__DARWIN_OSSwapInt16(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt16(x);
}
pub inline fn ntohl(x: anytype) @TypeOf(__DARWIN_OSSwapInt32(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt32(x);
}
pub inline fn htonl(x: anytype) @TypeOf(__DARWIN_OSSwapInt32(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt32(x);
}
pub inline fn ntohll(x: anytype) @TypeOf(__DARWIN_OSSwapInt64(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt64(x);
}
pub inline fn htonll(x: anytype) @TypeOf(__DARWIN_OSSwapInt64(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt64(x);
}
pub const NTOHL = @compileError("unable to translate C expr: unexpected token '='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:144:9
pub const NTOHS = @compileError("unable to translate C expr: unexpected token '='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:145:9
pub const NTOHLL = @compileError("unable to translate C expr: unexpected token '='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:146:9
pub const HTONL = @compileError("unable to translate C expr: unexpected token '='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:147:9
pub const HTONS = @compileError("unable to translate C expr: unexpected token '='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:148:9
pub const HTONLL = @compileError("unable to translate C expr: unexpected token '='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:149:9
pub const _U_CHAR = "";
pub const _U_SHORT = "";
pub const _U_INT = "";
pub const _U_LONG = "";
pub const __DARWIN_UINT = "";
pub const _CADDR_T = "";
pub const _DEV_T = "";
pub const _BLKCNT_T = "";
pub const _BLKSIZE_T = "";
pub const _GID_T = "";
pub const _IN_ADDR_T = "";
pub const _IN_PORT_T = "";
pub const _INO_T = "";
pub const _INO64_T = "";
pub const _KEY_T = "";
pub const _MODE_T = "";
pub const _NLINK_T = "";
pub const _ID_T = "";
pub const _PID_T = "";
pub const _UID_T = "";
pub inline fn major(x: anytype) i32 {
    _ = &x;
    return __helpers.cast(i32, (__helpers.cast(u_int32_t, x) >> @as(c_int, 24)) & @as(c_int, 0xff));
}
pub inline fn minor(x: anytype) i32 {
    _ = &x;
    return __helpers.cast(i32, x & __helpers.promoteIntLiteral(c_int, 0xffffff, .hex));
}
pub inline fn makedev(x: anytype, y: anytype) dev_t {
    _ = &x;
    _ = &y;
    return __helpers.cast(dev_t, (x << @as(c_int, 24)) | y);
}
pub const _CLOCK_T = "";
pub const _TIME_T = "";
pub const _USECONDS_T = "";
pub const _SUSECONDS_T = "";
pub const _RSIZE_T = "";
pub const _ERRNO_T = "";
pub const _FD_SET = "";
pub const __DARWIN_FD_SETSIZE = @as(c_int, 1024);
pub const __DARWIN_NBBY = @as(c_int, 8);
pub const __DARWIN_NFDBITS = __helpers.sizeof(__int32_t) * __DARWIN_NBBY;
pub inline fn __DARWIN_howmany(x: anytype, y: anytype) @TypeOf(if (__helpers.cast(bool, __helpers.rem(x, y) == @as(c_int, 0))) __helpers.div(x, y) else __helpers.div(x, y) + @as(c_int, 1)) {
    _ = &x;
    _ = &y;
    return if (__helpers.cast(bool, __helpers.rem(x, y) == @as(c_int, 0))) __helpers.div(x, y) else __helpers.div(x, y) + @as(c_int, 1);
}
pub inline fn __DARWIN_FD_SET(n: anytype, p: anytype) @TypeOf(__darwin_fd_set(n, p)) {
    _ = &n;
    _ = &p;
    return __darwin_fd_set(n, p);
}
pub inline fn __DARWIN_FD_CLR(n: anytype, p: anytype) @TypeOf(__darwin_fd_clr(n, p)) {
    _ = &n;
    _ = &p;
    return __darwin_fd_clr(n, p);
}
pub inline fn __DARWIN_FD_ISSET(n: anytype, p: anytype) @TypeOf(__darwin_fd_isset(n, p)) {
    _ = &n;
    _ = &p;
    return __darwin_fd_isset(n, p);
}
pub const __DARWIN_FD_ZERO = @compileError("unable to translate macro: undefined identifier `__builtin_bzero`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h:115:9
pub inline fn __DARWIN_FD_COPY(f: anytype, t: anytype) @TypeOf(bcopy(f, t, __helpers.sizeof(f.*))) {
    _ = &f;
    _ = &t;
    return bcopy(f, t, __helpers.sizeof(f.*));
}
pub const NBBY = __DARWIN_NBBY;
pub const NFDBITS = __DARWIN_NFDBITS;
pub inline fn howmany(x: anytype, y: anytype) @TypeOf(__DARWIN_howmany(x, y)) {
    _ = &x;
    _ = &y;
    return __DARWIN_howmany(x, y);
}
pub const FD_SETSIZE = __DARWIN_FD_SETSIZE;
pub inline fn FD_SET(n: anytype, p: anytype) @TypeOf(__DARWIN_FD_SET(n, p)) {
    _ = &n;
    _ = &p;
    return __DARWIN_FD_SET(n, p);
}
pub inline fn FD_CLR(n: anytype, p: anytype) @TypeOf(__DARWIN_FD_CLR(n, p)) {
    _ = &n;
    _ = &p;
    return __DARWIN_FD_CLR(n, p);
}
pub inline fn FD_ZERO(p: anytype) @TypeOf(__DARWIN_FD_ZERO(p)) {
    _ = &p;
    return __DARWIN_FD_ZERO(p);
}
pub inline fn FD_ISSET(n: anytype, p: anytype) @TypeOf(__DARWIN_FD_ISSET(n, p)) {
    _ = &n;
    _ = &p;
    return __DARWIN_FD_ISSET(n, p);
}
pub inline fn FD_COPY(f: anytype, t: anytype) @TypeOf(__DARWIN_FD_COPY(f, t)) {
    _ = &f;
    _ = &t;
    return __DARWIN_FD_COPY(f, t);
}
pub const _PTHREAD_ATTR_T = "";
pub const _PTHREAD_COND_T = "";
pub const _PTHREAD_CONDATTR_T = "";
pub const _PTHREAD_MUTEX_T = "";
pub const _PTHREAD_MUTEXATTR_T = "";
pub const _PTHREAD_ONCE_T = "";
pub const _PTHREAD_RWLOCK_T = "";
pub const _PTHREAD_RWLOCKATTR_T = "";
pub const _PTHREAD_T = "";
pub const _PTHREAD_KEY_T = "";
pub const _FSBLKCNT_T = "";
pub const _FSFILCNT_T = "";
pub const __STDC_VERSION_STDARG_H__ = @as(c_int, 0);
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /opt/homebrew/Cellar/zig/0.16.0_1/lib/zig/compiler/aro/include/stdarg.h:12:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /opt/homebrew/Cellar/zig/0.16.0_1/lib/zig/compiler/aro/include/stdarg.h:14:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /opt/homebrew/Cellar/zig/0.16.0_1/lib/zig/compiler/aro/include/stdarg.h:15:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /opt/homebrew/Cellar/zig/0.16.0_1/lib/zig/compiler/aro/include/stdarg.h:18:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /opt/homebrew/Cellar/zig/0.16.0_1/lib/zig/compiler/aro/include/stdarg.h:22:9
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub const _UNISTD_H_ = "";
pub const _SYS_UNISTD_H_ = "";
pub const _POSIX_VERSION = @as(c_long, 200112);
pub const _POSIX2_VERSION = @as(c_long, 200112);
pub const _POSIX_VDISABLE = __helpers.cast(u8, '\xff');
pub const _POSIX_THREAD_KEYS_MAX = @as(c_int, 128);
pub const F_OK = @as(c_int, 0);
pub const X_OK = @as(c_int, 1) << @as(c_int, 0);
pub const W_OK = @as(c_int, 1) << @as(c_int, 1);
pub const R_OK = @as(c_int, 1) << @as(c_int, 2);
pub const _READ_OK = @as(c_int, 1) << @as(c_int, 9);
pub const _WRITE_OK = @as(c_int, 1) << @as(c_int, 10);
pub const _EXECUTE_OK = @as(c_int, 1) << @as(c_int, 11);
pub const _DELETE_OK = @as(c_int, 1) << @as(c_int, 12);
pub const _APPEND_OK = @as(c_int, 1) << @as(c_int, 13);
pub const _RMFILE_OK = @as(c_int, 1) << @as(c_int, 14);
pub const _RATTR_OK = @as(c_int, 1) << @as(c_int, 15);
pub const _WATTR_OK = @as(c_int, 1) << @as(c_int, 16);
pub const _REXT_OK = @as(c_int, 1) << @as(c_int, 17);
pub const _WEXT_OK = @as(c_int, 1) << @as(c_int, 18);
pub const _RPERM_OK = @as(c_int, 1) << @as(c_int, 19);
pub const _WPERM_OK = @as(c_int, 1) << @as(c_int, 20);
pub const _CHOWN_OK = @as(c_int, 1) << @as(c_int, 21);
pub const _ACCESS_EXTENDED_MASK = (((((((((((_READ_OK | _WRITE_OK) | _EXECUTE_OK) | _DELETE_OK) | _APPEND_OK) | _RMFILE_OK) | _REXT_OK) | _WEXT_OK) | _RATTR_OK) | _WATTR_OK) | _RPERM_OK) | _WPERM_OK) | _CHOWN_OK;
pub const L_SET = SEEK_SET;
pub const L_INCR = SEEK_CUR;
pub const L_XTND = SEEK_END;
pub const ACCESSX_MAX_DESCRIPTORS = @as(c_int, 100);
pub const ACCESSX_MAX_TABLESIZE = @as(c_int, 16) * @as(c_int, 1024);
pub const _PC_LINK_MAX = @as(c_int, 1);
pub const _PC_MAX_CANON = @as(c_int, 2);
pub const _PC_MAX_INPUT = @as(c_int, 3);
pub const _PC_NAME_MAX = @as(c_int, 4);
pub const _PC_PATH_MAX = @as(c_int, 5);
pub const _PC_PIPE_BUF = @as(c_int, 6);
pub const _PC_CHOWN_RESTRICTED = @as(c_int, 7);
pub const _PC_NO_TRUNC = @as(c_int, 8);
pub const _PC_VDISABLE = @as(c_int, 9);
pub const _PC_NAME_CHARS_MAX = @as(c_int, 10);
pub const _PC_CASE_SENSITIVE = @as(c_int, 11);
pub const _PC_CASE_PRESERVING = @as(c_int, 12);
pub const _PC_EXTENDED_SECURITY_NP = @as(c_int, 13);
pub const _PC_AUTH_OPAQUE_NP = @as(c_int, 14);
pub const _PC_2_SYMLINKS = @as(c_int, 15);
pub const _PC_ALLOC_SIZE_MIN = @as(c_int, 16);
pub const _PC_ASYNC_IO = @as(c_int, 17);
pub const _PC_FILESIZEBITS = @as(c_int, 18);
pub const _PC_PRIO_IO = @as(c_int, 19);
pub const _PC_REC_INCR_XFER_SIZE = @as(c_int, 20);
pub const _PC_REC_MAX_XFER_SIZE = @as(c_int, 21);
pub const _PC_REC_MIN_XFER_SIZE = @as(c_int, 22);
pub const _PC_REC_XFER_ALIGN = @as(c_int, 23);
pub const _PC_SYMLINK_MAX = @as(c_int, 24);
pub const _PC_SYNC_IO = @as(c_int, 25);
pub const _PC_XATTR_SIZE_BITS = @as(c_int, 26);
pub const _PC_MIN_HOLE_SIZE = @as(c_int, 27);
pub const _CS_PATH = @as(c_int, 1);
pub const _UINT64_T = "";
pub const _UINT32_T = "";
pub const _LIBC_COUNT__PATH_MAX = "";
pub const STDIN_FILENO = @as(c_int, 0);
pub const STDOUT_FILENO = @as(c_int, 1);
pub const STDERR_FILENO = @as(c_int, 2);
pub const _XOPEN_VERSION = @as(c_int, 600);
pub const _XOPEN_XCU_VERSION = @as(c_int, 4);
pub const _POSIX_ADVISORY_INFO = -@as(c_int, 1);
pub const _POSIX_ASYNCHRONOUS_IO = -@as(c_int, 1);
pub const _POSIX_BARRIERS = -@as(c_int, 1);
pub const _POSIX_CHOWN_RESTRICTED = @as(c_long, 200112);
pub const _POSIX_CLOCK_SELECTION = -@as(c_int, 1);
pub const _POSIX_CPUTIME = -@as(c_int, 1);
pub const _POSIX_FSYNC = @as(c_long, 200112);
pub const _POSIX_IPV6 = @as(c_long, 200112);
pub const _POSIX_JOB_CONTROL = @as(c_long, 200112);
pub const _POSIX_MAPPED_FILES = @as(c_long, 200112);
pub const _POSIX_MEMLOCK = -@as(c_int, 1);
pub const _POSIX_MEMLOCK_RANGE = -@as(c_int, 1);
pub const _POSIX_MEMORY_PROTECTION = @as(c_long, 200112);
pub const _POSIX_MESSAGE_PASSING = -@as(c_int, 1);
pub const _POSIX_MONOTONIC_CLOCK = -@as(c_int, 1);
pub const _POSIX_NO_TRUNC = @as(c_long, 200112);
pub const _POSIX_PRIORITIZED_IO = -@as(c_int, 1);
pub const _POSIX_PRIORITY_SCHEDULING = -@as(c_int, 1);
pub const _POSIX_RAW_SOCKETS = -@as(c_int, 1);
pub const _POSIX_READER_WRITER_LOCKS = @as(c_long, 200112);
pub const _POSIX_REALTIME_SIGNALS = -@as(c_int, 1);
pub const _POSIX_REGEXP = @as(c_long, 200112);
pub const _POSIX_SAVED_IDS = @as(c_long, 200112);
pub const _POSIX_SEMAPHORES = -@as(c_int, 1);
pub const _POSIX_SHARED_MEMORY_OBJECTS = -@as(c_int, 1);
pub const _POSIX_SHELL = @as(c_long, 200112);
pub const _POSIX_SPAWN = @as(c_long, 200112);
pub const _POSIX_SPIN_LOCKS = -@as(c_int, 1);
pub const _POSIX_SPORADIC_SERVER = -@as(c_int, 1);
pub const _POSIX_SYNCHRONIZED_IO = -@as(c_int, 1);
pub const _POSIX_THREAD_ATTR_STACKADDR = @as(c_long, 200112);
pub const _POSIX_THREAD_ATTR_STACKSIZE = @as(c_long, 200112);
pub const _POSIX_THREAD_CPUTIME = -@as(c_int, 1);
pub const _POSIX_THREAD_PRIO_INHERIT = -@as(c_int, 1);
pub const _POSIX_THREAD_PRIO_PROTECT = -@as(c_int, 1);
pub const _POSIX_THREAD_PRIORITY_SCHEDULING = -@as(c_int, 1);
pub const _POSIX_THREAD_PROCESS_SHARED = @as(c_long, 200112);
pub const _POSIX_THREAD_SAFE_FUNCTIONS = @as(c_long, 200112);
pub const _POSIX_THREAD_SPORADIC_SERVER = -@as(c_int, 1);
pub const _POSIX_THREADS = @as(c_long, 200112);
pub const _POSIX_TIMEOUTS = -@as(c_int, 1);
pub const _POSIX_TIMERS = -@as(c_int, 1);
pub const _POSIX_TRACE = -@as(c_int, 1);
pub const _POSIX_TRACE_EVENT_FILTER = -@as(c_int, 1);
pub const _POSIX_TRACE_INHERIT = -@as(c_int, 1);
pub const _POSIX_TRACE_LOG = -@as(c_int, 1);
pub const _POSIX_TYPED_MEMORY_OBJECTS = -@as(c_int, 1);
pub const _POSIX2_C_BIND = @as(c_long, 200112);
pub const _POSIX2_C_DEV = @as(c_long, 200112);
pub const _POSIX2_CHAR_TERM = @as(c_long, 200112);
pub const _POSIX2_FORT_DEV = -@as(c_int, 1);
pub const _POSIX2_FORT_RUN = @as(c_long, 200112);
pub const _POSIX2_LOCALEDEF = @as(c_long, 200112);
pub const _POSIX2_PBS = -@as(c_int, 1);
pub const _POSIX2_PBS_ACCOUNTING = -@as(c_int, 1);
pub const _POSIX2_PBS_CHECKPOINT = -@as(c_int, 1);
pub const _POSIX2_PBS_LOCATE = -@as(c_int, 1);
pub const _POSIX2_PBS_MESSAGE = -@as(c_int, 1);
pub const _POSIX2_PBS_TRACK = -@as(c_int, 1);
pub const _POSIX2_SW_DEV = @as(c_long, 200112);
pub const _POSIX2_UPE = @as(c_long, 200112);
pub const __ILP32_OFF32 = -@as(c_int, 1);
pub const __ILP32_OFFBIG = -@as(c_int, 1);
pub const __LP64_OFF64 = @as(c_int, 1);
pub const __LPBIG_OFFBIG = @as(c_int, 1);
pub const _POSIX_V6_ILP32_OFF32 = __ILP32_OFF32;
pub const _POSIX_V6_ILP32_OFFBIG = __ILP32_OFFBIG;
pub const _POSIX_V6_LP64_OFF64 = __LP64_OFF64;
pub const _POSIX_V6_LPBIG_OFFBIG = __LPBIG_OFFBIG;
pub const _POSIX_V7_ILP32_OFF32 = __ILP32_OFF32;
pub const _POSIX_V7_ILP32_OFFBIG = __ILP32_OFFBIG;
pub const _POSIX_V7_LP64_OFF64 = __LP64_OFF64;
pub const _POSIX_V7_LPBIG_OFFBIG = __LPBIG_OFFBIG;
pub const _V6_ILP32_OFF32 = __ILP32_OFF32;
pub const _V6_ILP32_OFFBIG = __ILP32_OFFBIG;
pub const _V6_LP64_OFF64 = __LP64_OFF64;
pub const _V6_LPBIG_OFFBIG = __LPBIG_OFFBIG;
pub const _XBS5_ILP32_OFF32 = __ILP32_OFF32;
pub const _XBS5_ILP32_OFFBIG = __ILP32_OFFBIG;
pub const _XBS5_LP64_OFF64 = __LP64_OFF64;
pub const _XBS5_LPBIG_OFFBIG = __LPBIG_OFFBIG;
pub const _XOPEN_CRYPT = @as(c_int, 1);
pub const _XOPEN_ENH_I18N = @as(c_int, 1);
pub const _XOPEN_LEGACY = -@as(c_int, 1);
pub const _XOPEN_REALTIME = -@as(c_int, 1);
pub const _XOPEN_REALTIME_THREADS = -@as(c_int, 1);
pub const _XOPEN_SHM = @as(c_int, 1);
pub const _XOPEN_STREAMS = -@as(c_int, 1);
pub const _XOPEN_UNIX = @as(c_int, 1);
pub const _SC_ARG_MAX = @as(c_int, 1);
pub const _SC_CHILD_MAX = @as(c_int, 2);
pub const _SC_CLK_TCK = @as(c_int, 3);
pub const _SC_NGROUPS_MAX = @as(c_int, 4);
pub const _SC_OPEN_MAX = @as(c_int, 5);
pub const _SC_JOB_CONTROL = @as(c_int, 6);
pub const _SC_SAVED_IDS = @as(c_int, 7);
pub const _SC_VERSION = @as(c_int, 8);
pub const _SC_BC_BASE_MAX = @as(c_int, 9);
pub const _SC_BC_DIM_MAX = @as(c_int, 10);
pub const _SC_BC_SCALE_MAX = @as(c_int, 11);
pub const _SC_BC_STRING_MAX = @as(c_int, 12);
pub const _SC_COLL_WEIGHTS_MAX = @as(c_int, 13);
pub const _SC_EXPR_NEST_MAX = @as(c_int, 14);
pub const _SC_LINE_MAX = @as(c_int, 15);
pub const _SC_RE_DUP_MAX = @as(c_int, 16);
pub const _SC_2_VERSION = @as(c_int, 17);
pub const _SC_2_C_BIND = @as(c_int, 18);
pub const _SC_2_C_DEV = @as(c_int, 19);
pub const _SC_2_CHAR_TERM = @as(c_int, 20);
pub const _SC_2_FORT_DEV = @as(c_int, 21);
pub const _SC_2_FORT_RUN = @as(c_int, 22);
pub const _SC_2_LOCALEDEF = @as(c_int, 23);
pub const _SC_2_SW_DEV = @as(c_int, 24);
pub const _SC_2_UPE = @as(c_int, 25);
pub const _SC_STREAM_MAX = @as(c_int, 26);
pub const _SC_TZNAME_MAX = @as(c_int, 27);
pub const _SC_ASYNCHRONOUS_IO = @as(c_int, 28);
pub const _SC_PAGESIZE = @as(c_int, 29);
pub const _SC_MEMLOCK = @as(c_int, 30);
pub const _SC_MEMLOCK_RANGE = @as(c_int, 31);
pub const _SC_MEMORY_PROTECTION = @as(c_int, 32);
pub const _SC_MESSAGE_PASSING = @as(c_int, 33);
pub const _SC_PRIORITIZED_IO = @as(c_int, 34);
pub const _SC_PRIORITY_SCHEDULING = @as(c_int, 35);
pub const _SC_REALTIME_SIGNALS = @as(c_int, 36);
pub const _SC_SEMAPHORES = @as(c_int, 37);
pub const _SC_FSYNC = @as(c_int, 38);
pub const _SC_SHARED_MEMORY_OBJECTS = @as(c_int, 39);
pub const _SC_SYNCHRONIZED_IO = @as(c_int, 40);
pub const _SC_TIMERS = @as(c_int, 41);
pub const _SC_AIO_LISTIO_MAX = @as(c_int, 42);
pub const _SC_AIO_MAX = @as(c_int, 43);
pub const _SC_AIO_PRIO_DELTA_MAX = @as(c_int, 44);
pub const _SC_DELAYTIMER_MAX = @as(c_int, 45);
pub const _SC_MQ_OPEN_MAX = @as(c_int, 46);
pub const _SC_MAPPED_FILES = @as(c_int, 47);
pub const _SC_RTSIG_MAX = @as(c_int, 48);
pub const _SC_SEM_NSEMS_MAX = @as(c_int, 49);
pub const _SC_SEM_VALUE_MAX = @as(c_int, 50);
pub const _SC_SIGQUEUE_MAX = @as(c_int, 51);
pub const _SC_TIMER_MAX = @as(c_int, 52);
pub const _SC_NPROCESSORS_CONF = @as(c_int, 57);
pub const _SC_NPROCESSORS_ONLN = @as(c_int, 58);
pub const _SC_2_PBS = @as(c_int, 59);
pub const _SC_2_PBS_ACCOUNTING = @as(c_int, 60);
pub const _SC_2_PBS_CHECKPOINT = @as(c_int, 61);
pub const _SC_2_PBS_LOCATE = @as(c_int, 62);
pub const _SC_2_PBS_MESSAGE = @as(c_int, 63);
pub const _SC_2_PBS_TRACK = @as(c_int, 64);
pub const _SC_ADVISORY_INFO = @as(c_int, 65);
pub const _SC_BARRIERS = @as(c_int, 66);
pub const _SC_CLOCK_SELECTION = @as(c_int, 67);
pub const _SC_CPUTIME = @as(c_int, 68);
pub const _SC_FILE_LOCKING = @as(c_int, 69);
pub const _SC_GETGR_R_SIZE_MAX = @as(c_int, 70);
pub const _SC_GETPW_R_SIZE_MAX = @as(c_int, 71);
pub const _SC_HOST_NAME_MAX = @as(c_int, 72);
pub const _SC_LOGIN_NAME_MAX = @as(c_int, 73);
pub const _SC_MONOTONIC_CLOCK = @as(c_int, 74);
pub const _SC_MQ_PRIO_MAX = @as(c_int, 75);
pub const _SC_READER_WRITER_LOCKS = @as(c_int, 76);
pub const _SC_REGEXP = @as(c_int, 77);
pub const _SC_SHELL = @as(c_int, 78);
pub const _SC_SPAWN = @as(c_int, 79);
pub const _SC_SPIN_LOCKS = @as(c_int, 80);
pub const _SC_SPORADIC_SERVER = @as(c_int, 81);
pub const _SC_THREAD_ATTR_STACKADDR = @as(c_int, 82);
pub const _SC_THREAD_ATTR_STACKSIZE = @as(c_int, 83);
pub const _SC_THREAD_CPUTIME = @as(c_int, 84);
pub const _SC_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 85);
pub const _SC_THREAD_KEYS_MAX = @as(c_int, 86);
pub const _SC_THREAD_PRIO_INHERIT = @as(c_int, 87);
pub const _SC_THREAD_PRIO_PROTECT = @as(c_int, 88);
pub const _SC_THREAD_PRIORITY_SCHEDULING = @as(c_int, 89);
pub const _SC_THREAD_PROCESS_SHARED = @as(c_int, 90);
pub const _SC_THREAD_SAFE_FUNCTIONS = @as(c_int, 91);
pub const _SC_THREAD_SPORADIC_SERVER = @as(c_int, 92);
pub const _SC_THREAD_STACK_MIN = @as(c_int, 93);
pub const _SC_THREAD_THREADS_MAX = @as(c_int, 94);
pub const _SC_TIMEOUTS = @as(c_int, 95);
pub const _SC_THREADS = @as(c_int, 96);
pub const _SC_TRACE = @as(c_int, 97);
pub const _SC_TRACE_EVENT_FILTER = @as(c_int, 98);
pub const _SC_TRACE_INHERIT = @as(c_int, 99);
pub const _SC_TRACE_LOG = @as(c_int, 100);
pub const _SC_TTY_NAME_MAX = @as(c_int, 101);
pub const _SC_TYPED_MEMORY_OBJECTS = @as(c_int, 102);
pub const _SC_V6_ILP32_OFF32 = @as(c_int, 103);
pub const _SC_V6_ILP32_OFFBIG = @as(c_int, 104);
pub const _SC_V6_LP64_OFF64 = @as(c_int, 105);
pub const _SC_V6_LPBIG_OFFBIG = @as(c_int, 106);
pub const _SC_IPV6 = @as(c_int, 118);
pub const _SC_RAW_SOCKETS = @as(c_int, 119);
pub const _SC_SYMLOOP_MAX = @as(c_int, 120);
pub const _SC_ATEXIT_MAX = @as(c_int, 107);
pub const _SC_IOV_MAX = @as(c_int, 56);
pub const _SC_PAGE_SIZE = _SC_PAGESIZE;
pub const _SC_XOPEN_CRYPT = @as(c_int, 108);
pub const _SC_XOPEN_ENH_I18N = @as(c_int, 109);
pub const _SC_XOPEN_LEGACY = @as(c_int, 110);
pub const _SC_XOPEN_REALTIME = @as(c_int, 111);
pub const _SC_XOPEN_REALTIME_THREADS = @as(c_int, 112);
pub const _SC_XOPEN_SHM = @as(c_int, 113);
pub const _SC_XOPEN_STREAMS = @as(c_int, 114);
pub const _SC_XOPEN_UNIX = @as(c_int, 115);
pub const _SC_XOPEN_VERSION = @as(c_int, 116);
pub const _SC_XOPEN_XCU_VERSION = @as(c_int, 121);
pub const _SC_XBS5_ILP32_OFF32 = @as(c_int, 122);
pub const _SC_XBS5_ILP32_OFFBIG = @as(c_int, 123);
pub const _SC_XBS5_LP64_OFF64 = @as(c_int, 124);
pub const _SC_XBS5_LPBIG_OFFBIG = @as(c_int, 125);
pub const _SC_SS_REPL_MAX = @as(c_int, 126);
pub const _SC_TRACE_EVENT_NAME_MAX = @as(c_int, 127);
pub const _SC_TRACE_NAME_MAX = @as(c_int, 128);
pub const _SC_TRACE_SYS_MAX = @as(c_int, 129);
pub const _SC_TRACE_USER_EVENT_MAX = @as(c_int, 130);
pub const _SC_PASS_MAX = @as(c_int, 131);
pub const _SC_PHYS_PAGES = @as(c_int, 200);
pub const _CS_POSIX_V6_ILP32_OFF32_CFLAGS = @as(c_int, 2);
pub const _CS_POSIX_V6_ILP32_OFF32_LDFLAGS = @as(c_int, 3);
pub const _CS_POSIX_V6_ILP32_OFF32_LIBS = @as(c_int, 4);
pub const _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS = @as(c_int, 5);
pub const _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS = @as(c_int, 6);
pub const _CS_POSIX_V6_ILP32_OFFBIG_LIBS = @as(c_int, 7);
pub const _CS_POSIX_V6_LP64_OFF64_CFLAGS = @as(c_int, 8);
pub const _CS_POSIX_V6_LP64_OFF64_LDFLAGS = @as(c_int, 9);
pub const _CS_POSIX_V6_LP64_OFF64_LIBS = @as(c_int, 10);
pub const _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS = @as(c_int, 11);
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS = @as(c_int, 12);
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LIBS = @as(c_int, 13);
pub const _CS_POSIX_V6_WIDTH_RESTRICTED_ENVS = @as(c_int, 14);
pub const _CS_XBS5_ILP32_OFF32_CFLAGS = @as(c_int, 20);
pub const _CS_XBS5_ILP32_OFF32_LDFLAGS = @as(c_int, 21);
pub const _CS_XBS5_ILP32_OFF32_LIBS = @as(c_int, 22);
pub const _CS_XBS5_ILP32_OFF32_LINTFLAGS = @as(c_int, 23);
pub const _CS_XBS5_ILP32_OFFBIG_CFLAGS = @as(c_int, 24);
pub const _CS_XBS5_ILP32_OFFBIG_LDFLAGS = @as(c_int, 25);
pub const _CS_XBS5_ILP32_OFFBIG_LIBS = @as(c_int, 26);
pub const _CS_XBS5_ILP32_OFFBIG_LINTFLAGS = @as(c_int, 27);
pub const _CS_XBS5_LP64_OFF64_CFLAGS = @as(c_int, 28);
pub const _CS_XBS5_LP64_OFF64_LDFLAGS = @as(c_int, 29);
pub const _CS_XBS5_LP64_OFF64_LIBS = @as(c_int, 30);
pub const _CS_XBS5_LP64_OFF64_LINTFLAGS = @as(c_int, 31);
pub const _CS_XBS5_LPBIG_OFFBIG_CFLAGS = @as(c_int, 32);
pub const _CS_XBS5_LPBIG_OFFBIG_LDFLAGS = @as(c_int, 33);
pub const _CS_XBS5_LPBIG_OFFBIG_LIBS = @as(c_int, 34);
pub const _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS = @as(c_int, 35);
pub const _CS_DARWIN_USER_DIR = __helpers.promoteIntLiteral(c_int, 65536, .decimal);
pub const _CS_DARWIN_USER_TEMP_DIR = __helpers.promoteIntLiteral(c_int, 65537, .decimal);
pub const _CS_DARWIN_USER_CACHE_DIR = __helpers.promoteIntLiteral(c_int, 65538, .decimal);
pub const F_ULOCK = @as(c_int, 0);
pub const F_LOCK = @as(c_int, 1);
pub const F_TLOCK = @as(c_int, 2);
pub const F_TEST = @as(c_int, 3);
pub const _SYS_SELECT_H_ = "";
pub const _STRUCT_TIMESPEC = struct_timespec;
pub const _STRUCT_TIMEVAL = struct_timeval;
pub const _SIGSET_T = "";
pub const _SYS__SELECT_H_ = "";
pub const _UUID_T = "";
pub const __GETHOSTUUID_H = "";
pub const SYNC_VOLUME_FULLSYNC = @as(c_int, 0x01);
pub const SYNC_VOLUME_WAIT = @as(c_int, 0x02);
pub const z_off_t = c_long;
pub const z_off64_t = off_t;
pub const ZLIB_VERSION = "1.2.12";
pub const ZLIB_VERNUM = @as(c_int, 0x12c0);
pub const ZLIB_VER_MAJOR = @as(c_int, 1);
pub const ZLIB_VER_MINOR = @as(c_int, 2);
pub const ZLIB_VER_REVISION = @as(c_int, 12);
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
pub const _CTYPE_H_ = "";
pub const __CTYPE_H_ = "";
pub const _RUNETYPE_H_ = "";
pub const _CT_RUNE_T = "";
pub const _RUNE_T = "";
pub const _WCHAR_T = "";
pub const _WINT_T = "";
pub const _CACHED_RUNES = @as(c_int, 1) << @as(c_int, 8);
pub const _CRMASK = ~(_CACHED_RUNES - @as(c_int, 1));
pub const _RUNE_MAGIC_A = "RuneMagA";
pub const _CTYPE_A = @as(c_long, 0x00000100);
pub const _CTYPE_C = @as(c_long, 0x00000200);
pub const _CTYPE_D = @as(c_long, 0x00000400);
pub const _CTYPE_G = @as(c_long, 0x00000800);
pub const _CTYPE_L = @as(c_long, 0x00001000);
pub const _CTYPE_P = @as(c_long, 0x00002000);
pub const _CTYPE_S = @as(c_long, 0x00004000);
pub const _CTYPE_U = @as(c_long, 0x00008000);
pub const _CTYPE_X = @as(c_long, 0x00010000);
pub const _CTYPE_B = @as(c_long, 0x00020000);
pub const _CTYPE_R = @as(c_long, 0x00040000);
pub const _CTYPE_I = @as(c_long, 0x00080000);
pub const _CTYPE_T = @as(c_long, 0x00100000);
pub const _CTYPE_Q = @as(c_long, 0x00200000);
pub const _CTYPE_SW0 = @as(c_long, 0x20000000);
pub const _CTYPE_SW1 = @as(c_long, 0x40000000);
pub const _CTYPE_SW2 = __helpers.promoteIntLiteral(c_long, 0x80000000, .hex);
pub const _CTYPE_SW3 = __helpers.promoteIntLiteral(c_long, 0xc0000000, .hex);
pub const _CTYPE_SWM = __helpers.promoteIntLiteral(c_long, 0xe0000000, .hex);
pub const _CTYPE_SWS = @as(c_int, 30);
pub const __DARWIN_CTYPE_inline = __header_inline;
pub const __DARWIN_CTYPE_TOP_inline = __header_inline;
pub inline fn _tolower(c: anytype) @TypeOf(__tolower(c)) {
    _ = &c;
    return __tolower(c);
}
pub inline fn _toupper(c: anytype) @TypeOf(__toupper(c)) {
    _ = &c;
    return __toupper(c);
}
pub const __TERMIOS_H__ = "";
pub const _SYS_TERMIOS_H_ = "";
pub const VEOF = @as(c_int, 0);
pub const VEOL = @as(c_int, 1);
pub const VEOL2 = @as(c_int, 2);
pub const VERASE = @as(c_int, 3);
pub const VWERASE = @as(c_int, 4);
pub const VKILL = @as(c_int, 5);
pub const VREPRINT = @as(c_int, 6);
pub const VINTR = @as(c_int, 8);
pub const VQUIT = @as(c_int, 9);
pub const VSUSP = @as(c_int, 10);
pub const VDSUSP = @as(c_int, 11);
pub const VSTART = @as(c_int, 12);
pub const VSTOP = @as(c_int, 13);
pub const VLNEXT = @as(c_int, 14);
pub const VDISCARD = @as(c_int, 15);
pub const VMIN = @as(c_int, 16);
pub const VTIME = @as(c_int, 17);
pub const VSTATUS = @as(c_int, 18);
pub const NCCS = @as(c_int, 20);
pub inline fn CCEQ(val: anytype, c: anytype) @TypeOf(if (__helpers.cast(bool, c == val)) val != _POSIX_VDISABLE else @as(c_int, 0)) {
    _ = &val;
    _ = &c;
    return if (__helpers.cast(bool, c == val)) val != _POSIX_VDISABLE else @as(c_int, 0);
}
pub const IGNBRK = @as(c_int, 0x00000001);
pub const BRKINT = @as(c_int, 0x00000002);
pub const IGNPAR = @as(c_int, 0x00000004);
pub const PARMRK = @as(c_int, 0x00000008);
pub const INPCK = @as(c_int, 0x00000010);
pub const ISTRIP = @as(c_int, 0x00000020);
pub const INLCR = @as(c_int, 0x00000040);
pub const IGNCR = @as(c_int, 0x00000080);
pub const ICRNL = @as(c_int, 0x00000100);
pub const IXON = @as(c_int, 0x00000200);
pub const IXOFF = @as(c_int, 0x00000400);
pub const IXANY = @as(c_int, 0x00000800);
pub const IMAXBEL = @as(c_int, 0x00002000);
pub const IUTF8 = @as(c_int, 0x00004000);
pub const OPOST = @as(c_int, 0x00000001);
pub const ONLCR = @as(c_int, 0x00000002);
pub const OXTABS = @as(c_int, 0x00000004);
pub const ONOEOT = @as(c_int, 0x00000008);
pub const OCRNL = @as(c_int, 0x00000010);
pub const ONOCR = @as(c_int, 0x00000020);
pub const ONLRET = @as(c_int, 0x00000040);
pub const OFILL = @as(c_int, 0x00000080);
pub const NLDLY = @as(c_int, 0x00000300);
pub const TABDLY = @as(c_int, 0x00000c04);
pub const CRDLY = @as(c_int, 0x00003000);
pub const FFDLY = @as(c_int, 0x00004000);
pub const BSDLY = __helpers.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const VTDLY = __helpers.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const OFDEL = __helpers.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const NL0 = @as(c_int, 0x00000000);
pub const NL1 = @as(c_int, 0x00000100);
pub const NL2 = @as(c_int, 0x00000200);
pub const NL3 = @as(c_int, 0x00000300);
pub const TAB0 = @as(c_int, 0x00000000);
pub const TAB1 = @as(c_int, 0x00000400);
pub const TAB2 = @as(c_int, 0x00000800);
pub const TAB3 = @as(c_int, 0x00000004);
pub const CR0 = @as(c_int, 0x00000000);
pub const CR1 = @as(c_int, 0x00001000);
pub const CR2 = @as(c_int, 0x00002000);
pub const CR3 = @as(c_int, 0x00003000);
pub const FF0 = @as(c_int, 0x00000000);
pub const FF1 = @as(c_int, 0x00004000);
pub const BS0 = @as(c_int, 0x00000000);
pub const BS1 = __helpers.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const VT0 = @as(c_int, 0x00000000);
pub const VT1 = __helpers.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const CIGNORE = @as(c_int, 0x00000001);
pub const CSIZE = @as(c_int, 0x00000300);
pub const CS5 = @as(c_int, 0x00000000);
pub const CS6 = @as(c_int, 0x00000100);
pub const CS7 = @as(c_int, 0x00000200);
pub const CS8 = @as(c_int, 0x00000300);
pub const CSTOPB = @as(c_int, 0x00000400);
pub const CREAD = @as(c_int, 0x00000800);
pub const PARENB = @as(c_int, 0x00001000);
pub const PARODD = @as(c_int, 0x00002000);
pub const HUPCL = @as(c_int, 0x00004000);
pub const CLOCAL = __helpers.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const CCTS_OFLOW = __helpers.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const CRTSCTS = CCTS_OFLOW | CRTS_IFLOW;
pub const CRTS_IFLOW = __helpers.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const CDTR_IFLOW = __helpers.promoteIntLiteral(c_int, 0x00040000, .hex);
pub const CDSR_OFLOW = __helpers.promoteIntLiteral(c_int, 0x00080000, .hex);
pub const CCAR_OFLOW = __helpers.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const MDMBUF = __helpers.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const ECHOKE = @as(c_int, 0x00000001);
pub const ECHOE = @as(c_int, 0x00000002);
pub const ECHOK = @as(c_int, 0x00000004);
pub const ECHO = @as(c_int, 0x00000008);
pub const ECHONL = @as(c_int, 0x00000010);
pub const ECHOPRT = @as(c_int, 0x00000020);
pub const ECHOCTL = @as(c_int, 0x00000040);
pub const ISIG = @as(c_int, 0x00000080);
pub const ICANON = @as(c_int, 0x00000100);
pub const ALTWERASE = @as(c_int, 0x00000200);
pub const IEXTEN = @as(c_int, 0x00000400);
pub const EXTPROC = @as(c_int, 0x00000800);
pub const TOSTOP = __helpers.promoteIntLiteral(c_int, 0x00400000, .hex);
pub const FLUSHO = __helpers.promoteIntLiteral(c_int, 0x00800000, .hex);
pub const NOKERNINFO = __helpers.promoteIntLiteral(c_int, 0x02000000, .hex);
pub const PENDIN = __helpers.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const NOFLSH = __helpers.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const TCSANOW = @as(c_int, 0);
pub const TCSADRAIN = @as(c_int, 1);
pub const TCSAFLUSH = @as(c_int, 2);
pub const TCSASOFT = @as(c_int, 0x10);
pub const B0 = @as(c_int, 0);
pub const B50 = @as(c_int, 50);
pub const B75 = @as(c_int, 75);
pub const B110 = @as(c_int, 110);
pub const B134 = @as(c_int, 134);
pub const B150 = @as(c_int, 150);
pub const B200 = @as(c_int, 200);
pub const B300 = @as(c_int, 300);
pub const B600 = @as(c_int, 600);
pub const B1200 = @as(c_int, 1200);
pub const B1800 = @as(c_int, 1800);
pub const B2400 = @as(c_int, 2400);
pub const B4800 = @as(c_int, 4800);
pub const B9600 = @as(c_int, 9600);
pub const B19200 = @as(c_int, 19200);
pub const B38400 = __helpers.promoteIntLiteral(c_int, 38400, .decimal);
pub const B7200 = @as(c_int, 7200);
pub const B14400 = @as(c_int, 14400);
pub const B28800 = @as(c_int, 28800);
pub const B57600 = __helpers.promoteIntLiteral(c_int, 57600, .decimal);
pub const B76800 = __helpers.promoteIntLiteral(c_int, 76800, .decimal);
pub const B115200 = __helpers.promoteIntLiteral(c_int, 115200, .decimal);
pub const B230400 = __helpers.promoteIntLiteral(c_int, 230400, .decimal);
pub const EXTA = @as(c_int, 19200);
pub const EXTB = __helpers.promoteIntLiteral(c_int, 38400, .decimal);
pub const TCIFLUSH = @as(c_int, 1);
pub const TCOFLUSH = @as(c_int, 2);
pub const TCIOFLUSH = @as(c_int, 3);
pub const TCOOFF = @as(c_int, 1);
pub const TCOON = @as(c_int, 2);
pub const TCIOFF = @as(c_int, 3);
pub const TCION = @as(c_int, 4);
pub const _SYS_TTYCOM_H_ = "";
pub const _SYS_IOCCOM_H_ = "";
pub const IOCPARM_MASK = @as(c_int, 0x1fff);
pub inline fn IOCPARM_LEN(x: anytype) @TypeOf((x >> @as(c_int, 16)) & IOCPARM_MASK) {
    _ = &x;
    return (x >> @as(c_int, 16)) & IOCPARM_MASK;
}
pub inline fn IOCBASECMD(x: anytype) @TypeOf(x & ~(IOCPARM_MASK << @as(c_int, 16))) {
    _ = &x;
    return x & ~(IOCPARM_MASK << @as(c_int, 16));
}
pub inline fn IOCGROUP(x: anytype) @TypeOf((x >> @as(c_int, 8)) & @as(c_int, 0xff)) {
    _ = &x;
    return (x >> @as(c_int, 8)) & @as(c_int, 0xff);
}
pub const IOCPARM_MAX = IOCPARM_MASK + @as(c_int, 1);
pub const IOC_VOID = __helpers.cast(__uint32_t, __helpers.promoteIntLiteral(c_int, 0x20000000, .hex));
pub const IOC_OUT = __helpers.cast(__uint32_t, __helpers.promoteIntLiteral(c_int, 0x40000000, .hex));
pub const IOC_IN = __helpers.cast(__uint32_t, __helpers.promoteIntLiteral(c_int, 0x80000000, .hex));
pub const IOC_INOUT = IOC_IN | IOC_OUT;
pub const IOC_DIRMASK = __helpers.cast(__uint32_t, __helpers.promoteIntLiteral(c_int, 0xe0000000, .hex));
pub inline fn _IOC(inout: anytype, group: anytype, num: anytype, len: anytype) @TypeOf(((inout | ((len & IOCPARM_MASK) << @as(c_int, 16))) | (group << @as(c_int, 8))) | num) {
    _ = &inout;
    _ = &group;
    _ = &num;
    _ = &len;
    return ((inout | ((len & IOCPARM_MASK) << @as(c_int, 16))) | (group << @as(c_int, 8))) | num;
}
pub inline fn _IO(g: anytype, n: anytype) @TypeOf(_IOC(IOC_VOID, g, n, @as(c_int, 0))) {
    _ = &g;
    _ = &n;
    return _IOC(IOC_VOID, g, n, @as(c_int, 0));
}
pub inline fn _IOR(g: anytype, n: anytype, t: anytype) @TypeOf(_IOC(IOC_OUT, g, n, __helpers.sizeof(t))) {
    _ = &g;
    _ = &n;
    _ = &t;
    return _IOC(IOC_OUT, g, n, __helpers.sizeof(t));
}
pub inline fn _IOW(g: anytype, n: anytype, t: anytype) @TypeOf(_IOC(IOC_IN, g, n, __helpers.sizeof(t))) {
    _ = &g;
    _ = &n;
    _ = &t;
    return _IOC(IOC_IN, g, n, __helpers.sizeof(t));
}
pub inline fn _IOWR(g: anytype, n: anytype, t: anytype) @TypeOf(_IOC(IOC_INOUT, g, n, __helpers.sizeof(t))) {
    _ = &g;
    _ = &n;
    _ = &t;
    return _IOC(IOC_INOUT, g, n, __helpers.sizeof(t));
}
pub const TIOCMODG = _IOR('t', @as(c_int, 3), c_int);
pub const TIOCMODS = _IOW('t', @as(c_int, 4), c_int);
pub const TIOCM_LE = @as(c_int, 0o001);
pub const TIOCM_DTR = @as(c_int, 0o002);
pub const TIOCM_RTS = @as(c_int, 0o004);
pub const TIOCM_ST = @as(c_int, 0o010);
pub const TIOCM_SR = @as(c_int, 0o020);
pub const TIOCM_CTS = @as(c_int, 0o040);
pub const TIOCM_CAR = @as(c_int, 0o100);
pub const TIOCM_CD = TIOCM_CAR;
pub const TIOCM_RNG = @as(c_int, 0o200);
pub const TIOCM_RI = TIOCM_RNG;
pub const TIOCM_DSR = @as(c_int, 0o400);
pub const TIOCEXCL = _IO('t', @as(c_int, 13));
pub const TIOCNXCL = _IO('t', @as(c_int, 14));
pub const TIOCFLUSH = _IOW('t', @as(c_int, 16), c_int);
pub const TIOCGETA = _IOR('t', @as(c_int, 19), struct_termios);
pub const TIOCSETA = _IOW('t', @as(c_int, 20), struct_termios);
pub const TIOCSETAW = _IOW('t', @as(c_int, 21), struct_termios);
pub const TIOCSETAF = _IOW('t', @as(c_int, 22), struct_termios);
pub const TIOCGETD = _IOR('t', @as(c_int, 26), c_int);
pub const TIOCSETD = _IOW('t', @as(c_int, 27), c_int);
pub const TIOCIXON = _IO('t', @as(c_int, 129));
pub const TIOCIXOFF = _IO('t', @as(c_int, 128));
pub const TIOCSBRK = _IO('t', @as(c_int, 123));
pub const TIOCCBRK = _IO('t', @as(c_int, 122));
pub const TIOCSDTR = _IO('t', @as(c_int, 121));
pub const TIOCCDTR = _IO('t', @as(c_int, 120));
pub const TIOCGPGRP = _IOR('t', @as(c_int, 119), c_int);
pub const TIOCSPGRP = _IOW('t', @as(c_int, 118), c_int);
pub const TIOCOUTQ = _IOR('t', @as(c_int, 115), c_int);
pub const TIOCSTI = _IOW('t', @as(c_int, 114), u8);
pub const TIOCNOTTY = _IO('t', @as(c_int, 113));
pub const TIOCPKT = _IOW('t', @as(c_int, 112), c_int);
pub const TIOCPKT_DATA = @as(c_int, 0x00);
pub const TIOCPKT_FLUSHREAD = @as(c_int, 0x01);
pub const TIOCPKT_FLUSHWRITE = @as(c_int, 0x02);
pub const TIOCPKT_STOP = @as(c_int, 0x04);
pub const TIOCPKT_START = @as(c_int, 0x08);
pub const TIOCPKT_NOSTOP = @as(c_int, 0x10);
pub const TIOCPKT_DOSTOP = @as(c_int, 0x20);
pub const TIOCPKT_IOCTL = @as(c_int, 0x40);
pub const TIOCSTOP = _IO('t', @as(c_int, 111));
pub const TIOCSTART = _IO('t', @as(c_int, 110));
pub const TIOCMSET = _IOW('t', @as(c_int, 109), c_int);
pub const TIOCMBIS = _IOW('t', @as(c_int, 108), c_int);
pub const TIOCMBIC = _IOW('t', @as(c_int, 107), c_int);
pub const TIOCMGET = _IOR('t', @as(c_int, 106), c_int);
pub const TIOCGWINSZ = _IOR('t', @as(c_int, 104), struct_winsize);
pub const TIOCSWINSZ = _IOW('t', @as(c_int, 103), struct_winsize);
pub const TIOCUCNTL = _IOW('t', @as(c_int, 102), c_int);
pub const TIOCSTAT = _IO('t', @as(c_int, 101));
pub inline fn UIOCCMD(n: anytype) @TypeOf(_IO('u', n)) {
    _ = &n;
    return _IO('u', n);
}
pub const TIOCSCONS = _IO('t', @as(c_int, 99));
pub const TIOCCONS = _IOW('t', @as(c_int, 98), c_int);
pub const TIOCSCTTY = _IO('t', @as(c_int, 97));
pub const TIOCEXT = _IOW('t', @as(c_int, 96), c_int);
pub const TIOCSIG = _IO('t', @as(c_int, 95));
pub const TIOCDRAIN = _IO('t', @as(c_int, 94));
pub const TIOCMSDTRWAIT = _IOW('t', @as(c_int, 91), c_int);
pub const TIOCMGDTRWAIT = _IOR('t', @as(c_int, 90), c_int);
pub const TIOCTIMESTAMP = _IOR('t', @as(c_int, 89), struct_timeval);
pub const TIOCDCDTIMESTAMP = _IOR('t', @as(c_int, 88), struct_timeval);
pub const TIOCSDRAINWAIT = _IOW('t', @as(c_int, 87), c_int);
pub const TIOCGDRAINWAIT = _IOR('t', @as(c_int, 86), c_int);
pub const TIOCDSIMICROCODE = _IO('t', @as(c_int, 85));
pub const TIOCPTYGRANT = _IO('t', @as(c_int, 84));
pub const TIOCPTYGNAME = _IOC(IOC_OUT, 't', @as(c_int, 83), @as(c_int, 128));
pub const TIOCPTYUNLK = _IO('t', @as(c_int, 82));
pub const TTYDISC = @as(c_int, 0);
pub const TABLDISC = @as(c_int, 3);
pub const SLIPDISC = @as(c_int, 4);
pub const PPPDISC = @as(c_int, 5);
pub const _SYS_TTYDEFAULTS_H_ = "";
pub const TTYDEF_IFLAG = (((BRKINT | ICRNL) | IMAXBEL) | IXON) | IXANY;
pub const TTYDEF_OFLAG = OPOST | ONLCR;
pub const TTYDEF_LFLAG = (((((ECHO | ICANON) | ISIG) | IEXTEN) | ECHOE) | ECHOKE) | ECHOCTL;
pub const TTYDEF_CFLAG = (CREAD | CS8) | HUPCL;
pub const TTYDEF_SPEED = B9600;
pub inline fn CTRL(x: anytype) @TypeOf(x & @as(c_int, 0o37)) {
    _ = &x;
    return x & @as(c_int, 0o37);
}
pub const CEOF = CTRL('d');
pub const CEOL = @as(c_int, 0xff);
pub const CERASE = @as(c_int, 0o177);
pub const CINTR = CTRL('c');
pub const CSTATUS = CTRL('t');
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
pub const PCRE2_MINOR = @as(c_int, 47);
pub const PCRE2_PRERELEASE = "";
pub const PCRE2_DATE = (@as(c_int, 2025) - @as(c_int, 10)) - @as(c_int, 21);
pub const PCRE2_EXP_DECL = @compileError("unable to translate C expr: unexpected token 'extern'"); // /opt/homebrew/include/pcre2.h:62:13
pub const PCRE2_CALL_CONVENTION = "";
pub const _GCC_LIMITS_H_ = "";
pub const __CLANG_LIMITS_H = "";
pub const _LIMITS_H_ = "";
pub const _BSD_MACHINE_LIMITS_H_ = "";
pub const _ARM_LIMITS_H_ = "";
pub const _ARM__LIMITS_H_ = "";
pub const __DARWIN_CLK_TCK = @as(c_int, 100);
pub const MB_LEN_MAX = @as(c_int, 6);
pub const CLK_TCK = __DARWIN_CLK_TCK;
pub const LONG_BIT = @as(c_int, 64);
pub const SSIZE_MAX = LONG_MAX;
pub const WORD_BIT = @as(c_int, 32);
pub const SIZE_T_MAX = ULONG_MAX;
pub const UQUAD_MAX = ULLONG_MAX;
pub const QUAD_MAX = LLONG_MAX;
pub const QUAD_MIN = LLONG_MIN;
pub const _SYS_SYSLIMITS_H_ = "";
pub const ARG_MAX = @as(c_int, 1024) * @as(c_int, 1024);
pub const CHILD_MAX = @as(c_int, 266);
pub const GID_MAX = __helpers.promoteIntLiteral(c_uint, 2147483647, .decimal);
pub const LINK_MAX = @as(c_int, 32767);
pub const MAX_CANON = @as(c_int, 1024);
pub const MAX_INPUT = @as(c_int, 1024);
pub const NAME_MAX = @as(c_int, 255);
pub const NGROUPS_MAX = @as(c_int, 16);
pub const UID_MAX = __helpers.promoteIntLiteral(c_uint, 2147483647, .decimal);
pub const OPEN_MAX = @as(c_int, 10240);
pub const PATH_MAX = @as(c_int, 1024);
pub const PIPE_BUF = @as(c_int, 512);
pub const BC_BASE_MAX = @as(c_int, 99);
pub const BC_DIM_MAX = @as(c_int, 2048);
pub const BC_SCALE_MAX = @as(c_int, 99);
pub const BC_STRING_MAX = @as(c_int, 1000);
pub const CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const EQUIV_CLASS_MAX = @as(c_int, 2);
pub const EXPR_NEST_MAX = @as(c_int, 32);
pub const LINE_MAX = @as(c_int, 2048);
pub const RE_DUP_MAX = @as(c_int, 255);
pub const NZERO = @as(c_int, 20);
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 25);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_NAME_MAX = @as(c_int, 14);
pub const _POSIX_NGROUPS_MAX = @as(c_int, 8);
pub const _POSIX_OPEN_MAX = @as(c_int, 20);
pub const _POSIX_PATH_MAX = @as(c_int, 256);
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_SSIZE_MAX = @as(c_int, 32767);
pub const _POSIX_STREAM_MAX = @as(c_int, 8);
pub const _POSIX_TZNAME_MAX = @as(c_int, 6);
pub const _POSIX2_BC_BASE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_DIM_MAX = @as(c_int, 2048);
pub const _POSIX2_BC_SCALE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_STRING_MAX = @as(c_int, 1000);
pub const _POSIX2_EQUIV_CLASS_MAX = @as(c_int, 2);
pub const _POSIX2_EXPR_NEST_MAX = @as(c_int, 32);
pub const _POSIX2_LINE_MAX = @as(c_int, 2048);
pub const _POSIX2_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = @as(c_int, 32);
pub const _POSIX_RTSIG_MAX = @as(c_int, 8);
pub const _POSIX_SEM_NSEMS_MAX = @as(c_int, 256);
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 32767);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_CLOCKRES_MIN = __helpers.promoteIntLiteral(c_int, 20000000, .decimal);
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const _POSIX_THREAD_THREADS_MAX = @as(c_int, 64);
pub const PTHREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const PTHREAD_KEYS_MAX = @as(c_int, 512);
pub const PTHREAD_STACK_MIN = @as(c_int, 16384);
pub const _POSIX_HOST_NAME_MAX = @as(c_int, 255);
pub const _POSIX_LOGIN_NAME_MAX = @as(c_int, 9);
pub const _POSIX_SS_REPL_MAX = @as(c_int, 4);
pub const _POSIX_SYMLINK_MAX = @as(c_int, 255);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_TRACE_EVENT_NAME_MAX = @as(c_int, 30);
pub const _POSIX_TRACE_NAME_MAX = @as(c_int, 8);
pub const _POSIX_TRACE_SYS_MAX = @as(c_int, 8);
pub const _POSIX_TRACE_USER_EVENT_MAX = @as(c_int, 32);
pub const _POSIX_TTY_NAME_MAX = @as(c_int, 9);
pub const _POSIX2_CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const _POSIX2_COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const _POSIX_RE_DUP_MAX = _POSIX2_RE_DUP_MAX;
pub const OFF_MIN = LLONG_MIN;
pub const OFF_MAX = LLONG_MAX;
pub const PASS_MAX = @as(c_int, 128);
pub const NL_ARGMAX = @as(c_int, 9);
pub const NL_LANGMAX = @as(c_int, 14);
pub const NL_MSGMAX = @as(c_int, 32767);
pub const NL_NMAX = @as(c_int, 1);
pub const NL_SETMAX = @as(c_int, 255);
pub const NL_TEXTMAX = @as(c_int, 2048);
pub const _XOPEN_IOV_MAX = @as(c_int, 16);
pub const IOV_MAX = @as(c_int, 1024);
pub const _XOPEN_NAME_MAX = @as(c_int, 255);
pub const _XOPEN_PATH_MAX = @as(c_int, 1024);
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
pub const _STDLIB_H_ = "";
pub const _LIBC_COUNT__MB_LEN_MAX = "";
pub const _SYS_WAIT_H_ = "";
pub const _SYS_SIGNAL_H_ = "";
pub const __DARWIN_NSIG = @as(c_int, 32);
pub const NSIG = __DARWIN_NSIG;
pub const _BSD_MACHINE_SIGNAL_H_ = "";
pub const _ARM_SIGNAL_ = @as(c_int, 1);
pub const SIGHUP = @as(c_int, 1);
pub const SIGINT = @as(c_int, 2);
pub const SIGQUIT = @as(c_int, 3);
pub const SIGILL = @as(c_int, 4);
pub const SIGTRAP = @as(c_int, 5);
pub const SIGABRT = @as(c_int, 6);
pub const SIGIOT = SIGABRT;
pub const SIGEMT = @as(c_int, 7);
pub const SIGFPE = @as(c_int, 8);
pub const SIGKILL = @as(c_int, 9);
pub const SIGBUS = @as(c_int, 10);
pub const SIGSEGV = @as(c_int, 11);
pub const SIGSYS = @as(c_int, 12);
pub const SIGPIPE = @as(c_int, 13);
pub const SIGALRM = @as(c_int, 14);
pub const SIGTERM = @as(c_int, 15);
pub const SIGURG = @as(c_int, 16);
pub const SIGSTOP = @as(c_int, 17);
pub const SIGTSTP = @as(c_int, 18);
pub const SIGCONT = @as(c_int, 19);
pub const SIGCHLD = @as(c_int, 20);
pub const SIGTTIN = @as(c_int, 21);
pub const SIGTTOU = @as(c_int, 22);
pub const SIGIO = @as(c_int, 23);
pub const SIGXCPU = @as(c_int, 24);
pub const SIGXFSZ = @as(c_int, 25);
pub const SIGVTALRM = @as(c_int, 26);
pub const SIGPROF = @as(c_int, 27);
pub const SIGWINCH = @as(c_int, 28);
pub const SIGINFO = @as(c_int, 29);
pub const SIGUSR1 = @as(c_int, 30);
pub const SIGUSR2 = @as(c_int, 31);
pub const SIG_DFL = @compileError("unable to translate C expr: expected ')' instead got '('"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:131:9
pub const SIG_IGN = @compileError("unable to translate C expr: expected ')' instead got '('"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:132:9
pub const SIG_HOLD = @compileError("unable to translate C expr: expected ')' instead got '('"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:133:9
pub const SIG_ERR = @compileError("unable to translate C expr: expected ')' instead got '('"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:134:9
pub const _BSD_MACHINE__MCONTEXT_H_ = "";
pub const __ARM_MCONTEXT_H_ = "";
pub const _MACH_MACHINE__STRUCTS_H_ = "";
pub const _MACH_ARM__STRUCTS_H_ = "";
pub const _STRUCT_ARM_EXCEPTION_STATE = struct___darwin_arm_exception_state;
pub const _STRUCT_ARM_EXCEPTION_STATE64 = struct___darwin_arm_exception_state64;
pub const _STRUCT_ARM_EXCEPTION_STATE64_V2 = struct___darwin_arm_exception_state64_v2;
pub const _STRUCT_ARM_THREAD_STATE = struct___darwin_arm_thread_state;
pub const __DARWIN_OPAQUE_ARM_THREAD_STATE64 = @as(c_int, 0);
pub const _STRUCT_ARM_THREAD_STATE64 = struct___darwin_arm_thread_state64;
pub inline fn __darwin_arm_thread_state64_get_pc(ts: anytype) @TypeOf(ts.__pc) {
    _ = &ts;
    return ts.__pc;
}
pub inline fn __darwin_arm_thread_state64_get_pc_fptr(ts: anytype) ?*anyopaque {
    _ = &ts;
    return __helpers.cast(?*anyopaque, __helpers.cast(usize, ts.__pc));
}
pub const __darwin_arm_thread_state64_set_pc_fptr = @compileError("unable to translate C expr: expected ')' instead got '='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:437:9
pub const __darwin_arm_thread_state64_set_pc_presigned_fptr = @compileError("unable to translate C expr: expected ')' instead got '='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:440:9
pub inline fn __darwin_arm_thread_state64_get_lr(ts: anytype) @TypeOf(ts.__lr) {
    _ = &ts;
    return ts.__lr;
}
pub inline fn __darwin_arm_thread_state64_get_lr_fptr(ts: anytype) ?*anyopaque {
    _ = &ts;
    return __helpers.cast(?*anyopaque, __helpers.cast(usize, ts.__lr));
}
pub const __darwin_arm_thread_state64_set_lr_fptr = @compileError("unable to translate C expr: expected ')' instead got '='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:449:9
pub const __darwin_arm_thread_state64_set_lr_presigned_fptr = @compileError("unable to translate C expr: expected ')' instead got '='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:452:9
pub inline fn __darwin_arm_thread_state64_get_sp(ts: anytype) @TypeOf(ts.__sp) {
    _ = &ts;
    return ts.__sp;
}
pub const __darwin_arm_thread_state64_set_sp = @compileError("unable to translate C expr: expected ')' instead got '='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:458:9
pub inline fn __darwin_arm_thread_state64_get_fp(ts: anytype) @TypeOf(ts.__fp) {
    _ = &ts;
    return ts.__fp;
}
pub const __darwin_arm_thread_state64_set_fp = @compileError("unable to translate C expr: expected ')' instead got '='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:464:9
pub const __darwin_arm_thread_state64_ptrauth_strip = __helpers.DISCARD;
pub const _STRUCT_ARM_VFP_STATE = struct___darwin_arm_vfp_state;
pub const _STRUCT_ARM_NEON_STATE64 = struct___darwin_arm_neon_state64;
pub const _STRUCT_ARM_NEON_STATE = struct___darwin_arm_neon_state;
pub const _STRUCT_ARM_PAGEIN_STATE = struct___arm_pagein_state;
pub const _STRUCT_ARM_SME_STATE = struct___darwin_arm_sme_state;
pub const _STRUCT_ARM_SVE_Z_STATE = struct___darwin_arm_sve_z_state;
pub const _STRUCT_ARM_SVE_P_STATE = struct___darwin_arm_sve_p_state;
pub const _STRUCT_ARM_SME_ZA_STATE = struct___darwin_arm_sme_za_state;
pub const _STRUCT_ARM_SME2_STATE = struct___darwin_arm_sme2_state;
pub const _STRUCT_ARM_LEGACY_DEBUG_STATE = struct___arm_legacy_debug_state;
pub const _STRUCT_ARM_DEBUG_STATE32 = struct___darwin_arm_debug_state32;
pub const _STRUCT_ARM_DEBUG_STATE64 = struct___darwin_arm_debug_state64;
pub const _STRUCT_ARM_CPMU_STATE64 = struct___darwin_arm_cpmu_state64;
pub const _STRUCT_MCONTEXT32 = struct___darwin_mcontext32;
pub const _STRUCT_MCONTEXT64 = struct___darwin_mcontext64;
pub const _MCONTEXT_T = "";
pub const _STRUCT_MCONTEXT = _STRUCT_MCONTEXT64;
pub const _STRUCT_SIGALTSTACK = struct___darwin_sigaltstack;
pub const _STRUCT_UCONTEXT = struct___darwin_ucontext;
pub const SIGEV_NONE = @as(c_int, 0);
pub const SIGEV_SIGNAL = @as(c_int, 1);
pub const SIGEV_THREAD = @as(c_int, 3);
pub const SIGEV_KEVENT = @as(c_int, 4);
pub const ILL_NOOP = @as(c_int, 0);
pub const ILL_ILLOPC = @as(c_int, 1);
pub const ILL_ILLTRP = @as(c_int, 2);
pub const ILL_PRVOPC = @as(c_int, 3);
pub const ILL_ILLOPN = @as(c_int, 4);
pub const ILL_ILLADR = @as(c_int, 5);
pub const ILL_PRVREG = @as(c_int, 6);
pub const ILL_COPROC = @as(c_int, 7);
pub const ILL_BADSTK = @as(c_int, 8);
pub const FPE_NOOP = @as(c_int, 0);
pub const FPE_FLTDIV = @as(c_int, 1);
pub const FPE_FLTOVF = @as(c_int, 2);
pub const FPE_FLTUND = @as(c_int, 3);
pub const FPE_FLTRES = @as(c_int, 4);
pub const FPE_FLTINV = @as(c_int, 5);
pub const FPE_FLTSUB = @as(c_int, 6);
pub const FPE_INTDIV = @as(c_int, 7);
pub const FPE_INTOVF = @as(c_int, 8);
pub const SEGV_NOOP = @as(c_int, 0);
pub const SEGV_MAPERR = @as(c_int, 1);
pub const SEGV_ACCERR = @as(c_int, 2);
pub const BUS_NOOP = @as(c_int, 0);
pub const BUS_ADRALN = @as(c_int, 1);
pub const BUS_ADRERR = @as(c_int, 2);
pub const BUS_OBJERR = @as(c_int, 3);
pub const TRAP_BRKPT = @as(c_int, 1);
pub const TRAP_TRACE = @as(c_int, 2);
pub const CLD_NOOP = @as(c_int, 0);
pub const CLD_EXITED = @as(c_int, 1);
pub const CLD_KILLED = @as(c_int, 2);
pub const CLD_DUMPED = @as(c_int, 3);
pub const CLD_TRAPPED = @as(c_int, 4);
pub const CLD_STOPPED = @as(c_int, 5);
pub const CLD_CONTINUED = @as(c_int, 6);
pub const POLL_IN = @as(c_int, 1);
pub const POLL_OUT = @as(c_int, 2);
pub const POLL_MSG = @as(c_int, 3);
pub const POLL_ERR = @as(c_int, 4);
pub const POLL_PRI = @as(c_int, 5);
pub const POLL_HUP = @as(c_int, 6);
pub const sa_handler = __sigaction_u.__sa_handler;
pub const sa_sigaction = __sigaction_u.__sa_sigaction;
pub const SA_ONSTACK = @as(c_int, 0x0001);
pub const SA_RESTART = @as(c_int, 0x0002);
pub const SA_RESETHAND = @as(c_int, 0x0004);
pub const SA_NOCLDSTOP = @as(c_int, 0x0008);
pub const SA_NODEFER = @as(c_int, 0x0010);
pub const SA_NOCLDWAIT = @as(c_int, 0x0020);
pub const SA_SIGINFO = @as(c_int, 0x0040);
pub const SA_USERTRAMP = @as(c_int, 0x0100);
pub const SA_64REGSET = @as(c_int, 0x0200);
pub const SA_USERSPACE_MASK = (((((SA_ONSTACK | SA_RESTART) | SA_RESETHAND) | SA_NOCLDSTOP) | SA_NODEFER) | SA_NOCLDWAIT) | SA_SIGINFO;
pub const SIG_BLOCK = @as(c_int, 1);
pub const SIG_UNBLOCK = @as(c_int, 2);
pub const SIG_SETMASK = @as(c_int, 3);
pub const SI_USER = __helpers.promoteIntLiteral(c_int, 0x10001, .hex);
pub const SI_QUEUE = __helpers.promoteIntLiteral(c_int, 0x10002, .hex);
pub const SI_TIMER = __helpers.promoteIntLiteral(c_int, 0x10003, .hex);
pub const SI_ASYNCIO = __helpers.promoteIntLiteral(c_int, 0x10004, .hex);
pub const SI_MESGQ = __helpers.promoteIntLiteral(c_int, 0x10005, .hex);
pub const SS_ONSTACK = @as(c_int, 0x0001);
pub const SS_DISABLE = @as(c_int, 0x0004);
pub const MINSIGSTKSZ = __helpers.promoteIntLiteral(c_int, 32768, .decimal);
pub const SIGSTKSZ = __helpers.promoteIntLiteral(c_int, 131072, .decimal);
pub const SV_ONSTACK = SA_ONSTACK;
pub const SV_INTERRUPT = SA_RESTART;
pub const SV_RESETHAND = SA_RESETHAND;
pub const SV_NODEFER = SA_NODEFER;
pub const SV_NOCLDSTOP = SA_NOCLDSTOP;
pub const SV_SIGINFO = SA_SIGINFO;
pub const sv_onstack = @compileError("unable to translate macro: undefined identifier `sv_flags`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:362:9
pub inline fn sigmask(m: anytype) @TypeOf(@as(c_int, 1) << (m - @as(c_int, 1))) {
    _ = &m;
    return @as(c_int, 1) << (m - @as(c_int, 1));
}
pub const BADSIG = SIG_ERR;
pub const _SYS_RESOURCE_H_ = "";
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H_ = "";
pub const __WORDSIZE = @as(c_int, 64);
pub const _UINT8_T = "";
pub const _UINT16_T = "";
pub const _INTMAX_T = "";
pub const _UINTMAX_T = "";
pub inline fn INT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT32_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const INT64_C = __helpers.LL_SUFFIX;
pub inline fn UINT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn UINT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const UINT32_C = __helpers.U_SUFFIX;
pub const UINT64_C = __helpers.ULL_SUFFIX;
pub const INTMAX_C = __helpers.L_SUFFIX;
pub const UINTMAX_C = __helpers.UL_SUFFIX;
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -__helpers.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -INT32_MAX - @as(c_int, 1);
pub const INT64_MIN = -INT64_MAX - @as(c_int, 1);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = @as(c_ulonglong, 18446744073709551615);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INTPTR_MIN = -INTPTR_MAX - @as(c_int, 1);
pub const UINTPTR_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MAX = INTMAX_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = UINTMAX_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTMAX_MIN = -INTMAX_MAX - @as(c_int, 1);
pub const PTRDIFF_MIN = INTMAX_MIN;
pub const PTRDIFF_MAX = INTMAX_MAX;
pub const SIZE_MAX = UINTPTR_MAX;
pub const RSIZE_MAX = SIZE_MAX >> @as(c_int, 1);
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = -WCHAR_MAX - @as(c_int, 1);
pub const WINT_MIN = INT32_MIN;
pub const WINT_MAX = INT32_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const PRIO_PROCESS = @as(c_int, 0);
pub const PRIO_PGRP = @as(c_int, 1);
pub const PRIO_USER = @as(c_int, 2);
pub const PRIO_DARWIN_THREAD = @as(c_int, 3);
pub const PRIO_DARWIN_PROCESS = @as(c_int, 4);
pub const PRIO_MIN = -@as(c_int, 20);
pub const PRIO_MAX = @as(c_int, 20);
pub const PRIO_DARWIN_BG = @as(c_int, 0x1000);
pub const PRIO_DARWIN_NONUI = @as(c_int, 0x1001);
pub const RUSAGE_SELF = @as(c_int, 0);
pub const RUSAGE_CHILDREN = -@as(c_int, 1);
pub const ru_first = @compileError("unable to translate macro: undefined identifier `ru_ixrss`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h:164:9
pub const ru_last = @compileError("unable to translate macro: undefined identifier `ru_nivcsw`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h:178:9
pub const RUSAGE_INFO_V0 = @as(c_int, 0);
pub const RUSAGE_INFO_V1 = @as(c_int, 1);
pub const RUSAGE_INFO_V2 = @as(c_int, 2);
pub const RUSAGE_INFO_V3 = @as(c_int, 3);
pub const RUSAGE_INFO_V4 = @as(c_int, 4);
pub const RUSAGE_INFO_V5 = @as(c_int, 5);
pub const RUSAGE_INFO_V6 = @as(c_int, 6);
pub const RUSAGE_INFO_CURRENT = RUSAGE_INFO_V6;
pub const RU_PROC_RUNS_RESLIDE = @as(c_int, 0x00000001);
pub const RLIM_INFINITY = (__helpers.cast(__uint64_t, @as(c_int, 1)) << @as(c_int, 63)) - @as(c_int, 1);
pub const RLIM_SAVED_MAX = RLIM_INFINITY;
pub const RLIM_SAVED_CUR = RLIM_INFINITY;
pub const RLIMIT_CPU = @as(c_int, 0);
pub const RLIMIT_FSIZE = @as(c_int, 1);
pub const RLIMIT_DATA = @as(c_int, 2);
pub const RLIMIT_STACK = @as(c_int, 3);
pub const RLIMIT_CORE = @as(c_int, 4);
pub const RLIMIT_AS = @as(c_int, 5);
pub const RLIMIT_RSS = RLIMIT_AS;
pub const RLIMIT_MEMLOCK = @as(c_int, 6);
pub const RLIMIT_NPROC = @as(c_int, 7);
pub const RLIMIT_NOFILE = @as(c_int, 8);
pub const RLIM_NLIMITS = @as(c_int, 9);
pub const _RLIMIT_POSIX_FLAG = @as(c_int, 0x1000);
pub const RLIMIT_WAKEUPS_MONITOR = @as(c_int, 0x1);
pub const RLIMIT_CPU_USAGE_MONITOR = @as(c_int, 0x2);
pub const RLIMIT_THREAD_CPULIMITS = @as(c_int, 0x3);
pub const RLIMIT_FOOTPRINT_INTERVAL = @as(c_int, 0x4);
pub const WAKEMON_ENABLE = @as(c_int, 0x01);
pub const WAKEMON_DISABLE = @as(c_int, 0x02);
pub const WAKEMON_GET_PARAMS = @as(c_int, 0x04);
pub const WAKEMON_SET_DEFAULTS = @as(c_int, 0x08);
pub const WAKEMON_MAKE_FATAL = @as(c_int, 0x10);
pub const CPUMON_MAKE_FATAL = @as(c_int, 0x1000);
pub const FOOTPRINT_INTERVAL_RESET = @as(c_int, 0x1);
pub const IOPOL_TYPE_DISK = @as(c_int, 0);
pub const IOPOL_TYPE_VFS_ATIME_UPDATES = @as(c_int, 2);
pub const IOPOL_TYPE_VFS_MATERIALIZE_DATALESS_FILES = @as(c_int, 3);
pub const IOPOL_TYPE_VFS_STATFS_NO_DATA_VOLUME = @as(c_int, 4);
pub const IOPOL_TYPE_VFS_TRIGGER_RESOLVE = @as(c_int, 5);
pub const IOPOL_TYPE_VFS_IGNORE_CONTENT_PROTECTION = @as(c_int, 6);
pub const IOPOL_TYPE_VFS_IGNORE_PERMISSIONS = @as(c_int, 7);
pub const IOPOL_TYPE_VFS_SKIP_MTIME_UPDATE = @as(c_int, 8);
pub const IOPOL_TYPE_VFS_ALLOW_LOW_SPACE_WRITES = @as(c_int, 9);
pub const IOPOL_TYPE_VFS_DISALLOW_RW_FOR_O_EVTONLY = @as(c_int, 10);
pub const IOPOL_TYPE_VFS_ENTITLED_RESERVE_ACCESS = @as(c_int, 14);
pub const IOPOL_SCOPE_PROCESS = @as(c_int, 0);
pub const IOPOL_SCOPE_THREAD = @as(c_int, 1);
pub const IOPOL_SCOPE_DARWIN_BG = @as(c_int, 2);
pub const IOPOL_DEFAULT = @as(c_int, 0);
pub const IOPOL_IMPORTANT = @as(c_int, 1);
pub const IOPOL_PASSIVE = @as(c_int, 2);
pub const IOPOL_THROTTLE = @as(c_int, 3);
pub const IOPOL_UTILITY = @as(c_int, 4);
pub const IOPOL_STANDARD = @as(c_int, 5);
pub const IOPOL_APPLICATION = IOPOL_STANDARD;
pub const IOPOL_NORMAL = IOPOL_IMPORTANT;
pub const IOPOL_ATIME_UPDATES_DEFAULT = @as(c_int, 0);
pub const IOPOL_ATIME_UPDATES_OFF = @as(c_int, 1);
pub const IOPOL_MATERIALIZE_DATALESS_FILES_DEFAULT = @as(c_int, 0);
pub const IOPOL_MATERIALIZE_DATALESS_FILES_OFF = @as(c_int, 1);
pub const IOPOL_MATERIALIZE_DATALESS_FILES_ON = @as(c_int, 2);
pub const IOPOL_MATERIALIZE_DATALESS_FILES_ORIG = @as(c_int, 4);
pub const IOPOL_MATERIALIZE_DATALESS_FILES_BASIC_MASK = @as(c_int, 3);
pub const IOPOL_VFS_STATFS_NO_DATA_VOLUME_DEFAULT = @as(c_int, 0);
pub const IOPOL_VFS_STATFS_FORCE_NO_DATA_VOLUME = @as(c_int, 1);
pub const IOPOL_VFS_TRIGGER_RESOLVE_DEFAULT = @as(c_int, 0);
pub const IOPOL_VFS_TRIGGER_RESOLVE_OFF = @as(c_int, 1);
pub const IOPOL_VFS_CONTENT_PROTECTION_DEFAULT = @as(c_int, 0);
pub const IOPOL_VFS_CONTENT_PROTECTION_IGNORE = @as(c_int, 1);
pub const IOPOL_VFS_IGNORE_PERMISSIONS_OFF = @as(c_int, 0);
pub const IOPOL_VFS_IGNORE_PERMISSIONS_ON = @as(c_int, 1);
pub const IOPOL_VFS_SKIP_MTIME_UPDATE_OFF = @as(c_int, 0);
pub const IOPOL_VFS_SKIP_MTIME_UPDATE_ON = @as(c_int, 1);
pub const IOPOL_VFS_SKIP_MTIME_UPDATE_IGNORE = @as(c_int, 2);
pub const IOPOL_VFS_ALLOW_LOW_SPACE_WRITES_OFF = @as(c_int, 0);
pub const IOPOL_VFS_ALLOW_LOW_SPACE_WRITES_ON = @as(c_int, 1);
pub const IOPOL_VFS_DISALLOW_RW_FOR_O_EVTONLY_DEFAULT = @as(c_int, 0);
pub const IOPOL_VFS_DISALLOW_RW_FOR_O_EVTONLY_ON = @as(c_int, 1);
pub const IOPOL_VFS_NOCACHE_WRITE_FS_BLKSIZE_DEFAULT = @as(c_int, 0);
pub const IOPOL_VFS_NOCACHE_WRITE_FS_BLKSIZE_ON = @as(c_int, 1);
pub const IOPOL_VFS_ENTITLED_RESERVE_ACCESS_OFF = @as(c_int, 0);
pub const IOPOL_VFS_ENTITLED_RESERVE_ACCESS_ON = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 0x00000001);
pub const WUNTRACED = @as(c_int, 0x00000002);
pub inline fn _W_INT(w: anytype) @TypeOf(__helpers.cast([*c]c_int, &w).*) {
    _ = &w;
    return __helpers.cast([*c]c_int, &w).*;
}
pub const WCOREFLAG = @as(c_int, 0o200);
pub inline fn _WSTATUS(x: anytype) @TypeOf(_W_INT(x) & @as(c_int, 0o177)) {
    _ = &x;
    return _W_INT(x) & @as(c_int, 0o177);
}
pub const _WSTOPPED = @as(c_int, 0o177);
pub inline fn WEXITSTATUS(x: anytype) @TypeOf((_W_INT(x) >> @as(c_int, 8)) & @as(c_int, 0x000000ff)) {
    _ = &x;
    return (_W_INT(x) >> @as(c_int, 8)) & @as(c_int, 0x000000ff);
}
pub inline fn WSTOPSIG(x: anytype) @TypeOf(_W_INT(x) >> @as(c_int, 8)) {
    _ = &x;
    return _W_INT(x) >> @as(c_int, 8);
}
pub inline fn WIFCONTINUED(x: anytype) @TypeOf((_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) == @as(c_int, 0x13))) {
    _ = &x;
    return (_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) == @as(c_int, 0x13));
}
pub inline fn WIFSTOPPED(x: anytype) @TypeOf((_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) != @as(c_int, 0x13))) {
    _ = &x;
    return (_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) != @as(c_int, 0x13));
}
pub inline fn WIFEXITED(x: anytype) @TypeOf(_WSTATUS(x) == @as(c_int, 0)) {
    _ = &x;
    return _WSTATUS(x) == @as(c_int, 0);
}
pub inline fn WIFSIGNALED(x: anytype) @TypeOf((_WSTATUS(x) != _WSTOPPED) and (_WSTATUS(x) != @as(c_int, 0))) {
    _ = &x;
    return (_WSTATUS(x) != _WSTOPPED) and (_WSTATUS(x) != @as(c_int, 0));
}
pub inline fn WTERMSIG(x: anytype) @TypeOf(_WSTATUS(x)) {
    _ = &x;
    return _WSTATUS(x);
}
pub inline fn WCOREDUMP(x: anytype) @TypeOf(_W_INT(x) & WCOREFLAG) {
    _ = &x;
    return _W_INT(x) & WCOREFLAG;
}
pub inline fn W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    _ = &ret;
    _ = &sig;
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | _WSTOPPED) {
    _ = &sig;
    return (sig << @as(c_int, 8)) | _WSTOPPED;
}
pub const WEXITED = @as(c_int, 0x00000004);
pub const WSTOPPED = @as(c_int, 0x00000008);
pub const WCONTINUED = @as(c_int, 0x00000010);
pub const WNOWAIT = @as(c_int, 0x00000020);
pub const WAIT_ANY = -@as(c_int, 1);
pub const WAIT_MYPGRP = @as(c_int, 0);
pub const w_termsig = @compileError("unable to translate macro: undefined identifier `w_T`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h:229:9
pub const w_coredump = @compileError("unable to translate macro: undefined identifier `w_T`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h:230:9
pub const w_retcode = @compileError("unable to translate macro: undefined identifier `w_T`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h:231:9
pub const w_stopval = @compileError("unable to translate macro: undefined identifier `w_S`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h:232:9
pub const w_stopsig = @compileError("unable to translate macro: undefined identifier `w_S`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h:233:9
pub const _ALLOCA_H_ = "";
pub const __alloca = @compileError("unable to translate macro: undefined identifier `__builtin_alloca`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/alloca.h:43:9
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const RAND_MAX = __helpers.promoteIntLiteral(c_int, 0x7fffffff, .hex);
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdlib.h:139:9: warning: macro 'MB_CUR_MAX' contains a runtime value, translated to function
pub inline fn MB_CUR_MAX() @TypeOf(__mb_cur_max) {
    return __mb_cur_max;
}
pub const _MALLOC_UNDERSCORE_MALLOC_H_ = "";
pub const _MALLOC_UNDERSCORE_MALLOC_TYPE_H_ = "";
pub const _MALLOC_UNDERSCORE_PTRCHECK_H_ = "";
pub const _MALLOC_TYPE_MALLOC_BACKDEPLOY_PUBLIC = @as(c_int, 1);
pub inline fn _MALLOC_TYPED(override: anytype, type_param_pos: anytype) void {
    _ = &override;
    _ = &type_param_pos;
    return;
}
pub const __ABORT_H_ = "";
pub const __CLANG_INTTYPES_H = "";
pub const _INTTYPES_H_ = "";
pub const __PRI_8_LENGTH_MODIFIER__ = "hh";
pub const __PRI_64_LENGTH_MODIFIER__ = "ll";
pub const __SCN_64_LENGTH_MODIFIER__ = "ll";
pub const __PRI_MAX_LENGTH_MODIFIER__ = "j";
pub const __SCN_MAX_LENGTH_MODIFIER__ = "j";
pub const PRId8 = __PRI_8_LENGTH_MODIFIER__ ++ "d";
pub const PRIi8 = __PRI_8_LENGTH_MODIFIER__ ++ "i";
pub const PRIo8 = __PRI_8_LENGTH_MODIFIER__ ++ "o";
pub const PRIu8 = __PRI_8_LENGTH_MODIFIER__ ++ "u";
pub const PRIx8 = __PRI_8_LENGTH_MODIFIER__ ++ "x";
pub const PRIX8 = __PRI_8_LENGTH_MODIFIER__ ++ "X";
pub const PRId16 = "hd";
pub const PRIi16 = "hi";
pub const PRIo16 = "ho";
pub const PRIu16 = "hu";
pub const PRIx16 = "hx";
pub const PRIX16 = "hX";
pub const PRId32 = "d";
pub const PRIi32 = "i";
pub const PRIo32 = "o";
pub const PRIu32 = "u";
pub const PRIx32 = "x";
pub const PRIX32 = "X";
pub const PRId64 = __PRI_64_LENGTH_MODIFIER__ ++ "d";
pub const PRIi64 = __PRI_64_LENGTH_MODIFIER__ ++ "i";
pub const PRIo64 = __PRI_64_LENGTH_MODIFIER__ ++ "o";
pub const PRIu64 = __PRI_64_LENGTH_MODIFIER__ ++ "u";
pub const PRIx64 = __PRI_64_LENGTH_MODIFIER__ ++ "x";
pub const PRIX64 = __PRI_64_LENGTH_MODIFIER__ ++ "X";
pub const PRIdLEAST8 = PRId8;
pub const PRIiLEAST8 = PRIi8;
pub const PRIoLEAST8 = PRIo8;
pub const PRIuLEAST8 = PRIu8;
pub const PRIxLEAST8 = PRIx8;
pub const PRIXLEAST8 = PRIX8;
pub const PRIdLEAST16 = PRId16;
pub const PRIiLEAST16 = PRIi16;
pub const PRIoLEAST16 = PRIo16;
pub const PRIuLEAST16 = PRIu16;
pub const PRIxLEAST16 = PRIx16;
pub const PRIXLEAST16 = PRIX16;
pub const PRIdLEAST32 = PRId32;
pub const PRIiLEAST32 = PRIi32;
pub const PRIoLEAST32 = PRIo32;
pub const PRIuLEAST32 = PRIu32;
pub const PRIxLEAST32 = PRIx32;
pub const PRIXLEAST32 = PRIX32;
pub const PRIdLEAST64 = PRId64;
pub const PRIiLEAST64 = PRIi64;
pub const PRIoLEAST64 = PRIo64;
pub const PRIuLEAST64 = PRIu64;
pub const PRIxLEAST64 = PRIx64;
pub const PRIXLEAST64 = PRIX64;
pub const PRIdFAST8 = PRId8;
pub const PRIiFAST8 = PRIi8;
pub const PRIoFAST8 = PRIo8;
pub const PRIuFAST8 = PRIu8;
pub const PRIxFAST8 = PRIx8;
pub const PRIXFAST8 = PRIX8;
pub const PRIdFAST16 = PRId16;
pub const PRIiFAST16 = PRIi16;
pub const PRIoFAST16 = PRIo16;
pub const PRIuFAST16 = PRIu16;
pub const PRIxFAST16 = PRIx16;
pub const PRIXFAST16 = PRIX16;
pub const PRIdFAST32 = PRId32;
pub const PRIiFAST32 = PRIi32;
pub const PRIoFAST32 = PRIo32;
pub const PRIuFAST32 = PRIu32;
pub const PRIxFAST32 = PRIx32;
pub const PRIXFAST32 = PRIX32;
pub const PRIdFAST64 = PRId64;
pub const PRIiFAST64 = PRIi64;
pub const PRIoFAST64 = PRIo64;
pub const PRIuFAST64 = PRIu64;
pub const PRIxFAST64 = PRIx64;
pub const PRIXFAST64 = PRIX64;
pub const PRIdPTR = "ld";
pub const PRIiPTR = "li";
pub const PRIoPTR = "lo";
pub const PRIuPTR = "lu";
pub const PRIxPTR = "lx";
pub const PRIXPTR = "lX";
pub const PRIdMAX = __PRI_MAX_LENGTH_MODIFIER__ ++ "d";
pub const PRIiMAX = __PRI_MAX_LENGTH_MODIFIER__ ++ "i";
pub const PRIoMAX = __PRI_MAX_LENGTH_MODIFIER__ ++ "o";
pub const PRIuMAX = __PRI_MAX_LENGTH_MODIFIER__ ++ "u";
pub const PRIxMAX = __PRI_MAX_LENGTH_MODIFIER__ ++ "x";
pub const PRIXMAX = __PRI_MAX_LENGTH_MODIFIER__ ++ "X";
pub const SCNd8 = __PRI_8_LENGTH_MODIFIER__ ++ "d";
pub const SCNi8 = __PRI_8_LENGTH_MODIFIER__ ++ "i";
pub const SCNo8 = __PRI_8_LENGTH_MODIFIER__ ++ "o";
pub const SCNu8 = __PRI_8_LENGTH_MODIFIER__ ++ "u";
pub const SCNx8 = __PRI_8_LENGTH_MODIFIER__ ++ "x";
pub const SCNd16 = "hd";
pub const SCNi16 = "hi";
pub const SCNo16 = "ho";
pub const SCNu16 = "hu";
pub const SCNx16 = "hx";
pub const SCNd32 = "d";
pub const SCNi32 = "i";
pub const SCNo32 = "o";
pub const SCNu32 = "u";
pub const SCNx32 = "x";
pub const SCNd64 = __SCN_64_LENGTH_MODIFIER__ ++ "d";
pub const SCNi64 = __SCN_64_LENGTH_MODIFIER__ ++ "i";
pub const SCNo64 = __SCN_64_LENGTH_MODIFIER__ ++ "o";
pub const SCNu64 = __SCN_64_LENGTH_MODIFIER__ ++ "u";
pub const SCNx64 = __SCN_64_LENGTH_MODIFIER__ ++ "x";
pub const SCNdLEAST8 = SCNd8;
pub const SCNiLEAST8 = SCNi8;
pub const SCNoLEAST8 = SCNo8;
pub const SCNuLEAST8 = SCNu8;
pub const SCNxLEAST8 = SCNx8;
pub const SCNdLEAST16 = SCNd16;
pub const SCNiLEAST16 = SCNi16;
pub const SCNoLEAST16 = SCNo16;
pub const SCNuLEAST16 = SCNu16;
pub const SCNxLEAST16 = SCNx16;
pub const SCNdLEAST32 = SCNd32;
pub const SCNiLEAST32 = SCNi32;
pub const SCNoLEAST32 = SCNo32;
pub const SCNuLEAST32 = SCNu32;
pub const SCNxLEAST32 = SCNx32;
pub const SCNdLEAST64 = SCNd64;
pub const SCNiLEAST64 = SCNi64;
pub const SCNoLEAST64 = SCNo64;
pub const SCNuLEAST64 = SCNu64;
pub const SCNxLEAST64 = SCNx64;
pub const SCNdFAST8 = SCNd8;
pub const SCNiFAST8 = SCNi8;
pub const SCNoFAST8 = SCNo8;
pub const SCNuFAST8 = SCNu8;
pub const SCNxFAST8 = SCNx8;
pub const SCNdFAST16 = SCNd16;
pub const SCNiFAST16 = SCNi16;
pub const SCNoFAST16 = SCNo16;
pub const SCNuFAST16 = SCNu16;
pub const SCNxFAST16 = SCNx16;
pub const SCNdFAST32 = SCNd32;
pub const SCNiFAST32 = SCNi32;
pub const SCNoFAST32 = SCNo32;
pub const SCNuFAST32 = SCNu32;
pub const SCNxFAST32 = SCNx32;
pub const SCNdFAST64 = SCNd64;
pub const SCNiFAST64 = SCNi64;
pub const SCNoFAST64 = SCNo64;
pub const SCNuFAST64 = SCNu64;
pub const SCNxFAST64 = SCNx64;
pub const SCNdPTR = "ld";
pub const SCNiPTR = "li";
pub const SCNoPTR = "lo";
pub const SCNuPTR = "lu";
pub const SCNxPTR = "lx";
pub const SCNdMAX = __SCN_MAX_LENGTH_MODIFIER__ ++ "d";
pub const SCNiMAX = __SCN_MAX_LENGTH_MODIFIER__ ++ "i";
pub const SCNoMAX = __SCN_MAX_LENGTH_MODIFIER__ ++ "o";
pub const SCNuMAX = __SCN_MAX_LENGTH_MODIFIER__ ++ "u";
pub const SCNxMAX = __SCN_MAX_LENGTH_MODIFIER__ ++ "x";
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
pub const PCRE2_ALT_EXTENDED_CLASS = __helpers.promoteIntLiteral(c_uint, 0x08000000, .hex);
pub const PCRE2_EXTRA_ALLOW_SURROGATE_ESCAPES = @as(c_uint, 0x00000001);
pub const PCRE2_EXTRA_BAD_ESCAPE_IS_LITERAL = @as(c_uint, 0x00000002);
pub const PCRE2_EXTRA_MATCH_WORD = @as(c_uint, 0x00000004);
pub const PCRE2_EXTRA_MATCH_LINE = @as(c_uint, 0x00000008);
pub const PCRE2_EXTRA_ESCAPED_CR_IS_LF = @as(c_uint, 0x00000010);
pub const PCRE2_EXTRA_ALT_BSUX = @as(c_uint, 0x00000020);
pub const PCRE2_EXTRA_ALLOW_LOOKAROUND_BSK = @as(c_uint, 0x00000040);
pub const PCRE2_EXTRA_CASELESS_RESTRICT = @as(c_uint, 0x00000080);
pub const PCRE2_EXTRA_ASCII_BSD = @as(c_uint, 0x00000100);
pub const PCRE2_EXTRA_ASCII_BSS = @as(c_uint, 0x00000200);
pub const PCRE2_EXTRA_ASCII_BSW = @as(c_uint, 0x00000400);
pub const PCRE2_EXTRA_ASCII_POSIX = @as(c_uint, 0x00000800);
pub const PCRE2_EXTRA_ASCII_DIGIT = @as(c_uint, 0x00001000);
pub const PCRE2_EXTRA_PYTHON_OCTAL = @as(c_uint, 0x00002000);
pub const PCRE2_EXTRA_NO_BS0 = @as(c_uint, 0x00004000);
pub const PCRE2_EXTRA_NEVER_CALLOUT = @as(c_uint, 0x00008000);
pub const PCRE2_EXTRA_TURKISH_CASING = __helpers.promoteIntLiteral(c_uint, 0x00010000, .hex);
pub const PCRE2_JIT_COMPLETE = @as(c_uint, 0x00000001);
pub const PCRE2_JIT_PARTIAL_SOFT = @as(c_uint, 0x00000002);
pub const PCRE2_JIT_PARTIAL_HARD = @as(c_uint, 0x00000004);
pub const PCRE2_JIT_INVALID_UTF = @as(c_uint, 0x00000100);
pub const PCRE2_JIT_TEST_ALLOC = @as(c_uint, 0x00000200);
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
pub const PCRE2_DISABLE_RECURSELOOP_CHECK = __helpers.promoteIntLiteral(c_uint, 0x00040000, .hex);
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
pub const PCRE2_ERROR_MISSING_OCTAL_DIGIT = @as(c_int, 198);
pub const PCRE2_ERROR_BACKSLASH_K_IN_LOOKAROUND = @as(c_int, 199);
pub const PCRE2_ERROR_MAX_VAR_LOOKBEHIND_EXCEEDED = @as(c_int, 200);
pub const PCRE2_ERROR_PATTERN_COMPILED_SIZE_TOO_BIG = @as(c_int, 201);
pub const PCRE2_ERROR_OVERSIZE_PYTHON_OCTAL = @as(c_int, 202);
pub const PCRE2_ERROR_CALLOUT_CALLER_DISABLED = @as(c_int, 203);
pub const PCRE2_ERROR_EXTRA_CASING_REQUIRES_UNICODE = @as(c_int, 204);
pub const PCRE2_ERROR_TURKISH_CASING_REQUIRES_UTF = @as(c_int, 205);
pub const PCRE2_ERROR_EXTRA_CASING_INCOMPATIBLE = @as(c_int, 206);
pub const PCRE2_ERROR_ECLASS_NEST_TOO_DEEP = @as(c_int, 207);
pub const PCRE2_ERROR_ECLASS_INVALID_OPERATOR = @as(c_int, 208);
pub const PCRE2_ERROR_ECLASS_UNEXPECTED_OPERATOR = @as(c_int, 209);
pub const PCRE2_ERROR_ECLASS_EXPECTED_OPERAND = @as(c_int, 210);
pub const PCRE2_ERROR_ECLASS_MIXED_OPERATORS = @as(c_int, 211);
pub const PCRE2_ERROR_ECLASS_HINT_SQUARE_BRACKET = @as(c_int, 212);
pub const PCRE2_ERROR_PERL_ECLASS_UNEXPECTED_EXPR = @as(c_int, 213);
pub const PCRE2_ERROR_PERL_ECLASS_EMPTY_EXPR = @as(c_int, 214);
pub const PCRE2_ERROR_PERL_ECLASS_MISSING_CLOSE = @as(c_int, 215);
pub const PCRE2_ERROR_PERL_ECLASS_UNEXPECTED_CHAR = @as(c_int, 216);
pub const PCRE2_ERROR_EXPECTED_CAPTURE_GROUP = @as(c_int, 217);
pub const PCRE2_ERROR_MISSING_OPENING_PARENTHESIS = @as(c_int, 218);
pub const PCRE2_ERROR_MISSING_NUMBER_TERMINATOR = @as(c_int, 219);
pub const PCRE2_ERROR_NULL_ERROROFFSET = @as(c_int, 220);
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
pub const PCRE2_ERROR_INVALIDOFFSET = -@as(c_int, 67);
pub const PCRE2_ERROR_JIT_UNSUPPORTED = -@as(c_int, 68);
pub const PCRE2_ERROR_REPLACECASE = -@as(c_int, 69);
pub const PCRE2_ERROR_TOOLARGEREPLACE = -@as(c_int, 70);
pub const PCRE2_ERROR_DIFFSUBSPATTERN = -@as(c_int, 71);
pub const PCRE2_ERROR_DIFFSUBSSUBJECT = -@as(c_int, 72);
pub const PCRE2_ERROR_DIFFSUBSOFFSET = -@as(c_int, 73);
pub const PCRE2_ERROR_DIFFSUBSOPTIONS = -@as(c_int, 74);
pub const PCRE2_ERROR_BAD_BACKSLASH_K = -@as(c_int, 75);
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
pub const PCRE2_CONFIG_EFFECTIVE_LINKSIZE = @as(c_int, 16);
pub const PCRE2_OPTIMIZATION_NONE = @as(c_int, 0);
pub const PCRE2_OPTIMIZATION_FULL = @as(c_int, 1);
pub const PCRE2_AUTO_POSSESS = @as(c_int, 64);
pub const PCRE2_AUTO_POSSESS_OFF = @as(c_int, 65);
pub const PCRE2_DOTSTAR_ANCHOR = @as(c_int, 66);
pub const PCRE2_DOTSTAR_ANCHOR_OFF = @as(c_int, 67);
pub const PCRE2_START_OPTIMIZE = @as(c_int, 68);
pub const PCRE2_START_OPTIMIZE_OFF = @as(c_int, 69);
pub const PCRE2_SUBSTITUTE_CASE_LOWER = @as(c_int, 1);
pub const PCRE2_SUBSTITUTE_CASE_UPPER = @as(c_int, 2);
pub const PCRE2_SUBSTITUTE_CASE_TITLE_FIRST = @as(c_int, 3);
pub const PCRE2_SIZE = usize;
pub const PCRE2_SIZE_MAX = SIZE_MAX;
pub const PCRE2_ZERO_TERMINATED = @compileError("unable to translate C expr: expected ')' instead got 'a number'"); // /opt/homebrew/include/pcre2.h:537:9
pub const PCRE2_UNSET = @compileError("unable to translate C expr: expected ')' instead got 'a number'"); // /opt/homebrew/include/pcre2.h:538:9
pub const PCRE2_CALLOUT_STARTMATCH = @as(c_uint, 0x00000001);
pub const PCRE2_CALLOUT_BACKTRACK = @as(c_uint, 0x00000002);
pub const PCRE2_CONVERT_FUNCTIONS = @compileError("unable to translate C expr: unexpected token 'int'"); // /opt/homebrew/include/pcre2.h:835:9
pub const PCRE2_JOIN = @compileError("unable to translate C expr: unexpected token '##'"); // /opt/homebrew/include/pcre2.h:878:9
pub inline fn PCRE2_GLUE(a: anytype, b: anytype) @TypeOf(PCRE2_JOIN(a, b)) {
    _ = &a;
    _ = &b;
    return PCRE2_JOIN(a, b);
}
pub const PCRE2_UCHAR = PCRE2_SUFFIX(PCRE2_UCHAR);
pub const PCRE2_SPTR = PCRE2_SUFFIX(PCRE2_SPTR);
pub const pcre2_code = @compileError("unable to translate macro: undefined identifier `pcre2_code_`"); // /opt/homebrew/include/pcre2.h:888:9
pub const pcre2_jit_callback = @compileError("unable to translate macro: undefined identifier `pcre2_jit_callback_`"); // /opt/homebrew/include/pcre2.h:889:9
pub const pcre2_jit_stack = @compileError("unable to translate macro: undefined identifier `pcre2_jit_stack_`"); // /opt/homebrew/include/pcre2.h:890:9
pub const pcre2_real_code = @compileError("unable to translate macro: undefined identifier `pcre2_real_code_`"); // /opt/homebrew/include/pcre2.h:892:9
pub const pcre2_real_general_context = @compileError("unable to translate macro: undefined identifier `pcre2_real_general_context_`"); // /opt/homebrew/include/pcre2.h:893:9
pub const pcre2_real_compile_context = @compileError("unable to translate macro: undefined identifier `pcre2_real_compile_context_`"); // /opt/homebrew/include/pcre2.h:894:9
pub const pcre2_real_convert_context = @compileError("unable to translate macro: undefined identifier `pcre2_real_convert_context_`"); // /opt/homebrew/include/pcre2.h:895:9
pub const pcre2_real_match_context = @compileError("unable to translate macro: undefined identifier `pcre2_real_match_context_`"); // /opt/homebrew/include/pcre2.h:896:9
pub const pcre2_real_jit_stack = @compileError("unable to translate macro: undefined identifier `pcre2_real_jit_stack_`"); // /opt/homebrew/include/pcre2.h:897:9
pub const pcre2_real_match_data = @compileError("unable to translate macro: undefined identifier `pcre2_real_match_data_`"); // /opt/homebrew/include/pcre2.h:898:9
pub const pcre2_callout_block = @compileError("unable to translate macro: undefined identifier `pcre2_callout_block_`"); // /opt/homebrew/include/pcre2.h:903:9
pub const pcre2_callout_enumerate_block = @compileError("unable to translate macro: undefined identifier `pcre2_callout_enumerate_block_`"); // /opt/homebrew/include/pcre2.h:904:9
pub const pcre2_substitute_callout_block = @compileError("unable to translate macro: undefined identifier `pcre2_substitute_callout_block_`"); // /opt/homebrew/include/pcre2.h:905:9
pub const pcre2_general_context = @compileError("unable to translate macro: undefined identifier `pcre2_general_context_`"); // /opt/homebrew/include/pcre2.h:906:9
pub const pcre2_compile_context = @compileError("unable to translate macro: undefined identifier `pcre2_compile_context_`"); // /opt/homebrew/include/pcre2.h:907:9
pub const pcre2_convert_context = @compileError("unable to translate macro: undefined identifier `pcre2_convert_context_`"); // /opt/homebrew/include/pcre2.h:908:9
pub const pcre2_match_context = @compileError("unable to translate macro: undefined identifier `pcre2_match_context_`"); // /opt/homebrew/include/pcre2.h:909:9
pub const pcre2_match_data = @compileError("unable to translate macro: undefined identifier `pcre2_match_data_`"); // /opt/homebrew/include/pcre2.h:910:9
pub const pcre2_callout_enumerate = @compileError("unable to translate macro: undefined identifier `pcre2_callout_enumerate_`"); // /opt/homebrew/include/pcre2.h:915:9
pub const pcre2_code_copy = @compileError("unable to translate macro: undefined identifier `pcre2_code_copy_`"); // /opt/homebrew/include/pcre2.h:916:9
pub const pcre2_code_copy_with_tables = @compileError("unable to translate macro: undefined identifier `pcre2_code_copy_with_tables_`"); // /opt/homebrew/include/pcre2.h:917:9
pub const pcre2_code_free = @compileError("unable to translate macro: undefined identifier `pcre2_code_free_`"); // /opt/homebrew/include/pcre2.h:918:9
pub const pcre2_compile = @compileError("unable to translate macro: undefined identifier `pcre2_compile_`"); // /opt/homebrew/include/pcre2.h:919:9
pub const pcre2_compile_context_copy = @compileError("unable to translate macro: undefined identifier `pcre2_compile_context_copy_`"); // /opt/homebrew/include/pcre2.h:920:9
pub const pcre2_compile_context_create = @compileError("unable to translate macro: undefined identifier `pcre2_compile_context_create_`"); // /opt/homebrew/include/pcre2.h:921:9
pub const pcre2_compile_context_free = @compileError("unable to translate macro: undefined identifier `pcre2_compile_context_free_`"); // /opt/homebrew/include/pcre2.h:922:9
pub const pcre2_config = @compileError("unable to translate macro: undefined identifier `pcre2_config_`"); // /opt/homebrew/include/pcre2.h:923:9
pub const pcre2_convert_context_copy = @compileError("unable to translate macro: undefined identifier `pcre2_convert_context_copy_`"); // /opt/homebrew/include/pcre2.h:924:9
pub const pcre2_convert_context_create = @compileError("unable to translate macro: undefined identifier `pcre2_convert_context_create_`"); // /opt/homebrew/include/pcre2.h:925:9
pub const pcre2_convert_context_free = @compileError("unable to translate macro: undefined identifier `pcre2_convert_context_free_`"); // /opt/homebrew/include/pcre2.h:926:9
pub const pcre2_converted_pattern_free = @compileError("unable to translate macro: undefined identifier `pcre2_converted_pattern_free_`"); // /opt/homebrew/include/pcre2.h:927:9
pub const pcre2_dfa_match = @compileError("unable to translate macro: undefined identifier `pcre2_dfa_match_`"); // /opt/homebrew/include/pcre2.h:928:9
pub const pcre2_general_context_copy = @compileError("unable to translate macro: undefined identifier `pcre2_general_context_copy_`"); // /opt/homebrew/include/pcre2.h:929:9
pub const pcre2_general_context_create = @compileError("unable to translate macro: undefined identifier `pcre2_general_context_create_`"); // /opt/homebrew/include/pcre2.h:930:9
pub const pcre2_general_context_free = @compileError("unable to translate macro: undefined identifier `pcre2_general_context_free_`"); // /opt/homebrew/include/pcre2.h:931:9
pub const pcre2_get_error_message = @compileError("unable to translate macro: undefined identifier `pcre2_get_error_message_`"); // /opt/homebrew/include/pcre2.h:932:9
pub const pcre2_get_mark = @compileError("unable to translate macro: undefined identifier `pcre2_get_mark_`"); // /opt/homebrew/include/pcre2.h:933:9
pub const pcre2_get_match_data_heapframes_size = @compileError("unable to translate macro: undefined identifier `pcre2_get_match_data_heapframes_size_`"); // /opt/homebrew/include/pcre2.h:934:9
pub const pcre2_get_match_data_size = @compileError("unable to translate macro: undefined identifier `pcre2_get_match_data_size_`"); // /opt/homebrew/include/pcre2.h:935:9
pub const pcre2_get_ovector_pointer = @compileError("unable to translate macro: undefined identifier `pcre2_get_ovector_pointer_`"); // /opt/homebrew/include/pcre2.h:936:9
pub const pcre2_get_ovector_count = @compileError("unable to translate macro: undefined identifier `pcre2_get_ovector_count_`"); // /opt/homebrew/include/pcre2.h:937:9
pub const pcre2_get_startchar = @compileError("unable to translate macro: undefined identifier `pcre2_get_startchar_`"); // /opt/homebrew/include/pcre2.h:938:9
pub const pcre2_jit_compile = @compileError("unable to translate macro: undefined identifier `pcre2_jit_compile_`"); // /opt/homebrew/include/pcre2.h:939:9
pub const pcre2_jit_match = @compileError("unable to translate macro: undefined identifier `pcre2_jit_match_`"); // /opt/homebrew/include/pcre2.h:940:9
pub const pcre2_jit_free_unused_memory = @compileError("unable to translate macro: undefined identifier `pcre2_jit_free_unused_memory_`"); // /opt/homebrew/include/pcre2.h:941:9
pub const pcre2_jit_stack_assign = @compileError("unable to translate macro: undefined identifier `pcre2_jit_stack_assign_`"); // /opt/homebrew/include/pcre2.h:942:9
pub const pcre2_jit_stack_create = @compileError("unable to translate macro: undefined identifier `pcre2_jit_stack_create_`"); // /opt/homebrew/include/pcre2.h:943:9
pub const pcre2_jit_stack_free = @compileError("unable to translate macro: undefined identifier `pcre2_jit_stack_free_`"); // /opt/homebrew/include/pcre2.h:944:9
pub const pcre2_maketables = @compileError("unable to translate macro: undefined identifier `pcre2_maketables_`"); // /opt/homebrew/include/pcre2.h:945:9
pub const pcre2_maketables_free = @compileError("unable to translate macro: undefined identifier `pcre2_maketables_free_`"); // /opt/homebrew/include/pcre2.h:946:9
pub const pcre2_match = @compileError("unable to translate macro: undefined identifier `pcre2_match_`"); // /opt/homebrew/include/pcre2.h:947:9
pub const pcre2_match_context_copy = @compileError("unable to translate macro: undefined identifier `pcre2_match_context_copy_`"); // /opt/homebrew/include/pcre2.h:948:9
pub const pcre2_match_context_create = @compileError("unable to translate macro: undefined identifier `pcre2_match_context_create_`"); // /opt/homebrew/include/pcre2.h:949:9
pub const pcre2_match_context_free = @compileError("unable to translate macro: undefined identifier `pcre2_match_context_free_`"); // /opt/homebrew/include/pcre2.h:950:9
pub const pcre2_match_data_create = @compileError("unable to translate macro: undefined identifier `pcre2_match_data_create_`"); // /opt/homebrew/include/pcre2.h:951:9
pub const pcre2_match_data_create_from_pattern = @compileError("unable to translate macro: undefined identifier `pcre2_match_data_create_from_pattern_`"); // /opt/homebrew/include/pcre2.h:952:9
pub const pcre2_match_data_free = @compileError("unable to translate macro: undefined identifier `pcre2_match_data_free_`"); // /opt/homebrew/include/pcre2.h:953:9
pub const pcre2_next_match = @compileError("unable to translate macro: undefined identifier `pcre2_next_match_`"); // /opt/homebrew/include/pcre2.h:954:9
pub const pcre2_pattern_convert = @compileError("unable to translate macro: undefined identifier `pcre2_pattern_convert_`"); // /opt/homebrew/include/pcre2.h:955:9
pub const pcre2_pattern_info = @compileError("unable to translate macro: undefined identifier `pcre2_pattern_info_`"); // /opt/homebrew/include/pcre2.h:956:9
pub const pcre2_serialize_decode = @compileError("unable to translate macro: undefined identifier `pcre2_serialize_decode_`"); // /opt/homebrew/include/pcre2.h:957:9
pub const pcre2_serialize_encode = @compileError("unable to translate macro: undefined identifier `pcre2_serialize_encode_`"); // /opt/homebrew/include/pcre2.h:958:9
pub const pcre2_serialize_free = @compileError("unable to translate macro: undefined identifier `pcre2_serialize_free_`"); // /opt/homebrew/include/pcre2.h:959:9
pub const pcre2_serialize_get_number_of_codes = @compileError("unable to translate macro: undefined identifier `pcre2_serialize_get_number_of_codes_`"); // /opt/homebrew/include/pcre2.h:960:9
pub const pcre2_set_bsr = @compileError("unable to translate macro: undefined identifier `pcre2_set_bsr_`"); // /opt/homebrew/include/pcre2.h:961:9
pub const pcre2_set_callout = @compileError("unable to translate macro: undefined identifier `pcre2_set_callout_`"); // /opt/homebrew/include/pcre2.h:962:9
pub const pcre2_set_character_tables = @compileError("unable to translate macro: undefined identifier `pcre2_set_character_tables_`"); // /opt/homebrew/include/pcre2.h:963:9
pub const pcre2_set_compile_extra_options = @compileError("unable to translate macro: undefined identifier `pcre2_set_compile_extra_options_`"); // /opt/homebrew/include/pcre2.h:964:9
pub const pcre2_set_compile_recursion_guard = @compileError("unable to translate macro: undefined identifier `pcre2_set_compile_recursion_guard_`"); // /opt/homebrew/include/pcre2.h:965:9
pub const pcre2_set_depth_limit = @compileError("unable to translate macro: undefined identifier `pcre2_set_depth_limit_`"); // /opt/homebrew/include/pcre2.h:966:9
pub const pcre2_set_glob_escape = @compileError("unable to translate macro: undefined identifier `pcre2_set_glob_escape_`"); // /opt/homebrew/include/pcre2.h:967:9
pub const pcre2_set_glob_separator = @compileError("unable to translate macro: undefined identifier `pcre2_set_glob_separator_`"); // /opt/homebrew/include/pcre2.h:968:9
pub const pcre2_set_heap_limit = @compileError("unable to translate macro: undefined identifier `pcre2_set_heap_limit_`"); // /opt/homebrew/include/pcre2.h:969:9
pub const pcre2_set_match_limit = @compileError("unable to translate macro: undefined identifier `pcre2_set_match_limit_`"); // /opt/homebrew/include/pcre2.h:970:9
pub const pcre2_set_max_varlookbehind = @compileError("unable to translate macro: undefined identifier `pcre2_set_max_varlookbehind_`"); // /opt/homebrew/include/pcre2.h:971:9
pub const pcre2_set_max_pattern_length = @compileError("unable to translate macro: undefined identifier `pcre2_set_max_pattern_length_`"); // /opt/homebrew/include/pcre2.h:972:9
pub const pcre2_set_max_pattern_compiled_length = @compileError("unable to translate macro: undefined identifier `pcre2_set_max_pattern_compiled_length_`"); // /opt/homebrew/include/pcre2.h:973:9
pub const pcre2_set_newline = @compileError("unable to translate macro: undefined identifier `pcre2_set_newline_`"); // /opt/homebrew/include/pcre2.h:974:9
pub const pcre2_set_parens_nest_limit = @compileError("unable to translate macro: undefined identifier `pcre2_set_parens_nest_limit_`"); // /opt/homebrew/include/pcre2.h:975:9
pub const pcre2_set_offset_limit = @compileError("unable to translate macro: undefined identifier `pcre2_set_offset_limit_`"); // /opt/homebrew/include/pcre2.h:976:9
pub const pcre2_set_optimize = @compileError("unable to translate macro: undefined identifier `pcre2_set_optimize_`"); // /opt/homebrew/include/pcre2.h:977:9
pub const pcre2_set_substitute_callout = @compileError("unable to translate macro: undefined identifier `pcre2_set_substitute_callout_`"); // /opt/homebrew/include/pcre2.h:978:9
pub const pcre2_set_substitute_case_callout = @compileError("unable to translate macro: undefined identifier `pcre2_set_substitute_case_callout_`"); // /opt/homebrew/include/pcre2.h:979:9
pub const pcre2_substitute = @compileError("unable to translate macro: undefined identifier `pcre2_substitute_`"); // /opt/homebrew/include/pcre2.h:980:9
pub const pcre2_substring_copy_byname = @compileError("unable to translate macro: undefined identifier `pcre2_substring_copy_byname_`"); // /opt/homebrew/include/pcre2.h:981:9
pub const pcre2_substring_copy_bynumber = @compileError("unable to translate macro: undefined identifier `pcre2_substring_copy_bynumber_`"); // /opt/homebrew/include/pcre2.h:982:9
pub const pcre2_substring_free = @compileError("unable to translate macro: undefined identifier `pcre2_substring_free_`"); // /opt/homebrew/include/pcre2.h:983:9
pub const pcre2_substring_get_byname = @compileError("unable to translate macro: undefined identifier `pcre2_substring_get_byname_`"); // /opt/homebrew/include/pcre2.h:984:9
pub const pcre2_substring_get_bynumber = @compileError("unable to translate macro: undefined identifier `pcre2_substring_get_bynumber_`"); // /opt/homebrew/include/pcre2.h:985:9
pub const pcre2_substring_length_byname = @compileError("unable to translate macro: undefined identifier `pcre2_substring_length_byname_`"); // /opt/homebrew/include/pcre2.h:986:9
pub const pcre2_substring_length_bynumber = @compileError("unable to translate macro: undefined identifier `pcre2_substring_length_bynumber_`"); // /opt/homebrew/include/pcre2.h:987:9
pub const pcre2_substring_list_get = @compileError("unable to translate macro: undefined identifier `pcre2_substring_list_get_`"); // /opt/homebrew/include/pcre2.h:988:9
pub const pcre2_substring_list_free = @compileError("unable to translate macro: undefined identifier `pcre2_substring_list_free_`"); // /opt/homebrew/include/pcre2.h:989:9
pub const pcre2_substring_nametable_scan = @compileError("unable to translate macro: undefined identifier `pcre2_substring_nametable_scan_`"); // /opt/homebrew/include/pcre2.h:990:9
pub const pcre2_substring_number_from_name = @compileError("unable to translate macro: undefined identifier `pcre2_substring_number_from_name_`"); // /opt/homebrew/include/pcre2.h:991:9
pub const pcre2_set_recursion_limit = @compileError("unable to translate macro: undefined identifier `pcre2_set_recursion_limit_`"); // /opt/homebrew/include/pcre2.h:994:9
pub const pcre2_set_recursion_memory_management = @compileError("unable to translate macro: undefined identifier `pcre2_set_recursion_memory_management_`"); // /opt/homebrew/include/pcre2.h:997:9
pub inline fn PCRE2_SUFFIX(a: anytype) @TypeOf(PCRE2_GLUE(a, PCRE2_CODE_UNIT_WIDTH)) {
    _ = &a;
    return PCRE2_GLUE(a, PCRE2_CODE_UNIT_WIDTH);
}
pub const _SYS_ERRNO_H_ = "";
pub const errno = __error().*;
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
pub const EDEADLK = @as(c_int, 11);
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
pub const EAGAIN = @as(c_int, 35);
pub const EWOULDBLOCK = EAGAIN;
pub const EINPROGRESS = @as(c_int, 36);
pub const EALREADY = @as(c_int, 37);
pub const ENOTSOCK = @as(c_int, 38);
pub const EDESTADDRREQ = @as(c_int, 39);
pub const EMSGSIZE = @as(c_int, 40);
pub const EPROTOTYPE = @as(c_int, 41);
pub const ENOPROTOOPT = @as(c_int, 42);
pub const EPROTONOSUPPORT = @as(c_int, 43);
pub const ESOCKTNOSUPPORT = @as(c_int, 44);
pub const ENOTSUP = @as(c_int, 45);
pub const EPFNOSUPPORT = @as(c_int, 46);
pub const EAFNOSUPPORT = @as(c_int, 47);
pub const EADDRINUSE = @as(c_int, 48);
pub const EADDRNOTAVAIL = @as(c_int, 49);
pub const ENETDOWN = @as(c_int, 50);
pub const ENETUNREACH = @as(c_int, 51);
pub const ENETRESET = @as(c_int, 52);
pub const ECONNABORTED = @as(c_int, 53);
pub const ECONNRESET = @as(c_int, 54);
pub const ENOBUFS = @as(c_int, 55);
pub const EISCONN = @as(c_int, 56);
pub const ENOTCONN = @as(c_int, 57);
pub const ESHUTDOWN = @as(c_int, 58);
pub const ETOOMANYREFS = @as(c_int, 59);
pub const ETIMEDOUT = @as(c_int, 60);
pub const ECONNREFUSED = @as(c_int, 61);
pub const ELOOP = @as(c_int, 62);
pub const ENAMETOOLONG = @as(c_int, 63);
pub const EHOSTDOWN = @as(c_int, 64);
pub const EHOSTUNREACH = @as(c_int, 65);
pub const ENOTEMPTY = @as(c_int, 66);
pub const EPROCLIM = @as(c_int, 67);
pub const EUSERS = @as(c_int, 68);
pub const EDQUOT = @as(c_int, 69);
pub const ESTALE = @as(c_int, 70);
pub const EREMOTE = @as(c_int, 71);
pub const EBADRPC = @as(c_int, 72);
pub const ERPCMISMATCH = @as(c_int, 73);
pub const EPROGUNAVAIL = @as(c_int, 74);
pub const EPROGMISMATCH = @as(c_int, 75);
pub const EPROCUNAVAIL = @as(c_int, 76);
pub const ENOLCK = @as(c_int, 77);
pub const ENOSYS = @as(c_int, 78);
pub const EFTYPE = @as(c_int, 79);
pub const EAUTH = @as(c_int, 80);
pub const ENEEDAUTH = @as(c_int, 81);
pub const EPWROFF = @as(c_int, 82);
pub const EDEVERR = @as(c_int, 83);
pub const EOVERFLOW = @as(c_int, 84);
pub const EBADEXEC = @as(c_int, 85);
pub const EBADARCH = @as(c_int, 86);
pub const ESHLIBVERS = @as(c_int, 87);
pub const EBADMACHO = @as(c_int, 88);
pub const ECANCELED = @as(c_int, 89);
pub const EIDRM = @as(c_int, 90);
pub const ENOMSG = @as(c_int, 91);
pub const EILSEQ = @as(c_int, 92);
pub const ENOATTR = @as(c_int, 93);
pub const EBADMSG = @as(c_int, 94);
pub const EMULTIHOP = @as(c_int, 95);
pub const ENODATA = @as(c_int, 96);
pub const ENOLINK = @as(c_int, 97);
pub const ENOSR = @as(c_int, 98);
pub const ENOSTR = @as(c_int, 99);
pub const EPROTO = @as(c_int, 100);
pub const ETIME = @as(c_int, 101);
pub const EOPNOTSUPP = @as(c_int, 102);
pub const ENOPOLICY = @as(c_int, 103);
pub const ENOTRECOVERABLE = @as(c_int, 104);
pub const EOWNERDEAD = @as(c_int, 105);
pub const EQFULL = @as(c_int, 106);
pub const ENOTCAPABLE = @as(c_int, 107);
pub const ELAST = @as(c_int, 107);
pub const __MATH_H__ = "";
pub const __MATH__ = "";
pub const HUGE_VAL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:63:15
pub const HUGE_VALF = __builtin.huge_valf();
pub const HUGE_VALL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:65:15
pub const NAN = __builtin.nanf("0x7fc00000");
pub const INFINITY = HUGE_VALF;
pub const FP_NAN = @as(c_int, 1);
pub const FP_INFINITE = @as(c_int, 2);
pub const FP_ZERO = @as(c_int, 3);
pub const FP_NORMAL = @as(c_int, 4);
pub const FP_SUBNORMAL = @as(c_int, 5);
pub const FP_SUPERNORMAL = @as(c_int, 6);
pub const FP_FAST_FMA = @as(c_int, 1);
pub const FP_FAST_FMAF = @as(c_int, 1);
pub const FP_FAST_FMAL = @as(c_int, 1);
pub const FP_ILOGB0 = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const FP_ILOGBNAN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const MATH_ERRNO = @as(c_int, 1);
pub const MATH_ERREXCEPT = @as(c_int, 2);
pub const math_errhandling = __math_errhandling();
pub const fpclassify = @compileError("unable to translate: TODO long double"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:139:9
pub const isnormal = @compileError("unable to translate: TODO long double"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:164:9
pub const isfinite = @compileError("unable to translate: TODO long double"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:169:9
pub const isinf = @compileError("unable to translate: TODO long double"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:174:9
pub const isnan = @compileError("unable to translate: TODO long double"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:179:9
pub const signbit = @compileError("unable to translate: TODO long double"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:184:9
pub const isgreater = @compileError("unable to translate macro: undefined identifier `__builtin_isgreater`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:574:9
pub const isgreaterequal = @compileError("unable to translate macro: undefined identifier `__builtin_isgreaterequal`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:575:9
pub const isless = @compileError("unable to translate macro: undefined identifier `__builtin_isless`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:576:9
pub const islessequal = @compileError("unable to translate macro: undefined identifier `__builtin_islessequal`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:577:9
pub const islessgreater = @compileError("unable to translate macro: undefined identifier `__builtin_islessgreater`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:578:9
pub const isunordered = @compileError("unable to translate macro: undefined identifier `__builtin_isunordered`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:579:9
pub const M_E = @as(f64, 2.71828182845904523536028747135266250);
pub const M_LOG2E = @as(f64, 1.44269504088896340735992468100189214);
pub const M_LOG10E = @as(f64, 0.434294481903251827651128918916605082);
pub const M_LN2 = @as(f64, 0.693147180559945309417232121458176568);
pub const M_LN10 = @as(f64, 2.30258509299404568401799145468436421);
pub const M_PI = @as(f64, 3.14159265358979323846264338327950288);
pub const M_PI_2 = @as(f64, 1.57079632679489661923132169163975144);
pub const M_PI_4 = @as(f64, 0.785398163397448309615660845819875721);
pub const M_1_PI = @as(f64, 0.318309886183790671537767526745028724);
pub const M_2_PI = @as(f64, 0.636619772367581343075535053490057448);
pub const M_2_SQRTPI = @as(f64, 1.12837916709551257389615890312154517);
pub const M_SQRT2 = @as(f64, 1.41421356237309504880168872420969808);
pub const M_SQRT1_2 = @as(f64, 0.707106781186547524400844362104849039);
pub const MAXFLOAT = @as(f32, 0x1.fffffep+127);
pub const FP_SNAN = FP_NAN;
pub const FP_QNAN = FP_NAN;
pub const HUGE = MAXFLOAT;
pub const X_TLOSS = @as(f64, 1.41484755040568800000e+16);
pub const DOMAIN = @as(c_int, 1);
pub const SING = @as(c_int, 2);
pub const OVERFLOW = @as(c_int, 3);
pub const UNDERFLOW = @as(c_int, 4);
pub const TLOSS = @as(c_int, 5);
pub const PLOSS = @as(c_int, 6);
pub const HAVE_ARPA_INET_H = @as(c_int, 1);
pub const HAVE_CTYPE_H = @as(c_int, 1);
pub const HAVE_DIRENT_H = @as(c_int, 1);
pub const HAVE_FCNTL_H = @as(c_int, 1);
pub const HAVE_FORKPTY = @as(c_int, 1);
pub const HAVE__DEV_PTMX = @as(c_int, 1);
pub const HAVE_GETADDRINFO = @as(c_int, 1);
pub const HAVE_GETHOSTBYNAME = @as(c_int, 1);
pub const HAVE_GETHOSTNAME = @as(c_int, 1);
pub const HAVE_GETTIMEOFDAY = @as(c_int, 1);
pub const HAVE_GNUTLS_H = "";
pub const HAVE_INET_NTOA = @as(c_int, 1);
pub const HAVE_INTTYPES_H = @as(c_int, 1);
pub const HAVE_LIBPTHREAD = @as(c_int, 1);
pub const HAVE_LIBUTIL = @as(c_int, 1);
pub const HAVE_LIBZ = @as(c_int, 1);
pub const HAVE_MEMORY_H = @as(c_int, 1);
pub const HAVE_MEMSET = @as(c_int, 1);
pub const HAVE_NETDB_H = @as(c_int, 1);
pub const HAVE_NETINET_IN_H = @as(c_int, 1);
pub const HAVE_POPEN = @as(c_int, 1);
pub const HAVE_PTHREAD_H = @as(c_int, 1);
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
pub const HAVE_UTIL_H = @as(c_int, 1);
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
pub const RETSIGTYPE = anyopaque;
pub const SELECT_TYPE_ARG1 = c_int;
pub const SELECT_TYPE_ARG234 = @compileError("unable to translate C expr: unexpected token ''"); // src/config.h:240:9
pub const SELECT_TYPE_ARG5 = @compileError("unable to translate C expr: unexpected token ''"); // src/config.h:243:9
pub const STDC_HEADERS = @as(c_int, 1);
pub const TIME_WITH_SYS_TIME = @as(c_int, 1);
pub const _STRING_H_ = "";
pub const __STRINGS_H_ = "";
pub const _SECURE__STRINGS_H_ = "";
pub const __bcopy_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___memmove_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_strings.h:65:9
pub const __bzero_chk_func = @compileError("unable to translate C expr: unexpected token '__VA_ARGS__'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_strings.h:70:9
pub const _SECURE__STRING_H_ = "";
pub const __memcpy_chk_func = @compileError("unable to translate C expr: unexpected token '__VA_ARGS__'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:126:9
pub const __memmove_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___memmove_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:131:9
pub const __memset_chk_func = @compileError("unable to translate C expr: unexpected token '__VA_ARGS__'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:136:9
pub const __stpncpy_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___stpncpy_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:141:9
pub const __strncpy_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___strncpy_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:146:9
pub const __strlcpy_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___strlcpy_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:153:9
pub const __strlcat_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___strlcat_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:158:9
pub const __memccpy_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___memccpy_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:163:9
pub const __strcpy_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___strcpy_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:171:9
pub const __stpcpy_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___stpcpy_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:176:9
pub const __strcat_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___strcat_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:181:9
pub const __strncat_chk_func = @compileError("unable to translate macro: undefined identifier `__builtin___strncat_chk`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h:187:9
pub const _TIME_H_ = "";
pub const CLOCKS_PER_SEC = __helpers.cast(clock_t, __helpers.promoteIntLiteral(c_int, 1000000, .decimal));
pub const CLOCK_REALTIME = _CLOCK_REALTIME;
pub const CLOCK_MONOTONIC = _CLOCK_MONOTONIC;
pub const CLOCK_MONOTONIC_RAW = _CLOCK_MONOTONIC_RAW;
pub const CLOCK_MONOTONIC_RAW_APPROX = _CLOCK_MONOTONIC_RAW_APPROX;
pub const CLOCK_UPTIME_RAW = _CLOCK_UPTIME_RAW;
pub const CLOCK_UPTIME_RAW_APPROX = _CLOCK_UPTIME_RAW_APPROX;
pub const CLOCK_PROCESS_CPUTIME_ID = _CLOCK_PROCESS_CPUTIME_ID;
pub const CLOCK_THREAD_CPUTIME_ID = _CLOCK_THREAD_CPUTIME_ID;
pub const TIME_UTC = @as(c_int, 1);
pub const _SYS_TIME_H_ = "";
pub const _STRUCT_TIMEVAL64 = "";
pub const ITIMER_REAL = @as(c_int, 0);
pub const ITIMER_VIRTUAL = @as(c_int, 1);
pub const ITIMER_PROF = @as(c_int, 2);
pub const TIMEVAL_TO_TIMESPEC = @compileError("unable to translate C expr: unexpected token '{'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/time.h:121:9
pub const TIMESPEC_TO_TIMEVAL = @compileError("unable to translate C expr: unexpected token '{'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/time.h:125:9
pub const DST_NONE = @as(c_int, 0);
pub const DST_USA = @as(c_int, 1);
pub const DST_AUST = @as(c_int, 2);
pub const DST_WET = @as(c_int, 3);
pub const DST_MET = @as(c_int, 4);
pub const DST_EET = @as(c_int, 5);
pub const DST_CAN = @as(c_int, 6);
pub const timerclear = @compileError("unable to translate C expr: unexpected token '='"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/time.h:143:9
pub inline fn timerisset(tvp: anytype) @TypeOf((tvp.*.tv_sec != 0) or (tvp.*.tv_usec != 0)) {
    _ = &tvp;
    return (tvp.*.tv_sec != 0) or (tvp.*.tv_usec != 0);
}
pub inline fn timercmp(tvp: anytype, uvp: anytype, cmp: anytype) @TypeOf(if (__helpers.cast(bool, tvp.*.tv_sec == uvp.*.tv_sec)) tvp.*.tv_usec ++ cmp(uvp).*.tv_usec else tvp.*.tv_sec ++ cmp(uvp).*.tv_sec) {
    _ = &tvp;
    _ = &uvp;
    _ = &cmp;
    return if (__helpers.cast(bool, tvp.*.tv_sec == uvp.*.tv_sec)) tvp.*.tv_usec ++ cmp(uvp).*.tv_usec else tvp.*.tv_sec ++ cmp(uvp).*.tv_sec;
}
pub const timeradd = @compileError("unable to translate C expr: unexpected token 'do'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/time.h:149:9
pub const timersub = @compileError("unable to translate C expr: unexpected token 'do'"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/time.h:158:9
pub inline fn timevalcmp(l: anytype, r: anytype, cmp: anytype) @TypeOf(timercmp(l, r, cmp)) {
    _ = &l;
    _ = &r;
    _ = &cmp;
    return timercmp(l, r, cmp);
}
pub const GNUTLS_GNUTLS_H = "";
pub const GNUTLS_VERSION = "3.8.13";
pub const GNUTLS_VERSION_MAJOR = @as(c_int, 3);
pub const GNUTLS_VERSION_MINOR = @as(c_int, 8);
pub const GNUTLS_VERSION_PATCH = @as(c_int, 13);
pub const GNUTLS_VERSION_NUMBER = __helpers.promoteIntLiteral(c_int, 0x03080d, .hex);
pub const GNUTLS_CIPHER_RIJNDAEL_128_CBC = GNUTLS_CIPHER_AES_128_CBC;
pub const GNUTLS_CIPHER_RIJNDAEL_256_CBC = GNUTLS_CIPHER_AES_256_CBC;
pub const GNUTLS_CIPHER_RIJNDAEL_CBC = GNUTLS_CIPHER_AES_128_CBC;
pub const GNUTLS_CIPHER_ARCFOUR = GNUTLS_CIPHER_ARCFOUR_128;
pub const _SYM_EXPORT = "";
pub const __GNUTLS_CONST__ = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // /opt/homebrew/include/gnutls/gnutls.h:74:9
pub const __GNUTLS_PURE__ = @compileError("unable to translate macro: undefined identifier `pure`"); // /opt/homebrew/include/gnutls/gnutls.h:75:9
pub const GNUTLS_SKIP_GLOBAL_INIT = @compileError("unable to translate macro: undefined identifier `_gnutls_global_init_skip`"); // /opt/homebrew/include/gnutls/gnutls.h:83:9
pub const GNUTLS_MAC_SHA = GNUTLS_MAC_SHA1;
pub const GNUTLS_DIG_SHA = GNUTLS_DIG_SHA1;
pub const GNUTLS_MAX_ALGORITHM_NUM = @as(c_int, 128);
pub const GNUTLS_MAX_SESSION_ID_SIZE = @as(c_int, 32);
pub const GNUTLS_ENABLE_CERT_TYPE_NEG = @as(c_int, 0);
pub const GNUTLS_NO_EXTENSIONS = GNUTLS_NO_DEFAULT_EXTENSIONS;
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
pub const gnutls_check_version_numeric = @compileError("unable to translate C expr: unexpected token ''"); // /opt/homebrew/include/gnutls/gnutls.h:2008:9
pub const gnutls_cred_set = gnutls_credentials_set;
pub const GNUTLS_OCSP_SR_IS_AVAIL = @as(c_int, 1);
pub const _SYS_UIO_H_ = "";
pub const _STRUCT_IOVEC = "";
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
pub const GNUTLS_FIPS140_SET_LAX_MODE = @compileError("unable to translate C expr: unexpected token 'do'"); // /opt/homebrew/include/gnutls/gnutls.h:3288:9
pub const GNUTLS_FIPS140_SET_STRICT_MODE = @compileError("unable to translate C expr: unexpected token 'do'"); // /opt/homebrew/include/gnutls/gnutls.h:3296:9
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
pub const GNUTLS_E_UNSUPPORTED_ENCRYPTION_ALGORITHM = -@as(c_int, 113);
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
pub const _GNUTLS_GCC_ATTR_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /opt/homebrew/include/gnutls/compat.h:39:9
pub const GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT = @as(c_int, 0);
pub const GNUTLS_A_MISSING_SRP_USERNAME = GNUTLS_A_UNKNOWN_PSK_IDENTITY;
pub const GNUTLS_A_UNKNOWN_SRP_USERNAME = GNUTLS_A_UNKNOWN_PSK_IDENTITY;
pub const GNUTLS_OPENPGP_KEY = GNUTLS_OPENPGP_CERT;
pub const GNUTLS_OPENPGP_KEY_FINGERPRINT = GNUTLS_OPENPGP_CERT_FINGERPRINT;
pub const gnutls_openpgp_send_key = gnutls_openpgp_send_cert;
pub const gnutls_openpgp_key_init = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_init`"); // /opt/homebrew/include/gnutls/compat.h:121:9
pub const gnutls_openpgp_key_deinit = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_deinit`"); // /opt/homebrew/include/gnutls/compat.h:122:9
pub const gnutls_openpgp_key_import = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_import`"); // /opt/homebrew/include/gnutls/compat.h:123:9
pub const gnutls_openpgp_key_export = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_export`"); // /opt/homebrew/include/gnutls/compat.h:124:9
pub const gnutls_openpgp_key_get_key_usage = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_key_usage`"); // /opt/homebrew/include/gnutls/compat.h:125:9
pub const gnutls_openpgp_key_get_fingerprint = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_fingerprint`"); // /opt/homebrew/include/gnutls/compat.h:126:9
pub const gnutls_openpgp_key_get_pk_algorithm = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_pk_algorithm`"); // /opt/homebrew/include/gnutls/compat.h:127:9
pub const gnutls_openpgp_key_get_name = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_name`"); // /opt/homebrew/include/gnutls/compat.h:128:9
pub const gnutls_openpgp_key_get_version = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_version`"); // /opt/homebrew/include/gnutls/compat.h:129:9
pub const gnutls_openpgp_key_get_creation_time = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_creation_time`"); // /opt/homebrew/include/gnutls/compat.h:130:9
pub const gnutls_openpgp_key_get_expiration_time = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_expiration_time`"); // /opt/homebrew/include/gnutls/compat.h:132:9
pub const gnutls_openpgp_key_get_id = gnutls_openpgp_crt_get_id;
pub const gnutls_openpgp_key_check_hostname = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_check_hostname`"); // /opt/homebrew/include/gnutls/compat.h:135:9
pub const gnutls_openpgp_crt_get_id = @compileError("unable to translate macro: undefined identifier `gnutls_openpgp_crt_get_key_id`"); // /opt/homebrew/include/gnutls/compat.h:138:9
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
pub const GNUTLS_CRL_REASON_SUPERSEEDED = @compileError("unable to translate C expr: unexpected token ''"); // /opt/homebrew/include/gnutls/x509.h:339:9
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
pub const _SYS_SOCKET_H_ = "";
pub const __CONSTRAINED_CTYPES__ = "";
pub inline fn __CCT_DECLARE_CONSTRAINED_PTR_TYPE(basetype: anytype, basetag: anytype) void {
    _ = &basetype;
    _ = &basetag;
    return;
}
pub inline fn __CCT_DECLARE_CONSTRAINED_PTR_TYPES(basetype: anytype, basetag: anytype) void {
    _ = &basetype;
    _ = &basetag;
    return;
}
pub const _BSD_MACHINE__PARAM_H_ = "";
pub const _ARM__PARAM_H_ = "";
pub const __DARWIN_ALIGNBYTES = __helpers.sizeof(__darwin_size_t) - @as(c_int, 1);
pub inline fn __DARWIN_ALIGN(p: anytype) @TypeOf(__helpers.cast(__darwin_size_t, __helpers.cast(__darwin_size_t, p) + __DARWIN_ALIGNBYTES) & ~__DARWIN_ALIGNBYTES) {
    _ = &p;
    return __helpers.cast(__darwin_size_t, __helpers.cast(__darwin_size_t, p) + __DARWIN_ALIGNBYTES) & ~__DARWIN_ALIGNBYTES;
}
pub const __DARWIN_ALIGNBYTES32 = __helpers.sizeof(__uint32_t) - @as(c_int, 1);
pub inline fn __DARWIN_ALIGN32(p: anytype) @TypeOf(__helpers.cast(__darwin_size_t, __helpers.cast(__darwin_size_t, p) + __DARWIN_ALIGNBYTES32) & ~__DARWIN_ALIGNBYTES32) {
    _ = &p;
    return __helpers.cast(__darwin_size_t, __helpers.cast(__darwin_size_t, p) + __DARWIN_ALIGNBYTES32) & ~__DARWIN_ALIGNBYTES32;
}
pub const _NET_NETKEV_H_ = "";
pub const KEV_INET_SUBCLASS = @as(c_int, 1);
pub const KEV_INET_NEW_ADDR = @as(c_int, 1);
pub const KEV_INET_CHANGED_ADDR = @as(c_int, 2);
pub const KEV_INET_ADDR_DELETED = @as(c_int, 3);
pub const KEV_INET_SIFDSTADDR = @as(c_int, 4);
pub const KEV_INET_SIFBRDADDR = @as(c_int, 5);
pub const KEV_INET_SIFNETMASK = @as(c_int, 6);
pub const KEV_INET_ARPCOLLISION = @as(c_int, 7);
pub const KEV_INET_PORTINUSE = @as(c_int, 8);
pub const KEV_INET_ARPRTRFAILURE = @as(c_int, 9);
pub const KEV_INET_ARPRTRALIVE = @as(c_int, 10);
pub const KEV_DL_SUBCLASS = @as(c_int, 2);
pub const KEV_DL_SIFFLAGS = @as(c_int, 1);
pub const KEV_DL_SIFMETRICS = @as(c_int, 2);
pub const KEV_DL_SIFMTU = @as(c_int, 3);
pub const KEV_DL_SIFPHYS = @as(c_int, 4);
pub const KEV_DL_SIFMEDIA = @as(c_int, 5);
pub const KEV_DL_SIFGENERIC = @as(c_int, 6);
pub const KEV_DL_ADDMULTI = @as(c_int, 7);
pub const KEV_DL_DELMULTI = @as(c_int, 8);
pub const KEV_DL_IF_ATTACHED = @as(c_int, 9);
pub const KEV_DL_IF_DETACHING = @as(c_int, 10);
pub const KEV_DL_IF_DETACHED = @as(c_int, 11);
pub const KEV_DL_LINK_OFF = @as(c_int, 12);
pub const KEV_DL_LINK_ON = @as(c_int, 13);
pub const KEV_DL_PROTO_ATTACHED = @as(c_int, 14);
pub const KEV_DL_PROTO_DETACHED = @as(c_int, 15);
pub const KEV_DL_LINK_ADDRESS_CHANGED = @as(c_int, 16);
pub const KEV_DL_WAKEFLAGS_CHANGED = @as(c_int, 17);
pub const KEV_DL_IF_IDLE_ROUTE_REFCNT = @as(c_int, 18);
pub const KEV_DL_IFCAP_CHANGED = @as(c_int, 19);
pub const KEV_DL_LINK_QUALITY_METRIC_CHANGED = @as(c_int, 20);
pub const KEV_DL_NODE_PRESENCE = @as(c_int, 21);
pub const KEV_DL_NODE_ABSENCE = @as(c_int, 22);
pub const KEV_DL_PRIMARY_ELECTED = @as(c_int, 23);
pub const KEV_DL_ISSUES = @as(c_int, 24);
pub const KEV_DL_IFDELEGATE_CHANGED = @as(c_int, 25);
pub const KEV_DL_AWDL_RESTRICTED = @as(c_int, 26);
pub const KEV_DL_AWDL_UNRESTRICTED = @as(c_int, 27);
pub const KEV_DL_RRC_STATE_CHANGED = @as(c_int, 28);
pub const KEV_DL_QOS_MODE_CHANGED = @as(c_int, 29);
pub const KEV_DL_LOW_POWER_MODE_CHANGED = @as(c_int, 30);
pub const KEV_DL_MASTER_ELECTED = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/net/net_kev.h:86:9
pub const KEV_INET6_SUBCLASS = @as(c_int, 6);
pub const KEV_INET6_NEW_USER_ADDR = @as(c_int, 1);
pub const KEV_INET6_CHANGED_ADDR = @as(c_int, 2);
pub const KEV_INET6_ADDR_DELETED = @as(c_int, 3);
pub const KEV_INET6_NEW_LL_ADDR = @as(c_int, 4);
pub const KEV_INET6_NEW_RTADV_ADDR = @as(c_int, 5);
pub const KEV_INET6_DEFROUTER = @as(c_int, 6);
pub const KEV_INET6_REQUEST_NAT64_PREFIX = @as(c_int, 7);
pub const _SA_FAMILY_T = "";
pub const _SOCKLEN_T = "";
pub const SOCK_STREAM = @as(c_int, 1);
pub const SOCK_DGRAM = @as(c_int, 2);
pub const SOCK_RAW = @as(c_int, 3);
pub const SOCK_RDM = @as(c_int, 4);
pub const SOCK_SEQPACKET = @as(c_int, 5);
pub const SO_DEBUG = @as(c_int, 0x0001);
pub const SO_ACCEPTCONN = @as(c_int, 0x0002);
pub const SO_REUSEADDR = @as(c_int, 0x0004);
pub const SO_KEEPALIVE = @as(c_int, 0x0008);
pub const SO_DONTROUTE = @as(c_int, 0x0010);
pub const SO_BROADCAST = @as(c_int, 0x0020);
pub const SO_USELOOPBACK = @as(c_int, 0x0040);
pub const SO_LINGER = @as(c_int, 0x0080);
pub const SO_LINGER_SEC = @as(c_int, 0x1080);
pub const SO_OOBINLINE = @as(c_int, 0x0100);
pub const SO_REUSEPORT = @as(c_int, 0x0200);
pub const SO_TIMESTAMP = @as(c_int, 0x0400);
pub const SO_TIMESTAMP_MONOTONIC = @as(c_int, 0x0800);
pub const SO_DONTTRUNC = @as(c_int, 0x2000);
pub const SO_WANTMORE = @as(c_int, 0x4000);
pub const SO_WANTOOBFLAG = __helpers.promoteIntLiteral(c_int, 0x8000, .hex);
pub const SO_SNDBUF = @as(c_int, 0x1001);
pub const SO_RCVBUF = @as(c_int, 0x1002);
pub const SO_SNDLOWAT = @as(c_int, 0x1003);
pub const SO_RCVLOWAT = @as(c_int, 0x1004);
pub const SO_SNDTIMEO = @as(c_int, 0x1005);
pub const SO_RCVTIMEO = @as(c_int, 0x1006);
pub const SO_ERROR = @as(c_int, 0x1007);
pub const SO_TYPE = @as(c_int, 0x1008);
pub const SO_LABEL = @as(c_int, 0x1010);
pub const SO_PEERLABEL = @as(c_int, 0x1011);
pub const SO_NREAD = @as(c_int, 0x1020);
pub const SO_NKE = @as(c_int, 0x1021);
pub const SO_NOSIGPIPE = @as(c_int, 0x1022);
pub const SO_NOADDRERR = @as(c_int, 0x1023);
pub const SO_NWRITE = @as(c_int, 0x1024);
pub const SO_REUSESHAREUID = @as(c_int, 0x1025);
pub const SO_NOTIFYCONFLICT = @as(c_int, 0x1026);
pub const SO_UPCALLCLOSEWAIT = @as(c_int, 0x1027);
pub const SO_RANDOMPORT = @as(c_int, 0x1082);
pub const SO_NP_EXTENSIONS = @as(c_int, 0x1083);
pub const SO_NUMRCVPKT = @as(c_int, 0x1112);
pub const SO_NET_SERVICE_TYPE = @as(c_int, 0x1116);
pub const SO_NETSVC_MARKING_LEVEL = @as(c_int, 0x1119);
pub const SO_RESOLVER_SIGNATURE = @as(c_int, 0x1131);
pub const SO_BINDTODEVICE = @as(c_int, 0x1134);
pub const NET_SERVICE_TYPE_BE = @as(c_int, 0);
pub const NET_SERVICE_TYPE_BK = @as(c_int, 1);
pub const NET_SERVICE_TYPE_SIG = @as(c_int, 2);
pub const NET_SERVICE_TYPE_VI = @as(c_int, 3);
pub const NET_SERVICE_TYPE_VO = @as(c_int, 4);
pub const NET_SERVICE_TYPE_RV = @as(c_int, 5);
pub const NET_SERVICE_TYPE_AV = @as(c_int, 6);
pub const NET_SERVICE_TYPE_OAM = @as(c_int, 7);
pub const NET_SERVICE_TYPE_RD = @as(c_int, 8);
pub const NETSVC_MRKNG_UNKNOWN = @as(c_int, 0);
pub const NETSVC_MRKNG_LVL_L2 = @as(c_int, 1);
pub const NETSVC_MRKNG_LVL_L3L2_ALL = @as(c_int, 2);
pub const NETSVC_MRKNG_LVL_L3L2_BK = @as(c_int, 3);
pub const SAE_ASSOCID_ANY = @as(c_int, 0);
pub const SAE_ASSOCID_ALL = __helpers.cast(sae_associd_t, -@as(c_ulonglong, 1));
pub const SAE_CONNID_ANY = @as(c_int, 0);
pub const SAE_CONNID_ALL = __helpers.cast(sae_connid_t, -@as(c_ulonglong, 1));
pub const CONNECT_RESUME_ON_READ_WRITE = @as(c_int, 0x1);
pub const CONNECT_DATA_IDEMPOTENT = @as(c_int, 0x2);
pub const CONNECT_DATA_AUTHENTICATED = @as(c_int, 0x4);
pub const SONPX_SETOPTSHUT = @as(c_int, 0x000000001);
pub const SOL_SOCKET = __helpers.promoteIntLiteral(c_int, 0xffff, .hex);
pub const AF_UNSPEC = @as(c_int, 0);
pub const AF_UNIX = @as(c_int, 1);
pub const AF_LOCAL = AF_UNIX;
pub const AF_INET = @as(c_int, 2);
pub const AF_IMPLINK = @as(c_int, 3);
pub const AF_PUP = @as(c_int, 4);
pub const AF_CHAOS = @as(c_int, 5);
pub const AF_NS = @as(c_int, 6);
pub const AF_ISO = @as(c_int, 7);
pub const AF_OSI = AF_ISO;
pub const AF_ECMA = @as(c_int, 8);
pub const AF_DATAKIT = @as(c_int, 9);
pub const AF_CCITT = @as(c_int, 10);
pub const AF_SNA = @as(c_int, 11);
pub const AF_DECnet = @as(c_int, 12);
pub const AF_DLI = @as(c_int, 13);
pub const AF_LAT = @as(c_int, 14);
pub const AF_HYLINK = @as(c_int, 15);
pub const AF_APPLETALK = @as(c_int, 16);
pub const AF_ROUTE = @as(c_int, 17);
pub const AF_LINK = @as(c_int, 18);
pub const pseudo_AF_XTP = @as(c_int, 19);
pub const AF_COIP = @as(c_int, 20);
pub const AF_CNT = @as(c_int, 21);
pub const pseudo_AF_RTIP = @as(c_int, 22);
pub const AF_IPX = @as(c_int, 23);
pub const AF_SIP = @as(c_int, 24);
pub const pseudo_AF_PIP = @as(c_int, 25);
pub const AF_NDRV = @as(c_int, 27);
pub const AF_ISDN = @as(c_int, 28);
pub const AF_E164 = AF_ISDN;
pub const pseudo_AF_KEY = @as(c_int, 29);
pub const AF_INET6 = @as(c_int, 30);
pub const AF_NATM = @as(c_int, 31);
pub const AF_SYSTEM = @as(c_int, 32);
pub const AF_NETBIOS = @as(c_int, 33);
pub const AF_PPP = @as(c_int, 34);
pub const pseudo_AF_HDRCMPLT = @as(c_int, 35);
pub const AF_RESERVED_36 = @as(c_int, 36);
pub const AF_IEEE80211 = @as(c_int, 37);
pub const AF_UTUN = @as(c_int, 38);
pub const AF_VSOCK = @as(c_int, 40);
pub const AF_MAX = @as(c_int, 41);
pub const SOCK_MAXADDRLEN = @as(c_int, 255);
pub const _SS_MAXSIZE = @as(c_int, 128);
pub const _SS_ALIGNSIZE = __helpers.sizeof(__int64_t);
pub const _SS_PAD1SIZE = (_SS_ALIGNSIZE - __helpers.sizeof(__uint8_t)) - __helpers.sizeof(sa_family_t);
pub const _SS_PAD2SIZE = (((_SS_MAXSIZE - __helpers.sizeof(__uint8_t)) - __helpers.sizeof(sa_family_t)) - _SS_PAD1SIZE) - _SS_ALIGNSIZE;
pub const PF_UNSPEC = AF_UNSPEC;
pub const PF_LOCAL = AF_LOCAL;
pub const PF_UNIX = PF_LOCAL;
pub const PF_INET = AF_INET;
pub const PF_IMPLINK = AF_IMPLINK;
pub const PF_PUP = AF_PUP;
pub const PF_CHAOS = AF_CHAOS;
pub const PF_NS = AF_NS;
pub const PF_ISO = AF_ISO;
pub const PF_OSI = AF_ISO;
pub const PF_ECMA = AF_ECMA;
pub const PF_DATAKIT = AF_DATAKIT;
pub const PF_CCITT = AF_CCITT;
pub const PF_SNA = AF_SNA;
pub const PF_DECnet = AF_DECnet;
pub const PF_DLI = AF_DLI;
pub const PF_LAT = AF_LAT;
pub const PF_HYLINK = AF_HYLINK;
pub const PF_APPLETALK = AF_APPLETALK;
pub const PF_ROUTE = AF_ROUTE;
pub const PF_LINK = AF_LINK;
pub const PF_XTP = pseudo_AF_XTP;
pub const PF_COIP = AF_COIP;
pub const PF_CNT = AF_CNT;
pub const PF_SIP = AF_SIP;
pub const PF_IPX = AF_IPX;
pub const PF_RTIP = pseudo_AF_RTIP;
pub const PF_PIP = pseudo_AF_PIP;
pub const PF_NDRV = AF_NDRV;
pub const PF_ISDN = AF_ISDN;
pub const PF_KEY = pseudo_AF_KEY;
pub const PF_INET6 = AF_INET6;
pub const PF_NATM = AF_NATM;
pub const PF_SYSTEM = AF_SYSTEM;
pub const PF_NETBIOS = AF_NETBIOS;
pub const PF_PPP = AF_PPP;
pub const PF_RESERVED_36 = AF_RESERVED_36;
pub const PF_UTUN = AF_UTUN;
pub const PF_VSOCK = AF_VSOCK;
pub const PF_MAX = AF_MAX;
pub const PF_VLAN = __helpers.cast(u32, __helpers.promoteIntLiteral(c_int, 0x766c616e, .hex));
pub const PF_BOND = __helpers.cast(u32, __helpers.promoteIntLiteral(c_int, 0x626f6e64, .hex));
pub const NET_MAXID = AF_MAX;
pub const NET_RT_DUMP = @as(c_int, 1);
pub const NET_RT_FLAGS = @as(c_int, 2);
pub const NET_RT_IFLIST = @as(c_int, 3);
pub const NET_RT_STAT = @as(c_int, 4);
pub const NET_RT_TRASH = @as(c_int, 5);
pub const NET_RT_IFLIST2 = @as(c_int, 6);
pub const NET_RT_DUMP2 = @as(c_int, 7);
pub const NET_RT_FLAGS_PRIV = @as(c_int, 10);
pub const NET_RT_MAXID = @as(c_int, 11);
pub const SOMAXCONN = @as(c_int, 128);
pub const MSG_OOB = @as(c_int, 0x1);
pub const MSG_PEEK = @as(c_int, 0x2);
pub const MSG_DONTROUTE = @as(c_int, 0x4);
pub const MSG_EOR = @as(c_int, 0x8);
pub const MSG_TRUNC = @as(c_int, 0x10);
pub const MSG_CTRUNC = @as(c_int, 0x20);
pub const MSG_WAITALL = @as(c_int, 0x40);
pub const MSG_DONTWAIT = @as(c_int, 0x80);
pub const MSG_EOF = @as(c_int, 0x100);
pub const MSG_WAITSTREAM = @as(c_int, 0x200);
pub const MSG_FLUSH = @as(c_int, 0x400);
pub const MSG_HOLD = @as(c_int, 0x800);
pub const MSG_SEND = @as(c_int, 0x1000);
pub const MSG_HAVEMORE = @as(c_int, 0x2000);
pub const MSG_RCVMORE = @as(c_int, 0x4000);
pub const MSG_NEEDSA = __helpers.promoteIntLiteral(c_int, 0x10000, .hex);
pub const MSG_NOSIGNAL = __helpers.promoteIntLiteral(c_int, 0x80000, .hex);
pub inline fn CMSG_DATA(cmsg: anytype) @TypeOf(__helpers.cast([*c]u8, cmsg) + __DARWIN_ALIGN32(__helpers.sizeof(struct_cmsghdr))) {
    _ = &cmsg;
    return __helpers.cast([*c]u8, cmsg) + __DARWIN_ALIGN32(__helpers.sizeof(struct_cmsghdr));
}
pub inline fn CMSG_FIRSTHDR(mhdr: anytype) @TypeOf(if (__helpers.cast(bool, mhdr.*.msg_controllen >= __helpers.sizeof(struct_cmsghdr))) __helpers.cast([*c]struct_cmsghdr, mhdr.*.msg_control) else __helpers.cast([*c]struct_cmsghdr, @as(c_long, 0))) {
    _ = &mhdr;
    return if (__helpers.cast(bool, mhdr.*.msg_controllen >= __helpers.sizeof(struct_cmsghdr))) __helpers.cast([*c]struct_cmsghdr, mhdr.*.msg_control) else __helpers.cast([*c]struct_cmsghdr, @as(c_long, 0));
}
pub inline fn CMSG_NXTHDR(mhdr: anytype, cmsg: anytype) @TypeOf(if (__helpers.cast(bool, __helpers.cast([*c]u8, cmsg) == __helpers.cast([*c]u8, @as(c_long, 0)))) CMSG_FIRSTHDR(mhdr) else if (__helpers.cast(bool, ((__helpers.cast([*c]u8, cmsg) + __DARWIN_ALIGN32(__helpers.cast(__uint32_t, cmsg.*.cmsg_len))) + __DARWIN_ALIGN32(__helpers.sizeof(struct_cmsghdr))) > (__helpers.cast([*c]u8, mhdr.*.msg_control) + mhdr.*.msg_controllen))) __helpers.cast([*c]struct_cmsghdr, @as(c_long, 0)) else __helpers.cast([*c]struct_cmsghdr, __helpers.cast(?*anyopaque, __helpers.cast([*c]u8, cmsg) + __DARWIN_ALIGN32(__helpers.cast(__uint32_t, cmsg.*.cmsg_len))))) {
    _ = &mhdr;
    _ = &cmsg;
    return if (__helpers.cast(bool, __helpers.cast([*c]u8, cmsg) == __helpers.cast([*c]u8, @as(c_long, 0)))) CMSG_FIRSTHDR(mhdr) else if (__helpers.cast(bool, ((__helpers.cast([*c]u8, cmsg) + __DARWIN_ALIGN32(__helpers.cast(__uint32_t, cmsg.*.cmsg_len))) + __DARWIN_ALIGN32(__helpers.sizeof(struct_cmsghdr))) > (__helpers.cast([*c]u8, mhdr.*.msg_control) + mhdr.*.msg_controllen))) __helpers.cast([*c]struct_cmsghdr, @as(c_long, 0)) else __helpers.cast([*c]struct_cmsghdr, __helpers.cast(?*anyopaque, __helpers.cast([*c]u8, cmsg) + __DARWIN_ALIGN32(__helpers.cast(__uint32_t, cmsg.*.cmsg_len))));
}
pub inline fn CMSG_SPACE(l: anytype) @TypeOf(__DARWIN_ALIGN32(__helpers.sizeof(struct_cmsghdr)) + __DARWIN_ALIGN32(l)) {
    _ = &l;
    return __DARWIN_ALIGN32(__helpers.sizeof(struct_cmsghdr)) + __DARWIN_ALIGN32(l);
}
pub inline fn CMSG_LEN(l: anytype) @TypeOf(__DARWIN_ALIGN32(__helpers.sizeof(struct_cmsghdr)) + l) {
    _ = &l;
    return __DARWIN_ALIGN32(__helpers.sizeof(struct_cmsghdr)) + l;
}
pub const SCM_RIGHTS = @as(c_int, 0x01);
pub const SCM_TIMESTAMP = @as(c_int, 0x02);
pub const SCM_CREDS = @as(c_int, 0x03);
pub const SCM_TIMESTAMP_MONOTONIC = @as(c_int, 0x04);
pub const SHUT_RD = @as(c_int, 0);
pub const SHUT_WR = @as(c_int, 1);
pub const SHUT_RDWR = @as(c_int, 2);
pub const _SYS_STAT_H_ = "";
pub const __DARWIN_STRUCT_STAT64_TIMES = @compileError("unable to translate macro: undefined identifier `st_atimespec`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stat.h:128:9
pub const __DARWIN_STRUCT_STAT64 = @compileError("unable to translate macro: undefined identifier `st_dev`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stat.h:158:9
pub const st_atime = @compileError("unable to translate macro: undefined identifier `st_atimespec`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stat.h:231:9
pub const st_mtime = @compileError("unable to translate macro: undefined identifier `st_mtimespec`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stat.h:232:9
pub const st_ctime = @compileError("unable to translate macro: undefined identifier `st_ctimespec`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stat.h:233:9
pub const st_birthtime = @compileError("unable to translate macro: undefined identifier `st_birthtimespec`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stat.h:234:9
pub const S_IFMT = __helpers.promoteIntLiteral(c_int, 0o170000, .octal);
pub const S_IFIFO = @as(c_int, 0o010000);
pub const S_IFCHR = @as(c_int, 0o020000);
pub const S_IFDIR = @as(c_int, 0o040000);
pub const S_IFBLK = @as(c_int, 0o060000);
pub const S_IFREG = __helpers.promoteIntLiteral(c_int, 0o100000, .octal);
pub const S_IFLNK = __helpers.promoteIntLiteral(c_int, 0o120000, .octal);
pub const S_IFSOCK = __helpers.promoteIntLiteral(c_int, 0o140000, .octal);
pub const S_IFWHT = __helpers.promoteIntLiteral(c_int, 0o160000, .octal);
pub const S_IRWXU = @as(c_int, 0o000700);
pub const S_IRUSR = @as(c_int, 0o000400);
pub const S_IWUSR = @as(c_int, 0o000200);
pub const S_IXUSR = @as(c_int, 0o000100);
pub const S_IRWXG = @as(c_int, 0o000070);
pub const S_IRGRP = @as(c_int, 0o000040);
pub const S_IWGRP = @as(c_int, 0o000020);
pub const S_IXGRP = @as(c_int, 0o000010);
pub const S_IRWXO = @as(c_int, 0o000007);
pub const S_IROTH = @as(c_int, 0o000004);
pub const S_IWOTH = @as(c_int, 0o000002);
pub const S_IXOTH = @as(c_int, 0o000001);
pub const S_ISUID = @as(c_int, 0o004000);
pub const S_ISGID = @as(c_int, 0o002000);
pub const S_ISVTX = @as(c_int, 0o001000);
pub const S_ISTXT = S_ISVTX;
pub const S_IREAD = S_IRUSR;
pub const S_IWRITE = S_IWUSR;
pub const S_IEXEC = S_IXUSR;
pub inline fn S_ISBLK(m: anytype) @TypeOf((m & S_IFMT) == S_IFBLK) {
    _ = &m;
    return (m & S_IFMT) == S_IFBLK;
}
pub inline fn S_ISCHR(m: anytype) @TypeOf((m & S_IFMT) == S_IFCHR) {
    _ = &m;
    return (m & S_IFMT) == S_IFCHR;
}
pub inline fn S_ISDIR(m: anytype) @TypeOf((m & S_IFMT) == S_IFDIR) {
    _ = &m;
    return (m & S_IFMT) == S_IFDIR;
}
pub inline fn S_ISFIFO(m: anytype) @TypeOf((m & S_IFMT) == S_IFIFO) {
    _ = &m;
    return (m & S_IFMT) == S_IFIFO;
}
pub inline fn S_ISREG(m: anytype) @TypeOf((m & S_IFMT) == S_IFREG) {
    _ = &m;
    return (m & S_IFMT) == S_IFREG;
}
pub inline fn S_ISLNK(m: anytype) @TypeOf((m & S_IFMT) == S_IFLNK) {
    _ = &m;
    return (m & S_IFMT) == S_IFLNK;
}
pub inline fn S_ISSOCK(m: anytype) @TypeOf((m & S_IFMT) == S_IFSOCK) {
    _ = &m;
    return (m & S_IFMT) == S_IFSOCK;
}
pub inline fn S_ISWHT(m: anytype) @TypeOf((m & S_IFMT) == S_IFWHT) {
    _ = &m;
    return (m & S_IFMT) == S_IFWHT;
}
pub inline fn S_TYPEISMQ(buf: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &buf;
    return @as(c_int, 0);
}
pub inline fn S_TYPEISSEM(buf: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &buf;
    return @as(c_int, 0);
}
pub inline fn S_TYPEISSHM(buf: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &buf;
    return @as(c_int, 0);
}
pub inline fn S_TYPEISTMO(buf: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &buf;
    return @as(c_int, 0);
}
pub const ACCESSPERMS = (S_IRWXU | S_IRWXG) | S_IRWXO;
pub const ALLPERMS = ((((S_ISUID | S_ISGID) | S_ISTXT) | S_IRWXU) | S_IRWXG) | S_IRWXO;
pub const DEFFILEMODE = ((((S_IRUSR | S_IWUSR) | S_IRGRP) | S_IWGRP) | S_IROTH) | S_IWOTH;
pub const S_BLKSIZE = @as(c_int, 512);
pub const UF_SETTABLE = __helpers.promoteIntLiteral(c_int, 0x0000ffff, .hex);
pub const UF_NODUMP = @as(c_int, 0x00000001);
pub const UF_IMMUTABLE = @as(c_int, 0x00000002);
pub const UF_APPEND = @as(c_int, 0x00000004);
pub const UF_OPAQUE = @as(c_int, 0x00000008);
pub const UF_COMPRESSED = @as(c_int, 0x00000020);
pub const UF_TRACKED = @as(c_int, 0x00000040);
pub const UF_DATAVAULT = @as(c_int, 0x00000080);
pub const UF_HIDDEN = __helpers.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const SF_SUPPORTED = __helpers.promoteIntLiteral(c_int, 0x009f0000, .hex);
pub const SF_SETTABLE = __helpers.promoteIntLiteral(c_int, 0x3fff0000, .hex);
pub const SF_SYNTHETIC = __helpers.promoteIntLiteral(c_int, 0xc0000000, .hex);
pub const SF_ARCHIVED = __helpers.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const SF_IMMUTABLE = __helpers.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const SF_APPEND = __helpers.promoteIntLiteral(c_int, 0x00040000, .hex);
pub const SF_RESTRICTED = __helpers.promoteIntLiteral(c_int, 0x00080000, .hex);
pub const SF_NOUNLINK = __helpers.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const SF_FIRMLINK = __helpers.promoteIntLiteral(c_int, 0x00800000, .hex);
pub const SF_DATALESS = __helpers.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const EF_MAY_SHARE_BLOCKS = @as(c_int, 0x00000001);
pub const EF_NO_XATTRS = @as(c_int, 0x00000002);
pub const EF_IS_SYNC_ROOT = @as(c_int, 0x00000004);
pub const EF_IS_PURGEABLE = @as(c_int, 0x00000008);
pub const EF_IS_SPARSE = @as(c_int, 0x00000010);
pub const EF_IS_SYNTHETIC = @as(c_int, 0x00000020);
pub const EF_SHARES_ALL_BLOCKS = @as(c_int, 0x00000040);
pub const UTIME_NOW = -@as(c_int, 1);
pub const UTIME_OMIT = -@as(c_int, 2);
pub const _FILESEC_T = "";
pub const SO_PEERCRED = @as(c_int, 17);
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
pub const COLOR_BRACE = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:244:9
pub const COLOR_COMMAND = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:245:9
pub const COLOR_CONFIG = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:246:9
pub const COLOR_RESET = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:247:9
pub const COLOR_SEPARATOR = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:248:9
pub const COLOR_SESSION = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:249:9
pub const COLOR_STATEMENT = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:250:9
pub const COLOR_STRING = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:251:9
pub const COLOR_DEBUG = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:252:9
pub const COLOR_TEXT = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:254:9
pub const COLOR_TINTIN = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:255:9
pub const COLOR_REPEAT = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:256:9
pub const COLOR_HELP_DIM = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:257:9
pub const COLOR_HELP_BOLD = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:258:9
pub const COLOR_HELP_TITLE = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:259:9
pub const COLOR_HELP_TABLE = @compileError("macro tokenizing failed: unknown escape sequence"); // src/tintin.h:260:9
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
pub const LINK = @compileError("unable to translate C expr: unexpected token '{'"); // src/tintin.h:914:9
pub const UNLINK = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // src/tintin.h:964:9
pub const RESTRING = @compileError("unable to translate C expr: unexpected token '{'"); // src/tintin.h:996:9
pub inline fn HAS_BIT(bitvector: anytype, bit: anytype) @TypeOf(bitvector & bit) {
    _ = &bitvector;
    _ = &bit;
    return bitvector & bit;
}
pub const SET_BIT = @compileError("unable to translate C expr: expected ')' instead got '|='"); // src/tintin.h:1016:9
pub const DEL_BIT = @compileError("unable to translate C expr: expected ')' instead got '&='"); // src/tintin.h:1017:9
pub const TOG_BIT = @compileError("unable to translate C expr: expected ')' instead got '^='"); // src/tintin.h:1018:9
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
pub const next_arg = @compileError("TODO postfix inc/dec expr"); // src/tintin.h:1031:9
pub inline fn IS_SPLIT(ses: anytype) @TypeOf(tintin_c.gtd.*.screen.*.rows != ses.*.split.*.bot_row) {
    _ = &ses;
    return tintin_c.gtd.*.screen.*.rows != ses.*.split.*.bot_row;
}
pub inline fn SCROLL(ses: anytype) @TypeOf(((ses.*.cur_row == @as(c_int, 0)) or ((ses.*.cur_row >= ses.*.split.*.top_row) and (ses.*.cur_row <= ses.*.split.*.bot_row))) or ((ses.*.cur_row >= ses.*.input.*.top_row) and (ses.*.cur_row <= ses.*.input.*.bot_row))) {
    _ = &ses;
    return ((ses.*.cur_row == @as(c_int, 0)) or ((ses.*.cur_row >= ses.*.split.*.top_row) and (ses.*.cur_row <= ses.*.split.*.bot_row))) or ((ses.*.cur_row >= ses.*.input.*.top_row) and (ses.*.cur_row <= ses.*.input.*.bot_row));
}
pub inline fn VERBATIM(ses: anytype) @TypeOf((tintin_c.gtd.*.level.*.verbatim != 0) or ((tintin_c.gtd.*.level.*.input == @as(c_int, 0)) and ((HAS_BIT(ses.*.config_flags, CONFIG_FLAG_VERBATIM) != 0) or (HAS_BIT(tintin_c.gtd.*.flags, TINTIN_FLAG_CHILDLOCK) != 0)))) {
    _ = &ses;
    return (tintin_c.gtd.*.level.*.verbatim != 0) or ((tintin_c.gtd.*.level.*.input == @as(c_int, 0)) and ((HAS_BIT(ses.*.config_flags, CONFIG_FLAG_VERBATIM) != 0) or (HAS_BIT(tintin_c.gtd.*.flags, TINTIN_FLAG_CHILDLOCK) != 0)));
}
pub const DO_BUFFER = @compileError("unable to translate macro: undefined identifier `ses`"); // src/tintin.h:1643:9
pub const DO_CHAT = @compileError("unable to translate macro: undefined identifier `arg1`"); // src/tintin.h:1644:9
pub const DO_COMMAND = @compileError("unable to translate macro: undefined identifier `ses`"); // src/tintin.h:1645:9
pub const DO_CURSOR = @compileError("unable to translate macro: undefined identifier `ses`"); // src/tintin.h:1646:9
pub const DO_DAEMON = @compileError("unable to translate macro: undefined identifier `ses`"); // src/tintin.h:1647:9
pub const DO_EDIT = @compileError("unable to translate macro: undefined identifier `ses`"); // src/tintin.h:1648:9
pub const DO_HISTORY = @compileError("unable to translate macro: undefined identifier `ses`"); // src/tintin.h:1649:9
pub const DO_LINE = @compileError("unable to translate macro: undefined identifier `ses`"); // src/tintin.h:1650:9
pub const DO_MAP = @compileError("unable to translate macro: undefined identifier `ses`"); // src/tintin.h:1651:9
pub const DO_PATH = @compileError("unable to translate macro: undefined identifier `ses`"); // src/tintin.h:1652:9
pub const DO_PORT = @compileError("unable to translate macro: undefined identifier `ses`"); // src/tintin.h:1653:9
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
pub const _UTIL_H_ = "";
pub const _PWD_H_ = "";
pub const _PATH_PWD = "/etc";
pub const _PATH_PASSWD = "/etc/passwd";
pub const _PASSWD = "passwd";
pub const _PATH_MASTERPASSWD = "/etc/master.passwd";
pub const _PATH_MASTERPASSWD_LOCK = "/etc/ptmp";
pub const _MASTERPASSWD = "master.passwd";
pub const _PATH_MP_DB = "/etc/pwd.db";
pub const _MP_DB = "pwd.db";
pub const _PATH_SMP_DB = "/etc/spwd.db";
pub const _SMP_DB = "spwd.db";
pub const _PATH_PWD_MKDB = "/usr/sbin/pwd_mkdb";
pub const _PW_KEYBYNAME = '1';
pub const _PW_KEYBYNUM = '2';
pub const _PW_KEYBYUID = '3';
pub const _PASSWORD_EFMT1 = '_';
pub const _PASSWORD_LEN = @as(c_int, 128);
pub const _PASSWORD_NOUID = @as(c_int, 0x01);
pub const _PASSWORD_NOGID = @as(c_int, 0x02);
pub const _PASSWORD_NOCHG = @as(c_int, 0x04);
pub const _PASSWORD_NOEXP = @as(c_int, 0x08);
pub const _PASSWORD_WARNDAYS = @as(c_int, 14);
pub const _PASSWORD_CHGNOW = -@as(c_int, 1);
pub const _UUID_UUID_H = "";
pub const _UUID_STRING_T = "";
pub const UUID_DEFINE = @compileError("unable to translate macro: undefined identifier `unused`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/uuid/uuid.h:46:9
pub const __PTYNAMELEN = @as(c_int, 128);
pub const _LIBC_PTYNAME_OR_NULL = _LIBC_COUNT_OR_NULL(__PTYNAMELEN);
pub const PIDLOCK_NONBLOCK = @as(c_int, 1);
pub const PIDLOCK_USEHOSTNAME = @as(c_int, 2);
pub const FPARSELN_UNESCESC = @as(c_int, 0x01);
pub const FPARSELN_UNESCCONT = @as(c_int, 0x02);
pub const FPARSELN_UNESCCOMM = @as(c_int, 0x04);
pub const FPARSELN_UNESCREST = @as(c_int, 0x08);
pub const FPARSELN_UNESCALL = @as(c_int, 0x0f);
pub const OPENDEV_PART = @as(c_int, 0x01);
pub const OPENDEV_BLCK = @as(c_int, 0x04);
pub const _UTMP_H_ = "";
pub const _PATH_UTMP = "/var/run/utmp";
pub const _PATH_WTMP = "/var/log/wtmp";
pub const _PATH_LASTLOG = "/var/log/lastlog";
pub const UT_NAMESIZE = @as(c_int, 8);
pub const UT_LINESIZE = @as(c_int, 8);
pub const UT_HOSTSIZE = @as(c_int, 16);
pub const _SYS_FCNTL_H_ = "";
pub const O_RDONLY = @as(c_int, 0x0000);
pub const O_WRONLY = @as(c_int, 0x0001);
pub const O_RDWR = @as(c_int, 0x0002);
pub const O_ACCMODE = @as(c_int, 0x0003);
pub const FREAD = @as(c_int, 0x00000001);
pub const FWRITE = @as(c_int, 0x00000002);
pub const O_NONBLOCK = @as(c_int, 0x00000004);
pub const O_APPEND = @as(c_int, 0x00000008);
pub const O_SYNC = @as(c_int, 0x0080);
pub const O_SHLOCK = @as(c_int, 0x00000010);
pub const O_EXLOCK = @as(c_int, 0x00000020);
pub const O_ASYNC = @as(c_int, 0x00000040);
pub const O_FSYNC = O_SYNC;
pub const O_NOFOLLOW = @as(c_int, 0x00000100);
pub const O_CREAT = @as(c_int, 0x00000200);
pub const O_TRUNC = @as(c_int, 0x00000400);
pub const O_EXCL = @as(c_int, 0x00000800);
pub const O_RESOLVE_BENEATH = @as(c_int, 0x00001000);
pub const O_UNIQUE = @as(c_int, 0x00002000);
pub const O_EVTONLY = __helpers.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const O_NOCTTY = __helpers.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const O_DIRECTORY = __helpers.promoteIntLiteral(c_int, 0x00100000, .hex);
pub const O_SYMLINK = __helpers.promoteIntLiteral(c_int, 0x00200000, .hex);
pub const O_DSYNC = __helpers.promoteIntLiteral(c_int, 0x400000, .hex);
pub const O_CLOEXEC = __helpers.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const O_NOFOLLOW_ANY = __helpers.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const O_EXEC = __helpers.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const O_SEARCH = O_EXEC | O_DIRECTORY;
pub const AT_FDCWD = -@as(c_int, 2);
pub const AT_EACCESS = @as(c_int, 0x0010);
pub const AT_SYMLINK_NOFOLLOW = @as(c_int, 0x0020);
pub const AT_SYMLINK_FOLLOW = @as(c_int, 0x0040);
pub const AT_REMOVEDIR = @as(c_int, 0x0080);
pub const AT_REALDEV = @as(c_int, 0x0200);
pub const AT_FDONLY = @as(c_int, 0x0400);
pub const AT_SYMLINK_NOFOLLOW_ANY = @as(c_int, 0x0800);
pub const AT_RESOLVE_BENEATH = @as(c_int, 0x2000);
pub const AT_NODELETEBUSY = @as(c_int, 0x4000);
pub const AT_UNIQUE = __helpers.promoteIntLiteral(c_int, 0x8000, .hex);
pub const O_DP_GETRAWENCRYPTED = @as(c_int, 0x0001);
pub const O_DP_GETRAWUNENCRYPTED = @as(c_int, 0x0002);
pub const O_DP_AUTHENTICATE = @as(c_int, 0x0004);
pub const AUTH_OPEN_NOAUTHFD = -@as(c_int, 1);
pub const FAPPEND = O_APPEND;
pub const FASYNC = O_ASYNC;
pub const FFSYNC = O_FSYNC;
pub const FFDSYNC = O_DSYNC;
pub const FNONBLOCK = O_NONBLOCK;
pub const FNDELAY = O_NONBLOCK;
pub const O_NDELAY = O_NONBLOCK;
pub const CPF_OVERWRITE = @as(c_int, 0x0001);
pub const CPF_IGNORE_MODE = @as(c_int, 0x0002);
pub const CPF_MASK = CPF_OVERWRITE | CPF_IGNORE_MODE;
pub const F_DUPFD = @as(c_int, 0);
pub const F_GETFD = @as(c_int, 1);
pub const F_SETFD = @as(c_int, 2);
pub const F_GETFL = @as(c_int, 3);
pub const F_SETFL = @as(c_int, 4);
pub const F_GETOWN = @as(c_int, 5);
pub const F_SETOWN = @as(c_int, 6);
pub const F_GETLK = @as(c_int, 7);
pub const F_SETLK = @as(c_int, 8);
pub const F_SETLKW = @as(c_int, 9);
pub const F_SETLKWTIMEOUT = @as(c_int, 10);
pub const F_FLUSH_DATA = @as(c_int, 40);
pub const F_CHKCLEAN = @as(c_int, 41);
pub const F_PREALLOCATE = @as(c_int, 42);
pub const F_SETSIZE = @as(c_int, 43);
pub const F_RDADVISE = @as(c_int, 44);
pub const F_RDAHEAD = @as(c_int, 45);
pub const F_NOCACHE = @as(c_int, 48);
pub const F_LOG2PHYS = @as(c_int, 49);
pub const F_GETPATH = @as(c_int, 50);
pub const F_FULLFSYNC = @as(c_int, 51);
pub const F_PATHPKG_CHECK = @as(c_int, 52);
pub const F_FREEZE_FS = @as(c_int, 53);
pub const F_THAW_FS = @as(c_int, 54);
pub const F_GLOBAL_NOCACHE = @as(c_int, 55);
pub const F_ADDSIGS = @as(c_int, 59);
pub const F_ADDFILESIGS = @as(c_int, 61);
pub const F_NODIRECT = @as(c_int, 62);
pub const F_GETPROTECTIONCLASS = @as(c_int, 63);
pub const F_SETPROTECTIONCLASS = @as(c_int, 64);
pub const F_LOG2PHYS_EXT = @as(c_int, 65);
pub const F_GETLKPID = @as(c_int, 66);
pub const F_SETBACKINGSTORE = @as(c_int, 70);
pub const F_GETPATH_MTMINFO = @as(c_int, 71);
pub const F_GETCODEDIR = @as(c_int, 72);
pub const F_SETNOSIGPIPE = @as(c_int, 73);
pub const F_GETNOSIGPIPE = @as(c_int, 74);
pub const F_TRANSCODEKEY = @as(c_int, 75);
pub const F_SINGLE_WRITER = @as(c_int, 76);
pub const F_GETPROTECTIONLEVEL = @as(c_int, 77);
pub const F_FINDSIGS = @as(c_int, 78);
pub const F_ADDFILESIGS_FOR_DYLD_SIM = @as(c_int, 83);
pub const F_BARRIERFSYNC = @as(c_int, 85);
pub const F_OFD_SETLK = @as(c_int, 90);
pub const F_OFD_SETLKW = @as(c_int, 91);
pub const F_OFD_GETLK = @as(c_int, 92);
pub const F_OFD_SETLKWTIMEOUT = @as(c_int, 93);
pub const F_ADDFILESIGS_RETURN = @as(c_int, 97);
pub const F_CHECK_LV = @as(c_int, 98);
pub const F_PUNCHHOLE = @as(c_int, 99);
pub const F_TRIM_ACTIVE_FILE = @as(c_int, 100);
pub const F_SPECULATIVE_READ = @as(c_int, 101);
pub const F_GETPATH_NOFIRMLINK = @as(c_int, 102);
pub const F_ADDFILESIGS_INFO = @as(c_int, 103);
pub const F_ADDFILESUPPL = @as(c_int, 104);
pub const F_GETSIGSINFO = @as(c_int, 105);
pub const F_SETLEASE = @as(c_int, 106);
pub const F_GETLEASE = @as(c_int, 107);
pub inline fn F_SETLEASE_ARG(t: anytype, oc: anytype) @TypeOf(t | (oc << @as(c_int, 2))) {
    _ = &t;
    _ = &oc;
    return t | (oc << @as(c_int, 2));
}
pub const F_TRANSFEREXTENTS = @as(c_int, 110);
pub const F_ATTRIBUTION_TAG = @as(c_int, 111);
pub const F_NOCACHE_EXT = @as(c_int, 112);
pub const F_ADDSIGS_MAIN_BINARY = @as(c_int, 113);
pub const FCNTL_FS_SPECIFIC_BASE = __helpers.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const F_DUPFD_CLOEXEC = @as(c_int, 67);
pub const FD_CLOEXEC = @as(c_int, 1);
pub const F_RDLCK = @as(c_int, 1);
pub const F_UNLCK = @as(c_int, 2);
pub const F_WRLCK = @as(c_int, 3);
pub const F_ALLOCATECONTIG = @as(c_int, 0x00000002);
pub const F_ALLOCATEALL = @as(c_int, 0x00000004);
pub const F_ALLOCATEPERSIST = @as(c_int, 0x00000008);
pub const F_PEOFPOSMODE = @as(c_int, 3);
pub const F_VOLPOSMODE = @as(c_int, 4);
pub const USER_FSIGNATURES_CDHASH_LEN = @as(c_int, 20);
pub const GETSIGSINFO_PLATFORM_BINARY = @as(c_int, 1);
pub const LOCK_SH = @as(c_int, 0x01);
pub const LOCK_EX = @as(c_int, 0x02);
pub const LOCK_NB = @as(c_int, 0x04);
pub const LOCK_UN = @as(c_int, 0x08);
pub const ATTRIBUTION_NAME_MAX = @as(c_int, 255);
pub const F_CREATE_TAG = @as(c_int, 0x00000001);
pub const F_DELETE_TAG = @as(c_int, 0x00000002);
pub const F_QUERY_TAG = @as(c_int, 0x00000004);
pub const O_POPUP = __helpers.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const O_ALERT = __helpers.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const FILESEC_GUID = FILESEC_UUID;
pub const _FILESEC_UNSET_PROPERTY = __helpers.cast(?*anyopaque, @as(c_int, 0));
pub const _FILESEC_REMOVE_ACL = __helpers.cast(?*anyopaque, @as(c_int, 1));
pub const _DIRENT_H_ = "";
pub const _SYS_DIRENT_H = "";
pub const __DARWIN_MAXNAMLEN = @as(c_int, 255);
pub const __DARWIN_MAXPATHLEN = @as(c_int, 1024);
pub const __DARWIN_STRUCT_DIRENTRY = @compileError("unable to translate macro: undefined identifier `d_ino`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/dirent.h:102:9
pub const d_fileno = @compileError("unable to translate macro: undefined identifier `d_ino`"); // /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/dirent.h:118:9
pub const MAXNAMLEN = __DARWIN_MAXNAMLEN;
pub const DT_UNKNOWN = @as(c_int, 0);
pub const DT_FIFO = @as(c_int, 1);
pub const DT_CHR = @as(c_int, 2);
pub const DT_DIR = @as(c_int, 4);
pub const DT_BLK = @as(c_int, 6);
pub const DT_REG = @as(c_int, 8);
pub const DT_LNK = @as(c_int, 10);
pub const DT_SOCK = @as(c_int, 12);
pub const DT_WHT = @as(c_int, 14);
pub inline fn IFTODT(mode: anytype) @TypeOf((mode & __helpers.promoteIntLiteral(c_int, 0o170000, .octal)) >> @as(c_int, 12)) {
    _ = &mode;
    return (mode & __helpers.promoteIntLiteral(c_int, 0o170000, .octal)) >> @as(c_int, 12);
}
pub inline fn DTTOIF(dirtype: anytype) @TypeOf(dirtype << @as(c_int, 12)) {
    _ = &dirtype;
    return dirtype << @as(c_int, 12);
}
pub const DIRBLKSIZ = @as(c_int, 1024);
pub const DTF_HIDEW = @as(c_int, 0x0001);
pub const DTF_NODUP = @as(c_int, 0x0002);
pub const DTF_REWIND = @as(c_int, 0x0004);
pub const __DTF_READALL = @as(c_int, 0x0008);
pub const __DTF_SKIPREAD = @as(c_int, 0x0010);
pub const __DTF_ATEND = @as(c_int, 0x0020);
pub const _SYS_UN_H_ = "";
pub const SOL_LOCAL = @as(c_int, 0);
pub const LOCAL_PEERCRED = @as(c_int, 0x001);
pub const LOCAL_PEERPID = @as(c_int, 0x002);
pub const LOCAL_PEEREPID = @as(c_int, 0x003);
pub const LOCAL_PEERUUID = @as(c_int, 0x004);
pub const LOCAL_PEEREUUID = @as(c_int, 0x005);
pub const LOCAL_PEERTOKEN = @as(c_int, 0x006);
pub inline fn SUN_LEN(su: anytype) @TypeOf((__helpers.sizeof(su.*) - __helpers.sizeof(su.*.sun_path)) + strlen(su.*.sun_path)) {
    _ = &su;
    return (__helpers.sizeof(su.*) - __helpers.sizeof(su.*.sun_path)) + strlen(su.*.sun_path);
}
pub const _USER_SIGNAL_H = "";
pub const __darwin_pthread_handler_rec = struct___darwin_pthread_handler_rec;
pub const _opaque_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const _opaque_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const _opaque_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const _opaque_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const _opaque_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const _opaque_pthread_once_t = struct__opaque_pthread_once_t;
pub const _opaque_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const _opaque_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const _opaque_pthread_t = struct__opaque_pthread_t;
pub const __sbuf = struct___sbuf;
pub const __sFILEX = struct___sFILEX;
pub const __sFILE = struct___sFILE;
pub const accessx_descriptor = struct_accessx_descriptor;
pub const timespec = struct_timespec;
pub const timeval = struct_timeval;
pub const fssearchblock = struct_fssearchblock;
pub const searchstate = struct_searchstate;
pub const internal_state = struct_internal_state;
pub const z_stream_s = struct_z_stream_s;
pub const gz_header_s = struct_gz_header_s;
pub const gzFile_s = struct_gzFile_s;
pub const termios = struct_termios;
pub const winsize = struct_winsize;
pub const __darwin_arm_exception_state = struct___darwin_arm_exception_state;
pub const __darwin_arm_exception_state64 = struct___darwin_arm_exception_state64;
pub const __darwin_arm_exception_state64_v2 = struct___darwin_arm_exception_state64_v2;
pub const __darwin_arm_thread_state = struct___darwin_arm_thread_state;
pub const __darwin_arm_thread_state64 = struct___darwin_arm_thread_state64;
pub const __darwin_arm_vfp_state = struct___darwin_arm_vfp_state;
pub const __darwin_arm_neon_state64 = struct___darwin_arm_neon_state64;
pub const __darwin_arm_neon_state = struct___darwin_arm_neon_state;
pub const __arm_pagein_state = struct___arm_pagein_state;
pub const __darwin_arm_sme_state = struct___darwin_arm_sme_state;
pub const __darwin_arm_sve_z_state = struct___darwin_arm_sve_z_state;
pub const __darwin_arm_sve_p_state = struct___darwin_arm_sve_p_state;
pub const __darwin_arm_sme_za_state = struct___darwin_arm_sme_za_state;
pub const __darwin_arm_sme2_state = struct___darwin_arm_sme2_state;
pub const __arm_legacy_debug_state = struct___arm_legacy_debug_state;
pub const __darwin_arm_debug_state32 = struct___darwin_arm_debug_state32;
pub const __darwin_arm_debug_state64 = struct___darwin_arm_debug_state64;
pub const __darwin_arm_cpmu_state64 = struct___darwin_arm_cpmu_state64;
pub const __darwin_mcontext32 = struct___darwin_mcontext32;
pub const __darwin_mcontext64 = struct___darwin_mcontext64;
pub const __darwin_sigaltstack = struct___darwin_sigaltstack;
pub const __darwin_ucontext = struct___darwin_ucontext;
pub const sigval = union_sigval;
pub const sigevent = struct_sigevent;
pub const __siginfo = struct___siginfo;
pub const __sigaction_u = union___sigaction_u;
pub const __sigaction = struct___sigaction;
pub const sigstack = struct_sigstack;
pub const rusage = struct_rusage;
pub const rusage_info_v0 = struct_rusage_info_v0;
pub const rusage_info_v1 = struct_rusage_info_v1;
pub const rusage_info_v2 = struct_rusage_info_v2;
pub const rusage_info_v3 = struct_rusage_info_v3;
pub const rusage_info_v4 = struct_rusage_info_v4;
pub const rusage_info_v5 = struct_rusage_info_v5;
pub const rusage_info_v6 = struct_rusage_info_v6;
pub const rlimit = struct_rlimit;
pub const proc_rlimit_control_wakeupmon = struct_proc_rlimit_control_wakeupmon;
pub const _malloc_zone_t = struct__malloc_zone_t;
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
pub const __float2 = struct___float2;
pub const __double2 = struct___double2;
pub const exception = struct_exception;
pub const tm = struct_tm;
pub const timeval64 = struct_timeval64;
pub const itimerval = struct_itimerval;
pub const clockinfo = struct_clockinfo;
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
pub const uio_rw = enum_uio_rw;
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
pub const sockaddr = struct_sockaddr;
pub const sa_endpoints = struct_sa_endpoints;
pub const linger = struct_linger;
pub const so_np_extensions = struct_so_np_extensions;
pub const __sockaddr_header = struct___sockaddr_header;
pub const sockproto = struct_sockproto;
pub const sockaddr_storage = struct_sockaddr_storage;
pub const msghdr = struct_msghdr;
pub const cmsghdr = struct_cmsghdr;
pub const sf_hdtr = struct_sf_hdtr;
pub const ostat = struct_ostat;
pub const _filesec = struct__filesec;
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
pub const passwd = struct_passwd;
pub const utmp = struct_utmp;
pub const lastlog = struct_lastlog;
pub const flocktimeout = struct_flocktimeout;
pub const radvisory = struct_radvisory;
pub const fsignatures = struct_fsignatures;
pub const fsupplement = struct_fsupplement;
pub const fchecklv = struct_fchecklv;
pub const fgetsigsinfo = struct_fgetsigsinfo;
pub const fstore = struct_fstore;
pub const fpunchhole = struct_fpunchhole;
pub const ftrimactivefile = struct_ftrimactivefile;
pub const fspecread = struct_fspecread;
pub const fattributiontag = struct_fattributiontag;
pub const log2phys = struct_log2phys;
pub const dirent = struct_dirent;
pub const _telldir = struct__telldir;
pub const sockaddr_un = struct_sockaddr_un;
