source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

alias prod="AWS_PROFILE=prod TZ=UTC NODE_ENV=local ENVIRONMENT_NAME=production AWS_ACCOUNT_ID=143653229561 AWS_REGION=us-east-1"
alias dev="AWS_PROFILE=dev TZ=UTC NODE_ENV=local ENVIRONMENT_NAME=dev AWS_ACCOUNT_ID=564995691562 AWS_REGION=us-east-1"

alias awslogin='aws sso login --profile prod && yawsso'
alias ecrlogin='aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 143653229561.dkr.ecr.us-east-1.amazonaws.com'

export AWS_REGION='us-east-1'
export AWS_ACCOUNT_ID='143653229561'

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
