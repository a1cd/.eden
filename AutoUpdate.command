clear
cd
osascript tell application "iTunes" to activate
sleep 300
rm -rf .eden
clear
mkdir .eden
cd .eden
curl https://a1cd.github.io/.eden/start.command --output start.command
curl https://a1cd.github.io/.eden/AutoUpdate.command --output AutoUpdate.command
curl https://a1cd.github.io/.eden/autoUpdateStarter.command --output autoUpdateStarter.command
cd
chmod a+x ".eden/start.command"
chmod a+x ".eden/AutoUpdate.command"
chmod a+x ".eden/autoUpdateStarter.command"
clear
bash .eden/AutoUpdate.command
