--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador bcd binario a hexadecimal de 7 segmentos 
entity decobin2hex7seg is
   port( 

	ent: in bit_vector(3 downto 0);
	sal: out bit_vector(6 downto 0)
       );
end entity decobin2hex7seg;

architecture beh of decobin2hex7seg is
begin

   sal <= "0000001" when ent = "0000" else
          "1001111" when ent = "0001" else
          "0010010" when ent = "0010" else
	  "0000110" when ent = "0011" else
	  "1001100" when ent = "0100" else
	  "0100100" when ent = "0101" else
          "0100000" when ent = "0110" else
          "0001111" when ent = "0111" else
          "0000000" when ent = "1000" else
	  "0001100" when ent = "1001" else
          "0001000" when ent = "1010" else
	  "1100000" when ent = "1011" else
	  "0110001" when ent = "1100" else
	  "1000010" when ent = "1101" else
	  "0110000" when ent = "1110" else
          "1110000" ;
                             



end architecture beh;
				
