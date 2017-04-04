--
-- Created by IntelliJ IDEA.
-- User: debian
-- Date: 4/4/17
-- Time: 10:45 PM
-- To change this template use File | Settings | File Templates.
--


print("\a")
print("------------------------")
print("\b")
print("------------------------")
print("\f")
print("------------------------")
print("\a")

print("-------------------sss-----")
print("\x00\x01\x02")

print('please input a number')
local number = io.read()
local n = tonumber(number)

if n == nil then
    error('please input a number,a ba')
else
    print(n * 2)
end

print(type(nil))
print(nil == type(nil))

