!/bin/bash
echo "Please enter a word"
read WORD

LEN=${#WORD}
REVERSE=""

for((i=$LEN-1;i>-1;i--))
do
  LETTER=${WORD:i:1}
  REVERSE+=$LETTER
done

echo $REVERSE
if [ "$WORD" == "$REVERSE" ]
then
  echo "$WORD is a pallindrome"
else
  echo "$WORD is not a pallindrome"
fi

