set positional-arguments

setup:
    git init
    npm install

fmt *args="":
    npm run format -- "$@"

preview:
    npm run preview

dry-bump:
    cz bump --check-consistency --dry-run

bump: dry-bump
    cz bump
    git push
    git push --tag
