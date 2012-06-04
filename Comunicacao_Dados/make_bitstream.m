function make_bitstream = make_bitstream(bitstream)

    clf
    
    lenpulso = 5; % tempo por bit
    lenbits = length(bitstream);
    vetor_plot = zeros([1,lenbits*lenpulso]);
    
    for i = 1:lenbits
        for j = 1:lenpulso
            vetor_plot(lenpulso*i-(lenpulso-j)) = bitstream(i);
        end
    end

    make_bitstream = vetor_plot;

end