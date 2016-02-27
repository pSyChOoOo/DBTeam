local function run(msg)
if permissions(msg.from.id, msg.to.id, "gban_installer") then
    if msg.to.type == 'chat' then
        send_msg('chat#id'..msg.to.id, '0 accounts globally banned. ☠', ok_cb, false)
    elseif msg.to.type == 'channel' then
        send_msg('channel#id'..msg.to.id, '0 accounts globally banned. ☠', ok_cb, false)
    end
    else
        return '🚫 '..lang_text(msg.to.id, 'require_sudo')
    end
end

    return {
        description = 'Add gbans into your bot. A gbanlist command.',
        usage = {},
        patterns = {
            "^#(install) (gbans)$"
        },
        run = run
    }
