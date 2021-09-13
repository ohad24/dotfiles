#!/bin/bash

# * https://unix.stackexchange.com/questions/481939/how-to-export-a-gpg-private-key-and-public-key-to-a-file

# public
gpg --output ohad24.gmail.public.pgp --armor --export ohad24@gmail.com

# secret
gpg --output ohad24.gmail.private.pgp --armor --export-secret-key ohad24@gmail.com
