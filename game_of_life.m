function [] = game_of_life()
current_gen = randi([0,1],100)  %creates an initial generation matrix of random 0’s and 1’s

colormap gray

while true
    [new_gen] = check_neighbors(current_gen);
    imagesc(new_gen);
end

end

