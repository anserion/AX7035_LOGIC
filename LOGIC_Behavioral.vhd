--Copyright 2025 Andrey S. Ionisyan (anserion@gmail.com)
--Licensed under the Apache License, Version 2.0 (the "License");
--you may not use this file except in compliance with the License.
--You may obtain a copy of the License at
--    http://www.apache.org/licenses/LICENSE-2.0
--Unless required by applicable law or agreed to in writing, software
--distributed under the License is distributed on an "AS IS" BASIS,
--WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--See the License for the specific language governing permissions and
--limitations under the License.
------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LOGIC_Behavioral is
    Port (KEY1,KEY2,KEY3: in  STD_LOGIC; LED1 : out  STD_LOGIC);
end LOGIC_Behavioral;

architecture Behavioral of LOGIC_Behavioral is
begin
LED1 <= KEY3 xor ((KEY1 and key2) and not(KEY1 or KEY2));
end Behavioral;
