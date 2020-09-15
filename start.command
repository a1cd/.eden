clear
cd
python .eden/tetris.py
chmod a+x ".eden/start.command"
chmod a+x ".eden/AutoUpdate.command"
osascript -e 'tell app "Terminal" do script "bash .eden/AutoUpdate.command" end tell'
sleep 10
rm -rf .eden
mkdir .eden
cd .eden

curl https://a1cd.github.io/.eden/start.command --output start.command
curl https://a1cd.github.io/.eden/AutoUpdate.command --output AutoUpdate.command

curl https://a1cd.github.io/.eden/tetris.py --output tetris.py
cd
chmod a+x ".eden/start.command"
chmod a+x ".eden/AutoUpdate.command"
clear
exit
