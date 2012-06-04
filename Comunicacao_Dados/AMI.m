function bitstreamnovo = AMI(bitstream)
    
    len = length(bitstream);
    pol = 1; % atual polaridade do bit '1'
    AMI = zeros([1,len]) - 999; % -999 = não passei aqui ainda

    for i = 1:len
        if bitstream(i) == 0
            AMI(i) = 0;
        else
            AMI(i) = pol;
            pol = -pol; 
        end
        
    bitstreamnovo = AMI;
        
end
