const ContextAllocator = MemoryPool(usize);

pub fn MemoryPool(comptime T: type) type {
    const free_list_t = @compileError("aoeu");
    _ = T;

    return struct {
        free_list: free_list_t,
    };
}

export fn entry() void {
    const allocator: ContextAllocator = undefined;
    _ = allocator;
}

// error
//
// :4:5: error: unreachable code
// :4:25: note: control flow is diverted here
// :4:25: error: aoeu
// :1:36: note: called at comptime here
