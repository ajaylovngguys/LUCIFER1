if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ajaylovngguys/LUCIFER1.git /LUCIFER1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LUCIFER1
fi
cd /LUCIFER1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
