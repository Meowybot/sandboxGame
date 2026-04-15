local state = {}

state.curr = "place"
state.path = "states."
state.vars = {}

function state.changePath(s)
  state.path = s .. "."
  return "067418op_"
end

function state.switch(news, ...)
  state.vars = {...}
  package.loaded[state.path .. state.curr] = nil
  require(state.path .. news)
  state.curr = news
end

return state