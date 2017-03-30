--
-- Created by IntelliJ IDEA.
-- User: debian
-- Date: 3/28/17
-- Time: 11:33 PM
-- To change this template use File | Settings | File Templates.
--



--[[
-- test a su shu
-- ]]

function primeNumber(num)
    if type(num) ~= "number" then
        return false
    end

    if(num <= 1) then
        return false
    end

    if(num == 2) then
        return true
    end

    for i=2,num-1,1 do
        if (num % i) == 0 then
            return false
        end
    end

    return true

end


for i=1,100,1 do
    local res = primeNumber(i)

    if res then
        print(i );
    end
end