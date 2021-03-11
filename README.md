#Game of Life: Mutations

DEMO/INSTRUCTIONAL VIDEO --> https://drive.google.com/file/d/1ZkOvhh_CE3PMfn_0S1EPfgQgRk9dCumX/view?usp=sharing
Group Members:
1. Miriam Arden
2. Isabel Riches
3. Matthew Murphy

This version of the game of life features a genetic mutation and shows how the mutation spreads through the population of cells over time, based on a variety of factors that the user can set.

Directions: 
The user can adjust various aspects in the mutations_game_of_life_colors function as desired. They can set the number of live normal cells (or have this be random) and the number of live mutated cells (or have this be random). Then, they can set the colors of the live normal cells, dead cells, and mutated cells. They can also set the mutation to be either dominant or recessive. Finally, they can set the prevalence of the mutation, i.e. the likelihood that a new cell is randomly born with the mutation. Then, run mutations_game_of_life_colors to play the game! A window with figure 1 should pop up, showing the cells die/be born/become mutated over time.

Rules:
- Live cells with fewer than 2 adjacent live neighbors die
- Live cells with 2-3 adjacent neighbors live on
- Live cells with more than 3 adjacent neighbors die
- Dead cells with 3 live neighbors become alive
  - Cells with at least 1 mutated neighbor (if the mutation is dominant) or at least 3 mutated neighbors (if the neighbor is recessive)       are mutated when they come alive
  - If x is the prevalence of the mutation, approximately x% of cells that are coming alive and do not meet the threshold for mutated         neighbors will still be mutated

I go through the code in more detail in the video. I also show what the game looks like with a variety of the different files manipulated.

