---
layout: home
title: Strip Return
nav_order: 11
---

<p>
Input your text, and get rid of all the return.<br/>
输入文字，去除所有回车。
</p>

<form>
    <textarea id="has_return" rows="5" cols="60" name="text" placeholder="Enter text that need to be stripped" oninput="strip()"></textarea>
    <br/>
    <textarea id="no_return" rows="5" cols="60" name="text" placeholder="get your stripped text"></textarea>
    <br/>
    <input type="button" value="copy" onclick="copy()">
</form>

<script>
function strip() {
    var has_return = document.getElementById("has_return");
    var no_return = document.getElementById("no_return");
    no_return.value = has_return.value.replace(/[\r\n]/g,"");
    no_return.select();
    document.execCommand("copy");
    has_return.select();
}

function copy() {
    var no_return = document.getElementById("no_return");
    no_return.select();
    document.execCommand("copy");
}
</script>