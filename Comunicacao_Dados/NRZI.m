function nrzi_bitstream = NRZI(bitstream)
   
% Modulação non-return-to-zero-inverted
% Disciplina: Transmissão e Comunicação de Dados
% Curso: Eng. Elétrica
% Universidade Federal de Santa Maria
% Santa Maria, 19/04/2012.

   len = length(bitstream);
   bits = zeros([1,len])  - 999; % -999 = não passei aqui ainda

   if bitstream(1) == 0
    bits(1) = -1;
   else
    bits(1) = 1;
   end
   
   for i = 2:len
       if bitstream(i) == 0 
           % Ficar no mesmo nível
           bits(i) = bits(i-1);
       else 
           % Trocar de nível
           bits(i) = -bits(i-1);
       end
     
   nrzi_bitstream = bits;
   end

  