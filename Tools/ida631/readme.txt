-Completely replaced the code that loads the loader modules, removing the PE/ELF/Mach-O limitation.
-Removed the check restricting which processor modules are allowed.
-Created a custom loader to re-enable support for loading Binary files.
-Removed the experation check.
-Removed the nags when opening and closing projects.
-Disabled the thread that would open a nag after some time. In the past it would force the program to close, but I guess that was broken in the transition to QT.
-Removed the checks preventing self-disassembly.
-Removed a limitation preventing large amounts of data from being copied to the clipboard.
-Some options were removed from the Help menu for cosmetics.

No database saving or loading, you have to save your work like this:
File->Produce File->Dump Database to IDC file...
To load it, reload the file your working on, then open your saved IDC to restore your session:
File->Script file...
This will work between different versions of IDA so you can use your old databases and move between versions at will.


Update:
-Fixed an incompatibility with the OMF and COFF loaders.
-Disabled settings incompatible with the PPC and SH3 processor modules.
-Revised the loader patch, it still functions the same.
-Merged newer sig, til, idc, and ids files from IDA 6.1.
