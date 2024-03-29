-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- Generated by Quartus Prime Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition
-- Created on Wed Nov 16 06:44:24 2016

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ControlLogicGates IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        r : IN STD_LOGIC := '0';
        si : IN STD_LOGIC := '0';
        eq : IN STD_LOGIC := '0';
        ready : IN STD_LOGIC := '0';
        opi : IN STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
        ir : IN STD_LOGIC_VECTOR(31 DOWNTO 0) := "00000000000000000000000000000000";
        tr_load : OUT STD_LOGIC;
        tr_wdb : OUT STD_LOGIC;
        op : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        reg_wdb : OUT STD_LOGIC;
        reg_we : OUT STD_LOGIC;
        reg_ra : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        ac_wdb : OUT STD_LOGIC;
        ac_lmul : OUT STD_LOGIC;
        ac_lreg : OUT STD_LOGIC;
        ac_load : OUT STD_LOGIC;
        ir_wab : OUT STD_LOGIC;
        ir_wdb : OUT STD_LOGIC;
        ir_ldb : OUT STD_LOGIC;
        ir_load : OUT STD_LOGIC;
        dr_lmul : OUT STD_LOGIC;
        dr_load : OUT STD_LOGIC;
        sp_wab : OUT STD_LOGIC;
        sp_dec : OUT STD_LOGIC;
        sp_inc : OUT STD_LOGIC;
        sp_set : OUT STD_LOGIC;
        pc_wab : OUT STD_LOGIC;
        pc_wdb : OUT STD_LOGIC;
        pc_clear : OUT STD_LOGIC;
        pc_inc : OUT STD_LOGIC;
        pc_load : OUT STD_LOGIC;
        pc_set : OUT STD_LOGIC;
        ar_load : OUT STD_LOGIC;
        mem_wab : OUT STD_LOGIC;
        mem_wdb : OUT STD_LOGIC;
        start : OUT STD_LOGIC;
        rwn : OUT STD_LOGIC;
        test : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        reg_wab : OUT STD_LOGIC;
        reg_wa : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        reg_ee : OUT STD_LOGIC;
        rr : OUT STD_LOGIC;
        outt : OUT STD_LOGIC;
        inn : OUT STD_LOGIC
    );
END ControlLogicGates;

ARCHITECTURE BEHAVIOR OF ControlLogicGates IS
    TYPE type_fstate IS (state1,state2,state4,state5,state7,state6,state3,state13,state14,state15,state11,state16,state17,state12,state8,state20,state9,state21,state19,state22,state23,state24,state18,state25,state26,state27,state28,state29,state30,state31,state33,state32,state34,state35,state36,state37,state38,state39,state40,state41,state42,state43,state44,state45,state47,state46,state49,state50,state51,state48,state52,state54,state55,state56,state58,state53,state10,state57,state60,state59,state61,state63);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
    SIGNAL reg_rr : STD_LOGIC := '0';
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,r,si,eq,ready,opi,ir,reg_rr)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= state1;
            reg_rr <= '0';
            tr_load <= '0';
            tr_wdb <= '0';
            op <= "000";
            reg_wdb <= '0';
            reg_we <= '0';
            reg_ra <= "00000";
            ac_wdb <= '0';
            ac_lmul <= '0';
            ac_lreg <= '0';
            ac_load <= '0';
            ir_wab <= '0';
            ir_wdb <= '0';
            ir_ldb <= '0';
            ir_load <= '0';
            dr_lmul <= '0';
            dr_load <= '0';
            sp_wab <= '0';
            sp_dec <= '0';
            sp_inc <= '0';
            sp_set <= '0';
            pc_wab <= '0';
            pc_wdb <= '0';
            pc_clear <= '0';
            pc_inc <= '0';
            pc_load <= '0';
            pc_set <= '0';
            ar_load <= '0';
            mem_wab <= '0';
            mem_wdb <= '0';
            start <= '0';
            rwn <= '0';
            test <= "00000";
            reg_wab <= '0';
            reg_wa <= "00000";
            reg_ee <= '0';
            rr <= '0';
            outt <= '0';
            inn <= '0';
        ELSE
            tr_load <= '0';
            tr_wdb <= '0';
            op <= "000";
            reg_wdb <= '0';
            reg_we <= '0';
            reg_ra <= "00000";
            ac_wdb <= '0';
            ac_lmul <= '0';
            ac_lreg <= '0';
            ac_load <= '0';
            ir_wab <= '0';
            ir_wdb <= '0';
            ir_ldb <= '0';
            ir_load <= '0';
            dr_lmul <= '0';
            dr_load <= '0';
            sp_wab <= '0';
            sp_dec <= '0';
            sp_inc <= '0';
            sp_set <= '0';
            pc_wab <= '0';
            pc_wdb <= '0';
            pc_clear <= '0';
            pc_inc <= '0';
            pc_load <= '0';
            pc_set <= '0';
            ar_load <= '0';
            mem_wab <= '0';
            mem_wdb <= '0';
            start <= '0';
            rwn <= '0';
            test <= "00000";
            reg_wab <= '0';
            reg_wa <= "00000";
            reg_ee <= '0';
            reg_rr <= '0';
            outt <= '0';
            inn <= '0';
            rr <= '0';
            CASE fstate IS
                WHEN state1 =>
                    reg_fstate <= state2;

                    test <= "00001";

                    pc_set <= '1';

                    sp_set <= '1';
                WHEN state2 =>
                    IF (NOT((r = '1'))) THEN
                        reg_fstate <= state14;
                    ELSIF ((r = '1')) THEN
                        reg_fstate <= state10;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state2;
                    END IF;

                    test <= "00010";

                    pc_wab <= '1';

                    ar_load <= '1';
                WHEN state4 =>
                    IF ((ready = '1')) THEN
                        reg_fstate <= state18;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state4;
                    END IF;

                    test <= "00101";

                    ir_ldb <= '1';

                    mem_wdb <= '1';

                    ir_load <= '1';
                WHEN state5 =>
                    IF ((opi(4 DOWNTO 0) = "00001")) THEN
                        reg_fstate <= state6;
                    ELSIF ((opi(4 DOWNTO 0) = "00010")) THEN
                        reg_fstate <= state8;
                    ELSIF ((opi(4 DOWNTO 0) = "00100")) THEN
                        reg_fstate <= state25;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state5;
                    END IF;

                    reg_ra <= ir(16 DOWNTO 12);

                    ac_load <= '1';

                    dr_load <= '1';

                    reg_wdb <= '1';

                    ac_lreg <= '1';
                WHEN state7 =>
                    reg_fstate <= state2;

                    ac_wdb <= '1';

                    reg_we <= '1';
                WHEN state6 =>
                    reg_fstate <= state7;

                    ac_load <= '1';

                    op <= "001";
                WHEN state3 =>
                    reg_fstate <= state15;

                    test <= "00100";

                    pc_wab <= '1';

                    pc_inc <= '1';

                    ar_load <= '1';
                WHEN state13 =>
                    IF ((ready = '1')) THEN
                        reg_fstate <= state3;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state13;
                    END IF;

                    test <= "00011";

                    mem_wdb <= '1';

                    ir_load <= '1';
                WHEN state14 =>
                    reg_fstate <= state13;

                    start <= '1';

                    test <= "10111";

                    pc_inc <= '1';

                    rwn <= '1';
                WHEN state15 =>
                    reg_fstate <= state4;

                    start <= '1';

                    rwn <= '1';
                WHEN state11 =>
                    reg_fstate <= state16;

                    start <= '1';

                    test <= "00111";

                    rwn <= '1';
                WHEN state16 =>
                    IF ((ready = '1')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state16;
                    END IF;

                    mem_wdb <= '1';

                    reg_we <= '1';
                WHEN state17 =>
                    IF ((ready = '1')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state17;
                    END IF;
                WHEN state12 =>
                    reg_fstate <= state17;

                    reg_ra <= ir(26 DOWNTO 22);

                    start <= '1';

                    test <= "01001";

                    reg_wdb <= '1';
                WHEN state8 =>
                    reg_fstate <= state7;

                    ac_load <= '1';

                    op <= "010";
                WHEN state20 =>
                    reg_fstate <= state21;

                    start <= '1';

                    rwn <= '1';
                WHEN state9 =>
                    reg_fstate <= state20;

                    reg_ra <= ir(21 DOWNTO 17);

                    reg_wab <= '1';

                    ar_load <= '1';
                WHEN state21 =>
                    IF ((ready = '1')) THEN
                        reg_fstate <= state19;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state21;
                    END IF;

                    dr_load <= '1';

                    mem_wdb <= '1';
                WHEN state19 =>
                    reg_fstate <= state22;
                WHEN state22 =>
                    reg_fstate <= state23;

                    start <= '1';

                    rwn <= '1';
                WHEN state23 =>
                    IF ((ready = '1')) THEN
                        reg_fstate <= state24;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state23;
                    END IF;

                    dr_load <= '1';

                    mem_wdb <= '1';
                WHEN state24 =>
                    reg_fstate <= state6;

                    ac_load <= '1';
                WHEN state18 =>
                    IF ((((opi(4 DOWNTO 0) = "00001") OR (opi(4 DOWNTO 0) = "00010")) OR (opi(4 DOWNTO 0) = "00100"))) THEN
                        reg_fstate <= state5;
                    ELSIF ((opi(4 DOWNTO 0) = "10011")) THEN
                        reg_fstate <= state11;
                    ELSIF ((opi(4 DOWNTO 0) = "10100")) THEN
                        reg_fstate <= state12;
                    ELSIF ((opi(4 DOWNTO 0) = "00011")) THEN
                        reg_fstate <= state9;
                    ELSIF (((opi(4 DOWNTO 0) = "00101") OR (opi(4 DOWNTO 0) = "01011"))) THEN
                        reg_fstate <= state26;
                    ELSIF (((opi(4 DOWNTO 0) = "00110") OR (opi(4 DOWNTO 0) = "00111"))) THEN
                        reg_fstate <= state30;
                    ELSIF ((((((opi(4 DOWNTO 0) = "01000") OR (opi(4 DOWNTO 0) = "01110")) OR (opi(4 DOWNTO 0) = "01111")) OR (opi(4 DOWNTO 0) = "10000")) OR (opi(4 DOWNTO 0) = "10001"))) THEN
                        reg_fstate <= state32;
                    ELSIF (((opi(4 DOWNTO 0) = "01001") OR (opi(4 DOWNTO 0) = "01010"))) THEN
                        reg_fstate <= state37;
                    ELSIF ((opi(4 DOWNTO 0) = "01100")) THEN
                        reg_fstate <= state39;
                    ELSIF ((opi(4 DOWNTO 0) = "01101")) THEN
                        reg_fstate <= state40;
                    ELSIF ((opi(4 DOWNTO 0) = "10101")) THEN
                        reg_fstate <= state43;
                    ELSIF (((opi(4 DOWNTO 0) = "10010") OR (opi(4 DOWNTO 0) = "11010"))) THEN
                        reg_fstate <= state47;
                    ELSIF ((opi(4 DOWNTO 0) = "11000")) THEN
                        reg_fstate <= state48;
                    ELSIF ((opi(4 DOWNTO 0) = "11001")) THEN
                        reg_fstate <= state52;
                    ELSIF ((opi(4 DOWNTO 0) = "10111")) THEN
                        reg_fstate <= state61;
                    ELSIF ((opi(4 DOWNTO 0) = "10110")) THEN
                        reg_fstate <= state63;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state18;
                    END IF;

                    test <= "01010";

                    ar_load <= '1';

                    ir_wab <= '1';
                WHEN state25 =>
                    reg_fstate <= state7;

                    ac_load <= '1';

                    op <= "101";
                WHEN state26 =>
                    IF ((opi(4 DOWNTO 0) = "00101")) THEN
                        reg_fstate <= state27;
                    ELSIF ((opi(4 DOWNTO 0) = "01011")) THEN
                        reg_fstate <= state38;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state26;
                    END IF;

                    reg_ra <= ir(21 DOWNTO 17);

                    ac_load <= '1';

                    dr_load <= '1';

                    reg_wdb <= '1';

                    ac_lreg <= '1';
                WHEN state27 =>
                    reg_fstate <= state28;

                    reg_ra <= ir(16 DOWNTO 12);

                    ac_load <= '1';

                    dr_load <= '1';

                    op <= "101";

                    reg_wdb <= '1';
                WHEN state28 =>
                    reg_fstate <= state29;

                    tr_load <= '1';

                    ac_load <= '1';

                    ac_wdb <= '1';
                WHEN state29 =>
                    reg_fstate <= state25;

                    dr_load <= '1';

                    op <= "101";

                    tr_wdb <= '1';
                WHEN state30 =>
                    IF ((opi(4 DOWNTO 0) = "00110")) THEN
                        reg_fstate <= state31;
                    ELSIF ((opi(4 DOWNTO 0) = "00111")) THEN
                        reg_fstate <= state33;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state30;
                    END IF;

                    ac_load <= '1';

                    ac_lreg <= '1';
                WHEN state31 =>
                    reg_fstate <= state7;

                    ac_load <= '1';

                    op <= "011";
                WHEN state33 =>
                    reg_fstate <= state7;

                    ac_load <= '1';

                    op <= "100";
                WHEN state32 =>
                    IF (((opi(4 DOWNTO 0) = "01110") OR (opi(4 DOWNTO 0) = "10000"))) THEN
                        reg_fstate <= state41;
                    ELSIF ((opi(4 DOWNTO 0) = "01000")) THEN
                        reg_fstate <= state34;
                    ELSIF (((opi(4 DOWNTO 0) = "01111") OR (opi(4 DOWNTO 0) = "10001"))) THEN
                        reg_fstate <= state42;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state32;
                    END IF;

                    reg_ra <= ir(26 DOWNTO 22);

                    ac_load <= '1';

                    dr_load <= '1';

                    reg_wdb <= '1';

                    ac_lreg <= '1';
                WHEN state34 =>
                    reg_fstate <= state35;

                    ac_load <= '1';

                    dr_load <= '1';

                    ac_lmul <= '1';

                    dr_lmul <= '1';
                WHEN state35 =>
                    reg_fstate <= state36;

                    ac_load <= '1';

                    reg_ee <= '1';

                    reg_wa <= ir(11 DOWNTO 7);

                    ac_wdb <= '1';

                    reg_we <= '1';
                WHEN state36 =>
                    reg_fstate <= state2;

                    reg_ee <= '1';

                    reg_wa <= ir(16 DOWNTO 12);

                    ac_wdb <= '1';

                    reg_we <= '1';
                WHEN state37 =>
                    IF ((opi(4 DOWNTO 0) = "01001")) THEN
                        reg_fstate <= state6;
                    ELSIF ((opi(4 DOWNTO 0) = "01010")) THEN
                        reg_fstate <= state25;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state37;
                    END IF;

                    ac_load <= '1';

                    ir_wdb <= '1';

                    dr_load <= '1';

                    ac_lreg <= '1';
                WHEN state38 =>
                    reg_fstate <= state28;

                    ac_load <= '1';

                    dr_load <= '1';

                    op <= "101";

                    tr_wdb <= '1';
                WHEN state39 =>
                    reg_fstate <= state2;

                    ir_wdb <= '1';

                    reg_we <= '1';
                WHEN state40 =>
                    reg_fstate <= state17;

                    start <= '1';

                    ir_wdb <= '1';
                WHEN state41 =>
                    IF (((eq = '1') AND (opi(4 DOWNTO 0) = "01110"))) THEN
                        reg_fstate <= state43;
                    ELSIF (((eq = '1') AND (opi(4 DOWNTO 0) = "10000"))) THEN
                        reg_fstate <= state44;
                    ELSE
                        reg_fstate <= state2;
                    END IF;

                    ac_load <= '1';

                    op <= "110";
                WHEN state42 =>
                    IF (((si = '1') AND (opi(4 DOWNTO 0) = "01111"))) THEN
                        reg_fstate <= state43;
                    ELSIF (((si = '1') AND (opi(4 DOWNTO 0) = "10001"))) THEN
                        reg_fstate <= state44;
                    ELSE
                        reg_fstate <= state2;
                    END IF;

                    ac_load <= '1';

                    op <= "010";
                WHEN state43 =>
                    reg_fstate <= state2;

                    pc_load <= '1';

                    ir_wab <= '1';
                WHEN state44 =>
                    reg_fstate <= state45;

                    sp_dec <= '1';

                    sp_wab <= '1';

                    ar_load <= '1';
                WHEN state45 =>
                    reg_fstate <= state46;

                    start <= '1';

                    pc_wab <= '1';
                WHEN state47 =>
                    reg_fstate <= state49;

                    sp_inc <= '1';
                WHEN state46 =>
                    IF ((ready = '1')) THEN
                        reg_fstate <= state43;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state46;
                    END IF;
                WHEN state49 =>
                    reg_fstate <= state50;

                    sp_wab <= '1';

                    ar_load <= '1';
                WHEN state50 =>
                    IF ((opi(4 DOWNTO 0) = "10010")) THEN
                        reg_fstate <= state51;
                    ELSIF ((opi(4 DOWNTO 0) = "11010")) THEN
                        reg_fstate <= state58;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state50;
                    END IF;

                    start <= '1';

                    rwn <= '1';
                WHEN state51 =>
                    IF ((ready = '1')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state51;
                    END IF;

                    pc_load <= '1';

                    mem_wab <= '1';
                WHEN state48 =>
                    reg_fstate <= state54;

                    reg_ra <= ir(26 DOWNTO 22);

                    ac_load <= '1';

                    dr_load <= '1';

                    reg_wdb <= '1';

                    ac_lreg <= '1';
                WHEN state52 =>
                    reg_fstate <= state56;

                    ac_load <= '1';

                    sp_dec <= '1';

                    sp_wab <= '1';
                WHEN state54 =>
                    reg_fstate <= state55;

                    ac_load <= '1';

                    ac_wdb <= '1';

                    reg_we <= '1';
                WHEN state55 =>
                    reg_fstate <= state2;

                    reg_ee <= '1';

                    reg_wa <= ir(21 DOWNTO 17);

                    ac_wdb <= '1';

                    reg_we <= '1';
                WHEN state56 =>
                    reg_fstate <= state53;

                    reg_ra <= ir(26 DOWNTO 22);

                    start <= '1';

                    reg_wdb <= '1';
                WHEN state58 =>
                    IF ((ready = '1')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state58;
                    END IF;

                    mem_wdb <= '1';

                    reg_we <= '1';
                WHEN state53 =>
                    IF ((ready = '1')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state53;
                    END IF;
                WHEN state10 =>
                    reg_fstate <= state57;

                    sp_wab <= '1';

                    ar_load <= '1';

                    sp_inc <= '1';
                WHEN state57 =>
                    reg_fstate <= state59;

                    start <= '1';

                    pc_wdb <= '1';
                WHEN state60 =>
                    reg_fstate <= state2;

                    reg_rr <= '1';

                    pc_clear <= '1';
                WHEN state59 =>
                    IF ((ready = '1')) THEN
                        reg_fstate <= state60;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state59;
                    END IF;
                WHEN state61 =>
                    reg_fstate <= state18;

                    reg_ra <= ir(26 DOWNTO 22);

                    outt <= '1';

                    reg_wdb <= '1';
                WHEN state63 =>
                    reg_fstate <= state18;

                    inn <= '1';

                    reg_we <= '1';
                WHEN OTHERS => 
                    tr_load <= 'X';
                    tr_wdb <= 'X';
                    op <= "XXX";
                    reg_wdb <= 'X';
                    reg_we <= 'X';
                    reg_ra <= "XXXXX";
                    ac_wdb <= 'X';
                    ac_lmul <= 'X';
                    ac_lreg <= 'X';
                    ac_load <= 'X';
                    ir_wab <= 'X';
                    ir_wdb <= 'X';
                    ir_ldb <= 'X';
                    ir_load <= 'X';
                    dr_lmul <= 'X';
                    dr_load <= 'X';
                    sp_wab <= 'X';
                    sp_dec <= 'X';
                    sp_inc <= 'X';
                    sp_set <= 'X';
                    pc_wab <= 'X';
                    pc_wdb <= 'X';
                    pc_clear <= 'X';
                    pc_inc <= 'X';
                    pc_load <= 'X';
                    pc_set <= 'X';
                    ar_load <= 'X';
                    mem_wab <= 'X';
                    mem_wdb <= 'X';
                    start <= 'X';
                    rwn <= 'X';
                    test <= "XXXXX";
                    reg_wab <= 'X';
                    reg_wa <= "XXXXX";
                    reg_ee <= 'X';
                    reg_rr <= 'X';
                    outt <= 'X';
                    inn <= 'X';
                    report "Reach undefined state";
            END CASE;
            rr <= reg_rr;
        END IF;
    END PROCESS;
END BEHAVIOR;
