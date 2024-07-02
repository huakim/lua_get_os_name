
gon = require("get_os_name")

os_name, arch_name = gon()
print("os="..os_name.." arch="..arch_name)

-- On Travis, Linux
if os.getenv("TRAVIS_OS_NAME") == 'linux' then
    print('Testing on Travis CI Linux machine')
    assert( os_name == "Linux")
    assert( arch_name == "x86_64")
    print("Test OK!")
end

-- On Travis, Linux
if os.getenv("TRAVIS_OS_NAME") == 'osx' then
    print('Testing on Travis CI OS X machine')
    assert( os_name == "Mac")
    assert( arch_name == "x86_64")
    print("Test OK!")
end

-- On AppVeyor
if os.getenv("APPVEYOR") == 'True' then
    print("Testing on AppVeyor")
    assert( os_name == "Windows")
    assert( arch_name == "x86")
    print("Test OK!")
end
