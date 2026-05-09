local chunk = {}

function chunk.new(x, y)
    return {
        x = x or 0,
        y = y or 0,
        blocks = {}
    }
end

function chunk.newBlock(mod, id, state)
    return {
        mod = mod or 0,
        id = id or 0,
        state = state or 0,
        name = nil,
        content = nil,
        wire = nil
    }
end

function chunk.getBlock(c, x, y)
    return c.blocks[y] and c.blocks[y][x]
end

function chunk.setBlock(c, x, y, block)
    if not c.blocks[y] then
        c.blocks[y] = {}
    end
    c.blocks[y][x] = block
end

return chunk