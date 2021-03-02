function [new_gen] = check_neighbors(current_gen)

new_gen = zeros(100);
neighbors = 0;
for m = 2:99 %for rows 1 through 100
	for n = 2:99 %for columns 1 through 100
		if current_gen(m,n) == 1
			alive = 1; %If a coordinate is a live cell, the variable “alive” is true
       		else %if the coordinate is a dead cell
			alive = 0; %If a coordinate is a dead cell, the variable “dead” is true
       	 	end


		if current_gen(m-1,n-1) == 1
			neighbors = neighbors+1;
		end
	
		if current_gen(m-1,n) == 1
			neighbors = neighbors+1;
		end
	
		if current_gen(m-1,n+1) == 1
   			neighbors = neighbors+1;
		end
	
		if current_gen(m,n-1) == 1
			neighbors = neighbors+1;
		end
	
		if current_gen(m,n+1) == 1
			neighbors = neighbors+1;
		end
	
		if current_gen(m+1,n-1) == 1
			neighbors = neighbors+1;
		end
	
		if current_gen(m+1,n) == 1
			neighbors = neighbors+1;
		end
	
		if current_gen(m+1,n+1) == 1
   			neighbors = neighbors+1;
		end


		if alive == 1 && (neighbors < 2 || neighbors >3)
			new_gen(m,n) = 0;
		end
		if alive == 1 && (neighbors == 2 || neighbors == 3)
   			new_gen(m,n) = 1;
		end
	
		if alive == 0 && neighbors == 3
			new_gen(m,n) = 1;
		end


	end
end

disp(initial_gen)

end
