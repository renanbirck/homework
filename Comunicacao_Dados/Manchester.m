function Manchester = Manchester(bitstream)
    
        zero = [1 -1]; % alto p/baixo
        um = [-1 1]; % baixo p/alto
        
        len = length(bitstream);
        
        Manchester = zeros([1,2*len]);
        
        for i = 1:len
            if bitstream(i) == 0
                Manchester(2*i-1) = zero(1);
                Manchester(2*i) = zero(2);
            else
                Manchester(2*i-1) = um(1);
                Manchester(2*i) = um(2);
            end
        end
        
        
end
