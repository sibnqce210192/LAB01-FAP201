--==============================================================================
-- Module: lab01
-- Description: Wiring 3 switches to 3 LEDs (reversed order)
-- Target Device: GW5A-LV25UG324C2/I1
-- Board: Xiaomeige ACG525
--==============================================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab01 is
    port (
        i_sw0  : in  STD_LOGIC;   -- Switch 0 input (KEY0)
        i_sw1  : in  STD_LOGIC;   -- Switch 1 input (KEY1)
        i_sw2  : in  STD_LOGIC;   -- Switch 2 input (KEY2)
        o_led0 : out STD_LOGIC;   -- LED D0 output
        o_led1 : out STD_LOGIC;   -- LED D1 output
        o_led2 : out STD_LOGIC    -- LED D2 output
    );
end entity lab01;

architecture rtl of lab01 is
begin

    o_led2 <= i_sw0;   -- SW0 -> D2
    o_led1 <= i_sw1;   -- SW1 -> D1
    o_led0 <= i_sw2;   -- SW2 -> D0

end architecture rtl;