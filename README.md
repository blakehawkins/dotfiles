# Usage

The worfklow for this dotfiles repo is based on merging and then replacing existing dotfiles:

* `./source_live_dotfiles.sh` copies deployed dotfiles, overwriting those in the repo.
* `git diff` to see if your live dotfiles have anything worth saving.
    - If `diff` reveals something new worth saving, STOP!
      You must manually merge and commit before proceeding.
* WARNING: This cannot be undone.
  `./use_repo_dotfiles.sh` to overwrite your live dotfiles with those in this repo.
