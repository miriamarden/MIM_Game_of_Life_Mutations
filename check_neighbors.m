function [new_gen] = check_neighbors(current_gen)

new_gen = zeros(100);
for m = 2:99 %for rows 1 through 100
	for n = 2:99 %for columns 1 through 100
        neighbors = 0;
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
        
       
        if current_gen(m,n) == 1
            if (neighbors < 2 || neighbors >3)
                new_gen(m,n) = 0;
            end
            
            if (neighbors == 2 || neighbors == 3)
                new_gen(m,n) = 1;
            end 
        elseif current_gen(m,n) == 0
            
            if neighbors == 3
                new_gen(m,n) = 1;
            else
                new_gen(m,n) = 0;
            end
            
        end
    end
end

show_stuff(new_gen);
colormap gray
axis off
end
