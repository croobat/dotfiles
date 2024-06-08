/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int fuzzy = 1;                       /* -F  option; if 0, dmenu doesn't use fuzzy matching     */
static int centered = 1;                    /* -c option; centers dmenu on screen */
static int min_width = 640;                 /* minimum width when centered */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"Recursive Mono Linear Static:size=10:style=Medium:antialias=true:autohint=true",
	"Joypixels:size=14"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */

static const char col_black[]               = "#282a36";
static const char col_white[]               = "#f8f8f2";
static const char col_light_gray[]          = "#44475a";
static const char col_blue[]                = "#6272a4";
static const char col_cyan[]                = "#8be9fd";
static const char col_green[]               = "#50fa7b";
static const char col_orange[]              = "#ffb86c";
static const char col_pink[]                = "#ff79c6";
static const char col_purple[]              = "#bd93f9";
static const char col_red[]                 = "#ff5555";
static const char col_yellow[]              = "#f1fa8c";

static const char *colors[SchemeLast][2] = {
	/*                   fg              bg       */
	[SchemeNorm] = { col_white, col_black },
	[SchemeSel] = { col_white, col_light_gray },
	[SchemeSelHighlight] = { "#ffc978", col_light_gray },
	[SchemeNormHighlight] = { "#ffc978", col_black },
	[SchemeOut] = { col_black, col_cyan },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines = 8;

/* -h option; minimum height of a menu line */
static unsigned int lineheight = 36;
static unsigned int min_lineheight = 8;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
