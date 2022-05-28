
dnl The libchrysalid documentation of individual units (types, constants, macros
dnl and functions) follows the man pages layout, and is generated in three
dnl different formats: man page, HTML and PDF. The man page and HTML formats are
dnl individual standalone pages, whereas the PDF page is part of the larger
dnl technical reference manual, which is an amalgamation of the documentation
dnl for all the units, along with other details.
dnl
dnl Since the libchrysalid documentation has multiple formats, the pandoc tool
dnl is used to generate these formats from a common Markdown template. Howoever,
dnl there are certain customisations that need to be made to the Markdown
dnl template according to the output format. For example, the Copyright and
dnl Colophon sections should appear in the Man pages and HTML formats, but not
dnl in the PDF format.
dnl
dnl In order to account for these discrepancies and avoid having to duplicate
dnl the Markdown sources, we create a single m4 template for each unit, using
dnl the macros defined below to make the necessary customisations. The Markdown
dnl template that is to be passed to pandoc is then generated by passing the
dnl appropriate flag to m4: -DMAN, -DHTML or DPDF for the man page, HTML and PDF
dnl outputs respectively.
dnl
dnl It's important to note that we need to change the default m4 quoting tokens
dnl so that they don't clash with the backticks used to mark code sections in
dnl Markdown. Accordingly, we choose <<< and >>> for quoting in the subsequent
dnl m4 documentation templates. The chevrons have been chosen because they are
dnl easy to identify and look nice, especially if you're using the populare Fira
dnl code font.
dnl
dnl Also note that we follow the convention of enclosing the names of the
dnl defined macros within double underscores so that they are easily
dnl identifiable and do not accidentally cause conflicts with the main text.


dnl __SWITCHMX__ - macro expanding conditionally between man and other formats

define(`__SWITCHMX__',
ifdef(`MAN', $1, $2))dnl


dnl __NAME__ - macro expanding to the name section heading

ifdef(`MAN',
`define(__NAME__, `# NAME')',
`define(__NAME__, `## Name {sec:$1:name}')')dnl


dnl __SYNOPSIS__ - macro expanding to the synopsis section heading

ifdef(`MAN',
`define(__SYNOPSIS__, `# SYNOPSIS')',
`define(__SYNOPSIS__, `## Synopsis {sec:$1:synopsis}')')dnl


dnl __DESCRIPTION__ - macro expanding to the Description section heading

ifdef(`MAN',
`define(__DESCRIPTION__, `# DESCRIPTION')',
`define(__DESCRIPTION__, `## Description {sec:$1:description}')')dnl


dnl __RETURN__ - macro expanding to the Return Value section heading

ifdef(`MAN',
`define(__RETURN__, `# RETURN VALUE')',
`define(__RETURN__, `## Return Value {sec:$1:return-value}')')dnl


dnl __FILES__ - macro expanding to the Files section heading

ifdef(`MAN',
`define(__FILES__, `# FILES')',
`define(__FILES__, `## Files {sec:$1:files}')')dnl


dnl __EXAMPLES__ - macro expanding to the Examples section heading

ifdef(`MAN',
`define(__EXAMPLES__, `# EXAMPLES')',
`define(__EXAMPLES__, `## Examples {sec:$1:examples}')')dnl


dnl __CONFORMINGTO__ - macro expanding to the Conforming To section heading

ifdef(`MAN',
`define(__CONFORMINGTO__, `# CONFORMING TO')',
`define(__CONFORMINGTO__, `## Conforming To {sec:$1:conforming-to}')')dnl


dnl __NOTES__ - macro expanding to the Notes section heading

ifdef(`MAN',
`define(__NOTES__, `# NOTES')',
`define(__NOTES__, `## Notes {sec:$1:notes}')')dnl


dnl __SEEALSO__ - macro expanding to the See Also section heading

ifdef(`MAN',
`define(__SEEALSO__, `# SEE ALSO')',
`define(__SEEALSO__, `## See Also {sec:$1:see-also}')')dnl


dnl __SCENARIO__ - macro expanding to the Scenario section heading

ifdef(`MAN',
`define(__SCENARIO__, `# SCENARIO')',
`define(__SCENARIO__, `## Scenario {sec:$1:scenario}')')dnl


dnl __GIVEN__ - macro expanding to the Given section heading

ifdef(`MAN',
`define(__GIVEN__, `# GIVEN')',
`define(__GIVEN__, `## Given {sec:$1:given}')')dnl


dnl __WHEN__ - macro expanding to the When section heading

ifdef(`MAN',
`define(__WHEN__, `# WHEN')',
`define(__WHEN__, `## When {sec:$1:when}')')dnl


dnl __THEN__ - macro expanding to the Then section heading

ifdef(`MAN',
`define(__THEN__, `# THEN')',
`define(__THEN__, `## Then {sec:$1:then}')')dnl


dnl Override default quoting

changequote(<<<, >>>)


dnl __COLOPHON__ - macro expanding to the Colophon section

ifdef(<<<MAN>>>,
<<<define(__COLOPHON__, 
<<<# COLOPHON

This page is part of release 0.0.1 of the libchrysalid project.
The latest version of this project can be found at
[GitHub](https://github.com/achakravarti/libchrysalid).>>>)>>>,
<<<define(__COLOPHON__, <<<>>>)>>>)dnl


dnl __COPYRIGHT__ - macro expanding to the Copyright section

ifdef(<<<MAN>>>,
<<<define(__COPYRIGHT__, 
<<<# COPYRIGHT

Copyright &copy; 2022 Abhishek Chakravarti `<abhishek@taranjali.org>`

`libchrysalid` along with its documentation are released under the BSD
2-Clause License. See **libchrysalid:license(7)** for the full License
text.>>>)>>>,
<<<define(__COPYRIGHT__, <<<>>>)>>>)dnl


dnl __CITATIONS__ - macro expanding to the Citations section

ifdef(<<<MAN>>>,
<<<define(__CITATIONS__, 
<<<# CITATIONS>>>)>>>,
<<<define(__CITATIONS__, <<<>>>)>>>)dnl

