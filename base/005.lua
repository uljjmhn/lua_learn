--
-- Created by IntelliJ IDEA.
-- User: debian
-- Date: 3/30/17
-- Time: 8:44 PM
-- To change this template use File | Settings | File Templates.
--



tables = { key = "sdf" }

meta = setmetatable(tables, {
    __index = function(table, key)
        if key == 'key2' then
            return 'metablevalue'
        else
            return nil
        end
    end
})

print(meta.key1)

--print(meta.key2)

print(table.key2)
print(meta.key2)




print('------------------------------------------')
print('------------------------------------------')
print('------------------------------------------')



mymetatable = {}
mytable = setmetatable({ key1 = 'value1' }, { __newindex = mymetatable })

print(mytable.key1)
print(mytable.key2)

mytable.new = 'new'
print(mytable.new, mymetatable.new)


mytable.key1 = 'value2'
print(mytable.key1, mymetatable.key1)


print('------------------------------------------')
print('------------------------------------------')

tables = setmetatable({}, {
    __tostring = function(table)
        if #table > 3 then
            return table[3]
        elseif #table > 1 then
            return table[1]
        else
            return 'name'
        end
    end
})

print(tables)
table.insert(tables, 'what')
table.insert(tables, 'how')
table.insert(tables, 'old')
table.insert(tables, 'are')
print(tables)

print('--------------------------------------')
print('--------------------------------------')

mytable = setmetatable({}, {
    __call = function(selfData, p, p2)

        local res = "input:"
        for k, v in pairs(selfData) do
            res = res .. k .. '=>' .. v
        end

        return res .. p .. p2
    end
})

print(mytable(1, 2, 3))
mytable.key1 = 'value1'
print(mytable('hello', 'world'))
