def combine_anagrams(array_palavras)
    anagramas = {}
    array_palavras.each do |palavra|
      ordena_palavra = palavra.downcase.chars.sort.join
      if anagramas.has_key?(ordena_palavra)
        anagramas[ordena_palavra] << palavra
      else
        anagramas[ordena_palavra ] = [palavra]
      end
    end
    puts anagramas.values.inspect
  end
