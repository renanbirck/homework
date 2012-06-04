function bitstreamnovo = pseudoternary(bitstream)
    
    len = length(bitstream);
    pol = 1; % atual polaridade do bit '0'
    pseudoternary = zeros([1,len])  - 999; % -999 = não passei aqui ainda

    for i = 1:len
        if bitstream(i) == 0
            pseudoternary(i) = pol;
            pol = -pol;
        else
            pseudoternary(i) = 0;
        end
    end
    
    bitstreamnovo = pseudoternary;
end
