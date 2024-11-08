-- https://learnxinyminutes.com/docs/lua/

----------------------------------------------------
-- 1. Variables and flow control.
----------------------------------------------------

-- myGlobalVar = 'Attention this is global'
-- print(myGlobalVar)
local num = 12

if num > 40 then
  print 'over 40'
elseif num == 40 then
  io.write 'is 40\n'
else
  local line = '.........'
  print('Winter is coming, ' .. line)
end

-- Undefined variables return nil.
-- This is not an error:

-- local foo = anUnknownVariable -- Now foo = nil.
-- print(foo)

local aBoolvalue = false

if not aBoolvalue then
  print 'it is false'
end

-- In general, the range is begin, end[, step].

-- Another loop construct:
repeat
  print 'the way of the future'
  num = num - 1
until num == 0

----------------------------------------------------
-- 2. Functions.
----------------------------------------------------
local function fib(n)
  if n < 2 then
    return 1
  end
  return fib(n - 2) + fib(n - 1)
end

print('Fibonnaci ' .. fib(6))

-- x = 1, y = 2, z = 3 and 4 is thrown away
x, y, z = 1, 2, 3, 4

local function bar(a, b, c)
  print(a, b, c)
  return 4, 8, 15, 16, 23, 42
end

x, y = bar 'zaphod' --- zaphod nil nil
