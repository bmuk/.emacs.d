My Emacs Configuration
======================

I have been an emacs user for several years now. This is the product of destroying my bloated, undocumented, mess of a configuration, and starting from scratch. My goals are to leave no code uncommented, and to remove as much bloat as possible. I have the habit of 'understanding' a piece of code I wrote enough so that I don't write an explanatory comment, and then being confused by it a few months later when I inevitably have to dust off my .emacs.d. For instance, should I be starting a minor mode with (minor-mode t) or (minor-mode 1)? This may be an emacs lisp problem, so I may eventually switch over to Yi. But for the time being, this text editor is the heart and soul of my computer, and I intend to write the simplest and cleanest configuration I can.

The basic outline is that init.el is our entry point to everything, but I didn't think it made too much sense to put everything in there. I prefer smaller, specialized files for the most part (see my nixos configuration). I have chosen to break the rest of the config up into two main groups - Programming, and Global. Aside from init.el, my entire config lives in init/. There are two entry points here - globals.el and progs.el.

Globals is where I keep settings that aren't associated with programming languages (at least not directly). The most important file is globals/my-packages.el, which is a package listing that el-get makes sure is consistent across computers. The rest are just my preferences regarding general interaction (ex. globals/my-ido.el), nixos specific work arounds (globals/my-tramp.el), and miscellaneous tweaks that don't belong in progs/.

Progs is where the most important files are. I know they aren't much, but I work in org-mode and haskell-mode constantly, with python-mode just barely behind them. These configs are not done by any means, and they are a little spartan (ghc-mod and the way I develop in nixos don't get along), but they get the job done.

As always, feel free to fork or submit a pull request.
