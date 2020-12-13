find *.jpg *.JPG > loop.txt
while IFS= read -r line; do
	image1=$(find /Volumes/Data/francois2020 -name "$line")
	rsync -a --progress --ignore-existing -r "$image1" ./test
done < loop.txt