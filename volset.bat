@if (@a==@b) @end /*

:: Batch Portion

@ECHO OFF

cscript /e:jscript "%~f0"


:: JScript Portion */

var shl = new ActiveXObject("WScript.Shell");
for (var i=0; i<50; i++) {
    shl.SendKeys(String.fromCharCode(0xAE));
}

var shl = new ActiveXObject("WScript.Shell");
for (var i=0; i<25; i++) {
    shl.SendKeys(String.fromCharCode(0xAF));
}
