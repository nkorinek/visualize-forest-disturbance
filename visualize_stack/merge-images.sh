#! /bin/bash
echo "Enter the first file name:"
read file1
echo "Enter the second file name:"
read file2
echo "Enter the third file name:"
read file3
echo "Enter the fourth file name:"
read file4
echo "Enter the output file name:"
read finalfile

if [ -z "$file4" ]; then
  convert $file1 $file2 $file3 +append $finalfile
else
    convert $file1 $file2 +append tempfile1.png
    convert $file3 $file4 +append tempfile2.png
    convert tempfile1.png tempfile2.png -append $finalfile
    rm tempfile1.png
    rm tempfile2.png
fi

echo "File output to: " $finalfile