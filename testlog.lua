require "logging"

local logger = logging.new(function(self,level,message)
		print(level,message)
		return true
		end)

require "logging.file"

local logger = logging.file("test%s.log","%Y-%m-%d")
logger:info("logging.file test")
logger:debug("debugging....")
logger:error("error!!!!")
print("File Logging OK!")
