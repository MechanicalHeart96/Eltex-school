echo "Введите место расположения папок"
read dirpath
echo "Введите количество папок"
read dirnum
echo "Введите количество подпапок"
read subdirnum
echo "Введите шаблон имени папок"
read dirname
for (( i = 0; i < dirnum; i++))
do
mkdir $dirpath/$dirname$i
	for (( j = 0; j < subdirnum; j++))
	do
	mkdir $dirpath/$dirname$i/$dirname$i$j
		for (( k = 0; k < 20; k++ ))
		do
		touch $dirpath/$dirname$i/$dirname$i$j/$k.txt
		done
	done
done	
