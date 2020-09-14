clear
cd
sleep 10
rm -rf .eden
clear
git clone https://github.com/a1cd/.eden.git
chmod a+x ".eden/start.command"
clear
bash .eden/AutoUpdate.command
