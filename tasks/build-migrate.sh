[ '$(basename "$PWD")' != 'code' ] && cd code
npm run build-migrate
date +"%T"
