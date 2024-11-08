class WrongNumberOfPlayersError < StandardError ; end 
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game) 
    raise WrongNumberOfPlayersError, "Mínimo de 2 jogadores " unless game.length == 2
    raise NoSuchStrategyError unless ["R", "P", "S"].include?(game[0][1].upcase) && ["R", "P", "S"].include?(game[1][1].upcase)
    if game[0][1].upcase == game[1][1].upcase
        puts game[0].inspect
    elsif (game[0][1].upcase == "R" && game[1][1].upcase == "S") || (game[0][1].upcase == "S" && game[1][1].upcase == "P") || (game[0][1].upcase == "P" && game[1][1].upcase == "R")
        puts game[0].inspect
    else
        puts game[1].inspect
    end
end
game = [["Kristen", "s"], ["Pam", "p"]]
rps_game_winner(game)

def rps_tournament_winner(tournament)
    tamanho = tournament.length
    if tournament[0][0].is_a?(String)
      return rps_game_winner(tournament)
    else
      left_winner = rps_tournament_winner(tournament[0])
      right_winner = rps_tournament_winner(tournament[1])
      return rps_game_winner([left_winner, right_winner])
    end
end