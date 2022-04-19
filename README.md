# Template folder for OSU ECEN5313 Spring 2022 final project

## Getting started with GitHub

First, make a github account if you do not already have one by navigating to
the following link: [github.com/join](https://github.com/join).

Now that you have an account, fork this repository. Look at the top right of
the GitHub page. Click the middle button called "Fork".

This will make a personal copy of the repository. Click the green "Code"
button, and copy the address under HTTPS. You can now clone it on the
servers with git clone, with a command like:

```
git clone https://github.com/url_to_your_project
```

A full list of the OSU ECEN servers can be seen below:
```
shire.ecen.okstate.edu
moria.ecen.okstate.edu
angmar.ecen.okstate.edu
bree.ecen.okstate.edu
combe.ecen.okstate.edu
dale.ecen.okstate.edu
```

You can find a handy cheatsheet of git commands
[here](https://education.github.com/git-cheat-sheet-education.pdf).

## Using the git repository

We recommend that, once you have cloned the repository and `cd` into it, you
copy the template folder under your own group's name with a command like:

```
cp -r template Paul_Yukari_group
```

You can choose whatever name you want for your folder, the above form is simply
a suggestion.

Next, navigate into your folder with `cd Paul_Yukari_group`, and start working
on the design!

As you modify files, add the changes with `git add`. Once you are ready to lock
in a change (that is to say, you are ready to commit to it), lock it in with
`git commit` and write a good description of your changes. To share your
changes online, just `git push`.

If another contributor (your partner) makes changes online, you can bring them
into your local copy with `git pull`. You should always `git pull` before doing
`git commit`, just in case. If two people have modified the same file, it is
easier to fix it before `commit` than after.

You can find a handy cheatsheet of git commands
[here](https://education.github.com/git-cheat-sheet-education.pdf).

## Using GitHub online features

There are two features of the web interface that may prove useful to you.

First, you can give anyone access to your repository (such as your group
member). A convenient tutorial can be found
[here](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-user-account/managing-access-to-your-personal-repositories/inviting-collaborators-to-a-personal-repository).

Second, if this main template repository has any changes applied to it, you can
pull them into your personal repository. A convenient tutorial can be found in
the first section of [this
link](https://docs.github.com/en/github-ae@latest/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork).
Note that only the first three steps are necessary.

## Running Xschem
The first step when opening up any new terminal is to run:

```
fossi-tools
```

Make sure to run this command for ANY new terminal you open. 
This will set up the paths to access all the relevant tools.

Then, to bring up the LDO example in xschem, make sure 
the .sch file is in your current directory and run:

```
xschem LDO.sch
```

The schematic Analyses_Template.sch has examples of different analyses
that you can run. **Remember** that `ctrl C` + `ctrl V` works between different
Xschem windows, so you can copy and paste entire code blocks between
two different schematics. 

To run Ngspice simulations, remember to have the MODELS code block in
your top level design. If any changes were made to the schematic since
the last time you generated the netlist, make sure to hit the netlist button
again before hitting the simulation button. Ngspice works off the .spice file
with the same name as your schematic, found in you current working directory. 
If the .spice file is out of date with your schematic, you won't see the changes
show up in simulation.

## Manuals and Help
For help with **Ngspice** and writing simulations, see [here](http://ngspice.sourceforge.net/docs/ngspice-manual.pdf).

For help with **Xschem**, see [here](https://xschem.sourceforge.io/stefan/xschem_man/xschem_man.html)

If the manuals can't solve your problem or if you're having server related issues, contact me at
ryan.ridley@okstate.edu. I'll hopefully be able to solve your problem or know someone who can.

