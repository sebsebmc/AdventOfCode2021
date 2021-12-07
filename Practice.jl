
using DelimitedFiles
using Printf

numbers = readdlm("../2020/1.txt")

println(length(numbers))

for n1 in numbers
    for n2 in numbers
        if n1+n2 == 2020
            @printf "%i\n" (n1*n2)
            return
        end
    end
end

l = length(numbers)
for i in 1:l
    n1 = numbers[i]
    for j in i+1:l
        n2 = numbers[j]
        if n1+n2 >= 2020
            continue
        end
        for k in j+1:l
            n3 = numbers[k]
            if n1 + n2 + n3 == 2020
                @printf "%i\n" (n1*n2*n3)
                return
            end
        end
    end
end
