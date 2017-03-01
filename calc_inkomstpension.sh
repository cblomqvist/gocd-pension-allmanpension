inkomst=$(cat target/pensionsratter.txt)
res=$(echo "scale=0; (${inkomst} * 0.135) / 1" | bc -l)
echo ${res} > target/inkomstpension.txt
