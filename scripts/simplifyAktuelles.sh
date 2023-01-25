#reads aktuelles data and strips it from everything except the title and the date and creates a new file with the stripped data called aktuellesStripped.json
#to run this script install apt-get install -y jq

#read the aktuelles.json file
echo "[" > dynamicData/aktuelles/aktuellesStripped.json
cat dynamicData/aktuelles/aktuelles.json | jq -r '.[] | {title: .title, date: .date}' | awk '{gsub(/}$/, "},")}; {print}' >> dynamicData/aktuelles/aktuellesStripped.json
#replace last line of aktuellesStripped.json with a closing bracket
sed -i '$ s/.$/]/' dynamicData/aktuelles/aktuellesStripped.json