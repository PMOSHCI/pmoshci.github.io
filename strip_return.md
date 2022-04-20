---
layout: home
title: Strip Return
nav_order: 11
---

<p>
Input your text, and get rid of all the return. It will auto copy the un<br/>
输入文字，去除所有回车。
</p>

<form>
    <input type="checkbox" id="auto_clear" name="auto_clear" value="auto_clear" checked>
    <label for="auto_clear" title="clear the input when it ends with '.'"> Auto Clear Input</label>
    <input type="checkbox" id="auto_copy" name="auto_copy" value="auto_copy" checked>
    <label for="auto_copy" title="copy stripped text right after input"> Auto Copy</label>
    <textarea id="has_return" name="text" placeholder="Enter text that need to be stripped" oninput="strip()" style="width:100%;height:10em;resize:vertical;"></textarea>
    <br/>
    <textarea id="no_return" name="text" placeholder="get your stripped text" style="width:100%;height:10em;resize:vertical;"></textarea>
    <br/>
    <input type="button" value="Clear Input" onclick="clear_input()">
    <input type="button" value="Copy" onclick="copy()">
</form>

<script>
var auto_clear = document.getElementById("auto_clear");
var auto_copy = document.getElementById("auto_copy");
var has_return = document.getElementById("has_return");
var no_return = document.getElementById("no_return");

function strip() {
    no_return.value = has_return.value.replace(/[\r\n]/g," ");
    if(auto_copy.checked) {
        copy();
    }
    if(auto_clear.checked) {
        if(has_return.value.substr(-1) == '.') {
            clear_input();
        }
    }
}

function copy() {
    no_return.select();
    document.execCommand("copy");
    has_return.focus();
}

function clear_input() {
    has_return.value = '';
}
</script>