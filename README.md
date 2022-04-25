# Template folder for OSU ECEN5313 Spring 2022 final project

## COMMON ISSUES

This is just a list of common issues that we have run into while doing our
project. After you have read the rest of this guide and have started working,
make sure to keep an eye out for these.

 * The server `angmar` may not run SPICE in some cases. Try a different one.
 * If the "open" menu gives a "file not found" error, press the "Current dir"
   button and retry.
 * FET sizes have to be specific numbers (see below)

First, and most importantly, the `nfet_g5v0d10v5` and `pfet_g5v0d10v5` 5V FET
devices that should be used for this project only have a limited discrete list
of allowed dimensions.

In order to make large devices, use the `mult` integer attribute on the FETs.
This acts as a multiplier to the total width.

Note that the following dimensions are in um. xschem already assumes you mean
um, so you do not have to specify. For example, the default size on these
devices is 1 / 1, meaning 1um by 1um. 

The following combinations of lengths and widths are allowed: any length in the list
`0.5, 1, 2, 4, 8`, combined with any width in the list `1, 3, 5, 7`.

In addition, the following specific W / L combinations are allowed:
`0.5 / 10, 0.5 / 15, 1 / 15, 0.5 / 20, 1 / 20`.

Given that this project requires large FETs, our recommendation is that you use the
`0.5 / 20` or `1 / 20` devices and not worry beyond that.

## Making a GitHub account

First, make a github account if you do not already have one by navigating to
the following link: [github.com/join](https://github.com/join).

## Getting on the servers

Follow the instructions from the tutorial posted in Canvas to ssh and VNC into
the servers.

A full list of the OSU ECEN servers can be found below:
```
shire.ecen.okstate.edu
moria.ecen.okstate.edu
angmar.ecen.okstate.edu
bree.ecen.okstate.edu
combe.ecen.okstate.edu
dale.ecen.okstate.edu
```

## Setting up GitHub for your account

On the servers, it is useful to set your git username and email
so that git can reference it when performing pushes. To do this, run these two
commands in a terminal on the servers:

```
$ git config --global user.name 'YourGitHubusername'
$ git config --global user.email 'YourEmail'
```

Make sure to use your GitHub username and the email you used when creating your
GitHub account.

### Setting up SSH Authentication for GitHub
Setting up an SSH key will allow GitHub to authenticate that it is really
you when trying to clone, push, pull, etc. or do anything with git. Having
an SSH key will allow you to not have to enter a token every time you want
to run a git command. To set up:

1. Open up a terminal on the servers and run this command:

   ```
   $ ssh-keygen -t ed25519 -C "your_email@example.com"
   ```

   Make sure to subsitute the email you used when creating your
   GitHub account. Some prompts will then come up asking you to
   specify a folder to save the key to, and a passphrase to add
   to the key. For all of these, just hit enter. 

   ```
   > Enter a file in which to save the key (/home/tdene/.ssh/id_rsa): [Press enter]
   > Enter passphrase (empty for no passphrase): [Press enter]
   > Enter same passphrase again: [Press enter]
   ```

   If you really want to add a passphrase to yourr ssh key, go ahead. I have
   found them to be more annoying than anything, but feel free if it makes you
   feel safer.

2. After generating your SSH key, two files located in `~/.ssh/` will have been
   generated: `id_rsa` and `id_rsa.pub`. The file called `id_rsa` is your private
   key. **DO NOT** share this file and its contents with anyone **EVER**. What you
   give to other people and what we need to give to GitHub is your public key which
   is in `id_rsa.pub`.

3. Go to GitHub, at the top right of the page click your profile picture. A dropdown
   menu should show up.

4. Click on `Settings`.

5. On the left hand side of the page, click `SSH and GPG Keys`.

6. At the top, click `New SSH Key`.

7. Give it a title. **NOTE**: Since an SSH key is specific to a certain machine/server
   cluster, I recommend naming it the same name as the server you generated it on. For
   example, since you generated this for the ECEN servers, the title would be `ECEN`.

8. The field named `key` is where you will put the contents of your public key. So, go
   back to the server and in a terminal run:

   ```
   $ cat ~/.ssh/id_rsa.pub
   ```

   This will print out the contents of the file. It should start with `ssh-rsa`
   or something similar. Copy the entire string and paste it into the key field
   on GitHub.

9. Click `Add SSH Key` and you are done.

From now on, when cloning any repository, you get to use the SSH link instead of the HTTPS link. This is far more convenient. For example, to clone the template repo you would run:

```
git clone git@github.com:rjridle/OSU_ECEN5313_S2022_template.git
```

The SSH link always starts with `git@github.com`

## Setting up and working with your git repository

Now that you have an account, fork this repository. Look at the top right of
the GitHub page. Click the middle button called "Fork".

This will make a personal copy of the repository. Click the green "Code"
button, and copy the address under SSH. **You must have generated an SSH key
and added it to GitHub before you can clone using the SSH link.**. If you
have not yet done this, see [Setting up SSH Key](#setting-up-ssh-authentication-for-github).

You can now clone your personal copy of this repository on the servers with
`git clone` and the address you copied in the previous step. The command should
look similar to:

```
git clone git@github.com:YOUR_USERNAME_GOES_HERE/OSU_ECEN5313_S2022_template.git
```

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

## Sample automatic power calculation

This sample transient analysis script will also calculate the power efficiency
of the circuit, and print it into the .out file. You can find it in the .out
file by searching for `power_out`.

Note that you will have to adjust the net names (v1 and vouti), voltage values
(1.8 and 3.6), and time period in this script for your own usecase.

```
.tran 1u 200u
.save all

 .control
        run
        meas tran idd_ave INTEG i(v1) from=190u to=191u
        meas tran ido_ave INTEG i(vouti) from=190u to=191u
        let power_in = (idd_ave)*3.6
        let power_out = (ido_ave)*1.8
        let nu = power_out/power_in*100
        print power_in
        print power_out
        print nu
 .endc
```

## Manuals and Help
For help with **Ngspice** and writing simulations, see [here](http://ngspice.sourceforge.net/docs/ngspice-manual.pdf).

For help with **Xschem**, see [here](https://xschem.sourceforge.io/stefan/xschem_man/xschem_man.html)

If the manuals can't solve your problem or if you're having server related issues, contact me at
ryan.ridley@okstate.edu. I'll hopefully be able to solve your problem or know someone who can.


