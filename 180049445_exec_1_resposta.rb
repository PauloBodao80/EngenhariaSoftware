def palindrome?(string)
    string.gsub(/[áàâäã]/i, 'a')
    string.gsub(/[éèêë]/i, 'e')
    string.gsub(/[íìîï]/i, 'i')
    string.gsub(/[óòôöõ]/i, 'o')    
    string.gsub(/[úùûü]/i, 'u')
    string.gsub(/[ç]/i, 'c')
    frase = string.gsub(/\W+/, '').downcase
    palavras = string.gsub(/\W+/, '').downcase.split
    palavras_inversas = string.gsub(/\W+/, '').reverse.downcase.split
    # retornar o teste
    puts frase == frase.reverse || palavras == palavras_inversas
end

def count_words(string) 
    string.gsub(/[áàâäã]/i, 'a')
    string.gsub(/[éèêë]/i, 'e')
    string.gsub(/[íìîï]/i, 'i')
    string.gsub(/[óòôöõ]/i, 'o')
    string.gsub(/[úùûü]/i, 'u')
    string.gsub(/[ç]/i, 'c')
    string.gsub(/\W+/, '').downcase
    qtd_palavras = Hash.new(0)
    string.downcase.scan(/\b\w+\b/).each do |palavra|
        qtd_palavras[palavra] += 1 
    end
    puts qtd_palavras
end 


  


