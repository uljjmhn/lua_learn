--
-- Created by IntelliJ IDEA.
-- User: debian
-- Date: 3/28/17
-- Time: 11:33 PM
-- To change this template use File | Settings | File Templates.
--


--[[
-- sort
-- ]]


local dataSource = {2,3,6,6,3,19,43,64,3,74,1,87,3,1,7,46,346,234,6,37,34,2}

local j

for k,v in ipairs(dataSource) do
    local j=k+1
    while(dataSource[j]) do
        if(dataSource[j] < dataSource[k]) then
            dataSource[j], dataSource[k] = dataSource[k] , dataSource[j]
        end
        j=j+1
    end
end

for k,v in ipairs(dataSource) do
    print(v)
end


print("--------------------------------")

--[[
--
-- ]]

dataSource = {2,3,6,6,3,19,43,64,3,74,1,87,3,1,7,46,346,234,6,37,34,2}

for i=1,#dataSource do
    for j=i+1,#dataSource do
        if(dataSource[j] < dataSource[i]) then
            dataSource[j], dataSource[i] = dataSource[i] , dataSource[j]
        end
    end
end

for k,v in ipairs(dataSource) do
    print(v)
end

print("---------------2-----------------")

dataSource = {2,3,6,6,3,19,43,64,3,74,1,87,3,1,7,46,346,234,6,37,34,2}

table.sort(dataSource,function(a,b)
    return a<b
end)

for k,v in ipairs(dataSource) do
    print(v)
end