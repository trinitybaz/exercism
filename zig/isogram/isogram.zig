const std = @import("std");

pub fn isIsogram(str: []const u8) bool {
    var seen: std.AutoHashMap(u8, void) = .init(std.heap.page_allocator);
    defer seen.deinit();
    for (str) |char| {
        if (char == ' ' or char == '-') continue;
        const normalized = std.ascii.toLower(char);
        if (seen.contains(normalized)) {
            return false;
        }
        seen.put(normalized, {}) catch return false;
    }
    return true;
}
// here's a comment
