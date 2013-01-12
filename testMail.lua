require"logging.email"

local logger = logging.email {
                               rcpt = "510391707@qq.com",
                               from = "bestexpert@126.com",
                               {
                                 subject = "[%level] logging.email test",
                               }, -- headers
}

logger:info("logging.sql test")
logger:debug("debugging...")
logger:error("error!")

print("Mail Logging OK")
