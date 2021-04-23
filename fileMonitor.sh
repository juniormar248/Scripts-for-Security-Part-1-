#!/bin/bash

touch FileChanges.txt

inotifywait -m /var/log/ >> FileChanges.txt
