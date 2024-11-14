-- https://nvchad.com/docs/quickstart/learn-lua-
-- https://www.tutorialspoint.com/lua/lua_nested_loops.htm

-- ----------------------------------------------------
-- -- 1. Arrays
-- ----------------------------------------------------

local line = '\n---------------\n'

local colors = { 'red', 'green', 'blue' }

print(line .. 'Loop through Array using for loop' .. line)
for i = 1, #colors do
  print(colors[i])
end

-- Using ipairs
print(line .. 'Loop through Array using ipairs' .. line)
for index, value in ipairs(colors) do
  print(colors[index], value)
end

-- Without assigning  a variable
print(line .. 'Loop through Array using for loop without index' .. line)
for _, value in ipairs(colors) do
  print(value)
end

-- ----------------------------------------------------
-- -- 2. Dictionaries
-- ----------------------------------------------------

-- Dictionaries contain key-value pairs

local info = {
  name = 'Sid',
  age = 20,
  isAdmin = true,
}

-- Two ways to print a value:
print(line .. 'Two methods to get values - Dot notation support' .. line)
print(info['name'])
print(info.name)

-- Loop by pairs
print(line .. 'Get dictionary values using key value and pairs() method in a for loop' .. line)
for key, value in pairs(info) do
  print(key .. ' ' .. tostring(value))
end

-- ----------------------------------------------------
-- -- 3. Nested Tables
-- ----------------------------------------------------

-- Nested list
local data = {
  { 'Sid', 20 },
  { 'Tim', 90 },
}

for i = 1, #data do
  print(data[i][1] .. ' is ' .. data[i][2] .. ' years old')
end

-- Nested dictionaries
local users = {
  sid = { age = 20 },
  tim = { age = 90 },
}

-- print(users) -- Prints table's memory location

print(line)

-- use pairs keyword
for name, user in pairs(users) do
    print("User " .. name .. "'s age is " .. user["age"])
end

print(line)

-- Use a recursive function to get Nested values wit `pairs` keyword
function DeepPrint(e)
  -- if e is a table, we should iterate over its elements
  if type(e) == 'table' then
    for k, v in pairs(e) do -- for every element in the table
      print(k)
      DeepPrint(v) -- recursively repeat the same procedure
    end
  else -- if not, we can just print it
    print(e)
  end
end

DeepPrint(users)

-- ----------------------------------------------------
-- -- 4. Tables
-- ----------------------------------------------------
