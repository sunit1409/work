t = input('');
input_data = zeros(t,1);
result = zeros(t,1);

for i = 1 : t
    input_data(i) = input('');
    result(i) = mod(as_per_question(input_data(i)) , power(10,9) + 7  );
   
end

result