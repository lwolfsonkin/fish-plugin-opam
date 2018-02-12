# 🐟 opam (for fish!)

**An [opam][install opam] plugin for Fish Shell.**

Automatically sets `opam` environmental variables

## Installation

Using [Fisherman][fisher]:

```
fisher install lwolfsonkin/fish-plugin-opam
```

## Potential Issues

### Mac OS

After installing opam, running the `opam` command may yield the following error
`Install https://opam.ocaml.org/doc/Install.html to use this plugin.`

### Reason for the error

The problem is that, the opam plugin rightly could not find the `opam` command. The situation with 
fish shell is that it executes scripts in the `/Users/user/.config/fish/config.d` folder before 
executing `config.fish` and the opam plugin creates a link in the config.d folder hence it is 
executed before config.fish.

Now depending on how you installed opam or how soon your `$PATH` is loaded you could be faced with the
above error.

### Solutions

You could create a file say 000-env.fish (or whatever you want to call it), and place it in 
`/Users/user/.config/fish/config.d`. In this file set the path to the folder where opam was installed. 

The `000` preface is to ensure that, that script will be executed first before the others in config.d. You
have to prefix the file with `000` it is abitrary. Just give it a name that places it at the to of the
pile.

## Acknowledgments

Repo format attributed to [fisherman/pipenv][pipenv]

[install opam]: https://opam.ocaml.org/doc/Install.html
[fisher]: https://github.com/fisherman/fisherman
[pipenv]: https://github.com/fisherman/pipenv

