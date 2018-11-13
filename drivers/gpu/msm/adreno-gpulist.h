/* Copyright (c) 2002,2007-2020, The Linux Foundation. All rights reserved.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 and
 * only version 2 as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 */

#define ANY_ID (~0)

static const struct adreno_gpu_core adreno_gpulist[] = {
	{
		.gpurev = ADRENO_REV_A610,
		.core = 6,
		.major = 1,
		.minor = 0,
		.patchid = ANY_ID,
		.features = ADRENO_64BIT | ADRENO_PREEMPTION |
			ADRENO_CONTENT_PROTECTION,
		.sqefw_name = "a630_sqe.fw",
		.zap_name = "a610_zap",
		.gpudev = &adreno_a6xx_gpudev,
		.gmem_size = (SZ_128K + SZ_4K),
		.num_protected_regs = 0x20,
		.busy_mask = 0xFFFFFFFE,
		.cx_ipeak_gpu_freq = 900000000,
	},
};
