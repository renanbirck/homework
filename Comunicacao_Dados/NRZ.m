function nrz_bitstream = NRZ(bitstream)

% Modulação non-return-to-zero
% Disciplina: Transmissão e Comunicação de Dados
% Curso: Eng. Elétrica
% Universidade Federal de Santa Maria
% Santa Maria, 19/04/2012.

    high = 1 % Valor de tensão de um nível alto
    low = -high % Valor de tensão de um nível baixo
    
    lenbits = length(bitstream);
    fprintf('Número de bits do bitstream fornecido: %d',lenbits)
    NRZ = zeros([1,lenbits])  - 999; % -999 = não passei aqui ainda
    for i = 1:lenbits
        if bitstream(i) == 0
            NRZ(i) = high;
        else
            NRZ(i) = low;
        end
            
    end
    
        nrz_bitstream = NRZ;
    
    
end