const std = @import("std");
const rl = @import("raylib");

pub fn main() !void {
    // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});
    
    rl.initWindow(1280, 720, "zig raylib game");
    defer rl.closeWindow();
   
    while(!rl.windowShouldClose()){
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(rl.Color.sky_blue);
    }

}
