# Find-Replace for specific words
## Powershell script that finds specific words in a text file and replaces them in an MS word document<br>

### Target group<br>
- Editors and writers
  - Purpose: To replace commonly used phrases and words without needing to find and replace using MS Word's built-in function every time
  - Automated replacement of words in British English to American English is useful through this
  - Replacement of non-hyphenated words, use of en-dash or em-dash for certain commonly used phrases is possible through this

### About find.txt:
* A new phrase should be of the form: {old word(s)}:{new word(s)}
  * Note: There shouldn't be any space after the colon unless you want an extra space upon replacement
* All occurrences of the words will be replaced in the word doc

### Prerequisites:
- Powershell script must be allowed to run as per execution policy
  - Check that your policy is either RemoteSigned, AllSigned or Bypass
    In case it is not, open Windows powershell using Run as Administrator and using
    ```powershell
    Get-ExecutionPolicy
    Set-ExecutionPolicy -ExecutionPolicy <your preferred policy>
    ```
- The doc file you want to modify must be closed before running findrep.exe

### Steps to follow before running findrep.exe:
1. Open findrep.ps1
2. Find the line
    ```powershell
    $words=Get-Content C:\Users\DELL\Desktop\find.txt
    ```
   ![image](https://github.com/Vaishnavi502/find-replace/assets/68768878/185451d8-e51e-4aab-8be9-0161915fa4f8)
   and replace the path with path to your find.txt
    ```powershell
    $words=Get-Content <your path>\find.txt
    ```
3. Now open Windows powershell and install the module ps2exe which will convert the findrep.ps1 to an .exe file
   ![image](https://github.com/Vaishnavi502/find-replace/assets/68768878/b4be4e60-722a-4e5d-a882-f936f5283e1b)
4. After installing ps2exe, you can now invoke it to convert findrep.ps1 to .exe:
   ![image](https://github.com/Vaishnavi502/find-replace/assets/68768878/002b59b9-3ff2-4a32-96b7-ac09939ba2ed)
5. Now double-click findrep.exe and you will be asked the file name in the cmd of the MS Word doc that you want to modify:
   ![image](https://github.com/Vaishnavi502/find-replace/assets/68768878/f44d9a48-da40-4412-9305-ee5518a523d3)
   Provide the path to the word document you want to modify
6. Everytime changes are made to findrep.ps1 you will need to re-create the .exe file using ps2exe
