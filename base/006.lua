--
-- Created by IntelliJ IDEA.
-- User: debian
-- Date: 3/30/17
-- Time: 8:44 PM
-- To change this template use File | Settings | File Templates.
--

co = coroutine.create(function(i)
    print(i)
end)

print(coroutine.status(co))

coroutine.resume(co, 2)

print(coroutine.status(co))

print("-----------------------------")

co1 = coroutine.wrap(function(i)
    print('h:' .. i)
end)
co1(5)

print("-------------- root -----------------------")


co2 = coroutine.create(
    function()
        for i=1,5 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))  --running
                print(coroutine.running()) --thread:XXXXXX
            end
            coroutine.yield()
        end
    end
)

coroutine.resume(co2)
coroutine.resume(co2)
coroutine.resume(co2)

print(coroutine.status(co2))
print(coroutine.running())

coroutine.resume(co2)
coroutine.resume(co2)
print(coroutine.status(co2))
coroutine.resume(co2)
print(coroutine.status(co2))