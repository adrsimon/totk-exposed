echo "Pulling datas from zeldamaps API..."

cd "$(dirname "$0")/.." || exit

if [ ! -d "datas" ]; then
  echo "Creating datas directory"
  mkdir datas
fi
cd datas || exit

curl -X GET "https://zeldamaps.com/ajax.php?command=get_categories&game=21" -o raw_categories.json
echo "Categories pulled"
curl -X GET "https://zeldamaps.com/ajax.php?command=get_markers&game=21" -o raw_markers.json
echo "Markers pulled"

echo "Pulling done."
