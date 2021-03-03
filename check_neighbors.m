function [new_gen] = check_neighbors(current_gen)

new_gen = zeros(100);
for m = 2:99 %for rows 1 through 100
	for n = 2:99 %for columns 1 through 100
        neighbors = 0;
	%count number of neighbors%
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
        
       		%determine if cells should live or die
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


%top left corner
%count number of neighbors%
if current_gen(1,2) == 1
    neighbors = neighbors+1;
end
if current_gen(2,1) == 1
    neighbors = neighbors+1;
end
if current_gen(2,2) == 1
    neighbors = neighbors+1;
end

%determine if cells should live or die
if current_gen(1,1) == 1
    if neighbors < 2 || neighbors > 3
        new_gen(1,1) = 0;
    end
    if neighbors == 2 || neighbors == 3
        new_gen(1,1) = 1;
    end
elseif current_gen(1,1) == 0
    if neighbors == 3
        new_gen(1,1) = 1;
    else
        new_gen(1,1) = 0;
    end
end
   


%top right corner
%count number of neighbors%
if current_gen(1,99) == 1
    neighbors = neighbors+1;
end
if current_gen(2,99) == 1
    neighbors = neighbors+1;
end
if current_gen(2,100) == 1
    neighbors = neighbors+1;
end

%determine if cells should live or die
if current_gen(1,100) == 1
    if neighbors < 2 || neighbors > 3
        new_gen(1,100) = 0;
    end
    if neighbors == 2 || neighbors == 3
        new_gen(1,100) = 1;
    end
elseif current_gen(1,100) == 0
    if neighbors == 3
        new_gen(1,100) = 1;
    else
        new_gen(1,100) = 0;
    end
end

%bottom left corner
%count number of neighbors%
if current_gen(99,1) == 1
    neighbors = neighbors+1;
end
if current_gen(99,2) == 1
    neighbors = neighbors+1;
end
if current_gen(100,2) == 1
    neighbors = neighbors+1;
end

%determine if cells should live or die
if current_gen(100,1) == 1
    if neighbors < 2 || neighbors > 3
        new_gen(100,1) = 0;
    end
    if neighbors == 2 || neighbors == 3
        new_gen(100,1) = 1;
    end
elseif current_gen(100,1) == 0
    if neighbors == 3
        new_gen(100,1) = 1;
    else
        new_gen(100,1) = 0;
    end
end

%bottom right corner
%count number of neighbors%
if current_gen(99,100) == 1
    neighbors = neighbors+1;
end
if current_gen(99,99) == 1
    neighbors = neighbors+1;
end
if current_gen(100,99) == 1
    neighbors = neighbors+1;
end

%determine if cells should live or die
if current_gen(100,100) == 1
    if neighbors < 2 || neighbors > 3
        new_gen(100,100) = 0;
    end
    if neighbors == 2 || neighbors == 3
        new_gen(100,100) = 1;
    end
elseif current_gen(1,1) == 0
    if neighbors == 3
        new_gen(100,100) = 1;
    else
        new_gen(100,100) = 0;
    end
end

%top 
%count number of neighbors%
for n = 2:99
    if current_gen(1,n+1) == 1
        neighbors = neighbors+1;
    end
    if current_gen(1,n-1) == 1
        neighbors = neighbors+1;
    end
    if current_gen(2,n) == 1
        neighbors = neighbors+1;
    end
    if current_gen(2,n+1) == 1
        neighbors = neighbors+1;
    end
    if current_gen(2,n-1) == 1
        neighbors = neighbors+1;
    end
    
    %determine if cells should live or die
    if current_gen(1,n) == 1
    if neighbors < 2 || neighbors > 3
        new_gen(1,n) = 0;
    end
    if neighbors == 2 || neighbors == 3
        new_gen(1,n) = 1;
    end
    elseif current_gen(1,n) == 0
    if neighbors == 3
        new_gen(1,n) = 1;
    else
        new_gen(1,n) = 0;
    end
    end
end

%bottom
%count number of neighbors%
for n = 2:99
    if current_gen(100,n+1) == 1
        neighbors = neighbors+1;
    end
    if current_gen(100,n-1) == 1
        neighbors = neighbors+1;
    end
    if current_gen(99,n) == 1
        neighbors = neighbors+1;
    end
    if current_gen(99,n+1) == 1
        neighbors = neighbors+1;
    end
    if current_gen(99,n-1) == 1
        neighbors = neighbors+1;
    end
    
    %determine if cells should live or die
    if current_gen(100,n) == 1
    if neighbors < 2 || neighbors > 3
        new_gen(100,n) = 0;
    end
    if neighbors == 2 || neighbors == 3
        new_gen(100,n) = 1;
    end
elseif current_gen(100,n) == 0
    if neighbors == 3
        new_gen(100,n) = 1;
    else
        new_gen(100,n) = 0;
    end
    end
end

%left
%count number of neighbors%
for m = 2:99
    if current_gen(m+1,1) == 1
        neighbors = neighbors+1;
    end
    if current_gen(m-1,1) == 1
        neighbors = neighbors+1;
    end
    if current_gen(m,2) == 1
        neighbors = neighbors+1;
    end
    if current_gen(m+1,2) == 1
        neighbors = neighbors+1;
    end
    if current_gen(m-1,2) == 1
        neighbors = neighbors+1;
    end
    
    %determine if cells should live or die
    if current_gen(m,1) == 1
    if neighbors < 2 || neighbors > 3
        new_gen(m,1) = 0;
    end
    if neighbors == 2 || neighbors == 3
        new_gen(m,1) = 1;
    end
elseif current_gen(m,1) == 0
    if neighbors == 3
        new_gen(m,1) = 1;
    else
        new_gen(m,1) = 0;
    end
    end
end
    

%right
%count number of neighbors%
for m = 2:99
    if current_gen(m+1,100) == 1
        neighbors = neighbors+1;
    end
    if current_gen(m-1,100) == 1
        neighbors = neighbors+1;
    end
    if current_gen(m,99) == 1
        neighbors = neighbors+1;
    end
    if current_gen(m+1,99) == 1
        neighbors = neighbors+1;
    end
    if current_gen(m-1,99) == 1
        neighbors = neighbors+1;
    end
    
    %determine if cells should live or die
    if current_gen(m,100) == 1
    if neighbors < 2 || neighbors > 3
        new_gen(m,100) = 0;
    end
    if neighbors == 2 || neighbors == 3
        new_gen(m,100) = 1;
    end
elseif current_gen(m,100) == 0
    if neighbors == 3
        new_gen(m,100) = 1;
    else
        new_gen(m,100) = 0;
    end
    end
end
