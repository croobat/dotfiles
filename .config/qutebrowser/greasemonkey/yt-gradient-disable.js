// ==UserScript==
// @name        Dark Mode Fix/White Overlay Fix
// @namespace   namespace
// @include     https://www.youtube*
// @include     http://www.youtube*
// @version     1.01
// @description Fixes OperaGX Force Dark Mode on YouTube
// @grant       none
// @require http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js
// ==/UserScript==
$('.ytp-gradient-bottom').remove();
$('.ytp-gradient-top').remove();
$('.ytp-volume-slider').css({ 'background-color':'darkgray' });
