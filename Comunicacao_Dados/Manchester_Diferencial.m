function Manchester = Manchester_Diferencial(bitstream)
    
        clock = [1 -1];
        len = length(bitstream);
        
        Manchester = zeros([1,4*len]);
        
        
        for i = 1:len
            % colocar o clock
            Manchester(4*i - 2:4*i-1) = clock;
            clock = clock * -1;
            
            % fazer as transições
            if bitstream(i) == 0
                Manchester(4*i - 3) = 1;
                Manchester(4*i) = Manchester(4*i-1);
            else
                Manchester(4*i - 3) = Manchester(4*i-4);
                Manchester(4*i) = Manchester(4*i-1);
            end
            
                
        end
        
       
        
       
        
end
