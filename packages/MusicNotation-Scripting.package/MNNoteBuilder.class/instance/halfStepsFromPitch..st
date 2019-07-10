accessing
halfStepsFromPitch: aPitch
	^ aPitch octave * 12 + (#c_d_ef_g_a_b indexOf: aPitch step) - 1 + aPitch alter