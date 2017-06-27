print(os.getenv("HOME"))

function createDir(dirName)
	os.execute("mkdir " .. dirName)
end

createDir("testDir")