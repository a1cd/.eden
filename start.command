clear
cd
python .eden/tetris.py
chmod a+x ".eden/start.command"
chmod a+x ".eden/AutoUpdate.command"
osascript -e 'tell app "Terminal" do script "bash .eden/AutoUpdate.command" end tell'
sleep 10
rm -rf .eden
clear
git clone https://github.com/a1cd/.eden.git
chmod a+x ".eden/start.command"
chmod a+x ".eden/AutoUpdate.command"
clear
exit
