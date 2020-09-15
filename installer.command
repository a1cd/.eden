cd
mkdir .eden
cd .eden
curl https://a1cd.github.io/.eden/start.command --output start.command
chmod a+x start.command

curl https://a1cd.github.io/.eden/tetris.py --output tetris.py

bash start.command
