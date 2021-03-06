function [new_gen] = check_neighbors(current_gen)

new_gen = zeros(100); %new_gen matrix is initialized as a 100x100 matrix of zeros. Based on the rules we outline below, some of these dead cells (zeros) will become alive (ones)
for m = 2:99 %for rows 2 through 99
	for n = 2:99 %for columns 2 through 99
        neighbors = 0; %initialize the number of neighbors
	
	%This section counts the number of live neighbors that cell (m,n) has
		if current_gen(m-1,n-1) == 1 %If the cell to the left and below cell (m,n) is alive, we count it as one neighbor
            		neighbors = neighbors+1;
        	end
	
		if current_gen(m-1,n) == 1 %If the cell directly to the left of the cell (m,n) is alive, we count it as one neighbor
			neighbors = neighbors+1;
		end
	
		if current_gen(m-1,n+1) == 1 %If the cell to the left and above cell (m,n) is alive, we count it as one neighbor
   			neighbors = neighbors+1;
		end
	
		if current_gen(m,n-1) == 1 %If the cell directly below cell (m,n) is alive, we count it as one neighbor
			neighbors = neighbors+1;
		end
	
		if current_gen(m,n+1) == 1 %If the cell directly above cell (m,n) is alive, we count it as one neighbor
			neighbors = neighbors+1;
		end
	
		if current_gen(m+1,n-1) == 1 %If the cell to the right and below cell (m,n) is alive, we count it as one neighbor
			neighbors = neighbors+1;
		end
	
		if current_gen(m+1,n) == 1 %If the cell directly to the right of cell (m,n) is alive, we count it as one neighbor
			neighbors = neighbors+1;
		end
		
		if current_gen(m+1,n+1) == 1 %If the cell to the right of and above cell (m,n) is alive, we count it as one neighbor
           		neighbors = neighbors+1;
        	end
        
       		%The section determine if cells should live or die based on the number of neighbors they have.
        	if current_gen(m,n) == 1 
			if (neighbors < 2 || neighbors >3) 
                		new_gen(m,n) = 0; %If cell (m,n) is alive and it has less than two or more than three neighbors, then it dies.
            		end
            
            		if (neighbors == 2 || neighbors == 3)
                		new_gen(m,n) = 1; %If cell (m,n) is alive and it has exactly 2 or 3 neighbors, then it lives.
            		end 
        	elseif current_gen(m,n) == 0
            		if neighbors == 3
                		new_gen(m,n) = 1; %If cell (m,n) is dead and it has exactly 3 neighbors, then it becomes alive.
            		else
                		new_gen(m,n) = 0; %If cell (m,n) is dead and it has less than 3 or more than 3 neighbors, then it stays dead.
            		end
            
        	end
    end
end

show_stuff(new_gen);
colormap gray %Game of Life will display in black & white, cells will have no color.
axis off
end

