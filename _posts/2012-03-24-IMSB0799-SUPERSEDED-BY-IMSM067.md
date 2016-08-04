---
layout: post
title: '[SUPERSEDED] TotalCmd Shortcuts'
date: '2012-03-24'
author: insmodscum
tags:
- Insurgency Mod Scum
- OT-OPSEC / Anonymity
- OT-Noted
- OT-Tools
- Superseded
blogger_id: tag:blogger.com,1999:blog-7256856399250838035.post-7234551098100229196
blogger_orig_url: http://insurgencymod.blogspot.com/2013/03/notes-total-commander-shortcuts.html
---

# Superseded by: #

IMSM067_373F4138FF827C56491DE6CC8E25386065DDD517

<!-- more -->

# Original Post #

~~~
* * *

> > **F1** Help  
> > **F2** Reread source window  
> > **F3** List files  
> > **F4** Edit files  
> > **F5** Copy files  
> > **F6** Rename or move files  
> > **F7** Create directory  
> > **F8** or DEL Delete files to recycle bin /delete directly - according to configuration  
> > **F9** Activate menu above source window (left or right)  
> > **F10** Activate left menu or deactivate menu

* * *

> > **ALT+F1** change left drive  
> > **ALT+F2** change right drive  
> > **ALT+F3** Use alternate (external or internal) viewer  
> > **ALT+SHIFT+F3** Start Lister and load file with internal viewer (no plugins or multimedia)  
> > **ALT+F4** Exit | Minimize (with option MinimizeOnClose in wincmd.ini)  
> > **ALT+F5** Pack files  
> > **ALT+SHIFT+F5** Move to archive  
> > **ALT+F6** Unpack specified files from archive under cursor, or selected archives 
> > 
> > **ALT+F7** Find  
> > **ALT+F8** Opens the history list of the command line  
> > **ALT+F9** Same as ALT+F6 (because ALT+F6 is broken on Windows 95)  
> > **ALT+SHIFT+F9** Test archives  
> > **ALT+F10** Opens a dialog box with the current directory tree  
> > **ALT+F11** Opens left current directory bar (breadcrumb bar)  
> > **ALT+F12** Opens right current directory bar (breadcrumb bar)  
> > **ALT+SHIFT+F11** Focus the button bar to use it with the keyboard

* * *

> > **SHIFT+F1** Custom columns view menu  
> > **SHIFT+F2** Compare file lists  
> > **SHIFT+F3** List only file under cursor, when multiple files selected  
> > **SHIFT+F4** Create new text file and load into editor  
> > **SHIFT+F5** Copy files (with rename) in the same directory  
> > **SHIFT+CTRL+F5** Create shortcuts of the selected files  
> > **SHIFT+F6** Rename files in the same directory  
> > **SHIFT+F8/DEL** Delete directly / delete to recycle bin - according to configuration  
> > **SHIFT+F10** Show context menu  
> > **SHIFT+ESC** Minimizes Total Commander to an icon

* * *

> > **ALT+left/right** Go to previous/next dir of already visited dirs  
> > **ALT+down** Open history list of already visited dirs (like the history list in a WWW browser)

* * *

> > **NUM +** expand selection (configurable: just files or files and folders)  
> > **NUM -** shrink selection  
> > **NUM *** invert selection (also with shift, see link)  
> > **NUM /** restore selection

* * *

> > **SHIFT+NUM +** Like NUM +, but files and folders if NUM + selects just files (and vice versa)  
> > **SHIFT+NUM -** Always removes the selection just from files (NUM - from files and folders)  
> > **SHIFT+NUM *** Like NUM *, but files and folders if NUM * inverts selection of just files (and vice versa)

* * *

> > **CTRL+NUM +** select all (configurable: just files or files and folders)  
> > **CTRL+SHIFT+NUM +** select all (files and folders if CTRL+NUM + selects only files)  
> > **CTRL+NUM -** deselect all (always files and folders)  
> > **CTRL+SHIFT+NUM -** deselect all (always files, no folders)
> 
> > **ALT+NUM +** select all files with the same extension  
> > **ALT+NUM -** remove selection from files with the same extension
> 
> > **CTRL+PgUp** or **Backspace** Change to parent directory (cd ..)  
> > **CTRL+<** Jump to the root directory (most European keyboards)  
> > **CTRL+\** Jump to the root directory (US keyboard)  
> > **CTRL+PgDn** Open directory/archive (also self extracting .EXE archives)
> 
> > **CTRL+left/right** Open directory/archive and display it in the target window. If the cursor is not on a directory name, or the other panel is active, then the current directory is displayed instead.
> 
> > **CTRL+F1** File display 'brief' (only file names)  
> > **CTRL+SHIFT+F1** Thumbnails view (preview pictures)  
> > **CTRL+F2** File display 'full' (all file details)  
> > **CTRL+SHIFT+F2** Comments view (new comments are created with Ctrl+Z)  
> > **CTRL+F3** Sort by name  
> > **CTRL+F4** Sort by extension  
> > **CTRL+F5** Sort by date/time  
> > **CTRL+F6** Sort by size  
> > **CTRL+F7** Unsorted  
> > **CTRL+F8** Display directory tree  
> > **CTRL+SHIFT+F8** Cycle through separate directory tree states: one tree, two trees, off  
> > **CTRL+F9** Print file under cursor using the associated program  
> > **CTRL+F10** Show all files  
> > **CTRL+F11** Show only programs  
> > **CTRL+F12** Show user defined files

* * *

> > **TAB** Switch between left and right file list  
> > **SHIFT+TAB** Switch between current file list and separate tree (if enabled)  
> > **Letter** Redirect to command line, cursor jumps to command line  
> > **INSERT** Select file or directory.
> 
> > **SPACE** Select file or directory (as INSERT). If SPACE is used on an unselected directory under the cursor, the contents in this directory are counted and the size is shown in the "full" view instead of the string <DIR>. This can be disabled through 'Configuration' - 'Options' - 'Operation' - 'Selection with Space'.
> 
> > **ENTER** Change directory / run program / run associated program / execute command line if not empty. If the source directory shows the contents of an archive, further information on the packed file is given.
> 
> > **SHIFT+ENTER**
> > 
> > 1\. Runs command line / program under cursor with preceding command /c and leave the program's window open. Only works if NOCLOSE.EXE is in the Total Commander directory!  
> > 2\. With ZIP files: use alternative choice of these (as chosen in Packer config): (Treat archives like directories <-> call associated program, i.e. winzip or quinzip)  
> > 3\. In the list of last used dirs (History, Ctrl+D), open the directory on a new Tab.
> 
> > **ALT+SHIFT+ENTER** The contents of all directories in the current directory are counted. The sizes of the directories are then shown in the "full" view instead of the string <DIR>. Abort by holding down ESC key.  
> > **ALT+ENTER** Show property sheet.

* * *

> > **CTRL+A** select all  
> > **CTRL+B** Directory branch: Show contents of current dir and all subdirs in one list  
> > **CTRL+SHIFT+B** Selected directory branch: Show selected files, and all in selected subdirs  
> > **CTRL+C** Copy files to clipboard  
> > **CTRL+D** Open directory hotlist ('bookmarks')  
> > **CTRL+F** Connect to FTP server  
> > **CTRL+SHIFT+F** Disconnect from FTP server  
> > **CTRL+I** Switch to target directory  
> > **CTRL+L** Calculate occupied space (of the selected files)  
> > **CTRL+M** Multi-Rename-Tool  
> > **CTRL+SHIFT+M** Change FTP transfer mode  
> > **CTRL+N** New FTP connection (enter URL or host address)  
> > **CTRL+P** Copy current path to command line  
> > **CTRL+Q** Quick view panel instead of file window  
> > **CTRL+R** Reread source directory  
> > **CTRL+S** Open Quick Filter dialog and activate filter (deactivate with ESC or CTRL+F10)  
> > **CTRL+SHIFT+S** Open Quick Filter dialog and reactivate last-used filter  
> > **CTRL+T** Open new folder tab and activate it  
> > **CTRL+SHIFT+T** Open new folder tab, but do not activate it  
> > **CTRL+U** Exchange directories  
> > **CTRL+SHIFT+U** Exchange directories and tabs  
> > **CTRL+V** Paste from clipboard to current dir.  
> > **CTRL+W** Close currently active tab  
> > **CTRL+SHIFT+W** Close all open tabs  
> > **CTRL+X** Cut files to clipboard  
> > **CTRL+Z** Edit file comment  
> > **CTRL+UP** Open dir under cursor in new tab  
> > **CTRL+SHIFT+UP** Open dir under cursor in other window (new tab)  
> > **CTRL+TAB** Jump to next tab  
> > **CTRL+SHIFT+TAB** Jump to previous tab

* * *

> > **ALTGR+Letter(s)** or **CTRL+ALT+Letter(s)** Quick search for a file name (starting with specified letters) in the current directory (Support hotkeys Ctrl+X, Ctrl+C, Ctrl+V and Ctrl+A; use Ctrl+S for search filter on/off)

* * *
~~~

IMSB0799_17CF3E305606328C88DE6E02A55CCDF4B6E5ACE3