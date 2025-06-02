make

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "make bettercap... PASS!"
else
  # houston we have a problem
  exit 1
fi

make install

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Make install bettercap... PASS!"
else
  # houston we have a problem
  exit 1
fi

bettercap -eval "caplets.update; ui.update; q"
