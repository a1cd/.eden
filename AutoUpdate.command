clear
cd
sleep 60
rm -rf .eden
clear
mkdir .eden
cd .eden
curl https://a1cd.github.io/.eden/start.command --output start.command
curl https://a1cd.github.io/.eden/AutoUpdate.command --output AutoUpdate.command
cd
chmod a+x ".eden/start.command"
chmod a+x ".eden/AutoUpdate.command"
clear
bash .eden/AutoUpdate.command
