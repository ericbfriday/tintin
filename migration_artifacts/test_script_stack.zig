const tintin_c = @cImport({ @cInclude("tintin.h"); });
pub fn main() void {
    const T = @TypeOf(tintin_c.gtd.*.script_stack);
    @compileLog(T);
    const T2 = @TypeOf(tintin_c.gtd.*.script_stack[0]);
    @compileLog(T2);
}
