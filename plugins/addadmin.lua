do
local function callback(extra, success, result)
    vardump(success)
    cardump(result)
end
    function run(msg, matches)
        if not is_momod or not is_owner then
    return "Only Onwers Can Add WilSoN!"
end
    local user = 'user#id'
    local chat = 'chat#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "Admin Added To: "..string.gsub(msg.to.print_name, "_", " ")..'['..msg.to.id..']'
end
return {
    usage = {
      "AddAmouR: Add Sudo In Group."
      },
    patterns = {
        "^([Aa]ddadmin)$"
        },
    run = run
}
end
