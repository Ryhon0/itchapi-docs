#!/bin/bash

mkdir -p _site
cd _site
python3 -m http.server --bind 127.0.0.1 9000 &
xdg-open http://127.0.0.1:9000/

cd ..
while true;
do
	docfx docfx.json
	inotifywait -r -e modify -e create -e delete -e moved_to --exclude _site/ --exclude obj/ .
done