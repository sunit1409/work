t = input('');
input_data = zeros(t,1);
result = zeros(t,1);

for i = 1 : t
    input_data(i) = input('');
    if((input_data(i)>=1 ) && (input_data(i) <=12))
        result(i) = mod(as_per_question(input_data(i)) , power(10,9) + 7  );
 
    else
        result(i) = fast_exp(377/233 ,input_data(i)-11 , power(10,9) + 7) * 233;
        result(i) = ceil(result(i));
    end
end

result
