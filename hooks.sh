#!/bin/bash

if ! cd .git/hooks
then
echo "Task failed! Are you sure you are in the project root directory?"
exit
fi

if ! echo $'#!/bin/sh\ngrunt jshint' > pre-commit
then echo "Task failed! You might need to run this as admin"
exit
fi

if ! chmod +x pre-commit
then echo "Task failed!You might need to run this as admin"
exit
fi

if ! echo $'#!/bin/sh\ngrunt test' > pre-push
then echo "Task failed! You might need to run this as admin"
exit
fi

if ! chmod +x pre-push
then echo "You might need to run this as admin"
exit
fi

echo "Sucsess! Git hooks added."