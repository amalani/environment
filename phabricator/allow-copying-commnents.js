// ==UserScript==
// @name         Differential allow text selection
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Phabricator->Differential user comment text is not selectable, this enables that.
// @author       Abhishek M
// @match        https://[your phabricator url]/*
// @grant        GM_addStyle
// ==/UserScript==

(function() {
    'use strict';
    GM_addStyle('.differential-unselectable tr td:nth-of-type(1) { -moz-user-select: text; -khtml-user-select: text; -webkit-user-select: text; -ms-user-select: text; user-select: text; }');
    console.log('ran');
})();
