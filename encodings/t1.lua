local m = {
[1] = 0x00B4,
[2] = 0x02C6,
[3] = 0x02DC,
[4] = 0x00A8,
[5] = 0x02DD,
[6] = 0x02DA,
[7] = 0x02C7,
[8] = 0x02D8,
[9] = 0x00AF,
[10] = 0x02D9,
[11] = 0x00B8,
[12] = 0x02DB,
[13] = 0x201A,
[14] = 0x2039,
[15] = 0x203A,
[16] = 0x201C,
[17] = 0x201D,
[18] = 0x201E,
[19] = 0x00AB,
[20] = 0x00BB,
[21] = 0x2013,
[22] = 0x2014,
[23] = 0x200C,
[24] = 0x2080,
[25] = 0x0131,
[26] = 0x0237,
[27] = 0xFB00,
[28] = 0xFB01,
[29] = 0xFB02,
[30] = 0xFB03,
[31] = 0xFB04,
[32] = 0x2423,
[33] = 0x0021,
[34] = 0x0022,
[35] = 0x0023,
[36] = 0x0024,
[37] = 0x0025,
[38] = 0x0026,
[39] = 0x2019,
[40] = 0x0028,
[41] = 0x0029,
[42] = 0x002A,
[43] = 0x002B,
[44] = 0x002C,
[45] = 0x002D,
[46] = 0x002E,
[47] = 0x002F,
[48] = 0x0030,
[49] = 0x0031,
[50] = 0x0032,
[51] = 0x0033,
[52] = 0x0034,
[53] = 0x0035,
[54] = 0x0036,
[55] = 0x0037,
[56] = 0x0038,
[57] = 0x0039,
[58] = 0x003A,
[59] = 0x003B,
[60] = 0x003C,
[61] = 0x003D,
[62] = 0x003E,
[63] = 0x003F,
[64] = 0x0040,
[65] = 0x0041,
[66] = 0x0042,
[67] = 0x0043,
[68] = 0x0044,
[69] = 0x0045,
[70] = 0x0046,
[71] = 0x0047,
[72] = 0x0048,
[73] = 0x0049,
[74] = 0x004A,
[75] = 0x004B,
[76] = 0x004C,
[77] = 0x004D,
[78] = 0x004E,
[79] = 0x004F,
[80] = 0x0050,
[81] = 0x0051,
[82] = 0x0052,
[83] = 0x0053,
[84] = 0x0054,
[85] = 0x0055,
[86] = 0x0056,
[87] = 0x0057,
[88] = 0x0058,
[89] = 0x0059,
[90] = 0x005A,
[91] = 0x005B,
[92] = 0x005C,
[93] = 0x005D,
[94] = 0x005E,
[95] = 0x005F,
[96] = 0x2018,
[97] = 0x0061,
[98] = 0x0062,
[99] = 0x0063,
[100] = 0x0064,
[101] = 0x0065,
[102] = 0x0066,
[103] = 0x0067,
[104] = 0x0068,
[105] = 0x0069,
[106] = 0x006A,
[107] = 0x006B,
[108] = 0x006C,
[109] = 0x006D,
[110] = 0x006E,
[111] = 0x006F,
[112] = 0x0070,
[113] = 0x0071,
[114] = 0x0072,
[115] = 0x0073,
[116] = 0x0074,
[117] = 0x0075,
[118] = 0x0076,
[119] = 0x0077,
[120] = 0x0078,
[121] = 0x0079,
[122] = 0x007A,
[123] = 0x007B,
[124] = 0x007C,
[125] = 0x007D,
[126] = 0x007E,
[127] = 0x002D,
[128] = 0x0102,
[129] = 0x0104,
[130] = 0x0106,
[131] = 0x010C,
[132] = 0x010E,
[133] = 0x011A,
[134] = 0x0118,
[135] = 0x011E,
[136] = 0x0139,
[137] = 0x013D,
[138] = 0x0141,
[139] = 0x0143,
[140] = 0x0147,
[141] = 0x014A,
[142] = 0x0150,
[143] = 0x0154,
[144] = 0x0158,
[145] = 0x015A,
[146] = 0x0160,
[147] = 0x015E,
[148] = 0x0164,
[149] = 0x0162,
[150] = 0x0170,
[151] = 0x016E,
[152] = 0x0178,
[153] = 0x0179,
[154] = 0x017D,
[155] = 0x017B,
[156] = 0x0132,
[157] = 0x0130,
[158] = 0x0111,
[159] = 0x00A7,
[160] = 0x0103,
[161] = 0x0105,
[162] = 0x0107,
[163] = 0x010D,
[164] = 0x010F,
[165] = 0x011B,
[166] = 0x0119,
[167] = 0x011F,
[168] = 0x013A,
[169] = 0x013E,
[170] = 0x0142,
[171] = 0x0144,
[172] = 0x0148,
[173] = 0x014B,
[174] = 0x0151,
[175] = 0x0155,
[176] = 0x0159,
[177] = 0x015B,
[178] = 0x0161,
[179] = 0x015F,
[180] = 0x0165,
[181] = 0x0163,
[182] = 0x0171,
[183] = 0x016F,
[184] = 0x00FF,
[185] = 0x017A,
[186] = 0x017E,
[187] = 0x017C,
[188] = 0x0133,
[189] = 0x00A1,
[190] = 0x00BF,
[191] = 0x00A3,
[192] = 0x00C0,
[193] = 0x00C1,
[194] = 0x00C2,
[195] = 0x00C3,
[196] = 0x00C4,
[197] = 0x00C5,
[198] = 0x00C6,
[199] = 0x00C7,
[200] = 0x00C8,
[201] = 0x00C9,
[202] = 0x00CA,
[203] = 0x00CB,
[204] = 0x00CC,
[205] = 0x00CD,
[206] = 0x00CE,
[207] = 0x00CF,
[208] = 0x00D0,
[209] = 0x00D1,
[210] = 0x00D2,
[211] = 0x00D3,
[212] = 0x00D4,
[213] = 0x00D5,
[214] = 0x00D6,
[215] = 0x0152,
[216] = 0x00D8,
[217] = 0x00D9,
[218] = 0x00DA,
[219] = 0x00DB,
[220] = 0x00DC,
[221] = 0x00DD,
[222] = 0x00DE,
[223] = 0x0053,
[224] = 0x00E0,
[225] = 0x00E1,
[226] = 0x00E2,
[227] = 0x00E3,
[228] = 0x00E4,
[229] = 0x00E5,
[230] = 0x00E6,
[231] = 0x00E7,
[232] = 0x00E8,
[233] = 0x00E9,
[234] = 0x00EA,
[235] = 0x00EB,
[236] = 0x00EC,
[237] = 0x00ED,
[238] = 0x00EE,
[239] = 0x00EF,
[240] = 0x00F0,
[241] = 0x00F1,
[242] = 0x00F2,
[243] = 0x00F3,
[244] = 0x00F4,
[245] = 0x00F5,
[246] = 0x00F6,
[247] = 0x0153,
[248] = 0x00F8,
[249] = 0x00F9,
[250] = 0x00FA,
[251] = 0x00FB,
[252] = 0x00FC,
[253] = 0x00FD,
[254] = 0x00FE,
[255] = 0x00DF,
[0] = 0x0060,
}
