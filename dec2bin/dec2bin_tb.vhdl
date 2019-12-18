-- Copyright (c) 2019 Patrick Pedersen

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

-- Author       : Patrick Pedersen
-- Description  : Test bench for the decimal to binary encoder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dec2bin_tb is
end entity;

architecture dec2bin_tb_arch of dec2bin_tb is

    signal dec_tb : std_logic_vector(9 downto 0);
    signal bin_tb : std_logic_vector(3 downto 0);

begin
    
    DEC2BIN_INST : entity work.dec2bin(dec2bin_arch)
    port map (dec_tb, bin_tb);

    process
        variable err : boolean := false;
    begin
        -- Find HIGH dec input, then convert to binary
        for i in 0 to dec_tb'length - 1 loop
            dec_tb <= (others => '0');
            dec_tb(i) <= '1';
            
            wait for 5 ns;

            if bin_tb /= std_logic_vector(to_unsigned(i, bin_tb'length)) then
                report "The decimal to binary decoder does not generate correct output!" severity error;
                err := true;
            end if;
        
        end loop;

        if err then
            report "The decimal to binary decoder does not function properly!" severity failure;
        end if;

        report "The decimal to binary decoder functions properly!";
        
        wait;
    end process;
end architecture;