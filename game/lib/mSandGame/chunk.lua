local chunk = {}

function chunk.new()
    return {
        x = 0,
        y = 0,
        blocks = {}
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