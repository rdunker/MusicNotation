accessing
halfSteps
	^ self octave * 12 + (#c_d_ef_g_a_b indexOf: self step) - 1 + self alter