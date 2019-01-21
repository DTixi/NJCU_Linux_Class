#!/bin/bash
#
# ASSIGNMENT ONE:
#
# This script downloads a zip file with wget.
# Then makes sure that the download was successful
# Then verifies the integrity of the zipFile
# Then unzips the file
# Then makes sure the unzip was successful
# Then deletes the zipFile, as the unzipped contents have been extracted
# Then counts the cumulative number of words in all the 
#   .txt files in the unzipped directory.
# Then reports back the number of words found.
#
# You need to fill in the blanks I've left.
#
expectedSum=213b8d4956b9243af7d13d0f2a8ef8d3
zipURL=https://github.com/melvyniandrag/lorem/archive/master.zip
zipName=master.zip
unzippedName=lorem-master

wget $zipURL
# TODO1: verify that the return value of wget was 0.
# This indicates that wget successfully got the data at $zipURL
if [ TODO_ADD_CONDITION_CHECKING_RETVAL_OF_wget ]
then
    echo "Error downloading file"
    exit 1;
fi

# TODO2 : pipe "md5sum $zipName" to cut. 
# Pass the proper parameters to cut so that just the md5sum is extracted from the output.
# ( If you run "md5sum Filename" you will see it returns more than just the md5sum )
# Side Note: notice that the output of 'md5sum' is 'piped' to 'cut'. This chaining of
# calls is standard practice in bash scripting.
computedSum=$(md5sum $zipName | cut TODO_EDIT_THE_ARGUMENTS_PASSED_TO_cut )

# TODO3 : check if the $expectedSum and $computedSum are not equal.
# Notice that expectedSum and computedSum are not numeric, they are strings. 
# i.e. notice that there are letters in expectedSum. You must use string comparisons.
if [ TODO_CHECK_IF_SUMS_ARENT_EQUAL ]
then
    echo "Bad md5sum found"
    exit 1;
fi

unzip $zipName
# TODO4 : Verify that the return code of unzip was 0.
if [ TODO_VERIFY_RETVAL_OF_UNZIP ]
then
    echo "Unable to unzip"
    exit 1;
fi
rm $zipName

#
# TODO5 : Use 'cat' and 'wc' to count the number of words
# in ALL the .txt files under $unzippedName. Store the output
# in the variable wordCount. Hint: use a pipe.
wordCount=$( TODO_USE_CAT_AND_WC_TO_COUNT_WORDS )
echo "Found $wordCount many words."
