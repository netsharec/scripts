#!bin/bash
rm ~/.proxy_status
echo "WITHOUT PROXY" > ~/.proxy_status


#echo "Matando kopete"
#killall "kopete"
echo "Cambiar a modo proxy"
. ~/scripts/to_proxy.sh
echo "Configurar monitores"
sh scripts/configure_monitor.sh DUAL VGA1 1920x1080 DER
#sh scripts/configure_monitor.sh DUAL VGA2 1920x1080 DER
echo "Limpiar jboss"
ruby ~/scripts/limpiar_standalone.rb
echo Iniciando chrome
nohup google-chrome 'http://www.gmail.com/' & 
nohup google-chrome 'http://www.stackoverflow.com/' &
nohup google-chrome 'https://bitbucket.org/arturovolpe/tesis/commits/all' &
echo Iniciando kopete
#cp /home/arturo/.kde4/share/config/kopeterc_withoutavolpe /home/arturo/.kde4/share/config/kopeterc
#kopete &
#pidgin &

yakuake-session -t 'WIKI' -q -e vim ~/etc/vimwiki/index.wiki
yakuake-session -t 'CenterIM' -q -e centerim5
