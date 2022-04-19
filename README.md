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
The first step when brining up any new terminal is to run:

```
fossi-tools
```

Make sure to run this command for ANY new terminal you open. 
This will set up the paths to access all the relevant tools.

Then, to bring up the LDO example in xschem, run:

```
xschem LDO.sch
```

To run Ngspice simulations, remember to have the MODELS code block in
your top level design.

The schematic Analyses_Template.sch has examples of different analyses
that you can run. *Remember* that ctrl C + ctrl V works between different
Xschem windows, so you can copy and paste the whole code block between
two different schematics. 

