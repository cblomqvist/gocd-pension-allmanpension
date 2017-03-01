source fordelning.sh
inkomst=$(cat target/pensionsratter.txt)
res=$(echo "scale=0; (${inkomst} * ${INKOMSTPENSION}) / 1" | bc -l)
echo ${res} > target/inkomstpension.txt

