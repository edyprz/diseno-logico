--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para sumador de 2 bits
 
entity tb_adder4 is
end entity tb_adder4;
 
architecture beh of tb_adder4 is 
    component adder4
    port(
          a:in   bit_vector(3 downto 0):="0000";
	  b:in   bit_vector(3 downto 0):="0000";
	  cin:in bit:='0';
	  cout:out bit;
          r:out  bit_vector(3 downto 0)
        );
    end component adder4;

    signal botonx:bit_vector(3 downto 0) ;
    signal botony:bit_vector(3 downto 0) ;
    signal botoncin:bit:='0' ;
    signal ledr:bit_vector(3 downto 0);
    signal ledcout:bit;
 
begin 
	u0:adder4 
   port map(
          a => botonx,
	  b => botony,
	  cin => botoncin,
          r => ledr,
	  cout=> ledcout
           );
 process
   begin
      wait for 80 ns;
      botoncin <= '1';
      wait for 80 ns;
      botoncin <= '0';		
   end process;

   process
   begin
      wait for 40 ns;
      botonx(3 downto 0) <= "0000";
      wait for 40 ns;
      botonx(3 downto 0) <= "0001";		
   end process;

 process
   begin
      wait for 20 ns;
      botony(3 downto 0) <= "0000";
      wait for 20 ns;
      botony(3 downto 0) <= "0001";	
      wait for 20 ns;
      botony(3 downto 0) <= "0010";
      wait for 20 ns;
      botony(3 downto 0) <= "0011";
      wait for 20 ns;
      botony(3 downto 0) <= "0100";
      wait for 20 ns;
      botony(3 downto 0) <= "1000";
      wait for 20 ns;
      botony(3 downto 0) <= "1001";
      wait for 20 ns;
      botony(3 downto 0) <= "1110";				
   end process;

end architecture beh;
