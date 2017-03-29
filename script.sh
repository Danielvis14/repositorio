#!bin/bash
USUARIO=Daniel
SENHA=123
SAIR="NAO"
while [ $SAIR != SAIR ]; do
  clear
  echo
  echo "Debian GNU/Linux 8 jessie tty1"
  echo
  QNT=1
  while (( $QNT <= 5 )); do
    echo -n "jessie login"
    read LOGIN
    echo -n "Password"
    read -s PASSW
    echo
    if[ $LOGIN == $USUARIO ]; then
      if[ $PASSWD == $SENHA ]; then
        QNT=6
        SAIR=SAIR
      else
        sleep 1
        echo
        echo "Login Incorrect"
      fi
     else
         sleep 1
         echo
         echo "Login Incorrect"
    fi
  let QNT=($QNT+1)
  done
done
