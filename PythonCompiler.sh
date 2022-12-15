#! /usr/bin/bash

# create results.txt
touch results.txt

#Create a new Python file
echo "create a new file, type your filename:"
read newfilename
echo "Congratulations, you have created a new python file!"

#!/usr/bin/env python in the first line of file
echo "#!/usr/bin/env python" | cat >> $newfilename
chmod +x ./$newfilename

echo "Would you like to compile your pogram:?"
read case

if [ "$case" = "yes" ];
then
echo "compiling $newfilename... "
sleep 1
elif [ "$case" = "no" ];
then
echo "end"
fi

#if the file is compiled, the result of programm will overwrite in the results.txt
if python $newfilename; then
 ./$newfilename | cat >> results.txt
fi



