#! /bin/sh
PURPLE='\033[1;35m'
GREEN='\033[1;36m'
NC='\033[0m' # No Color

make clean
make
clear

echo "\n${PURPLE}Part 1${NC}"
echo "${GREEN}Test the database by inserting, closing and reading:${NC}"
echo "./test"
./test

echo "\n${PURPLE}Part 2${NC}"
echo "${GREEN}Score a book given its title${NC}"
echo "./score "Tres Novelas Ejemplares" 100"
./score "Tres Novelas Ejemplares" 100
echo "./score "The Life of Lope de Vega 1562-1635" 31"
./score "The Life of Lope de Vega 1562-1635" 31


echo "\n${GREEN}Get all the books with an score${NC}"
echo "./suggest 100"
./suggest 100
echo "\n./suggest 31"
./suggest 31
#This should not return anything
echo "\n./suggest 70"
./suggest 70

echo "\n${PURPLE}Part 3${NC}"
echo "${GREEN}Score a book given its title and set up an index for the table on the score field${NC}"
echo "./score_index "Tres Novelas Ejemplares" 100"
./score_index "Tres Novelas Ejemplares" 100
echo "\n./score_index "The Life of Lope de Vega 1562-1635" 31"
./score_index "The Life of Lope de Vega 1562-1635" 31

echo "\n${GREEN}Get all the books with an score using the previously created index${NC}"
echo "./suggest_index 100"
./suggest_index 100
echo "\n./suggest_index 31"
./suggest_index 31

#This should not return anything
echo "\n${GREEN}This should not return anything${NC}"
echo "\n./suggest_index 70"
./suggest_index 70


echo "\n${PURPLE}To test the optional part, just go to the other folder${NC}"
