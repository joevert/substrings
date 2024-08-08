# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

#pegar a palavra, transformar tanto ela quanto as palavras do dicionario em case unsensitive. iterar sobre cada item da array.
#metodo para verificar se algum item da array esta contido na palavra
#caso esteja, pegar o item da array, coloca-lo como uma chave de uma nova array e adicionar +1 para cada vez que ele foi localizado.

def substrings(word, dictionary)
  substrings = Hash.new(0)

  word = word.downcase.split(' ')


  dictionary.each do |value|
    value = value.downcase
    word.each do |word|
      if word.include?(value)        
        substrings[value] += 1
      end
    end
  end
  substrings
end    




# a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

word = "Howdy partner, sit down! How's it going?"

puts substrings(word, dictionary)