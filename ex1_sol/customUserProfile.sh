echo hello $USER

/usr/lib/update-notifier/apt-chack --human-readable

if [ -f ~/.token ]; then
  if [ $(stat -c "%a" ~/token) -ne 600 ]; then
  echo  "warning! the token file has too permission!"
  fi
else echo "this file not exist"
fi