on run argv
    set startUrl to "about:blank"
    if (count of argv) > 0 then
        set startUrl to item 1 of argv
    end if

    set chromeCheck to do shell script "if [ -d '/Applications/Google Chrome.app' ]; then echo ok; else echo no; fi"
    if chromeCheck is not "ok" then
        display dialog "Google Chrome.app not found in /Applications" buttons {"OK"} default button "OK"
        return
    end if

    set profileDir to do shell script "mktemp -d /tmp/chrome-fresh-session.XXXXXX"
    do shell script "open -na 'Google Chrome' --args --user-data-dir=" & quoted form of profileDir & " --new-window " & quoted form of startUrl
end run
