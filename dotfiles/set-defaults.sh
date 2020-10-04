# https://github.com/D-Land/dotfiles/blob/master/osx/set-defaults.sh

if [ `which defaults` ]
then
  for f in ${ZSH}/osx/*.defaults.sh
  do
    source $f
  done
fi