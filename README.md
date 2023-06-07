# Find-Replace for specific words
## Powershell script that finds specific words in a text file and replaces them in an MS word document<br>

### Target group<br>
- Editors and writers
  - Purpose: To replace commonly used phrases and words without needing to find and replace using MS Word's built-in function every time
  - Automated replacement of words in British English to American English is useful through this
  - Replacement of non-hyphenated words, use of en-dash or em-dash for certain commonly used phrases is possible through this

### About find.txt:
> A new phrase should be of the form: {old word(s)}:{new word(s)}
  > Note: There shouldn't be any space after the colon unless you want an extra space upon replacement
> All occurrences of the words will be replaced in the word doc

### Steps to follow before running findrep.exe:
1. Open findrep.ps1
2. Find the line
    '$words=Get-Content C:\Users\DELL\Desktop\find.txt'
   and replace the path with path to your find.txt
![image](https://github.com/Vaishnavi502/find-replace/assets/68768878/185451d8-e51e-4aab-8be9-0161915fa4f8)
