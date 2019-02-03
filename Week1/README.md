# Additional Week 1 Information

## Homework 1 Hints

There are 5 todos in the assignment. You need to write the appropriate bash to accomplish the indicated task.

Todo #1:
There is an if statement. Put the proper code in the if statement to make sure that the wget command exited successfully. How do you check the return value of the last command you ran in bash?

Make sure you space the command right. Some people emailed me because they had the command written all smushed together with no spaces . Every programming language has different syntax; Don't think that because a java 'if' lets you mush stuff together that bash will let you too. See the lecture notes for the if command syntax. https://github.com/melvyniandrag/Linux_Lecture_Notes/tree/master/Week2/bashCommands

Todo #2 :
The output of the `md5sum` command is piped to cut. Supply the proper flags/parameters to `cut` so that you get only the md5sum. `md5sum` returns both the sum and the file name.

Todo #3:
The purpose of the md5sum was to make sure that the downloaded file has the expected hash value! We are making sure it isn't a corrupt download/virus/whatever. How do you compare two md5sums? I showed you the bash comparison operators in class. Use the proper operator to test equality, bash has different operators for strings and integers.

Todo #4:
Pretty much the same thing as Todo #1

Todo #5:

To dump the contents of all the text files under a directory called "directory" you can run :

```
cat directory/*.txt"
```
If you pipe that to wc with the appropriate flag you can get the number of words in the dump. Consider that "wc" has a "-l" flag to tell you how many lines were passed to stdin. 

Here's a big fat hint:

```
cat directory/*.txt | wc -l
```

will list the number of lines in all the txt files. But for todo #5 we are after the number of words, so use the proper flag to wc.

## Reading materials, references
### VIM
Moving around: http://vim.wikia.com/wiki/Moving_around

Moving around some more: http://vim.wikia.com/wiki/All_the_right_moves
