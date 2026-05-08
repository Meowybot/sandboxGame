local bytbin = {}

local Writer = {}
Writer.__index = Writer

function bytbin.newWriter()
    return setmetatable({ bytes = "", nibblePending = false, pendingNibble = 0 }, Writer)
end

function Writer:writeU8(v)
end

function Writer:writeU16(v)
end

function Writer:writeFloat(v)
end

function Writer:writeString(s)
end

function Writer:writeNibble(v)
end

function Writer:getBytes()
  return self.bytes
end

local Reader = {}
Reader.__index = Reader

function bytbin.newReader(bytes)
    return setmetatable({ bytes = bytes, pos = 1, nibblePending = false, pendingNibble = 0 }, Reader)
end

function Reader:readU8()
end

function Reader:readU16()
end

function Reader:readFloat()
end

function Reader:readString()
end

function Reader:readNibble()
end

return bytbin