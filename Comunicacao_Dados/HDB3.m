function bitstreamnovo = HDB3(bitstream)

    len = length(bitstream);
    pol = 1; % atual polaridade do bit '0'
    primeira = 0; % demarcar se já foi a primeira sequência de zeros
    
    HDB3 = zeros([1,len]) - 999; % -999 = não passei aqui ainda

    
    % Começar fazendo a codificação AMI
        
    for i = 1:len
        if bitstream(i) == 0
            HDB3(i) = 0;
        else
            HDB3(i) = pol;
            pol = -pol; 
        end
    end
        
    len = length(HDB3);
    
    i = 1;
    while i<len-3
        if all(HDB3(i:i+3)==0)
           if primeira == 0 % primeiro conjunto de 4 zeros
            HDB3(i+3) = pol; % violação
            pol = -pol;
            HDB3(i+4) = pol; % balanceamento
            primeira = 1;
            %i = i+1;
           else
               HDB3(i) = pol;
               pol = -pol;
               HDB3(i+3) = pol;
           end
           i = i+3;
        else
           i = i+1;
        end
        
    end
    
    bitstreamnovo = HDB3;
end