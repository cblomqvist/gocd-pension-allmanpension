set -e
source ./fordelning.sh
inkomst=$(cat target/pensionsratter.txt)
res=$(echo "scale=0; (${inkomst} * ${PREMIEPENSION}) / 1" | bc -l)
echo ${res} > target/premiepension.txt
