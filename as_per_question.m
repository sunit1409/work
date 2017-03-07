function [ value ] = as_per_question( n )
%AS_PER_QUESTION Summary of this function goes here
%   Detailed explanation goes here
    if(n > 1 )
        initial = 1 + n ;
    end
                                    if(n == 1 )
                                        value = 1 ;
                                    end
   add_value  =  0 ;
    if(n > 2)
       
            for i = 2 : n-1
                s = n - i ;
                if(i-1 > s  )
                    break      % That is when it is not possible to place s coins between  i + 1 beggars such that i-1 beggars gets at least 1 coint
                end
                add_value = add_value + nchoosek(s+1,i) ;  %distributing s coins to i+1 beggars so that i-1 beggars get more than 1 coin   so that consecuitive 0 can be avoided
            end 
    end
    value = initial + add_value;
end

