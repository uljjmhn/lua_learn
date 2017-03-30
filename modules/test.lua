--
-- Created by IntelliJ IDEA.
-- User: debian
-- Date: 3/30/17
-- Time: 8:41 PM
-- To change this template use File | Settings | File Templates.
--

module = {}

module.constant = "test"

function module.testPub()
    print('test public')
end

local function testPri()
    print('test private')
end

function module.run()
    print('running')

    module.testPub()

    testPri()

end

return module