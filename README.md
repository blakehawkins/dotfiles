
# dotfiles
Yet another dotfiles repo. I aim to be msys2-friendly where possible (no symlinks).

# Usage
This doesn't use symlinks or source a bootstrap environment. Instead, you have to
test/diff your scripts with those in the repo. Suggested usage:

* Run `./source_live_dotfiles.sh` which takes your dotfiles and overwrites those
in the repo.
* Run `git diff` to see if your live dotfiles have anything worth saving.
    - If something *new* in this diff is worth saving, STOP! You must manually
    merge.
    - If the changes in this diff are not desirable, and you prefer those in the
    repository, proceed as follows.
* Run `git reset --hard` to throw away the sourced dotfiles.
* WARNING: This cannot be undone. Run `./use_repo_dotfiles.sh` to overwrite your
live dotfiles with those in this repo.

