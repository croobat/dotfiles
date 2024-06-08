/* See LICENSE file for copyright and license details. */

/* appearance */

static const unsigned int borderpx        = 2;    /* border pixel of windows */
static const unsigned int gappx           = 0;    /* gaps between windows */
static const int swallowfloating          = 0;    /* 1 means swallow floating windows by default */
static const unsigned int snap           = 32;    /* snap pixel */
static const unsigned int systraypinning  = 0;    /* 0: sloppy systray follows selected monitor, >0: pin systray to monitor X */
static const unsigned int systrayonleft   = 0;    /* 0: systray in the right corner, >0: systray on left of status text */
static const unsigned int systrayspacing  = 2;    /* systray spacing */
static const int systraypinningfailfirst  = 1;    /* 1: if pinning fails, display systray on the first monitor, False: display systray on the last monitor*/
static const int showsystray              = 1;    /* 0 means no systray */
static const int showbar                  = 1;    /* 0 means no bar */
static const int topbar                   = 1;    /* 0 means bottom bar */
static const Bool viewontag            = True;    /* Switch view on tag switch */

static const char *fonts[]          = { "Recursive Mono Linear Static:size=7:style=Medium" };
static const char dmenufont[]       = { "Recursive Mono Linear Static:size=7:style=Medium" };
static const char col_black[]       = "#282a36";
static const char col_white[]       = "#f8f8f2";
static const char col_light_gray[]  = "#44475a";
static const char col_blue[]        = "#6272a4";
static const char col_cyan[]        = "#8be9fd";
static const char col_green[]       = "#50fa7b";
static const char col_orange[]      = "#ffb86c";
static const char col_pink[]        = "#ff79c6";
static const char col_purple[]      = "#bd93f9";
static const char col_red[]         = "#ff5555";
static const char col_yellow[]      = "#f1fa8c";

static const char *colors[][3]      = {
    /*               fg         bg         border   */
    [SchemeNorm] = { col_white, col_black, col_black },
    [SchemeSel]  = { col_white, col_light_gray, col_purple },
    [SchemeHid]  = { col_cyan,  col_black, col_cyan  },
};

/* tagging */
static const char *tags[] = { "Web", "Dev", "App", "Ide", "Doc", "Play", "Talk", "Chat", "Fun", "Back" };

static const int web  = 1 << 0;
static const int dev  = 1 << 1;
static const int app  = 1 << 2;
static const int ide  = 1 << 3;
static const int doc  = 1 << 4;
static const int play = 1 << 5;
static const int call = 1 << 6;
static const int chat = 1 << 7;
static const int fun  = 1 << 8;
static const int back = 1 << 9;

static const char win_qemu[] = "QEMU/KVM - Connection Details";
static const char win_xampp[] = "XAMPP Control Panel";
static const char win_x11_xframe[] = "sun-awt-X11-XFramePeer";
static const char win_mysql_wb[] = "MySQL Workbench";
static const char sscreenrec[] = "simplescreenrecorder";
static const char steam_payp[] = "Log in to your PayPal account";
static const char firefox_dev[] = "firefoxdeveloperedition";
static const char chrome[] = "Google-chrome-stable";
static const char chrome_dev[] = "Google-chrome-unstable";
static const char foliate[] = "com.github.johnfactotum.Foliate";
static const char notion[] = "notion-app-enhanced";
static const char google_chat[] = "google-chat-linux";

static const char as_jetbrains[] = "jetbrains-studio";
static const char as_pixel_6pro[] = "Android Emulator - Pixel_6_Pro_API_34:5554";
static const char as_emulator[] = "Emulator";

static const Rule rules[] = {
    /* xprop(1):
    *    WM_CLASS(STRING) = instance, class
    *    WM_NAME(STRING) = title
    */
    /* class        instance        title           mask   float term  swallow monitor */
    // Non floating windows
    { "qutebrowser", NULL,          NULL,           web,     0,    0,    0,    -1 },
    { "firefox",     NULL,          NULL,           web,     0,    0,    0,    -1 },
    { firefox_dev,   NULL,          NULL,           web,     0,    0,    0,    -1 },
    { chrome,        NULL,          NULL,           web,     0,    0,    0,    -1 },
    { chrome_dev,    NULL,          NULL,           web,     0,    0,    0,    -1 },
    { NULL,          foliate,       NULL,           app,     0,    0,    0,    -1 },
    { "Gimp",        NULL,          NULL,           app,     0,    0,    0,    -1 },
    { NULL,          NULL,          "Tachidesk",    app,     0,    0,    0,    -1 },
    { "Reactotron",  NULL,          NULL,           app,     0,    0,    0,    -1 },
    { "Code",        NULL,          NULL,           ide,     0,    0,    0,    -1 },
    { "DBeaver",     NULL,          NULL,           ide,     0,    0,    0,    -1 },
    { "Postman",     NULL,          NULL,           ide,     0,    0,    0,    -1 },
    { NULL,          "libreoffice", NULL,           doc,     0,    0,    0,    -1 },
    { NULL,          NULL,          "LibreOffice",  doc,     0,    0,    0,    -1 },
    { NULL,          win_x11_xframe,NULL,           doc,     0,    0,    0,    -1 },
    { "calibre",     NULL,          NULL,           doc,     0,    0,    0,    -1 },
    { NULL,          NULL,          "*DEBUG*",      doc,     0,    0,    0,    -1 },
    { "Godot",       NULL,          NULL,           doc,     0,    0,    0,    -1 },
    { NULL,          NULL,          "sncli",        doc,     0,    0,    0,    -1 },
    { NULL,          NULL,          "Google Docs",  doc,     0,    0,    0,    -1 },
    { NULL,          NULL,          "cmus",         play,    0,    0,    0,    -1 },
    { NULL,          NULL,          "ncspot",       play,    0,    0,    0,    -1 },
    { NULL,          NULL,          "rofi-beats",   play,    0,    0,    0,    -1 },
    { NULL,          NULL,          "WhatsApp",     chat,    0,    0,    0,    -1 },
    { "Slack",       NULL,          NULL,           chat,    0,    0,    0,    -1 },
    { google_chat,   NULL,          NULL,           chat,    0,    0,    0,    -1 },
    { "discord",     NULL,          NULL,           call,    0,    0,    0,    -1 },
    { "zoom",        NULL,          NULL,           call,    0,    0,    0,    -1 },
    { "Trello",      NULL,          NULL,           fun,     0,    0,    0,    -1 },
    { "Whale",       NULL,          NULL,           fun,     0,    0,    0,    -1 },
    { "Steam",       NULL,          NULL,           fun,     0,    0,    0,    -1 },
    { notion,        NULL,          NULL,           fun,     0,    0,    0,    -1 },
    { as_jetbrains,  NULL,          NULL,           fun,     0,    0,    0,    -1 },
    { NULL,          sscreenrec,    NULL,           back,    0,    0,    0,    -1 },
    { "qBittorrent", NULL,          NULL,           back,    0,    0,    0,    -1 },
    { "thunderbird", NULL,          NULL,           back,    0,    0,    0,    -1 },

    // Floating windows
    /* class        instance        title           mask   float term  swallow monitor */
    { "Pavucontrol", NULL,          NULL,           0,       1,    0,    0,    -1 },
    { "kdeconnect.app",NULL,        NULL,           0,       1,    0,    0,    -1 },
    { "Gcolor3",     NULL,          NULL,           0,       1,    0,    0,    -1 },
    { NULL,          NULL,          as_pixel_6pro,  0,       1,    0,    0,    -1 },
    { NULL,          NULL,          "Pick",         0,       1,    0,    0,    -1 },
    { NULL,          NULL,          win_qemu,       0,       1,    0,    0,    -1 },
    { "fontforge",   NULL,          "Open Font",    0,       1,    0,    0,    -1 },
    { "fontforge",   NULL,          "Warnings",     0,       1,    0,    0,    -1 },
    { "Steam",       NULL,          "Friends List", 0,       1,    0,    0,    -1 },
    { NULL,          NULL,          win_xampp,      0,       1,    0,    0,    -1 },
    { "Gitk",        NULL,          NULL,           0,       1,    0,    0,    -1 },
    { NULL,          "peek",        NULL,           0,       1,    0,    0,    -1 },
    { NULL,          NULL,          steam_payp,     0,       1,    0,    0,    -1 },
    { NULL,          NULL,          "Bluetooth",    0,       1,    0,    0,    -1 },
    { NULL,          NULL,          as_emulator,    app,     1,    0,    0,    -1 },
    { NULL,          NULL,          as_pixel_6pro,  app,     1,    0,    0,    -1 },
    // Swallow windows
    /* class        instance        title           mask   float term  swallow monitor */
    { "Alacritty",   NULL,          NULL,           0,       0,    1,    0,    -1 },
    { NULL,          "sddm_greeter",NULL,           0,       0,    0,    1,    -1 },
    { NULL,          NULL,          "Event Tester", 0,       0,    0,    1,    -1 }, /* xev */
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
    /* symbol     arrange function */
    { "[]=",      tile },    /* first entry is default */
    { "[F]",      NULL },    /* no layout function means floating behavior */
    { "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
    { MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
    { MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
    { MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
    { MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-nb", col_black, "-nf", col_white, "-sb", col_light_gray, "-sf", col_white, NULL };
static const char *termcmd[]  = { "alacritty", NULL };
static const char scratchpadname[] = "scratchpad";
static const char scratchpadconfig[] = "/home/tony/.config/dwm/patches/scratchpad.toml";
static const char *scratchpadcmd[] = { "alacritty", "-t", scratchpadname, "--config-file", scratchpadconfig, NULL };

/* Patches */
#include "patches/shiftview.c" // Tag rotation
#include "patches/push.c" // Move clients

static Key keys[] = {
    /* modifier                     key        function        argument */
    { MODKEY,                       XK_j,      focusstackvis,  {.i = +1 } },
    { MODKEY,                       XK_k,      focusstackvis,  {.i = -1 } },
    { MODKEY|ShiftMask,             XK_k,      pushup,         {0} },
    { MODKEY|ShiftMask,             XK_j,      pushdown,       {0} },
    { MODKEY|ControlMask,           XK_j,      focusstackhid,  {.i = +1 } },
    { MODKEY|ControlMask,           XK_k,      focusstackhid,  {.i = -1 } },
    { MODKEY|ShiftMask|ControlMask, XK_j,      shiftview,      {.i = +1 } },
    { MODKEY|ShiftMask|ControlMask, XK_k,      shiftview,      {.i = -1 } },

    //                              XK_a
    //                              XK_b,      bookmarks
    //                              XK_c,      clipboard
    { MODKEY,                       XK_d,      incnmaster,     {.i = -1 } },
    //                              XK_e,      web browser
    { MODKEY|ShiftMask|ControlMask, XK_f,      fullscreen,     {0} },
    { MODKEY|ShiftMask,             XK_f,      setlayout,      {.v = &layouts[1]} },
    //                              XK_g
    { MODKEY|ShiftMask,             XK_h,      hide,           {0} },
    { MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
    { MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
    { MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
    { MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
    //                              XK_n
    //                              XK_o
    { MODKEY,                       XK_p,      spawn,          {.v = dmenucmd } },
    { MODKEY,                       XK_q,      killclient,     {0} },
    //                              XK_r,      dmenu
    { MODKEY,                       XK_s,      show,           {0} },
    { MODKEY|ShiftMask,             XK_s,      showall,        {0} },
    { MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
    //                              XK_u
    //                              XK_v       pavucontrol
    //                              XK_v       qutebrowser
    { MODKEY,                       XK_x,      togglebar,      {0} },
    //                              XK_y
    { MODKEY,                       XK_z,      zoom,           {0} },

    { MODKEY,                       XK_Return, spawn,          {.v = termcmd } },
    { MODKEY|ControlMask,           XK_space,  togglefloating, {0} },
    { MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
    { MODKEY|ControlMask,           XK_period, tagswapmon,     {.i = -1 } },
    { MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
    { MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
    { MODKEY|ControlMask,           XK_comma,  tagswapmon,     {.i = +1 } },
    { MODKEY,                       XK_period, focusmon,       {.i = +1 } },
    { MODKEY,                       XK_minus,  setgaps,        {.i = -1 } },
    { MODKEY,                       XK_equal,  setgaps,        {.i = +1 } },
    { MODKEY|ShiftMask,             XK_equal,  setgaps,        {.i = 0  } },
    { MODKEY,                       XK_grave,  togglescratch,  {.v = scratchpadcmd } },
    TAGKEYS(                        XK_1,                      0)
    TAGKEYS(                        XK_2,                      1)
    TAGKEYS(                        XK_3,                      2)
    TAGKEYS(                        XK_4,                      3)
    TAGKEYS(                        XK_5,                      4)
    TAGKEYS(                        XK_6,                      5)
    TAGKEYS(                        XK_7,                      6)
    TAGKEYS(                        XK_8,                      7)
    TAGKEYS(                        XK_9,                      8)
    TAGKEYS(                        XK_0,                      9)
    { MODKEY|ShiftMask,             XK_q,      quit,           {0} },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
    /* click                event mask      button          function        argument */
    { ClkTagBar,            0,              Button1,        view,           {0} },
    { ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
    { ClkTagBar,            0,              Button2,        toggleview,     {0} },
    // { ClkTagBar,            MODKEY,         Button2,        toggletag,      {0} },

    { ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
    { ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
    { ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },

    { ClkWinTitle,          0,              Button1,        togglewin,      {0} },

    { ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
};
