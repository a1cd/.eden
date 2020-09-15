clear
cd
sleep 60
rm -rf .eden
clear
cd .eden
curl https://a1cd.github.io/.eden/start.command --output start.command
curl https://a1cd.github.io/.eden/AutoUpdate.command --output AutoUpdate.command
chmod a+x ".eden/start.command"
chmod a+x ".eden/AutoUpdate.command"
clear
bash .eden/AutoUpdate.command
