# Devenv
Containerized dev environment

Docker container contains shell, vim, envs and styles

Edits containers running Node, etc. for projects

# Installing
To install the image, run the following:

docker build -t devenv:latest .

# Running
To run the image and enter the shell:

doker run -it devenv:latest

You will now be in the shell with custom zsh, vim, etc installed

To run with local dir mapped:

docker run -it  --mount src="$(pwd)/ext",target=/root/ext,type=bind devenv:latest

Where src is directory on home, target is within container. Depending on dir name, may need to be surrounded in quotes. Shell commands with '$()' can be used.

Better way to do this is with docker compose, not viable yet. 

# todo:
 - [] custom scripts from various bin files
 - [] open project dirs by git cloning, local files will be saved in current dir
 - [] add script to git push back, and clean up project dir

This would work something like this, clone a repo, use container to edit and run tests. When project is no longer needed, will automatically push back any last changes and delete dir
