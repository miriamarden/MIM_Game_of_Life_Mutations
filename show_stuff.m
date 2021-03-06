function [] = show_stuff(new_gen)
imagesc(new_gen);
colormap gray %Game of Life will display in black & white, cells will have no color.
axis off
drawnow %updates the figure and displays game output.
end
