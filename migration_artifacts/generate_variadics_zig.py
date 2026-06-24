import os

VARIADIC_FUNCS = {
    "tintin_printf": 2, "tintin_printf2": 2, "tintin_printf3": 2,
    "syserr_printf": 2, "execute": 2, "msdp_update_all": 2,
    "port_printf": 2, "arachnos_devel": 2, "arachnos_mudlist": 2,
    "add_undo": 2, "create_room": 2,
    
    "show_error": 3, "show_info": 3, "show_message": 3,
    "tintin_header": 3, "command": 3, "chat_socket_printf": 2,
    "port_socket_printf": 3, "port_log_printf": 3,
    "set_nest_node": 3, "set_nest_node_ses": 3,
    "add_nest_node": 3, "add_nest_node_ses": 3,
    "create_exit": 3,

    "show_debug": 4, "print_lines": 4, "msdp_update_varf": 4,
    "port_telnet_printf": 4,
    
    "check_all_events": 5,

    "chat_printf": 1, "push_call": 1, "push_call_printf": 1,
    "input_printf": 1
}

ZIG_BOILERPLATE = """const std = @import("std");
const missing = @import("missing_phase5.zig");

extern "c" fn snprintf(buf: [*c]u8, n: usize, format: [*c]const u8, ...) c_int;

fn PromoteTuple(comptime T: type) type {
    const fields = @typeInfo(T).@"struct".fields;
    comptime var new_types: [fields.len]type = undefined;
    inline for (fields, 0..) |field, i| {
        if (field.type == comptime_int) {
            new_types[i] = c_int;
        } else if (field.type == comptime_float) {
            new_types[i] = f64;
        } else {
            new_types[i] = field.type;
        }
    }
    return std.meta.Tuple(&new_types);
}

pub inline fn promoteTuple(args: anytype) PromoteTuple(@TypeOf(args)) {
    const ArgsType = @TypeOf(args);
    const fields = @typeInfo(ArgsType).@"struct".fields;
    const NewTupleType = PromoteTuple(ArgsType);
    var new_args: NewTupleType = undefined;
    inline for (fields, 0..) |field, i| {
        if (field.type == comptime_int) {
            new_args[i] = @as(c_int, @intCast(@field(args, field.name)));
        } else if (field.type == comptime_float) {
            new_args[i] = @as(f64, @floatCast(@field(args, field.name)));
        } else {
            new_args[i] = @field(args, field.name);
        }
    }
    return new_args;
}

// ==========================================
// VARIADIC WRAPPERS
// ==========================================
"""

out = ZIG_BOILERPLATE

for func, count in VARIADIC_FUNCS.items():
    args = []
    for i in range(count - 1):
        args.append(f"arg{i}: anytype")
    
    args.append("format: [*c]const u8")
    args.append("args: anytype")
    
    args_str = ", ".join(args)
    
    ret_type = "void"
    if func in ["check_all_events", "push_call_printf"]:
        ret_type = "c_int"
    elif func in ["set_nest_node", "set_nest_node_ses", "add_nest_node", "add_nest_node_ses"]:
        ret_type = "[*c]missing.struct_listnode"
    elif func in ["execute", "command"]:
        ret_type = "[*c]missing.struct_session"
    elif func == "create_room":
        ret_type = "[*c]missing.struct_room_data"
    elif func == "create_exit":
        ret_type = "[*c]missing.struct_exit_data"
        
    out += f"pub fn {func}({args_str}) {ret_type} {{\n"
    for i in range(count - 1):
        out += f"    _ = arg{i};\n"
    out += f"    var buf: [4096]u8 = undefined;\n"
    out += f"    const p_args = promoteTuple(args);\n"
    out += f"    const len = @call(.auto, snprintf, .{{&buf[0], buf.len, format}} ++ p_args);\n"
    out += f"    if (len > 0) {{\n"
    out += f"        // TODO: implement logic for {func}\n"
    out += f"    }}\n"
    
    if ret_type == "c_int":
        out += "    return 0;\n"
    elif ret_type.startswith("[*c]"):
        out += f"    return null;\n"
        
    out += f"}}\n\n"

with open("src/variadics.zig", "w") as f:
    f.write(out)

print("src/variadics.zig boilerplate generated.")
