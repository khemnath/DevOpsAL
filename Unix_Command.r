MAILX:
-- Method 1 :  Sending Mail using uuencode.
  $ uuencode [path/to/file] [name_of_attachment] | mailx -s "Subject" user@domain.com

-- Method 2 : -a switch in mailx command.
  Use the new attachment switch (-a) in mailx to send attachments with the mail. The -a options is easier to use that the uuencode command.
  $ mailx -a file.txt -s "Subject" user@domain.com

 -- While using send in a script:
  
 # AWK
 
 # Print line 1 and line 6 from file - TestFile.txt
 $awk '{print $1, $6}'
 
 # Delete empty Line
 -- NF : number of fields.
 $awk 'NF>1{print}' TestFile.txt
 
 # Number each line
 -- FNR: File line number.
 -- $0 denotes all fileds
 $awk '{print FNR $0}' testFile.txt
 
 # count Lines ( similar to wc -l)
 -- NR: Line number (No of records).
 $ awk 'END {print NR}' TestFile.
 
 #Print last field of each line.
 $ awk '{print $NF}' TestFile.txt
 
 #Print the last field of last line
 $ awk 'END {print $NF}' TestFile.txt
 
 #Print every line, where the value of the 6th field is more tham 50
 awk '$6 >50 {print}' TestFile.txt
 
 
 
 
 
 