Available add-in functions 
==========================

## "Insert" family

These functions insert various R operators.

| Function                            | Inserts              | Package associated with operator|
|-------------------------------------|:--------------------:|:-------------------------------:|
| insertArrowLR2\_Addin()             | &lt;&lt;-            | R base                          |
| insertArrowRL\_Addin()              | -&gt;                | R base                          |
| insertArrowRL2\_Addin()             | -&gt;&gt;            | R base                          |
| insertIn\_Addin()                   | %in%                 | R base                          |
| insertMatMuliplication\_Addin()     | %\*%                 | R base                          |
| insertPipeline\_Addin()             | %&gt;%               | magrittr                        |
| insertTeeOperator\_Addin()          | %T&gt;%              | magrittr                        |
| insertCompAssignPipe\_Addin()       | %&lt;&gt;%           | magrittr                        |
| insertExPipe\_Addin()               | %$%                  | magrittr                        |
| insertIfNULL\_Addin()               | %if.NULL%            | spMisc[^1]                      |
| insert\_if\_null\_Addin()           | %if\_null%           | spMisc                          |
| insert\_if\_null\_or\_len0\_Addin() | %if\_null\_or\_len0% | spMisc                          |
| insertNotIn\_Addin()                | %!in%                | spMisc                          |
| insertPaste\_Addin()                | %.+.%                | spMisc                          |
| insertPaste0\_Addin()               | %++%                 | spMisc                          |

The following functions may be useful for editing **R Markdown** files or,
if commented (`#`), for structuring R code files.

| Function                            | Description                      | Example (first 10 symbols) |
|-------------------------------------|:--------------------------------:|:--------------------------:|
| insert\_ss\_line\_Addin()           | Insert single straight (SS) line | `----------`               |
| insert\_ds\_line\_Addin()           | Insert double straight (DS) line | `==========`               |
| insert\_sw\_line\_Addin()           | Insert single wavy (SW) line     | `~~~~~~~~~~`               |

[^1]: Available at <https://github.com/GegznaV/spMisc>.

## "Replace" family 

| Action                        | Function               | Text to edit     | Result          |
|-------------------------------|------------------------|:----------------:|:---------------:|
| Replace \`\\\` with \` \\\\\` | Back2doubleBackSlash() | c:\\data\\       | c:\\\\data\\\\  |
| Replace \`\\\` with \` /\`    | Back2ForwardSlash()    | c:\\data\\       | c:/data/        |


## "Enclose" family

These functions are useful for editing **R Markdown** files.

| Action                                 | Function                     | Text to edit      | Result                     | Interpreted in markdown as     |
|----------------------------------------|------------------------------|:-----------------:|:--------------------------:|:------------------:|
| Enclose with single asterisk (`*`)     | enclose\_with\_asterisk()    | italics           | \*italics\*                | *italics*          |
| Enclose with single underscore (`_`)   | enclose\_with\_underscore()  | italics           | \_italics\_                | _italics_          |
| Enclose with double asterisk (`**`)    | enclose\_with\_asterisk2()   | bold              | \*\*bold\*\*               | **bold**           |
| Enclose with double underscore (`__`)  | enclose\_with\_underscore2() | bold              | \_\_bold\_\_               | __bold__           |
| Enclose with single back tick (\`  )   | enclose\_with\_backtick()    |  code             | \`code\`                   | `code`             |
| Enclose with single dollar sign (`$`)  | enclose\_with\_dollar()      | equation^{inline} | ```$equation^{inline}$```  | $equation^{inline}$|
| Enclose with single dollar sign (`$$`) | enclose\_with\_dollar2()     | equation_{block}  | ```$$equation_{block}$$``` | $equation_{block}$ |
                                                                                                                       