function bitstreamnovo = B8ZS(bitstream)
    
    len = length(bitstream);
    pol = 1; % atual polaridade do bit '0'
        
    B8ZS = zeros([1,len]) - 999; % -999 = não passei aqui ainda

    i = 1;
    while i <= len
        
        fprintf('%d\n',bitstream(i))
        if i <= len-7 && all(bitstream(i:i+7) == 0) % bloco de zeros
            fprintf('bloco de 8 zeros de %d a %d\n',i,i+7)
            B8ZS(i) = 0;
            B8ZS(i+1) = 0;
            B8ZS(i+2) = 0;
            if B8ZS(i-1) == 1 % o último bit foi positivo
                B8ZS(i+3) = 1;
                B8ZS(i+4) = -1;
                B8ZS(i+5) = 0;
                B8ZS(i+6) = -1;
                B8ZS(i+7) = 1;
            else
                B8ZS(i+3) = -1;
                B8ZS(i+4) = 1;
                B8ZS(i+5) = 0;
                B8ZS(i+6) = 1;
                B8ZS(i+7) = -1;
            end
            
            i = i+8;
        else
            if bitstream(i) == 0
                B8ZS(i) = 0;
                i = i+1;      
            else
                B8ZS(i) = pol;
                pol = -pol; 
                i = i+1;      
            
        end
        
       
        
    end
    
    
    
    bitstreamnovo = B8ZS;
end
