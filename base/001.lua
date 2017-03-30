--
-- Created by IntelliJ IDEA.
-- User: debian
-- Date: 3/28/17
-- Time: 11:33 PM
-- To change this template use File | Settings | File Templates.
--

print("hello world")
print('hello lua')



-- 这是注释

--[[
--这是多行注释
--真的
-- ]]


a=23
print(a)

b=089
print(b)

print(type(a))
print(type(b))

b=nil;

print(b)
print(type(b))


if a==b then
    print(123)
else
    print(234)
end



--[[
-- string block
-- ]]

xml =[[
<xml>
<name>jim green</name>
<age>13</age>
</xml>
]]

print(xml)


phpblock = [[
this is block of php
$xml=<<<xml
hehe
haha
xml;
]]

print(phpblock)


--[[
-- local table
-- ]]

local tables={}

tables["key"] = "this is key"
tables['name'] = 'this is name'

for k, v in pairs(tables) do
    print (k..'=>'..v)
end


local array={'jim','tom','david' }

for k,v in pairs(array) do
    print (k..'=>'..v)
end



function sayHello(str)
    print('helllo '..str)
end

sayHello('world,my name is jim')

function exec(sql,callback)
    print('exec '..sql);

    callback(sql,true)
end

exec("select * from user",function(sql,ifSuccess)
    if ifSuccess then
        print('exec ok')
        print('the sql is '..sql)
    else
        print ('exec fail')
    end

end)


