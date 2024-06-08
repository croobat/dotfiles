local client = client
local awful = require("awful")
local util = require("awful.util")

local scratch = {}
local defaultRule = { name = "__scratchpad__" }

-- Turn on this scratch window client (add current tag to window's tags,
-- then set focus to the window)
local function turn_on(c)
	local s = c.screen
	local current_tag = s.selected_tag
	ctags = { current_tag }
	for _, tag in pairs(c:tags()) do
		if tag ~= current_tag then table.insert(ctags, tag) end
	end
	c:tags(ctags)
	c:raise()
	client.focus = c
end

-- Turn off this scratch window client (remove current tag from window's tags)
local function turn_off(c)
	local s = c.screen
	local current_tag = s.selected_tag
	local ctags = {}
	for _, tag in pairs(c:tags()) do
		if tag ~= current_tag then table.insert(ctags, tag) end
	end
	c:tags(ctags)
end

function scratch.raise(cmd, rule)
	rule = rule or defaultRule
	local function matcher(c) return awful.rules.match(c, rule) end

	-- logic mostly copied form awful.client.run_or_raise, except we don't want
	-- to change to or merge with scratchpad tag, just show the window
	local clients = client.get()
	local findex  = util.table.hasitem(clients, client.focus) or 1
	local start   = util.cycle(#clients, findex + 1)

	for c in awful.client.iterate(matcher, start) do
		turn_on(c)
		return
	end

	-- client not found, spawn it
	awful.spawn(cmd)
end

function scratch.toggle(cmd, rule, _)
	rule = rule or defaultRule

	if client.focus and awful.rules.match(client.focus, rule) then
		turn_off(client.focus)
	else
		scratch.raise(cmd, rule)
	end
end

function scratch.turn_off_all()
	local function matcher(c)
		return awful.rules.match(c, defaultRule)
	end

	for c in awful.client.iterate(matcher) do
		turn_off(c)
	end
end

return scratch
