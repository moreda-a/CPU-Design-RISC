reg16_ST_inst : reg16_ST PORT MAP (
		aclr	 => aclr_sig,
		clock	 => clock_sig,
		cnt_en	 => cnt_en_sig,
		data	 => data_sig,
		sload	 => sload_sig,
		q	 => q_sig
	);
