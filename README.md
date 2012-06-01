webrf
=====

quickly refresh that browser on your other screen

## What is this?

As a web developer I spend alot of time clicking/alt-tabbing between my IDE and my web browser to refresh the page to test out what I've just got done coding.  Over months, all these keystrokes and mouse movements really add up.  I finally came up with a simple idea to solve the problem.

Introducing webrf.  Stands for web refresh.  Essentially it allows you "register" a browser tab that will need to be refreshed often.  Then you setup a simple key binding (like winkey+r) that will send a page refresh to the tab.  So you can stay in your IDE, code, press win+r, see the page update and keep coding away.

## Requirements

*  xdotool: <code>sudo apt-get install xdotool</code>
*  a key binding tool like compizconfig-settings-manager: <code>sudo apt-get install compizconfig-settings-manager</code>

## Setup

1.  Download/clone bin/webrf to your homedir (or somewhere in your path)
1.  Open CompizConfig settings manager, open 'commands'. Bind <code>~/webrf refresh</code> command to a key combo of your choice (<code>super+r</code> for example)
1.  Open your browser and page where your going to want to refresh alot.
1.  From terminal run <code>webrf setup-by-search "case sensitive window name - typically html title to search for"</code>
1.  Go to your IDE or other window. Press your keybinding, watch browser refresh :)

If your window titles change, you can also bind by window id. run <code>webrf --help for more info</code>

Here are some exmaple screenshots for CompizConfig settings manager:

![Command binding](http://getfile1.posterous.com/getfile/files.posterous.com/temp-2012-06-01/iqtDqzEIaEgvIJyfqwezxHiFzEDrkGwivptFCtegxAoInEqkmEeJnGcFjybD/CompizConfig_Settings_Manager_747.png.scaled1000.png "cmd")
![Key binding](http://getfile3.posterous.com/getfile/files.posterous.com/temp-2012-06-01/nullEJitegqlbknpdztnoAevEsJlFhAlmzuinJIwIkrxeBgoqnwnApmqqHxA/CompizConfig_Settings_Manager_746.png.scaled1000.png)

