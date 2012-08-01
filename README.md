webrf
=====

quickly refresh that browser on your other screen

## What is this?

As a web developer I spend alot of time clicking/alt-tabbing between my IDE and my web browser to refresh the page to test out what I've just got done coding.  Over months, all these keystrokes and mouse movements really add up.  I finally came up with a simple idea to solve the problem.

Introducing webrf.  Stands for web refresh.  Essentially it allows you "register" a browser tab that will need to be refreshed often.  Then you setup a simple key binding (like winkey+r) that will send a page refresh to the tab.  So you can stay in your IDE, code, press win+r, see the page update and keep coding away.

## Requirements

*  tool that will simulate keyboard input
  *  Linux: xdotool: <code>sudo apt-get install xdotool</code>
  *  OSX: already built into AppleScript
*  tool that will bind a key combination to a command
  *  Linux: compizconfig-settings-manager: <code>sudo apt-get install compizconfig-settings-manager</code>
  *  OSX: http://www.cocoabits.com/KeyBindingsEditor/Manual/index.html

## Setup

1.  Download/clone bin/webrf to your homedir (or somewhere in your path). OSX get webrf.AppleScript
1.  Bind a key combo to webrf
  * linux: Open CompizConfig settings manager, open 'commands'. Bind <code>~/webrf refresh</code> command to a key combo of your choice (<code>super+r</code> for example). See screenshots below.
  * OSX: see http://www.cocoabits.com/KeyBindingsEditor/Manual/index.html
1.  Open your browser and page that you to want to refresh alot.
1.  Register tab/window:
  * If on linux, from terminal run:
     * <code>webrf setup</code>. This will bring up a tool that allows you to click on the window you want to refresh. 
  * On OSX I don't know how to find the window ID. So currently its hard coded to 'Safari'.  I don't use a mac, I'm looking for someone that does who is willing to implement and send a pull request.
1.  Go to your IDE. Press your keybinding, watch browser refresh :)

If your window titles change, you can also bind by window id. run <code>webrf --help for more info</code>. This only works on linux - no clue how to do this in AppleScript.

Here are some exmaple screenshots for CompizConfig settings manager:

![Command binding](http://getfile1.posterous.com/getfile/files.posterous.com/temp-2012-06-01/iqtDqzEIaEgvIJyfqwezxHiFzEDrkGwivptFCtegxAoInEqkmEeJnGcFjybD/CompizConfig_Settings_Manager_747.png.scaled1000.png "cmd")
![Key binding](http://getfile3.posterous.com/getfile/files.posterous.com/temp-2012-06-01/nullEJitegqlbknpdztnoAevEsJlFhAlmzuinJIwIkrxeBgoqnwnApmqqHxA/CompizConfig_Settings_Manager_746.png.scaled1000.png)

## TROUBLESHOOTING

* Browser tab that you want to refresh must be selected (viewable)

