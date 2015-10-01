# Create a program to analyze a large block of text 
# and report back on the frequency of each word within
# the text

print "Enter some text here!"
Entry = gets
#Create an array called 'words' and store each word once.
words=Entry.split 

#Create a Hash to store each word and its count 
Wordcount={}

#Check to see if the Hash has a Key that matches each word. If it doesn't, add it and set equal to "1". If it does, add "1" to its current Value.
words.each do |i|

if Wordcount.has_key?(i)
	NewWordCount=(Wordcount[i]+1)
	Wordcount[i]=NewWordCount
else
	Wordcount[i]=1
end
end
#Find the number value of the maximum word, store it in MaxCount
MaxCount=Wordcount.values.max

#Switch Keys to Values and vice versa, allowed me to call a word by its count

Countword=Wordcount.invert

puts "The most used word in this block of text is '#{Countword[MaxCount]}', having been used #{MaxCount} times"
