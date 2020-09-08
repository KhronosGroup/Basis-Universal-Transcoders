/**
 * Generate UASTC data
 * @param mode - UASTC Mode Index
 * @param nBlocks - The total number of UASTC blocks
 */
export function generate(mode: i32, nBlocks: u32): i32 {
  if (mode < 0 || mode > 18) return 0;

  const totalBytes = nBlocks * 16;
  if (<u32>(memory.size() - 1) * 65536 < totalBytes) return -1;

  for (let seed: u64 = 0; seed < nBlocks; seed++) {
    let r0: u64 = 0;

    switch (mode) {
      case 0:
        r0 = 0x01; //0001

        r0 |= crc64(0, seed) << (4 + 15);
        break;
      case 1:
        r0 = 0x35; //110101

        r0 |= crc64(0, seed) << (6 + 15);
        break;
      case 2:
        r0 = 0x1D; //11101

        r0 |= (seed % 30) << (5 + 15); // patterns
        r0 |= crc64(0, seed) << (5 + 15 + 5);
        break;
      case 3:
        r0 = 0x03; //00011

        r0 |= (seed % 11) << (5 + 15); // patterns
        r0 |= crc64(0, seed) << (5 + 15 + 4);
        break;
      case 4:
        r0 = 0x13; //10011

        r0 |= (seed % 30) << (5 + 15); // patterns
        r0 |= crc64(0, seed) << (5 + 15 + 5);
        break;
      case 5:
        r0 = 0x0B; //01011

        r0 |= crc64(0, seed) << (5 + 15);
        break;
      case 6:
        r0 = 0x1B; //11011

        r0 |= (seed & 3) << (5 + 15); // ccs
        r0 |= crc64(0, seed) << (5 + 15 + 2);
        break;
      case 7:
        r0 = 0x07; //00111

        r0 |= (seed % 19) << (5 + 15); // patterns
        r0 |= crc64(0, seed) << (5 + 15 + 5);
        break;
      case 8:
        r0 = 0x17; //10111

        r0 |= crc64(0, seed) << 5;
        break;
      case 9:
        r0 = 0x0F; //01111

        r0 |= (seed % 30) << (5 + 23); // patterns
        r0 |= crc64(0, seed) << (5 + 23 + 5);
        break;
      case 10:
        r0 = 0x02; //010

        r0 |= crc64(0, seed) << (3 + 17);
        break;
      case 11:
        r0 = 0x00; //00

        r0 |= (seed & 3) << (2 + 17); // ccs
        r0 |= crc64(0, seed) << (2 + 17 + 2);
        break;
      case 12:
        r0 = 0x06; //110

        r0 |= crc64(0, seed) << (3 + 17);
        break;
      case 13:
        r0 = 0x1F; //11111

        r0 |= (seed & 3) << (5 + 23); // ccs
        r0 |= crc64(0, seed) << (5 + 23 + 2);
        break;
      case 14:
        r0 = 0x0D; //01101

        r0 |= crc64(0, seed) << (5 + 23);
        break;
      case 15:
        r0 = 0x05; //0000101

        r0 |= crc64(0, seed) << (7 + 23);
        break;
      case 16:
        r0 = 0x15; //010101

        r0 |= (seed % 30) << (6 + 23); // patterns
        r0 |= crc64(0, seed) << (6 + 23 + 5);
        break;
      case 17:
        r0 = 0x25; //100101

        r0 |= crc64(0, seed) << (6 + 23);
        break;
      case 18:
        r0 = 0x09; //1001

        r0 |= crc64(0, seed) << (4 + 15);
        break;
    }

    const r1 = crc64(r0, seed);

    const offset = 65536 + <u32>seed * 16;
    store<u64>(offset, r0, 0);
    store<u64>(offset, r1, 8);
  }

  return 0;
}

const crcOffset = 63488;

function crc64(crc: u64, seed: u64): u64 {
  let count = 8;

  while (count--) {
    const byte = <u8>(crc ^ (seed & 0xFF));
    crc = load<u64>(byte, crcOffset) ^ (crc >> 8);
    seed >>= 8;
  }
  return crc;
}

store<u64>(crcOffset, 0x0000000000000000, 0);
store<u64>(crcOffset, 0x7AD870C830358979, 8);
store<u64>(crcOffset, 0xF5B0E190606B12F2, 16);
store<u64>(crcOffset, 0x8F689158505E9B8B, 24);
store<u64>(crcOffset, 0xC038E5739841B68F, 32);
store<u64>(crcOffset, 0xBAE095BBA8743FF6, 40);
store<u64>(crcOffset, 0x358804E3F82AA47D, 48);
store<u64>(crcOffset, 0x4F50742BC81F2D04, 56);
store<u64>(crcOffset, 0xAB28ECB46814FE75, 64);
store<u64>(crcOffset, 0xD1F09C7C5821770C, 72);
store<u64>(crcOffset, 0x5E980D24087FEC87, 80);
store<u64>(crcOffset, 0x24407DEC384A65FE, 88);
store<u64>(crcOffset, 0x6B1009C7F05548FA, 96);
store<u64>(crcOffset, 0x11C8790FC060C183, 104);
store<u64>(crcOffset, 0x9EA0E857903E5A08, 112);
store<u64>(crcOffset, 0xE478989FA00BD371, 120);
store<u64>(crcOffset, 0x7D08FF3B88BE6F81, 128);
store<u64>(crcOffset, 0x07D08FF3B88BE6F8, 136);
store<u64>(crcOffset, 0x88B81EABE8D57D73, 144);
store<u64>(crcOffset, 0xF2606E63D8E0F40A, 152);
store<u64>(crcOffset, 0xBD301A4810FFD90E, 160);
store<u64>(crcOffset, 0xC7E86A8020CA5077, 168);
store<u64>(crcOffset, 0x4880FBD87094CBFC, 176);
store<u64>(crcOffset, 0x32588B1040A14285, 184);
store<u64>(crcOffset, 0xD620138FE0AA91F4, 192);
store<u64>(crcOffset, 0xACF86347D09F188D, 200);
store<u64>(crcOffset, 0x2390F21F80C18306, 208);
store<u64>(crcOffset, 0x594882D7B0F40A7F, 216);
store<u64>(crcOffset, 0x1618F6FC78EB277B, 224);
store<u64>(crcOffset, 0x6CC0863448DEAE02, 232);
store<u64>(crcOffset, 0xE3A8176C18803589, 240);
store<u64>(crcOffset, 0x997067A428B5BCF0, 248);
store<u64>(crcOffset, 0xFA11FE77117CDF02, 256);
store<u64>(crcOffset, 0x80C98EBF2149567B, 264);
store<u64>(crcOffset, 0x0FA11FE77117CDF0, 272);
store<u64>(crcOffset, 0x75796F2F41224489, 280);
store<u64>(crcOffset, 0x3A291B04893D698D, 288);
store<u64>(crcOffset, 0x40F16BCCB908E0F4, 296);
store<u64>(crcOffset, 0xCF99FA94E9567B7F, 304);
store<u64>(crcOffset, 0xB5418A5CD963F206, 312);
store<u64>(crcOffset, 0x513912C379682177, 320);
store<u64>(crcOffset, 0x2BE1620B495DA80E, 328);
store<u64>(crcOffset, 0xA489F35319033385, 336);
store<u64>(crcOffset, 0xDE51839B2936BAFC, 344);
store<u64>(crcOffset, 0x9101F7B0E12997F8, 352);
store<u64>(crcOffset, 0xEBD98778D11C1E81, 360);
store<u64>(crcOffset, 0x64B116208142850A, 368);
store<u64>(crcOffset, 0x1E6966E8B1770C73, 376);
store<u64>(crcOffset, 0x8719014C99C2B083, 384);
store<u64>(crcOffset, 0xFDC17184A9F739FA, 392);
store<u64>(crcOffset, 0x72A9E0DCF9A9A271, 400);
store<u64>(crcOffset, 0x08719014C99C2B08, 408);
store<u64>(crcOffset, 0x4721E43F0183060C, 416);
store<u64>(crcOffset, 0x3DF994F731B68F75, 424);
store<u64>(crcOffset, 0xB29105AF61E814FE, 432);
store<u64>(crcOffset, 0xC849756751DD9D87, 440);
store<u64>(crcOffset, 0x2C31EDF8F1D64EF6, 448);
store<u64>(crcOffset, 0x56E99D30C1E3C78F, 456);
store<u64>(crcOffset, 0xD9810C6891BD5C04, 464);
store<u64>(crcOffset, 0xA3597CA0A188D57D, 472);
store<u64>(crcOffset, 0xEC09088B6997F879, 480);
store<u64>(crcOffset, 0x96D1784359A27100, 488);
store<u64>(crcOffset, 0x19B9E91B09FCEA8B, 496);
store<u64>(crcOffset, 0x636199D339C963F2, 504);
store<u64>(crcOffset, 0xDF7ADABD7A6E2D6F, 512);
store<u64>(crcOffset, 0xA5A2AA754A5BA416, 520);
store<u64>(crcOffset, 0x2ACA3B2D1A053F9D, 528);
store<u64>(crcOffset, 0x50124BE52A30B6E4, 536);
store<u64>(crcOffset, 0x1F423FCEE22F9BE0, 544);
store<u64>(crcOffset, 0x659A4F06D21A1299, 552);
store<u64>(crcOffset, 0xEAF2DE5E82448912, 560);
store<u64>(crcOffset, 0x902AAE96B271006B, 568);
store<u64>(crcOffset, 0x74523609127AD31A, 576);
store<u64>(crcOffset, 0x0E8A46C1224F5A63, 584);
store<u64>(crcOffset, 0x81E2D7997211C1E8, 592);
store<u64>(crcOffset, 0xFB3AA75142244891, 600);
store<u64>(crcOffset, 0xB46AD37A8A3B6595, 608);
store<u64>(crcOffset, 0xCEB2A3B2BA0EECEC, 616);
store<u64>(crcOffset, 0x41DA32EAEA507767, 624);
store<u64>(crcOffset, 0x3B024222DA65FE1E, 632);
store<u64>(crcOffset, 0xA2722586F2D042EE, 640);
store<u64>(crcOffset, 0xD8AA554EC2E5CB97, 648);
store<u64>(crcOffset, 0x57C2C41692BB501C, 656);
store<u64>(crcOffset, 0x2D1AB4DEA28ED965, 664);
store<u64>(crcOffset, 0x624AC0F56A91F461, 672);
store<u64>(crcOffset, 0x1892B03D5AA47D18, 680);
store<u64>(crcOffset, 0x97FA21650AFAE693, 688);
store<u64>(crcOffset, 0xED2251AD3ACF6FEA, 696);
store<u64>(crcOffset, 0x095AC9329AC4BC9B, 704);
store<u64>(crcOffset, 0x7382B9FAAAF135E2, 712);
store<u64>(crcOffset, 0xFCEA28A2FAAFAE69, 720);
store<u64>(crcOffset, 0x8632586ACA9A2710, 728);
store<u64>(crcOffset, 0xC9622C4102850A14, 736);
store<u64>(crcOffset, 0xB3BA5C8932B0836D, 744);
store<u64>(crcOffset, 0x3CD2CDD162EE18E6, 752);
store<u64>(crcOffset, 0x460ABD1952DB919F, 760);
store<u64>(crcOffset, 0x256B24CA6B12F26D, 768);
store<u64>(crcOffset, 0x5FB354025B277B14, 776);
store<u64>(crcOffset, 0xD0DBC55A0B79E09F, 784);
store<u64>(crcOffset, 0xAA03B5923B4C69E6, 792);
store<u64>(crcOffset, 0xE553C1B9F35344E2, 800);
store<u64>(crcOffset, 0x9F8BB171C366CD9B, 808);
store<u64>(crcOffset, 0x10E3202993385610, 816);
store<u64>(crcOffset, 0x6A3B50E1A30DDF69, 824);
store<u64>(crcOffset, 0x8E43C87E03060C18, 832);
store<u64>(crcOffset, 0xF49BB8B633338561, 840);
store<u64>(crcOffset, 0x7BF329EE636D1EEA, 848);
store<u64>(crcOffset, 0x012B592653589793, 856);
store<u64>(crcOffset, 0x4E7B2D0D9B47BA97, 864);
store<u64>(crcOffset, 0x34A35DC5AB7233EE, 872);
store<u64>(crcOffset, 0xBBCBCC9DFB2CA865, 880);
store<u64>(crcOffset, 0xC113BC55CB19211C, 888);
store<u64>(crcOffset, 0x5863DBF1E3AC9DEC, 896);
store<u64>(crcOffset, 0x22BBAB39D3991495, 904);
store<u64>(crcOffset, 0xADD33A6183C78F1E, 912);
store<u64>(crcOffset, 0xD70B4AA9B3F20667, 920);
store<u64>(crcOffset, 0x985B3E827BED2B63, 928);
store<u64>(crcOffset, 0xE2834E4A4BD8A21A, 936);
store<u64>(crcOffset, 0x6DEBDF121B863991, 944);
store<u64>(crcOffset, 0x1733AFDA2BB3B0E8, 952);
store<u64>(crcOffset, 0xF34B37458BB86399, 960);
store<u64>(crcOffset, 0x8993478DBB8DEAE0, 968);
store<u64>(crcOffset, 0x06FBD6D5EBD3716B, 976);
store<u64>(crcOffset, 0x7C23A61DDBE6F812, 984);
store<u64>(crcOffset, 0x3373D23613F9D516, 992);
store<u64>(crcOffset, 0x49ABA2FE23CC5C6F, 1000);
store<u64>(crcOffset, 0xC6C333A67392C7E4, 1008);
store<u64>(crcOffset, 0xBC1B436E43A74E9D, 1016);
store<u64>(crcOffset, 0x95AC9329AC4BC9B5, 1024);
store<u64>(crcOffset, 0xEF74E3E19C7E40CC, 1032);
store<u64>(crcOffset, 0x601C72B9CC20DB47, 1040);
store<u64>(crcOffset, 0x1AC40271FC15523E, 1048);
store<u64>(crcOffset, 0x5594765A340A7F3A, 1056);
store<u64>(crcOffset, 0x2F4C0692043FF643, 1064);
store<u64>(crcOffset, 0xA02497CA54616DC8, 1072);
store<u64>(crcOffset, 0xDAFCE7026454E4B1, 1080);
store<u64>(crcOffset, 0x3E847F9DC45F37C0, 1088);
store<u64>(crcOffset, 0x445C0F55F46ABEB9, 1096);
store<u64>(crcOffset, 0xCB349E0DA4342532, 1104);
store<u64>(crcOffset, 0xB1ECEEC59401AC4B, 1112);
store<u64>(crcOffset, 0xFEBC9AEE5C1E814F, 1120);
store<u64>(crcOffset, 0x8464EA266C2B0836, 1128);
store<u64>(crcOffset, 0x0B0C7B7E3C7593BD, 1136);
store<u64>(crcOffset, 0x71D40BB60C401AC4, 1144);
store<u64>(crcOffset, 0xE8A46C1224F5A634, 1152);
store<u64>(crcOffset, 0x927C1CDA14C02F4D, 1160);
store<u64>(crcOffset, 0x1D148D82449EB4C6, 1168);
store<u64>(crcOffset, 0x67CCFD4A74AB3DBF, 1176);
store<u64>(crcOffset, 0x289C8961BCB410BB, 1184);
store<u64>(crcOffset, 0x5244F9A98C8199C2, 1192);
store<u64>(crcOffset, 0xDD2C68F1DCDF0249, 1200);
store<u64>(crcOffset, 0xA7F41839ECEA8B30, 1208);
store<u64>(crcOffset, 0x438C80A64CE15841, 1216);
store<u64>(crcOffset, 0x3954F06E7CD4D138, 1224);
store<u64>(crcOffset, 0xB63C61362C8A4AB3, 1232);
store<u64>(crcOffset, 0xCCE411FE1CBFC3CA, 1240);
store<u64>(crcOffset, 0x83B465D5D4A0EECE, 1248);
store<u64>(crcOffset, 0xF96C151DE49567B7, 1256);
store<u64>(crcOffset, 0x76048445B4CBFC3C, 1264);
store<u64>(crcOffset, 0x0CDCF48D84FE7545, 1272);
store<u64>(crcOffset, 0x6FBD6D5EBD3716B7, 1280);
store<u64>(crcOffset, 0x15651D968D029FCE, 1288);
store<u64>(crcOffset, 0x9A0D8CCEDD5C0445, 1296);
store<u64>(crcOffset, 0xE0D5FC06ED698D3C, 1304);
store<u64>(crcOffset, 0xAF85882D2576A038, 1312);
store<u64>(crcOffset, 0xD55DF8E515432941, 1320);
store<u64>(crcOffset, 0x5A3569BD451DB2CA, 1328);
store<u64>(crcOffset, 0x20ED197575283BB3, 1336);
store<u64>(crcOffset, 0xC49581EAD523E8C2, 1344);
store<u64>(crcOffset, 0xBE4DF122E51661BB, 1352);
store<u64>(crcOffset, 0x3125607AB548FA30, 1360);
store<u64>(crcOffset, 0x4BFD10B2857D7349, 1368);
store<u64>(crcOffset, 0x04AD64994D625E4D, 1376);
store<u64>(crcOffset, 0x7E7514517D57D734, 1384);
store<u64>(crcOffset, 0xF11D85092D094CBF, 1392);
store<u64>(crcOffset, 0x8BC5F5C11D3CC5C6, 1400);
store<u64>(crcOffset, 0x12B5926535897936, 1408);
store<u64>(crcOffset, 0x686DE2AD05BCF04F, 1416);
store<u64>(crcOffset, 0xE70573F555E26BC4, 1424);
store<u64>(crcOffset, 0x9DDD033D65D7E2BD, 1432);
store<u64>(crcOffset, 0xD28D7716ADC8CFB9, 1440);
store<u64>(crcOffset, 0xA85507DE9DFD46C0, 1448);
store<u64>(crcOffset, 0x273D9686CDA3DD4B, 1456);
store<u64>(crcOffset, 0x5DE5E64EFD965432, 1464);
store<u64>(crcOffset, 0xB99D7ED15D9D8743, 1472);
store<u64>(crcOffset, 0xC3450E196DA80E3A, 1480);
store<u64>(crcOffset, 0x4C2D9F413DF695B1, 1488);
store<u64>(crcOffset, 0x36F5EF890DC31CC8, 1496);
store<u64>(crcOffset, 0x79A59BA2C5DC31CC, 1504);
store<u64>(crcOffset, 0x037DEB6AF5E9B8B5, 1512);
store<u64>(crcOffset, 0x8C157A32A5B7233E, 1520);
store<u64>(crcOffset, 0xF6CD0AFA9582AA47, 1528);
store<u64>(crcOffset, 0x4AD64994D625E4DA, 1536);
store<u64>(crcOffset, 0x300E395CE6106DA3, 1544);
store<u64>(crcOffset, 0xBF66A804B64EF628, 1552);
store<u64>(crcOffset, 0xC5BED8CC867B7F51, 1560);
store<u64>(crcOffset, 0x8AEEACE74E645255, 1568);
store<u64>(crcOffset, 0xF036DC2F7E51DB2C, 1576);
store<u64>(crcOffset, 0x7F5E4D772E0F40A7, 1584);
store<u64>(crcOffset, 0x05863DBF1E3AC9DE, 1592);
store<u64>(crcOffset, 0xE1FEA520BE311AAF, 1600);
store<u64>(crcOffset, 0x9B26D5E88E0493D6, 1608);
store<u64>(crcOffset, 0x144E44B0DE5A085D, 1616);
store<u64>(crcOffset, 0x6E963478EE6F8124, 1624);
store<u64>(crcOffset, 0x21C640532670AC20, 1632);
store<u64>(crcOffset, 0x5B1E309B16452559, 1640);
store<u64>(crcOffset, 0xD476A1C3461BBED2, 1648);
store<u64>(crcOffset, 0xAEAED10B762E37AB, 1656);
store<u64>(crcOffset, 0x37DEB6AF5E9B8B5B, 1664);
store<u64>(crcOffset, 0x4D06C6676EAE0222, 1672);
store<u64>(crcOffset, 0xC26E573F3EF099A9, 1680);
store<u64>(crcOffset, 0xB8B627F70EC510D0, 1688);
store<u64>(crcOffset, 0xF7E653DCC6DA3DD4, 1696);
store<u64>(crcOffset, 0x8D3E2314F6EFB4AD, 1704);
store<u64>(crcOffset, 0x0256B24CA6B12F26, 1712);
store<u64>(crcOffset, 0x788EC2849684A65F, 1720);
store<u64>(crcOffset, 0x9CF65A1B368F752E, 1728);
store<u64>(crcOffset, 0xE62E2AD306BAFC57, 1736);
store<u64>(crcOffset, 0x6946BB8B56E467DC, 1744);
store<u64>(crcOffset, 0x139ECB4366D1EEA5, 1752);
store<u64>(crcOffset, 0x5CCEBF68AECEC3A1, 1760);
store<u64>(crcOffset, 0x2616CFA09EFB4AD8, 1768);
store<u64>(crcOffset, 0xA97E5EF8CEA5D153, 1776);
store<u64>(crcOffset, 0xD3A62E30FE90582A, 1784);
store<u64>(crcOffset, 0xB0C7B7E3C7593BD8, 1792);
store<u64>(crcOffset, 0xCA1FC72BF76CB2A1, 1800);
store<u64>(crcOffset, 0x45775673A732292A, 1808);
store<u64>(crcOffset, 0x3FAF26BB9707A053, 1816);
store<u64>(crcOffset, 0x70FF52905F188D57, 1824);
store<u64>(crcOffset, 0x0A2722586F2D042E, 1832);
store<u64>(crcOffset, 0x854FB3003F739FA5, 1840);
store<u64>(crcOffset, 0xFF97C3C80F4616DC, 1848);
store<u64>(crcOffset, 0x1BEF5B57AF4DC5AD, 1856);
store<u64>(crcOffset, 0x61372B9F9F784CD4, 1864);
store<u64>(crcOffset, 0xEE5FBAC7CF26D75F, 1872);
store<u64>(crcOffset, 0x9487CA0FFF135E26, 1880);
store<u64>(crcOffset, 0xDBD7BE24370C7322, 1888);
store<u64>(crcOffset, 0xA10FCEEC0739FA5B, 1896);
store<u64>(crcOffset, 0x2E675FB4576761D0, 1904);
store<u64>(crcOffset, 0x54BF2F7C6752E8A9, 1912);
store<u64>(crcOffset, 0xCDCF48D84FE75459, 1920);
store<u64>(crcOffset, 0xB71738107FD2DD20, 1928);
store<u64>(crcOffset, 0x387FA9482F8C46AB, 1936);
store<u64>(crcOffset, 0x42A7D9801FB9CFD2, 1944);
store<u64>(crcOffset, 0x0DF7ADABD7A6E2D6, 1952);
store<u64>(crcOffset, 0x772FDD63E7936BAF, 1960);
store<u64>(crcOffset, 0xF8474C3BB7CDF024, 1968);
store<u64>(crcOffset, 0x829F3CF387F8795D, 1976);
store<u64>(crcOffset, 0x66E7A46C27F3AA2C, 1984);
store<u64>(crcOffset, 0x1C3FD4A417C62355, 1992);
store<u64>(crcOffset, 0x935745FC4798B8DE, 2000);
store<u64>(crcOffset, 0xE98F353477AD31A7, 2008);
store<u64>(crcOffset, 0xA6DF411FBFB21CA3, 2016);
store<u64>(crcOffset, 0xDC0731D78F8795DA, 2024);
store<u64>(crcOffset, 0x536FA08FDFD90E51, 2032);
store<u64>(crcOffset, 0x29B7D047EFEC8728, 2040);
