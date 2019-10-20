reg8_PC_inst : reg8_PC PORT MAP (
		aclr	 => aclr_sig,
		clock	 => clock_sig,
		cnt_en	 => cnt_en_sig,
		data	 => data_sig,
		sclr	 => sclr_sig,
		sload	 => sload_sig,
		sset	 => sset_sig,
		cout	 => cout_sig,
		q	 => q_sig
	);
