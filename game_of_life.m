function [] = game_of_life()
initial_gen = randi([0,1],100)  %creates an initial generation matrix of random 0’s and 1’s

while true
    check_neighbors(initial_gen);
    imagesc(initial_gen);
end

end

