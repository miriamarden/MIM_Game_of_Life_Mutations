#Game of Life: Mutations

DEMO/INSTRUCTIONAL VIDEO --> https://drive.google.com/file/d/1ZkOvhh_CE3PMfn_0S1EPfgQgRk9dCumX/view?usp=sharing
1. Miriam Arden
2. Isabel Riches
3. Matthew Murphy

Directions: 
Adjust the user inputs in the mutations_game_of_life_colors function as desired (number of initial live normal cells, number of initial live mutated cells, colors of the cells, dominant vs. recessive mutation, and prevalence of the mutation). Then, run mutations_game_of_life_colors to play the game! A window with figure 1 should pop up. 

Rules:
- Live cells with fewer than 2 adjacent live neighbors die
- Live cells with 2-3 adjacent neighbors live on
- Live cells with more than 3 adjacent neighbors die
- Dead cells with 3 live neighbors become alive
  - Cells with at least 1 mutated neighbor (if the mutation is dominant) or at least 3 mutated neighbors (if the neighbor is recessive)       are mutated when they come alive
  - If x is the prevalence of the mutation, approximately x% of cells that are coming alive and do not meet the threshold for mutated         neighbors will still be mutated
