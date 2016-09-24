https://pqrs.org/osx/karabiner/document.html.en


$ /Applications/Karabiner.app/Contents/Library/bin/karabiner
Usage:
  Profile operations:
    $ karabiner list
    $ karabiner select INDEX (INDEX starts at 0)
    $ karabiner select_by_name NAME
    $ karabiner selected
    $ karabiner append NAME
    $ karabiner rename INDEX NEWNAME (INDEX starts at 0)
    $ karabiner delete INDEX (INDEX starts at 0)
  Settings:
    $ karabiner set IDENTIFIER VALUE
    $ karabiner enable IDENTIFIER (alias of set IDENTIFIER 1)
    $ karabiner disable IDENTIFIER (alias of set IDENTIFIER 0)
    $ karabiner toggle IDENTIFIER
    $ karabiner changed
  Others:
    $ karabiner export
    $ karabiner reloadxml
    $ karabiner relaunch
    $ karabiner be_careful_to_use__clear_all_values_by_name PROFILE_NAME

Examples:
  $ karabiner list
  $ karabiner select 1
  $ karabiner select_by_name NewItem
  $ karabiner selected
  $ karabiner append "For external keyboard"
  $ karabiner rename 1 "Empty Setting"
  $ karabiner delete 1

  $ karabiner set repeat.wait 30
  $ karabiner enable remap.shiftL2commandL
  $ karabiner disable remap.shiftL2commandL
  $ karabiner toggle remap.shiftL2commandL
  $ karabiner changed

  $ karabiner export
  $ karabiner reloadxml
  $ karabiner relaunch
  $ karabiner be_careful_to_use__clear_all_values_by_name NewItem

