ENV=$1

# RC_FILE="~/.bashrc"

# if [ "$ENV" = "zsh" ]; then
RC_FILE=~/.zshrc
# fi

cat ./code.sh >> ~/.zshrc
echo "\n" >> ~/.zshrc
cat ./k8s.sh >> ~/.zshrc
echo "\n" >> ~/.zshrc
cat ./git.sh >> ~/.zshrc
echo "\n" >> ~/.zshrc
source ~/.zshrc