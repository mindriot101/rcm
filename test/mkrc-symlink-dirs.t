  $ . "$TESTDIR/helper.sh"

Overrides SYMLINK_DIRS with -s

  $ mkdir -p .eggplant_firetruck/lampshape
  > touch .eggplant_firetruck/lampshape/bottle

  $ mkdir -p .boxing_card
  > touch .boxing_card/fragrance

  $ echo 'SYMLINK_DIRS="eggplant_firetruck boxing_card"' > $HOME/.rcrc

  $ mkrc .boxing_card
  /*/.boxing_card:/*/.dotfiles/boxing_card (glob)

  $ mkrc -s eggplant_firetruck
  /*/.eggplant_firetruck/lampshape/bottle:/*/.dotfiles/eggplant_firetruck/lampshape/bottle (glob)
