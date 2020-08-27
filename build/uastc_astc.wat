(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "memory" (memory $0 0))
 (global $assembly/uastc-astc/firstRun (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (export "transcode" (func $assembly/uastc-astc/transcode))
 (func $assembly/uastc-astc/storeTritsAstc
  i32.const 1536
  i64.const 650776764766880000
  i64.store
  i32.const 1544
  i64.const 1735597882344542218
  i64.store
  i32.const 1552
  i64.const 1952049901571611161
  i64.store
  i32.const 1560
  i64.const 2676301604231974156
  i64.store
  i32.const 1568
  i64.const 3761122721743317030
  i64.store
  i32.const 1576
  i64.const 3109492800697677365
  i64.store
  i32.const 1584
  i64.const 4701808782525282099
  i64.store
  i32.const 1592
  i64.const 5785517246076240962
  i64.store
  i32.const 1600
  i64.const 6510331864162783825
  i64.store
  i32.const 1608
  i64.const 5569927269768185667
  i64.store
  i32.const 1616
  i64.const -8609046833500422066
  i64.store
  i32.const 1624
  i64.const -7596001839262168439
  i64.store
  i32.const 1632
  i64.const -7524517138261173864
  i64.store
  i32.const 1640
  i64.const -6583521994303763301
  i64.store
  i32.const 1648
  i64.const -5570477017043261787
  i64.store
  i32.const 1656
  i64.const -6367040141341051468
  i64.store
  i32.const 1664
  i64.const -4562518415084375125
  i64.store
  i32.const 1672
  i64.const -3834312851682180415
  i64.store
  i32.const 1680
  i64.const -2749211358622723632
  i64.store
  i32.const 1688
  i64.const -3685114565415681062
  i64.store
  i32.const 1696
  i64.const 7378413938219732685
  i64.store
  i32.const 1704
  i64.const 8463515431278897512
  i64.store
  i32.const 1712
  i64.const 8316854813823957110
  i64.store
  i32.const 1720
  i64.const -2098149186491090057
  i64.store
  i32.const 1728
  i64.const -1013051625802635804
  i64.store
  i32.const 1736
  i64.const -2019026635231726350
  i64.store
  i32.const 1744
  i64.const -1230066556261372953
  i64.store
  i32.const 1752
  i64.const 6727320376107212060
  i64.store
  i32.const 1760
  i64.const -2540384521977750434
  i64.store
  i32.const 1768
  i64.const -2323963651270123811
  i64.store
  i32.const 1776
  i64.const 8289660
  i64.store
 )
 (func $assembly/uastc-astc/transcode (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i64)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  memory.size
  i32.const 1
  i32.sub
  i32.const 16
  i32.shl
  local.get $0
  i32.const 4
  i32.shl
  local.tee $6
  i32.lt_s
  if
   i32.const 1
   return
  end
  global.get $assembly/uastc-astc/firstRun
  if
   i32.const 0
   i64.const 507797397956067339
   i64.store
   i32.const 8
   i64.const 651911486553854475
   i64.store
   i32.const 16
   i64.const 579856091522400267
   i64.store
   i32.const 24
   i64.const 940128668582810123
   i64.store
   i32.const 32
   i64.const 507799596979322891
   i64.store
   i32.const 40
   i64.const 651911486553854475
   i64.store
   i32.const 48
   i64.const 579839598847983627
   i64.store
   i32.const 56
   i64.const 940128668582810123
   i64.store
   i32.const 64
   i64.const 507801796002578443
   i64.store
   i32.const 72
   i64.const 651911486553854475
   i64.store
   i32.const 80
   i64.const 579856091522400267
   i64.store
   i32.const 88
   i64.const 940128668582810123
   i64.store
   i32.const 96
   i64.const 507799596979322891
   i64.store
   i32.const 104
   i64.const 651911486553854475
   i64.store
   i32.const 112
   i64.const 579839598847983627
   i64.store
   i32.const 120
   i64.const 940128668582810123
   i64.store
   i32.const 0
   local.set $0
   loop $for-loop|0
    local.get $0
    i32.const 128
    i32.lt_s
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $0
     i32.const 5
     i32.rem_s
     local.get $0
     i32.const 125
     i32.rem_s
     i32.const 25
     i32.div_s
     i32.const 8
     i32.shl
     local.get $0
     i32.const 25
     i32.rem_s
     i32.const 5
     i32.div_s
     i32.const 4
     i32.shl
     i32.or
     i32.or
     i32.store16 offset=256
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   i32.const 0
   local.set $0
   loop $for-loop|00
    local.get $0
    i32.const 256
    i32.lt_s
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $0
     i32.const 3
     i32.rem_s
     local.get $0
     i32.const 243
     i32.rem_s
     i32.const 81
     i32.div_s
     i32.const 8
     i32.shl
     local.get $0
     i32.const 81
     i32.rem_s
     i32.const 27
     i32.div_s
     i32.const 6
     i32.shl
     i32.or
     local.get $0
     i32.const 27
     i32.rem_s
     i32.const 9
     i32.div_s
     i32.const 4
     i32.shl
     i32.or
     local.get $0
     i32.const 9
     i32.rem_s
     i32.const 3
     i32.div_s
     i32.const 2
     i32.shl
     i32.or
     i32.or
     i32.store16 offset=512
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|00
    end
   end
   loop $for-loop|01
    local.get $1
    i32.const 4
    i32.lt_s
    if
     i32.const 511
     i32.const 0
     local.get $1
     i32.const 1
     i32.and
     select
     local.set $4
     i32.const 278
     i32.const 0
     local.get $1
     i32.const 2
     i32.and
     select
     local.set $18
     i32.const 0
     local.set $0
     loop $for-loop|1
      local.get $0
      i32.const 3
      i32.lt_s
      if
       local.get $1
       local.get $0
       i32.const 2
       i32.shl
       i32.or
       local.get $4
       i32.const 128
       i32.and
       local.get $4
       local.get $18
       local.get $0
       i32.const 93
       i32.mul
       i32.add
       i32.xor
       i32.const 2
       i32.shr_s
       i32.or
       i32.store8 offset=1024
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|01
    end
   end
   i32.const 0
   local.set $1
   loop $for-loop|02
    local.get $1
    i32.const 8
    i32.lt_s
    if
     i32.const 511
     i32.const 0
     local.get $1
     i32.const 1
     i32.and
     select
     local.set $4
     local.get $1
     i32.const 6
     i32.and
     i32.const 65
     i32.mul
     local.get $1
     i32.const 2
     i32.shr_s
     i32.or
     local.set $18
     i32.const 0
     local.set $0
     loop $for-loop|13
      local.get $0
      i32.const 5
      i32.lt_s
      if
       local.get $1
       local.get $0
       i32.const 3
       i32.shl
       i32.or
       local.get $4
       i32.const 128
       i32.and
       local.get $4
       local.get $18
       local.get $0
       i32.const 26
       i32.mul
       i32.add
       i32.xor
       i32.const 2
       i32.shr_s
       i32.or
       i32.store8 offset=1036
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       br $for-loop|13
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|02
    end
   end
   i32.const 0
   local.set $1
   loop $for-loop|04
    local.get $1
    i32.const 16
    i32.lt_s
    if
     i32.const 511
     i32.const 0
     local.get $1
     i32.const 1
     i32.and
     select
     local.set $4
     local.get $1
     i32.const 1
     i32.shr_s
     i32.const 65
     i32.mul
     local.set $18
     i32.const 0
     local.set $0
     loop $for-loop|15
      local.get $0
      i32.const 3
      i32.lt_s
      if
       local.get $1
       local.get $0
       i32.const 4
       i32.shl
       i32.or
       local.get $4
       i32.const 128
       i32.and
       local.get $4
       local.get $18
       local.get $0
       i32.const 22
       i32.mul
       i32.add
       i32.xor
       i32.const 2
       i32.shr_s
       i32.or
       i32.store8 offset=1076
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       br $for-loop|15
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|04
    end
   end
   i32.const 0
   local.set $1
   loop $for-loop|06
    local.get $1
    i32.const 32
    i32.lt_s
    if
     i32.const 511
     i32.const 0
     local.get $1
     i32.const 1
     i32.and
     select
     local.set $4
     local.get $1
     i32.const 30
     i32.and
     i32.const 4
     i32.shl
     local.get $1
     i32.const 4
     i32.shr_s
     i32.or
     local.set $18
     i32.const 0
     local.set $0
     loop $for-loop|17
      local.get $0
      i32.const 5
      i32.lt_s
      if
       local.get $1
       local.get $0
       i32.const 5
       i32.shl
       i32.or
       local.get $4
       i32.const 128
       i32.and
       local.get $4
       local.get $18
       local.get $0
       i32.const 6
       i32.mul
       i32.add
       i32.xor
       i32.const 2
       i32.shr_s
       i32.or
       i32.store8 offset=1124
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       br $for-loop|17
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|06
    end
   end
   i32.const 0
   local.set $1
   loop $for-loop|08
    local.get $1
    i32.const 64
    i32.lt_s
    if
     i32.const 511
     i32.const 0
     local.get $1
     i32.const 1
     i32.and
     select
     local.set $4
     local.get $1
     i32.const 62
     i32.and
     i32.const 3
     i32.shl
     local.get $1
     i32.const 5
     i32.shr_s
     i32.or
     local.set $18
     i32.const 0
     local.set $0
     loop $for-loop|19
      local.get $0
      i32.const 3
      i32.lt_s
      if
       local.get $1
       local.get $0
       i32.const 6
       i32.shl
       i32.or
       local.get $4
       i32.const 128
       i32.and
       local.get $4
       local.get $18
       local.get $0
       i32.const 5
       i32.mul
       i32.add
       i32.xor
       i32.const 2
       i32.shr_s
       i32.or
       i32.store8 offset=1284
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       br $for-loop|19
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|08
    end
   end
   call $assembly/uastc-astc/storeTritsAstc
   i32.const 1792
   i64.const 723118028493029632
   i64.store
   i32.const 1800
   i64.const 1735032724761086987
   i64.store
   i32.const 1808
   i64.const 2095595517208369689
   i64.store
   i32.const 1816
   i64.const 2965660087938523142
   i64.store
   i32.const 1824
   i64.const 3761405300627483434
   i64.store
   i32.const 1832
   i64.const 3831759798584097080
   i64.store
   i32.const 1840
   i64.const 5207361020988755517
   i64.store
   i32.const 1848
   i64.const 6003950658557528649
   i64.store
   i32.const 1856
   i64.const 5567958061741070420
   i64.store
   i32.const 1864
   i64.const 7233733596850576725
   i64.store
   i32.const 1872
   i64.const 8246496003653003624
   i64.store
   i32.const 1880
   i64.const 7312855660897006707
   i64.store
   i32.const 1888
   i64.const 5135906113358493037
   i64.store
   i32.const 1896
   i64.const 8608118655918501414
   i64.store
   i32.const 1904
   i64.const 4494414854810392406
   i64.store
   i32.const 1912
   i64.const 134204567335
   i64.store
   i32.const 1920
   i64.const 43910233810665732
   i64.store
   i32.const 1928
   i64.const 3199751618743
   i64.store
   i32.const 1936
   i64.const 1090980806991
   i64.store
   i32.const 1944
   i64.const 38562333805510692
   i64.store
   i32.const 1952
   i64.const 79095439130296481
   i64.store
   i32.const 1960
   i64.const 139332170781229358
   i64.store
   i32.const 1968
   i64.const 224901104885957201
   i64.store
   i32.const 1976
   i64.const 4264967275308
   i64.store
   i32.const 1984
   i64.const 8162843045396508
   i64.store
   i32.const 1992
   i64.const 20266657885257819
   i64.store
   i32.const 2000
   i64.const 32088362106749077
   i64.store
   i32.const 2008
   i64.const 10977859100279280
   i64.store
   i32.const 2016
   i64.const 43910281104720124
   i64.store
   i32.const 2024
   i64.const 76844713060204660
   i64.store
   i32.const 2032
   i64.const 54888677044060844
   i64.store
   i32.const 2040
   i64.const 34341558
   i64.store
   i32.const 2048
   i64.const -1152920405967621376
   i64.store
   i32.const 2056
   i64.const 67554062861598735
   i64.store
   i32.const 2064
   i64.const -8608518098300685517
   i64.store
   i32.const 2072
   i64.const 1230025857588972748
   i64.store
   i32.const 2080
   i64.const 1081127860361053252
   i64.store
   i32.const 2088
   i64.const 3222015168
   i64.store
   i32.const 2096
   i64.const -3710964773253021456
   i64.store
   i32.const 2104
   i64.const -3688729809738600193
   i64.store
   i32.const 2112
   i64.const 3459739780649991171
   i64.store
   i32.const 2120
   i64.const 1383572655826796750
   i64.store
   i32.const 2128
   i64.const 1026823033343
   i64.store
   i32.const 2176
   i64.const -1384838118413644596
   i64.store
   i32.const 2184
   i64.const 1404842948774606719
   i64.store
   i32.const 2192
   i64.const 1729380607644125184
   i64.store
   i32.const 2200
   i64.const 1152921435904081943
   i64.store
   i32.const 2208
   i64.const 39416179994918769
   i64.store
   i32.const 2216
   i64.const 615993906806354704
   i64.store
   i32.const 2224
   i64.const 6149084815177469679
   i64.store
   i32.const 2232
   i64.const 919146255
   i64.store
   i32.const 0
   global.set $assembly/uastc-astc/firstRun
  end
  i32.const 65536
  local.set $18
  local.get $6
  i32.const 65536
  i32.add
  local.set $43
  loop $for-loop|010
   local.get $18
   local.get $43
   i32.lt_s
   if
    local.get $18
    i64.load offset=8
    local.set $5
    block $break|1 (result i64)
     local.get $18
     i64.load
     local.tee $3
     i32.wrap_i64
     i32.const 127
     i32.and
     i32.load8_u
     local.tee $0
     i32.const 4
     i32.eq
     local.set $7
     block $case18|1
      block $case17|1
       block $case16|1
        block $case15|1
         block $case14|1
          block $case13|1
           block $case12|1
            block $case11|1
             block $case10|1
              block $case9|1
               block $case8|1
                block $case7|1
                 block $case6|1
                  block $case5|1
                   block $case4|1
                    block $case3|1
                     block $case2|1
                      block $case1|1
                       block $case0|1
                        i32.const 7
                        local.get $0
                        local.get $7
                        select
                        br_table $case0|1 $case1|1 $case2|1 $case3|1 $case18|1 $case5|1 $case6|1 $case4|1 $case7|1 $case8|1 $case9|1 $case10|1 $case11|1 $case12|1 $case13|1 $case14|1 $case15|1 $case16|1 $case17|1 $case18|1
                       end
                       local.get $5
                       i64.const -16
                       i64.and
                       local.get $5
                       i64.const 1
                       i64.shr_s
                       i64.const 7
                       i64.and
                       i64.or
                       local.tee $2
                       i64.const -1
                       i64.xor
                       local.get $2
                       local.get $3
                       i64.const 53
                       i64.shr_s
                       i32.wrap_i64
                       i32.const 63
                       i32.and
                       local.tee $1
                       local.get $3
                       i64.const 19
                       i64.shr_s
                       i32.wrap_i64
                       i32.const 255
                       i32.and
                       i32.const 1
                       i32.shl
                       i32.load16_s offset=512
                       local.tee $0
                       i32.const 8
                       i32.shr_s
                       local.tee $4
                       i32.const 6
                       i32.shl
                       i32.or
                       i32.load8_u offset=1284
                       local.get $3
                       i64.const 29
                       i64.shr_s
                       i32.wrap_i64
                       i32.const 63
                       i32.and
                       local.tee $6
                       local.get $0
                       i32.const 3
                       i32.and
                       local.tee $7
                       i32.const 6
                       i32.shl
                       i32.or
                       i32.load8_u offset=1284
                       local.get $3
                       i64.const 41
                       i64.shr_s
                       i32.wrap_i64
                       i32.const 63
                       i32.and
                       local.tee $8
                       local.get $0
                       i32.const 4
                       i32.shr_s
                       i32.const 3
                       i32.and
                       local.tee $9
                       i32.const 6
                       i32.shl
                       i32.or
                       i32.load8_u offset=1284
                       i32.add
                       i32.add
                       local.get $3
                       i64.const 59
                       i64.shr_s
                       i32.wrap_i64
                       i32.const 31
                       i32.and
                       local.get $5
                       i64.const 5
                       i64.shl
                       i32.wrap_i64
                       i32.const 32
                       i32.and
                       i32.or
                       local.tee $14
                       local.get $3
                       i64.const 27
                       i64.shr_s
                       i32.wrap_i64
                       i32.const 3
                       i32.and
                       i32.const 1
                       i32.shl
                       i32.load16_s offset=512
                       i32.const 3
                       i32.and
                       local.tee $15
                       i32.const 6
                       i32.shl
                       i32.or
                       i32.load8_u offset=1284
                       local.get $3
                       i64.const 35
                       i64.shr_s
                       i32.wrap_i64
                       i32.const 63
                       i32.and
                       local.tee $10
                       local.get $0
                       i32.const 2
                       i32.shr_s
                       i32.const 3
                       i32.and
                       local.tee $11
                       i32.const 6
                       i32.shl
                       i32.or
                       i32.load8_u offset=1284
                       local.get $3
                       i64.const 47
                       i64.shr_s
                       i32.wrap_i64
                       i32.const 63
                       i32.and
                       local.tee $12
                       local.get $0
                       i32.const 6
                       i32.shr_s
                       i32.const 3
                       i32.and
                       local.tee $13
                       i32.const 6
                       i32.shl
                       i32.or
                       i32.load8_u offset=1284
                       i32.add
                       i32.add
                       i32.gt_s
                       local.tee $0
                       select
                       local.tee $2
                       i64.const 1
                       i64.shr_s
                       i64.const 6148914691236517205
                       i64.and
                       local.get $2
                       i64.const 6148914691236517205
                       i64.and
                       i64.const 1
                       i64.shl
                       i64.or
                       local.set $2
                       local.get $10
                       local.get $6
                       local.get $0
                       select
                       i64.extend_i32_s
                       local.get $6
                       local.get $10
                       local.get $0
                       select
                       i32.const 8
                       i32.shl
                       i64.extend_i32_s
                       local.get $12
                       local.get $8
                       local.get $0
                       select
                       i32.const 16
                       i32.shl
                       i64.extend_i32_s
                       local.get $8
                       local.get $12
                       local.get $0
                       select
                       i32.const 23
                       i32.shl
                       i64.extend_i32_s
                       local.get $1
                       local.get $14
                       local.get $0
                       select
                       i64.extend_i32_s
                       i64.const 38
                       i64.shl
                       local.get $14
                       local.get $1
                       local.get $0
                       select
                       i64.extend_i32_s
                       i64.const 31
                       i64.shl
                       i64.or
                       i64.or
                       i64.or
                       i64.or
                       i64.or
                       local.get $4
                       local.get $15
                       local.get $0
                       select
                       i32.load8_u offset=1536
                       local.tee $1
                       i32.const 128
                       i32.and
                       i64.extend_i32_s
                       i64.const 30
                       i64.shl
                       local.get $1
                       i32.const 96
                       i32.and
                       i32.const 24
                       i32.shl
                       i64.extend_i32_s
                       i64.or
                       local.get $1
                       i32.const 16
                       i32.and
                       i32.const 18
                       i32.shl
                       i64.extend_i32_s
                       i64.or
                       local.get $1
                       i32.const 12
                       i32.and
                       i32.const 12
                       i32.shl
                       i64.extend_i32_s
                       i64.or
                       local.get $1
                       i32.const 3
                       i32.and
                       i32.const 6
                       i32.shl
                       i64.extend_i32_s
                       i64.or
                       i64.const 38
                       i64.shl
                       local.get $15
                       local.get $4
                       local.get $0
                       select
                       i32.const 3
                       i32.mul
                       local.get $9
                       local.get $13
                       local.get $0
                       select
                       i32.add
                       i32.const 3
                       i32.mul
                       local.get $13
                       local.get $9
                       local.get $0
                       select
                       i32.add
                       i32.const 3
                       i32.mul
                       local.get $7
                       local.get $11
                       local.get $0
                       select
                       i32.add
                       i32.const 3
                       i32.mul
                       local.get $11
                       local.get $7
                       local.get $0
                       select
                       i32.add
                       i32.load8_u offset=1536
                       local.tee $0
                       i32.const 128
                       i32.and
                       i64.extend_i32_s
                       i64.const 30
                       i64.shl
                       local.get $0
                       i32.const 96
                       i32.and
                       i32.const 24
                       i32.shl
                       i64.extend_i32_s
                       i64.or
                       local.get $0
                       i32.const 16
                       i32.and
                       i32.const 18
                       i32.shl
                       i64.extend_i32_s
                       i64.or
                       local.get $0
                       i32.const 12
                       i32.and
                       i32.const 12
                       i32.shl
                       i64.extend_i32_s
                       i64.or
                       local.get $0
                       i32.const 3
                       i32.and
                       i32.const 6
                       i32.shl
                       i64.extend_i32_s
                       i64.or
                       i64.or
                       i64.or
                       i64.const 17
                       i64.shl
                       i64.const 66114
                       i64.or
                       local.set $16
                       local.get $2
                       i64.const 2
                       i64.shr_s
                       i64.const 3689348814741910323
                       i64.and
                       local.get $2
                       i64.const 3689348814741910323
                       i64.and
                       i64.const 2
                       i64.shl
                       i64.or
                       local.tee $2
                       i64.const 4
                       i64.shr_s
                       i64.const 1085102592571150095
                       i64.and
                       local.get $2
                       i64.const 1085102592571150095
                       i64.and
                       i64.const 4
                       i64.shl
                       i64.or
                       local.tee $2
                       i64.const 8
                       i64.shr_s
                       i64.const 71777214294589695
                       i64.and
                       local.get $2
                       i64.const 71777214294589695
                       i64.and
                       i64.const 8
                       i64.shl
                       i64.or
                       local.tee $2
                       i64.const 16
                       i64.shr_s
                       i64.const 281470681808895
                       i64.and
                       local.get $2
                       i64.const 281470681808895
                       i64.and
                       i64.const 16
                       i64.shl
                       i64.or
                       i64.const 32
                       i64.rotr
                       br $break|1
                      end
                      local.get $5
                      i64.const 4
                      i64.shr_s
                      i64.const 4294967292
                      i64.and
                      local.get $5
                      i64.const 5
                      i64.shr_s
                      i64.const 1
                      i64.and
                      i64.or
                      i32.wrap_i64
                      local.tee $0
                      i32.const -1
                      i32.xor
                      local.get $0
                      local.get $3
                      i64.const 53
                      i64.shr_s
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $4
                      local.get $3
                      i64.const 21
                      i64.shr_s
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $6
                      local.get $3
                      i64.const 37
                      i64.shr_s
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $7
                      i32.add
                      i32.add
                      local.get $3
                      i64.const 61
                      i64.shr_s
                      i32.wrap_i64
                      i32.const 7
                      i32.and
                      local.get $5
                      i64.const 3
                      i64.shl
                      i32.wrap_i64
                      i32.const 248
                      i32.and
                      i32.or
                      local.tee $8
                      local.get $3
                      i64.const 29
                      i64.shr_s
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $9
                      local.get $3
                      i64.const 45
                      i64.shr_s
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $10
                      i32.add
                      i32.add
                      i32.gt_s
                      local.tee $0
                      select
                      local.tee $1
                      i32.const 1
                      i32.shr_s
                      i32.const 1431655765
                      i32.and
                      local.get $1
                      i32.const 1431655765
                      i32.and
                      i32.const 1
                      i32.shl
                      i32.or
                      local.set $1
                      local.get $9
                      i64.extend_i32_s
                      local.get $10
                      i32.const 16
                      i32.shl
                      i64.extend_i32_s
                      local.get $8
                      i64.extend_i32_s
                      i64.const 32
                      i64.shl
                      i64.or
                      i64.or
                      i64.const 0
                      i64.const 8
                      local.get $0
                      select
                      i64.shl
                      local.get $6
                      i64.extend_i32_s
                      local.get $7
                      i32.const 16
                      i32.shl
                      i64.extend_i32_s
                      local.get $4
                      i64.extend_i32_s
                      i64.const 32
                      i64.shl
                      i64.or
                      i64.or
                      i64.const 8
                      i64.const 0
                      local.get $0
                      select
                      i64.shl
                      i64.or
                      local.tee $2
                      i64.const 17
                      i64.shl
                      i64.const 65602
                      i64.or
                      local.set $16
                      local.get $1
                      i32.const 2
                      i32.shr_s
                      i32.const 858993459
                      i32.and
                      local.get $1
                      i32.const 858993459
                      i32.and
                      i32.const 2
                      i32.shl
                      i32.or
                      local.tee $0
                      i32.const 4
                      i32.shr_s
                      i32.const 252645135
                      i32.and
                      local.get $0
                      i32.const 252645135
                      i32.and
                      i32.const 4
                      i32.shl
                      i32.or
                      local.tee $0
                      i32.const 8
                      i32.shr_s
                      i32.const 16711935
                      i32.and
                      local.get $0
                      i32.const 16711935
                      i32.and
                      i32.const 8
                      i32.shl
                      i32.or
                      local.tee $0
                      i32.const 16
                      i32.shr_s
                      i32.const 65535
                      i32.and
                      local.get $0
                      i32.const 16
                      i32.shl
                      i32.or
                      i64.extend_i32_s
                      i64.const 32
                      i64.shl
                      local.get $2
                      i64.const 47
                      i64.shr_u
                      i64.or
                      br $break|1
                     end
                     local.get $3
                     i64.const 20
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 31
                     i32.and
                     local.tee $1
                     i32.const 29
                     i32.gt_s
                     if
                      i64.const -516
                      local.set $16
                      i64.const -4294901761
                      br $break|1
                     end
                     local.get $5
                     i64.const 9
                     i64.shr_s
                     i64.const 3
                     i64.and
                     i64.const 281474976710655
                     i64.const 5651576228422017
                     i64.const -4286381023083155150
                     local.get $1
                     i32.const 15
                     i32.gt_s
                     select
                     local.get $1
                     i32.const 15
                     i32.and
                     i32.const 2
                     i32.shl
                     i64.extend_i32_s
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     i32.const 3
                     i32.mul
                     local.tee $0
                     i32.const 3
                     i32.add
                     i64.extend_i32_s
                     i64.shl
                     local.get $5
                     i64.const 7
                     i64.shr_s
                     i64.and
                     i64.const 281474976710655
                     local.get $0
                     i32.const 2
                     i32.add
                     i64.extend_i32_s
                     i64.shl
                     i64.const 281474976710648
                     i64.xor
                     local.get $5
                     i64.const 8
                     i64.shr_s
                     i64.and
                     i64.or
                     i64.or
                     local.set $2
                     local.get $3
                     i64.const 41
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $6
                     local.get $3
                     i64.const 25
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $7
                     local.get $3
                     i64.const 33
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $8
                     i32.add
                     i32.add
                     local.get $3
                     i64.const 45
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $9
                     local.get $3
                     i64.const 29
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $10
                     local.get $3
                     i64.const 37
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $11
                     i32.add
                     i32.add
                     i32.gt_s
                     local.set $4
                     local.get $5
                     i64.const 1
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $12
                     local.get $3
                     i64.const 49
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $13
                     local.get $3
                     i64.const 57
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $14
                     i32.add
                     i32.add
                     local.get $5
                     i64.const 5
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $15
                     local.get $3
                     i64.const 53
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $17
                     local.get $3
                     i64.const 61
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 7
                     i32.and
                     local.get $5
                     i64.const 3
                     i64.shl
                     i32.wrap_i64
                     i32.const 8
                     i32.and
                     i32.or
                     local.tee $19
                     i32.add
                     i32.add
                     i32.gt_s
                     local.set $0
                     local.get $1
                     i32.const 1
                     i32.shl
                     i32.load16_u offset=1984
                     i32.const 13
                     i32.shl
                     i64.extend_i32_s
                     local.get $10
                     local.get $9
                     i32.const 16
                     i32.shl
                     local.get $11
                     i32.const 8
                     i32.shl
                     i32.or
                     i32.or
                     i32.const 0
                     i32.const 4
                     local.get $4
                     select
                     i32.shl
                     local.get $7
                     local.get $6
                     i32.const 16
                     i32.shl
                     local.get $8
                     i32.const 8
                     i32.shl
                     i32.or
                     i32.or
                     i32.const 4
                     i32.const 0
                     local.get $4
                     select
                     i32.shl
                     i32.or
                     i64.extend_i32_s
                     local.get $17
                     local.get $15
                     i32.const 16
                     i32.shl
                     local.get $19
                     i32.const 8
                     i32.shl
                     i32.or
                     i32.or
                     i32.const 0
                     i32.const 4
                     local.get $0
                     select
                     i32.shl
                     local.get $13
                     local.get $12
                     i32.const 16
                     i32.shl
                     local.get $14
                     i32.const 8
                     i32.shl
                     i32.or
                     i32.or
                     i32.const 4
                     i32.const 0
                     local.get $0
                     select
                     i32.shl
                     i32.or
                     i64.extend_i32_s
                     i64.const 24
                     i64.shl
                     i64.or
                     local.tee $3
                     i64.const 29
                     i64.shl
                     i64.or
                     i64.const 268437587
                     i64.or
                     local.set $16
                     local.get $3
                     i64.const 35
                     i64.shr_u
                     local.get $0
                     i32.const 0
                     local.get $4
                     select
                     if (result i64)
                      local.get $2
                      i64.const 281474976710655
                      i64.xor
                     else
                      local.get $0
                      local.get $4
                      i32.ne
                      if (result i64)
                       local.get $2
                       local.get $1
                       i32.const 1
                       i32.shl
                       i32.load16_u offset=2176
                       i64.extend_i32_s
                       local.tee $2
                       local.get $2
                       i64.const 16
                       i64.shl
                       i64.or
                       i64.const 4278190335
                       i64.and
                       local.tee $2
                       local.get $2
                       i64.const 8
                       i64.shl
                       i64.or
                       i64.const 1031043870735
                       i64.and
                       local.tee $2
                       local.get $2
                       i64.const 4
                       i64.shl
                       i64.or
                       i64.const 13403570319555
                       i64.and
                       local.tee $2
                       local.get $2
                       i64.const 2
                       i64.shl
                       i64.or
                       i64.const 40210710958665
                       i64.and
                       i64.const 7
                       i64.mul
                       local.tee $2
                       local.get $2
                       i64.const 281474976710655
                       i64.xor
                       local.get $0
                       select
                       i64.xor
                      else
                       local.get $2
                      end
                     end
                     local.tee $2
                     i64.const 1
                     i64.shr_s
                     i64.const 6148914691236517205
                     i64.and
                     local.get $2
                     i64.const 6148914691236517205
                     i64.and
                     i64.const 1
                     i64.shl
                     i64.or
                     local.tee $2
                     i64.const 2
                     i64.shr_s
                     i64.const 3689348814741910323
                     i64.and
                     local.get $2
                     i64.const 3689348814741910323
                     i64.and
                     i64.const 2
                     i64.shl
                     i64.or
                     local.tee $2
                     i64.const 4
                     i64.shr_s
                     i64.const 1085102592571150095
                     i64.and
                     local.get $2
                     i64.const 1085102592571150095
                     i64.and
                     i64.const 4
                     i64.shl
                     i64.or
                     local.tee $2
                     i64.const 8
                     i64.shr_s
                     i64.const 71777214294589695
                     i64.and
                     local.get $2
                     i64.const 71777214294589695
                     i64.and
                     i64.const 8
                     i64.shl
                     i64.or
                     local.tee $2
                     i64.const 16
                     i64.shr_s
                     i64.const 281470681808895
                     i64.and
                     local.get $2
                     i64.const 281470681808895
                     i64.and
                     i64.const 16
                     i64.shl
                     i64.or
                     i64.const 32
                     i64.rotr
                     i64.or
                     br $break|1
                    end
                    local.get $3
                    i64.const 20
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 15
                    i32.and
                    local.tee $8
                    i32.const 10
                    i32.gt_s
                    if
                     i64.const -516
                     local.set $16
                     i64.const -4294901761
                     br $break|1
                    end
                    local.get $3
                    i64.const 32
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 255
                    i32.and
                    i32.const 1
                    i32.shl
                    i32.load16_s offset=512
                    local.tee $4
                    i32.const 3
                    i32.and
                    local.set $10
                    local.get $3
                    i64.const 40
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 255
                    i32.and
                    i32.const 1
                    i32.shl
                    i32.load16_s offset=512
                    local.tee $6
                    i32.const 3
                    i32.and
                    local.set $9
                    local.get $5
                    i64.const 23
                    i64.shr_s
                    local.tee $2
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.set $11
                    local.get $5
                    i64.const 25
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 1
                    i32.and
                    local.get $5
                    i64.const 22
                    i64.shr_s
                    i32.wrap_i64
                    i32.const -1
                    i64.const 7157868367050
                    local.get $8
                    i32.const 2
                    i32.shl
                    i64.extend_i32_s
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 15
                    i32.and
                    i32.const 1
                    i32.shl
                    local.tee $0
                    i32.const 2
                    i32.add
                    i32.shl
                    i32.and
                    local.get $2
                    i32.wrap_i64
                    i32.const 1
                    i32.const 1476400895
                    local.get $8
                    i32.const 3
                    i32.mul
                    i32.shr_s
                    i32.const 7
                    i32.and
                    i32.const 1
                    i32.add
                    i32.const 1
                    i32.shl
                    local.tee $1
                    i32.const 2
                    i32.add
                    i32.shl
                    i32.const 1
                    i32.sub
                    i32.const -1
                    local.get $0
                    i32.const 1
                    i32.add
                    i32.shl
                    i32.or
                    i32.const -1
                    i32.xor
                    i32.and
                    i32.or
                    local.get $5
                    i64.const 24
                    i64.shr_s
                    i32.wrap_i64
                    i32.const -1
                    local.get $1
                    i32.const 1
                    i32.or
                    i32.shl
                    i32.const -4
                    i32.xor
                    i32.and
                    i32.or
                    i32.or
                    local.set $0
                    local.get $5
                    i64.const 21
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $12
                    local.get $3
                    i64.const 48
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 31
                    i32.and
                    i32.const 1
                    i32.shl
                    i32.load16_s offset=512
                    local.tee $1
                    i32.const 2
                    i32.shr_s
                    i32.const 3
                    i32.and
                    local.tee $13
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    local.get $5
                    i64.const 13
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $14
                    local.get $6
                    i32.const 4
                    i32.shr_s
                    i32.const 3
                    i32.and
                    local.tee $15
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    local.get $5
                    i64.const 17
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $17
                    local.get $6
                    i32.const 8
                    i32.shr_s
                    local.tee $19
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    i32.add
                    i32.add
                    local.get $11
                    local.get $1
                    i32.const 4
                    i32.shr_s
                    i32.const 3
                    i32.and
                    local.tee $20
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    local.get $5
                    i64.const 15
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $23
                    local.get $6
                    i32.const 6
                    i32.shr_s
                    i32.const 3
                    i32.and
                    local.tee $24
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    local.get $5
                    i64.const 19
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $25
                    local.get $1
                    i32.const 3
                    i32.and
                    local.tee $21
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    i32.add
                    i32.add
                    i32.gt_s
                    local.set $1
                    local.get $5
                    i64.const 9
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $26
                    local.get $9
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    local.get $5
                    i64.const 1
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $27
                    local.get $4
                    i32.const 2
                    i32.shr_s
                    i32.const 3
                    i32.and
                    local.tee $7
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    local.get $5
                    i64.const 5
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $28
                    local.get $4
                    i32.const 6
                    i32.shr_s
                    i32.const 3
                    i32.and
                    local.tee $22
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    i32.add
                    i32.add
                    local.get $5
                    i64.const 11
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $29
                    local.get $6
                    i32.const 2
                    i32.shr_s
                    i32.const 3
                    i32.and
                    local.tee $30
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    local.get $5
                    i64.const 3
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $31
                    local.get $4
                    i32.const 4
                    i32.shr_s
                    i32.const 3
                    i32.and
                    local.tee $6
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    local.get $5
                    i64.const 7
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $32
                    local.get $4
                    i32.const 8
                    i32.shr_s
                    local.tee $33
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    i32.add
                    i32.add
                    i32.gt_s
                    local.set $4
                    local.get $22
                    local.get $33
                    local.get $4
                    select
                    i32.const 3
                    i32.mul
                    local.get $33
                    local.get $22
                    local.get $4
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $7
                    local.get $6
                    local.get $4
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $6
                    local.get $7
                    local.get $4
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $3
                    i64.const 24
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 255
                    i32.and
                    i32.const 1
                    i32.shl
                    i32.load16_s offset=512
                    local.tee $6
                    i32.const 8
                    i32.shr_s
                    local.tee $22
                    local.get $10
                    local.get $3
                    i64.const 61
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $33
                    local.get $22
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    local.get $3
                    i64.const 53
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $34
                    local.get $6
                    i32.const 3
                    i32.and
                    local.tee $35
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    local.get $3
                    i64.const 57
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $36
                    local.get $6
                    i32.const 4
                    i32.shr_s
                    i32.const 3
                    i32.and
                    local.tee $37
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    i32.add
                    i32.add
                    local.get $3
                    i64.const 63
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 1
                    i32.and
                    local.get $5
                    i64.const 1
                    i64.shl
                    i32.wrap_i64
                    i32.const 2
                    i32.and
                    i32.or
                    local.tee $38
                    local.get $10
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    local.get $3
                    i64.const 55
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $39
                    local.get $6
                    i32.const 2
                    i32.shr_s
                    i32.const 3
                    i32.and
                    local.tee $40
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    local.get $3
                    i64.const 59
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $41
                    local.get $6
                    i32.const 6
                    i32.shr_s
                    i32.const 3
                    i32.and
                    local.tee $42
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=1024
                    i32.add
                    i32.add
                    i32.gt_s
                    local.tee $6
                    select
                    i32.add
                    i32.load8_u offset=1536
                    local.set $7
                    local.get $8
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=1920
                    i32.const 13
                    i32.shl
                    i64.extend_i32_s
                    local.get $38
                    local.get $33
                    local.get $6
                    select
                    i32.const 15
                    i32.shl
                    local.get $36
                    local.get $41
                    local.get $6
                    select
                    i32.const 11
                    i32.shl
                    i32.or
                    local.get $41
                    local.get $36
                    local.get $6
                    select
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $34
                    local.get $39
                    local.get $6
                    select
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $39
                    local.get $34
                    local.get $6
                    select
                    i32.or
                    i64.extend_i32_s
                    local.get $28
                    local.get $32
                    local.get $4
                    select
                    i32.const 15
                    i32.shl
                    local.get $32
                    local.get $28
                    local.get $4
                    select
                    i32.const 11
                    i32.shl
                    i32.or
                    local.get $27
                    local.get $31
                    local.get $4
                    select
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $31
                    local.get $27
                    local.get $4
                    select
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $33
                    local.get $38
                    local.get $6
                    select
                    i32.or
                    i64.extend_i32_s
                    i64.const 18
                    i64.shl
                    i64.or
                    local.get $25
                    local.get $17
                    local.get $1
                    select
                    i32.const 15
                    i32.shl
                    local.get $14
                    local.get $23
                    local.get $1
                    select
                    i32.const 11
                    i32.shl
                    i32.or
                    local.get $23
                    local.get $14
                    local.get $1
                    select
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $26
                    local.get $29
                    local.get $4
                    select
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $29
                    local.get $26
                    local.get $4
                    select
                    i32.or
                    i64.extend_i32_s
                    i64.const 36
                    i64.shl
                    i64.or
                    local.get $21
                    local.get $19
                    local.get $1
                    select
                    i32.const 3
                    i32.mul
                    local.get $15
                    local.get $24
                    local.get $1
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $24
                    local.get $15
                    local.get $1
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $9
                    local.get $30
                    local.get $4
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $30
                    local.get $9
                    local.get $4
                    select
                    i32.add
                    i32.load8_u offset=1536
                    local.tee $9
                    i32.const 128
                    i32.and
                    i32.const 10
                    i32.shl
                    local.get $9
                    i32.const 96
                    i32.and
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $9
                    i32.const 16
                    i32.and
                    i32.const 6
                    i32.shl
                    i32.or
                    local.get $9
                    i32.const 12
                    i32.and
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $9
                    i32.const 3
                    i32.and
                    i32.const 2
                    i32.shl
                    i32.or
                    i64.extend_i32_s
                    i64.const 36
                    i64.shl
                    local.get $7
                    i32.const 128
                    i32.and
                    i32.const 10
                    i32.shl
                    local.get $7
                    i32.const 96
                    i32.and
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $7
                    i32.const 16
                    i32.and
                    i32.const 6
                    i32.shl
                    i32.or
                    local.get $7
                    i32.const 12
                    i32.and
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $7
                    i32.const 3
                    i32.and
                    i32.const 2
                    i32.shl
                    i32.or
                    i64.extend_i32_s
                    i64.const 18
                    i64.shl
                    i64.or
                    local.get $10
                    local.get $22
                    local.get $6
                    select
                    i32.const 3
                    i32.mul
                    local.get $37
                    local.get $42
                    local.get $6
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $42
                    local.get $37
                    local.get $6
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $35
                    local.get $40
                    local.get $6
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $40
                    local.get $35
                    local.get $6
                    select
                    i32.add
                    i32.load8_u offset=1536
                    local.tee $7
                    i32.const 128
                    i32.and
                    i32.const 10
                    i32.shl
                    local.get $7
                    i32.const 96
                    i32.and
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $7
                    i32.const 16
                    i32.and
                    i32.const 6
                    i32.shl
                    i32.or
                    local.get $7
                    i32.const 12
                    i32.and
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $7
                    i32.const 3
                    i32.and
                    i32.const 2
                    i32.shl
                    i32.or
                    i64.extend_i32_s
                    i64.or
                    i64.or
                    local.tee $2
                    i64.const 29
                    i64.shl
                    i64.or
                    i64.const 268439618
                    i64.or
                    local.set $16
                    local.get $12
                    local.get $11
                    local.get $1
                    select
                    i32.const 8
                    i32.shl
                    local.get $11
                    local.get $12
                    local.get $1
                    select
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $17
                    local.get $25
                    local.get $1
                    select
                    i32.or
                    local.get $13
                    local.get $20
                    local.get $1
                    select
                    i32.const 3
                    i32.mul
                    local.get $20
                    local.get $13
                    local.get $1
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $19
                    local.get $21
                    local.get $1
                    select
                    i32.add
                    i32.load8_u offset=1536
                    local.tee $7
                    i32.const 128
                    i32.and
                    i32.const 10
                    i32.shl
                    local.get $7
                    i32.const 96
                    i32.and
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $7
                    i32.const 16
                    i32.and
                    i32.const 6
                    i32.shl
                    i32.or
                    local.get $7
                    i32.const 12
                    i32.and
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $7
                    i32.const 3
                    i32.and
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.or
                    i32.const 19
                    i32.shl
                    i64.extend_i32_s
                    local.get $1
                    i32.const 0
                    local.get $4
                    i32.const 0
                    local.get $6
                    select
                    select
                    if (result i32)
                     local.get $0
                     i32.const -1
                     i32.xor
                    else
                     i32.const 1
                     local.get $1
                     i32.const 1
                     local.get $4
                     local.get $6
                     select
                     select
                     if (result i32)
                      local.get $0
                      local.get $8
                      i32.const 2
                      i32.shl
                      i32.load offset=2048
                      local.tee $0
                      i32.const 65535
                      i32.and
                      local.tee $7
                      local.get $7
                      i32.const 8
                      i32.shl
                      i32.or
                      i32.const 16711935
                      i32.and
                      local.tee $7
                      local.get $7
                      i32.const 4
                      i32.shl
                      i32.or
                      i32.const 252645135
                      i32.and
                      local.tee $7
                      local.get $7
                      i32.const 2
                      i32.shl
                      i32.or
                      i32.const 858993459
                      i32.and
                      local.tee $7
                      local.get $7
                      i32.const 1
                      i32.shl
                      i32.or
                      i32.const 1431655765
                      i32.and
                      i32.const 3
                      i32.mul
                      local.tee $7
                      local.get $0
                      i32.const 16
                      i32.shr_u
                      local.tee $0
                      local.get $0
                      i32.const 8
                      i32.shl
                      i32.or
                      i32.const 16711935
                      i32.and
                      local.tee $0
                      local.get $0
                      i32.const 4
                      i32.shl
                      i32.or
                      i32.const 252645135
                      i32.and
                      local.tee $0
                      local.get $0
                      i32.const 2
                      i32.shl
                      i32.or
                      i32.const 858993459
                      i32.and
                      local.tee $0
                      local.get $0
                      i32.const 1
                      i32.shl
                      i32.or
                      i32.const 1431655765
                      i32.and
                      i32.const 3
                      i32.mul
                      local.tee $0
                      i32.or
                      i32.const -1
                      i32.xor
                      i32.const 0
                      local.get $6
                      select
                      local.get $7
                      i32.const 0
                      local.get $4
                      select
                      i32.or
                      local.get $0
                      i32.const 0
                      local.get $1
                      select
                      i32.or
                      i32.xor
                     else
                      local.get $0
                     end
                    end
                    local.tee $0
                    i32.const 1
                    i32.shr_s
                    i32.const 1431655765
                    i32.and
                    local.get $0
                    i32.const 1431655765
                    i32.and
                    i32.const 1
                    i32.shl
                    i32.or
                    local.tee $0
                    i32.const 2
                    i32.shr_s
                    i32.const 858993459
                    i32.and
                    local.get $0
                    i32.const 858993459
                    i32.and
                    i32.const 2
                    i32.shl
                    i32.or
                    local.tee $0
                    i32.const 4
                    i32.shr_s
                    i32.const 252645135
                    i32.and
                    local.get $0
                    i32.const 252645135
                    i32.and
                    i32.const 4
                    i32.shl
                    i32.or
                    local.tee $0
                    i32.const 8
                    i32.shr_s
                    i32.const 16711935
                    i32.and
                    local.get $0
                    i32.const 16711935
                    i32.and
                    i32.const 8
                    i32.shl
                    i32.or
                    local.tee $0
                    i32.const 16
                    i32.shr_s
                    i32.const 65535
                    i32.and
                    local.get $0
                    i32.const 16
                    i32.shl
                    i32.or
                    i64.extend_i32_s
                    i64.const 32
                    i64.shl
                    i64.or
                    local.get $2
                    i64.const 35
                    i64.shr_u
                    i64.or
                    br $break|1
                   end
                   local.get $3
                   i64.const 20
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 31
                   i32.and
                   local.tee $6
                   i32.const 29
                   i32.const 18
                   local.get $7
                   select
                   i32.gt_s
                   if
                    i64.const -516
                    local.set $16
                    i64.const -4294901761
                    br $break|1
                   end
                   local.get $5
                   i64.const 19
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $0
                   local.get $3
                   i64.const 46
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 127
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_s offset=256
                   local.tee $1
                   i32.const 4
                   i32.shr_s
                   i32.const 7
                   i32.and
                   local.tee $8
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=1036
                   local.get $5
                   i64.const 7
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $9
                   local.get $3
                   i64.const 39
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 127
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_s offset=256
                   local.tee $4
                   i32.const 7
                   i32.and
                   local.tee $10
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=1036
                   local.get $5
                   i64.const 13
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $11
                   local.get $4
                   i32.const 8
                   i32.shr_s
                   local.tee $12
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=1036
                   i32.add
                   i32.add
                   local.get $5
                   i64.const 22
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $13
                   local.get $1
                   i32.const 8
                   i32.shr_s
                   local.tee $14
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=1036
                   local.get $5
                   i64.const 10
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $15
                   local.get $4
                   i32.const 4
                   i32.shr_s
                   i32.const 7
                   i32.and
                   local.tee $17
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=1036
                   local.get $5
                   i64.const 16
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $19
                   local.get $1
                   i32.const 7
                   i32.and
                   local.tee $20
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=1036
                   i32.add
                   i32.add
                   i32.gt_s
                   local.set $1
                   local.get $5
                   i64.const 1
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $23
                   local.get $3
                   i64.const 32
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 127
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_s offset=256
                   local.tee $4
                   i32.const 4
                   i32.shr_s
                   i32.const 7
                   i32.and
                   local.tee $24
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=1036
                   local.get $3
                   i64.const 53
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $25
                   local.get $3
                   i64.const 25
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 127
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_s offset=256
                   local.tee $21
                   i32.const 7
                   i32.and
                   local.tee $26
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=1036
                   local.get $3
                   i64.const 59
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $27
                   local.get $21
                   i32.const 8
                   i32.shr_s
                   local.tee $28
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=1036
                   i32.add
                   i32.add
                   local.get $5
                   i64.const 4
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $22
                   local.get $4
                   i32.const 8
                   i32.shr_s
                   local.tee $29
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=1036
                   local.get $3
                   i64.const 56
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $30
                   local.get $21
                   i32.const 4
                   i32.shr_s
                   i32.const 7
                   i32.and
                   local.tee $21
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=1036
                   local.get $3
                   i64.const 62
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $5
                   i64.const 2
                   i64.shl
                   i32.wrap_i64
                   i32.const 4
                   i32.and
                   i32.or
                   local.tee $31
                   local.get $4
                   i32.const 7
                   i32.and
                   local.tee $32
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=1036
                   i32.add
                   i32.add
                   i32.gt_s
                   local.set $4
                   local.get $8
                   local.get $14
                   local.get $1
                   select
                   i32.const 5
                   i32.mul
                   local.get $14
                   local.get $8
                   local.get $1
                   select
                   i32.add
                   i32.const 5
                   i32.mul
                   local.get $12
                   local.get $20
                   local.get $1
                   select
                   i32.add
                   i32.load8_u offset=1792
                   local.tee $8
                   i32.const 96
                   i32.and
                   i32.const 9
                   i32.shl
                   local.get $8
                   i32.const 24
                   i32.and
                   i32.const 6
                   i32.shl
                   i32.or
                   local.get $8
                   i32.const 7
                   i32.and
                   i32.const 3
                   i32.shl
                   i32.or
                   i64.extend_i32_s
                   i64.const 48
                   i64.shl
                   local.get $20
                   local.get $12
                   local.get $1
                   select
                   i32.const 5
                   i32.mul
                   local.get $10
                   local.get $17
                   local.get $1
                   select
                   i32.add
                   i32.const 5
                   i32.mul
                   local.get $17
                   local.get $10
                   local.get $1
                   select
                   i32.add
                   i32.load8_u offset=1792
                   local.tee $8
                   i32.const 96
                   i32.and
                   i32.const 9
                   i32.shl
                   local.get $8
                   i32.const 24
                   i32.and
                   i32.const 6
                   i32.shl
                   i32.or
                   local.get $8
                   i32.const 7
                   i32.and
                   i32.const 3
                   i32.shl
                   i32.or
                   i64.extend_i32_s
                   i64.const 32
                   i64.shl
                   i64.or
                   local.get $24
                   local.get $29
                   local.get $4
                   select
                   i32.const 5
                   i32.mul
                   local.get $29
                   local.get $24
                   local.get $4
                   select
                   i32.add
                   i32.const 5
                   i32.mul
                   local.get $28
                   local.get $32
                   local.get $4
                   select
                   i32.add
                   i32.load8_u offset=1792
                   local.tee $8
                   i32.const 96
                   i32.and
                   i32.const 9
                   i32.shl
                   local.get $8
                   i32.const 24
                   i32.and
                   i32.const 6
                   i32.shl
                   i32.or
                   local.get $8
                   i32.const 7
                   i32.and
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.const 16
                   i32.shl
                   i64.extend_i32_u
                   i64.or
                   local.get $32
                   local.get $28
                   local.get $4
                   select
                   i32.const 5
                   i32.mul
                   local.get $26
                   local.get $21
                   local.get $4
                   select
                   i32.add
                   i32.const 5
                   i32.mul
                   local.get $21
                   local.get $26
                   local.get $4
                   select
                   i32.add
                   i32.load8_u offset=1792
                   local.tee $8
                   i32.const 96
                   i32.and
                   i32.const 9
                   i32.shl
                   local.get $8
                   i32.const 24
                   i32.and
                   i32.const 6
                   i32.shl
                   i32.or
                   local.get $8
                   i32.const 7
                   i32.and
                   i32.const 3
                   i32.shl
                   i32.or
                   i64.extend_i32_s
                   i64.or
                   local.get $23
                   local.get $22
                   local.get $4
                   select
                   i32.const 27
                   i32.shl
                   local.get $22
                   local.get $23
                   local.get $4
                   select
                   i32.const 22
                   i32.shl
                   i32.or
                   local.get $27
                   local.get $31
                   local.get $4
                   select
                   i32.const 16
                   i32.shl
                   i32.or
                   local.get $31
                   local.get $27
                   local.get $4
                   select
                   i32.const 11
                   i32.shl
                   i32.or
                   local.get $25
                   local.get $30
                   local.get $4
                   select
                   i32.const 6
                   i32.shl
                   i32.or
                   local.get $30
                   local.get $25
                   local.get $4
                   select
                   i32.or
                   i64.extend_i32_s
                   local.get $0
                   local.get $13
                   local.get $1
                   select
                   i32.const 27
                   i32.shl
                   local.get $13
                   local.get $0
                   local.get $1
                   select
                   i32.const 22
                   i32.shl
                   i32.or
                   local.get $11
                   local.get $19
                   local.get $1
                   select
                   i32.const 16
                   i32.shl
                   i32.or
                   local.get $19
                   local.get $11
                   local.get $1
                   select
                   i32.const 11
                   i32.shl
                   i32.or
                   local.get $9
                   local.get $15
                   local.get $1
                   select
                   i32.const 6
                   i32.shl
                   i32.or
                   local.get $15
                   local.get $9
                   local.get $1
                   select
                   i32.or
                   i64.extend_i32_s
                   i64.const 32
                   i64.shl
                   i64.or
                   i64.or
                   local.set $2
                   local.get $5
                   i64.const 25
                   i64.shr_s
                   i64.const 1
                   i64.and
                   i32.const -1
                   i64.const 5651576228422017
                   i64.const -4286381023083155150
                   local.get $6
                   i32.const 15
                   i32.gt_s
                   local.tee $0
                   select
                   local.get $6
                   i32.const 15
                   i32.and
                   i32.const 2
                   i32.shl
                   local.tee $8
                   i64.extend_i32_s
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 15
                   i32.and
                   i64.const 1065
                   i64.const 3202384868132024868
                   local.get $0
                   select
                   local.get $8
                   i64.extend_i32_s
                   i64.shr_s
                   i32.wrap_i64
                   i32.const 15
                   i32.and
                   local.get $7
                   select
                   i32.const 1
                   i32.shl
                   local.tee $0
                   i32.const 2
                   i32.add
                   i32.shl
                   i64.extend_i32_u
                   local.get $5
                   i64.const 23
                   i64.shr_s
                   i64.and
                   i32.const -1
                   local.get $0
                   i32.const 1
                   i32.or
                   i32.shl
                   i32.const -4
                   i32.xor
                   i64.extend_i32_u
                   local.get $5
                   i64.const 24
                   i64.shr_s
                   i64.and
                   i64.or
                   i64.or
                   i32.wrap_i64
                   local.set $0
                   local.get $1
                   i32.const 0
                   local.get $4
                   select
                   if (result i32)
                    local.get $0
                    i32.const -1
                    i32.xor
                   else
                    local.get $1
                    local.get $4
                    i32.ne
                    if (result i32)
                     local.get $0
                     local.get $7
                     if (result i32)
                      local.get $6
                      i32.const 1
                      i32.shl
                      i32.load16_u offset=2176
                     else
                      local.get $6
                      i32.const 1
                      i32.shl
                      i32.load16_u offset=2096
                     end
                     local.tee $4
                     local.get $4
                     i32.const 8
                     i32.shl
                     i32.or
                     i32.const 16711935
                     i32.and
                     local.tee $0
                     local.get $0
                     i32.const 4
                     i32.shl
                     i32.or
                     i32.const 252645135
                     i32.and
                     local.tee $0
                     local.get $0
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.const 858993459
                     i32.and
                     local.tee $0
                     local.get $0
                     i32.const 1
                     i32.shl
                     i32.or
                     i32.const 1431655765
                     i32.and
                     i32.const 3
                     i32.mul
                     local.tee $0
                     local.get $0
                     i32.const -1
                     i32.xor
                     local.get $1
                     select
                     i32.xor
                    else
                     local.get $0
                    end
                   end
                   local.tee $0
                   i32.const 1
                   i32.shr_s
                   i32.const 1431655765
                   i32.and
                   local.get $0
                   i32.const 1431655765
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.or
                   local.tee $0
                   i32.const 2
                   i32.shr_s
                   i32.const 858993459
                   i32.and
                   local.get $0
                   i32.const 858993459
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   local.tee $0
                   i32.const 4
                   i32.shr_s
                   i32.const 252645135
                   i32.and
                   local.get $0
                   i32.const 252645135
                   i32.and
                   i32.const 4
                   i32.shl
                   i32.or
                   local.tee $0
                   i32.const 8
                   i32.shr_s
                   i32.const 16711935
                   i32.and
                   local.get $0
                   i32.const 16711935
                   i32.and
                   i32.const 8
                   i32.shl
                   i32.or
                   local.tee $0
                   i32.const 16
                   i32.shr_s
                   i32.const 65535
                   i32.and
                   local.get $0
                   i32.const 16
                   i32.shl
                   i32.or
                   local.get $7
                   if (result i32)
                    local.get $6
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=1984
                   else
                    local.get $6
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=1944
                   end
                   i32.const 13
                   i32.shl
                   i64.extend_i32_s
                   local.get $2
                   i64.const 29
                   i64.shl
                   i64.or
                   i64.const 268437570
                   i64.or
                   local.set $16
                   i64.extend_i32_s
                   i64.const 32
                   i64.shl
                   local.get $2
                   i64.const 35
                   i64.shr_u
                   i64.or
                   br $break|1
                  end
                  local.get $5
                  i64.const 3
                  i64.shr_s
                  i64.const 281474976710648
                  i64.and
                  local.get $5
                  i64.const 4
                  i64.shr_s
                  i64.const 3
                  i64.and
                  i64.or
                  local.tee $2
                  i64.const -1
                  i64.xor
                  i64.const 281474976710655
                  i64.and
                  local.get $2
                  local.get $3
                  i64.const 52
                  i64.shr_s
                  i32.wrap_i64
                  i32.const 255
                  i32.and
                  local.tee $1
                  local.get $3
                  i64.const 20
                  i64.shr_s
                  i32.wrap_i64
                  i32.const 255
                  i32.and
                  local.tee $4
                  local.get $3
                  i64.const 36
                  i64.shr_s
                  i32.wrap_i64
                  i32.const 255
                  i32.and
                  local.tee $6
                  i32.add
                  i32.add
                  local.get $3
                  i64.const 60
                  i64.shr_s
                  i32.wrap_i64
                  i32.const 15
                  i32.and
                  local.get $5
                  i64.const 4
                  i64.shl
                  i32.wrap_i64
                  i32.const 240
                  i32.and
                  i32.or
                  local.tee $7
                  local.get $3
                  i64.const 28
                  i64.shr_s
                  i32.wrap_i64
                  i32.const 255
                  i32.and
                  local.tee $8
                  local.get $3
                  i64.const 44
                  i64.shr_s
                  i32.wrap_i64
                  i32.const 255
                  i32.and
                  local.tee $9
                  i32.add
                  i32.add
                  i32.gt_s
                  local.tee $0
                  select
                  local.tee $2
                  i64.const 1
                  i64.shr_s
                  i64.const 6148914691236517205
                  i64.and
                  local.get $2
                  i64.const 6148914691236517205
                  i64.and
                  i64.const 1
                  i64.shl
                  i64.or
                  local.set $2
                  local.get $8
                  i64.extend_i32_s
                  local.get $9
                  i32.const 16
                  i32.shl
                  i64.extend_i32_s
                  local.get $7
                  i64.extend_i32_s
                  i64.const 32
                  i64.shl
                  i64.or
                  i64.or
                  i64.const 0
                  i64.const 8
                  local.get $0
                  select
                  i64.shl
                  local.get $4
                  i64.extend_i32_s
                  local.get $6
                  i32.const 16
                  i32.shl
                  i64.extend_i32_s
                  local.get $1
                  i64.extend_i32_s
                  i64.const 32
                  i64.shl
                  i64.or
                  i64.or
                  i64.const 8
                  i64.const 0
                  local.get $0
                  select
                  i64.shl
                  i64.or
                  local.tee $3
                  i64.const 17
                  i64.shl
                  i64.const 65619
                  i64.or
                  local.set $16
                  local.get $3
                  i64.const 47
                  i64.shr_u
                  local.get $2
                  i64.const 2
                  i64.shr_s
                  i64.const 3689348814741910323
                  i64.and
                  local.get $2
                  i64.const 3689348814741910323
                  i64.and
                  i64.const 2
                  i64.shl
                  i64.or
                  local.tee $2
                  i64.const 4
                  i64.shr_s
                  i64.const 1085102592571150095
                  i64.and
                  local.get $2
                  i64.const 1085102592571150095
                  i64.and
                  i64.const 4
                  i64.shl
                  i64.or
                  local.tee $2
                  i64.const 8
                  i64.shr_s
                  i64.const 71777214294589695
                  i64.and
                  local.get $2
                  i64.const 71777214294589695
                  i64.and
                  i64.const 8
                  i64.shl
                  i64.or
                  local.tee $2
                  i64.const 16
                  i64.shr_s
                  i64.const 281470681808895
                  i64.and
                  local.get $2
                  i64.const 281470681808895
                  i64.and
                  i64.const 16
                  i64.shl
                  i64.or
                  i64.const 32
                  i64.rotr
                  i64.or
                  br $break|1
                 end
                 local.get $5
                 i64.const 2
                 i64.shr_s
                 i64.const 1
                 i64.and
                 local.get $5
                 i64.const -16
                 i64.and
                 local.get $5
                 i64.const 1
                 i64.shr_s
                 i64.const 4
                 i64.and
                 i64.or
                 i64.or
                 local.tee $2
                 i64.const -1
                 i64.xor
                 local.get $2
                 local.get $3
                 i64.const 56
                 i64.shr_s
                 i32.wrap_i64
                 i32.const 31
                 i32.and
                 local.tee $1
                 local.get $3
                 i64.const 29
                 i64.shr_s
                 i32.wrap_i64
                 i32.const 127
                 i32.and
                 i32.const 1
                 i32.shl
                 i32.load16_s offset=256
                 local.tee $0
                 i32.const 4
                 i32.shr_s
                 i32.const 7
                 i32.and
                 local.tee $4
                 i32.const 5
                 i32.shl
                 i32.or
                 i32.load8_u offset=1124
                 local.get $3
                 i64.const 36
                 i64.shr_s
                 i32.wrap_i64
                 i32.const 31
                 i32.and
                 local.tee $6
                 local.get $3
                 i64.const 22
                 i64.shr_s
                 i32.wrap_i64
                 i32.const 127
                 i32.and
                 i32.const 1
                 i32.shl
                 i32.load16_s offset=256
                 local.tee $7
                 i32.const 7
                 i32.and
                 local.tee $8
                 i32.const 5
                 i32.shl
                 i32.or
                 i32.load8_u offset=1124
                 local.get $3
                 i64.const 46
                 i64.shr_s
                 i32.wrap_i64
                 i32.const 31
                 i32.and
                 local.tee $9
                 local.get $7
                 i32.const 8
                 i32.shr_s
                 local.tee $10
                 i32.const 5
                 i32.shl
                 i32.or
                 i32.load8_u offset=1124
                 i32.add
                 i32.add
                 local.get $3
                 i64.const 61
                 i64.shr_s
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $5
                 i64.const 3
                 i64.shl
                 i32.wrap_i64
                 i32.const 24
                 i32.and
                 i32.or
                 local.tee $14
                 local.get $0
                 i32.const 8
                 i32.shr_s
                 local.tee $15
                 i32.const 5
                 i32.shl
                 i32.or
                 i32.load8_u offset=1124
                 local.get $3
                 i64.const 41
                 i64.shr_s
                 i32.wrap_i64
                 i32.const 31
                 i32.and
                 local.tee $11
                 local.get $7
                 i32.const 4
                 i32.shr_s
                 i32.const 7
                 i32.and
                 local.tee $7
                 i32.const 5
                 i32.shl
                 i32.or
                 i32.load8_u offset=1124
                 local.get $3
                 i64.const 51
                 i64.shr_s
                 i32.wrap_i64
                 i32.const 31
                 i32.and
                 local.tee $12
                 local.get $0
                 i32.const 7
                 i32.and
                 local.tee $13
                 i32.const 5
                 i32.shl
                 i32.or
                 i32.load8_u offset=1124
                 i32.add
                 i32.add
                 i32.gt_s
                 local.tee $0
                 select
                 local.tee $2
                 i64.const 1
                 i64.shr_s
                 i64.const 6148914691236517205
                 i64.and
                 local.get $2
                 i64.const 6148914691236517205
                 i64.and
                 i64.const 1
                 i64.shl
                 i64.or
                 local.set $2
                 local.get $3
                 i64.const 20
                 i64.shr_s
                 i32.wrap_i64
                 i32.const 3
                 i32.and
                 i64.extend_i32_s
                 i64.const 62
                 i64.shl
                 local.get $11
                 local.get $6
                 local.get $0
                 select
                 i64.extend_i32_s
                 local.get $6
                 local.get $11
                 local.get $0
                 select
                 i32.const 8
                 i32.shl
                 i64.extend_i32_s
                 local.get $12
                 local.get $9
                 local.get $0
                 select
                 i32.const 15
                 i32.shl
                 i64.extend_i32_s
                 local.get $9
                 local.get $12
                 local.get $0
                 select
                 i32.const 22
                 i32.shl
                 i64.extend_i32_s
                 local.get $1
                 local.get $14
                 local.get $0
                 select
                 i64.extend_i32_s
                 i64.const 37
                 i64.shl
                 local.get $14
                 local.get $1
                 local.get $0
                 select
                 i64.extend_i32_s
                 i64.const 30
                 i64.shl
                 i64.or
                 i64.or
                 i64.or
                 i64.or
                 i64.or
                 local.get $4
                 local.get $15
                 local.get $0
                 select
                 i32.const 5
                 i32.mul
                 local.get $15
                 local.get $4
                 local.get $0
                 select
                 i32.add
                 i32.const 5
                 i32.mul
                 local.get $10
                 local.get $13
                 local.get $0
                 select
                 i32.add
                 i32.load8_u offset=1792
                 local.tee $1
                 i32.const 96
                 i32.and
                 i32.const 15
                 i32.shl
                 local.get $1
                 i32.const 24
                 i32.and
                 i32.const 10
                 i32.shl
                 i32.or
                 local.get $1
                 i32.const 7
                 i32.and
                 i32.const 5
                 i32.shl
                 i32.or
                 i64.extend_i32_s
                 i64.const 22
                 i64.shl
                 local.get $13
                 local.get $10
                 local.get $0
                 select
                 i32.const 5
                 i32.mul
                 local.get $8
                 local.get $7
                 local.get $0
                 select
                 i32.add
                 i32.const 5
                 i32.mul
                 local.get $7
                 local.get $8
                 local.get $0
                 select
                 i32.add
                 i32.load8_u offset=1792
                 local.tee $0
                 i32.const 96
                 i32.and
                 i32.const 15
                 i32.shl
                 local.get $0
                 i32.const 24
                 i32.and
                 i32.const 10
                 i32.shl
                 i32.or
                 local.get $0
                 i32.const 7
                 i32.and
                 i32.const 5
                 i32.shl
                 i32.or
                 i64.extend_i32_s
                 i64.or
                 i64.or
                 i64.const 17
                 i64.shl
                 i64.or
                 i64.const 66626
                 i64.or
                 local.set $16
                 local.get $2
                 i64.const 2
                 i64.shr_s
                 i64.const 3689348814741910323
                 i64.and
                 local.get $2
                 i64.const 3689348814741910323
                 i64.and
                 i64.const 2
                 i64.shl
                 i64.or
                 local.tee $2
                 i64.const 4
                 i64.shr_s
                 i64.const 1085102592571150095
                 i64.and
                 local.get $2
                 i64.const 1085102592571150095
                 i64.and
                 i64.const 4
                 i64.shl
                 i64.or
                 local.tee $2
                 i64.const 8
                 i64.shr_s
                 i64.const 71777214294589695
                 i64.and
                 local.get $2
                 i64.const 71777214294589695
                 i64.and
                 i64.const 8
                 i64.shl
                 i64.or
                 local.tee $2
                 i64.const 16
                 i64.shr_s
                 i64.const 281470681808895
                 i64.and
                 local.get $2
                 i64.const 281470681808895
                 i64.and
                 i64.const 16
                 i64.shl
                 i64.or
                 i64.const 32
                 i64.rotr
                 br $break|1
                end
                i64.const -516
                local.set $16
                local.get $3
                i64.const 5
                i64.shr_s
                i32.wrap_i64
                i32.const 255
                i32.and
                i64.extend_i32_s
                i64.const 257
                i64.mul
                local.get $3
                i64.const 13
                i64.shr_s
                i32.wrap_i64
                i32.const 255
                i32.and
                i64.extend_i32_s
                i64.const 16842752
                i64.mul
                local.get $3
                i64.const 29
                i64.shr_s
                i32.wrap_i64
                i32.const 255
                i32.and
                i64.extend_i32_s
                i64.const 72339069014638592
                i64.mul
                local.get $3
                i64.const 21
                i64.shr_s
                i32.wrap_i64
                i32.const 255
                i32.and
                i64.extend_i32_s
                i64.const 1103806595072
                i64.mul
                i64.or
                i64.or
                i64.or
                br $break|1
               end
               local.get $3
               i64.const 28
               i64.shr_s
               i32.wrap_i64
               i32.const 31
               i32.and
               local.tee $4
               i32.const 29
               i32.gt_s
               if
                i64.const -516
                local.set $16
                i64.const -4294901761
                br $break|1
               end
               local.get $5
               i64.const 33
               i64.shr_s
               i64.const 1
               i64.and
               i32.const -1
               i64.const 5651576228422017
               i64.const -4286381023083155150
               local.get $4
               i32.const 15
               i32.gt_s
               select
               local.get $4
               i32.const 15
               i32.and
               i32.const 2
               i32.shl
               i64.extend_i32_s
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               i32.const 1
               i32.shl
               local.tee $0
               i32.const 2
               i32.add
               i32.shl
               i64.extend_i32_u
               local.get $5
               i64.const 31
               i64.shr_s
               i64.and
               i32.const -1
               local.get $0
               i32.const 1
               i32.or
               i32.shl
               i32.const -4
               i32.xor
               i64.extend_i32_u
               local.get $5
               i64.const 32
               i64.shr_s
               i64.and
               i64.or
               i64.or
               i32.wrap_i64
               local.set $0
               local.get $3
               i64.const 49
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $7
               local.get $3
               i64.const 33
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $8
               local.get $3
               i64.const 41
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $9
               i32.add
               i32.add
               local.get $3
               i64.const 53
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $10
               local.get $3
               i64.const 37
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $11
               local.get $3
               i64.const 45
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $12
               i32.add
               i32.add
               i32.gt_s
               local.set $6
               local.get $5
               i64.const 17
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $13
               local.get $5
               i64.const 1
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $14
               local.get $5
               i64.const 9
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $15
               i32.add
               i32.add
               local.get $5
               i64.const 21
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $17
               local.get $5
               i64.const 5
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $19
               local.get $5
               i64.const 13
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $20
               i32.add
               i32.add
               i32.gt_s
               local.set $1
               local.get $4
               i32.const 1
               i32.shl
               i32.load16_u offset=1984
               i32.const 13
               i32.shl
               i64.extend_i32_s
               local.get $11
               local.get $3
               i64.const 61
               i64.shr_s
               i32.wrap_i64
               i32.const 7
               i32.and
               local.get $5
               i64.const 3
               i64.shl
               i32.wrap_i64
               i32.const 8
               i32.and
               i32.or
               i32.const 24
               i32.shl
               local.get $10
               i32.const 16
               i32.shl
               i32.or
               local.get $12
               i32.const 8
               i32.shl
               i32.or
               i32.or
               i32.const 0
               i32.const 4
               local.get $6
               select
               i32.shl
               local.get $8
               local.get $3
               i64.const 57
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               i32.const 24
               i32.shl
               local.get $7
               i32.const 16
               i32.shl
               i32.or
               local.get $9
               i32.const 8
               i32.shl
               i32.or
               i32.or
               i32.const 4
               i32.const 0
               local.get $6
               select
               i32.shl
               i32.or
               i64.extend_i32_u
               local.get $19
               local.get $5
               i64.const 29
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               i32.const 24
               i32.shl
               local.get $17
               i32.const 16
               i32.shl
               i32.or
               local.get $20
               i32.const 8
               i32.shl
               i32.or
               i32.or
               i32.const 0
               i32.const 4
               local.get $1
               select
               i32.shl
               local.get $14
               local.get $5
               i64.const 25
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               i32.const 24
               i32.shl
               local.get $13
               i32.const 16
               i32.shl
               i32.or
               local.get $15
               i32.const 8
               i32.shl
               i32.or
               i32.or
               i32.const 4
               i32.const 0
               local.get $1
               select
               i32.shl
               i32.or
               i64.extend_i32_s
               i64.const 32
               i64.shl
               i64.or
               local.tee $2
               i64.const 29
               i64.shl
               i64.or
               i64.const 402655298
               i64.or
               local.set $16
               local.get $1
               i32.const 0
               local.get $6
               select
               if (result i32)
                local.get $0
                i32.const -1
                i32.xor
               else
                local.get $1
                local.get $6
                i32.ne
                if (result i32)
                 local.get $0
                 local.get $4
                 i32.const 1
                 i32.shl
                 i32.load16_u offset=2176
                 local.tee $0
                 local.get $0
                 i32.const 8
                 i32.shl
                 i32.or
                 i32.const 16711935
                 i32.and
                 local.tee $0
                 local.get $0
                 i32.const 4
                 i32.shl
                 i32.or
                 i32.const 252645135
                 i32.and
                 local.tee $0
                 local.get $0
                 i32.const 2
                 i32.shl
                 i32.or
                 i32.const 858993459
                 i32.and
                 local.tee $0
                 local.get $0
                 i32.const 1
                 i32.shl
                 i32.or
                 i32.const 1431655765
                 i32.and
                 i32.const 3
                 i32.mul
                 local.tee $0
                 local.get $0
                 i32.const -1
                 i32.xor
                 local.get $1
                 select
                 i32.xor
                else
                 local.get $0
                end
               end
               local.tee $0
               i32.const 1
               i32.shr_s
               i32.const 1431655765
               i32.and
               local.get $0
               i32.const 1431655765
               i32.and
               i32.const 1
               i32.shl
               i32.or
               local.tee $0
               i32.const 2
               i32.shr_s
               i32.const 858993459
               i32.and
               local.get $0
               i32.const 858993459
               i32.and
               i32.const 2
               i32.shl
               i32.or
               local.tee $0
               i32.const 4
               i32.shr_s
               i32.const 252645135
               i32.and
               local.get $0
               i32.const 252645135
               i32.and
               i32.const 4
               i32.shl
               i32.or
               local.tee $0
               i32.const 8
               i32.shr_s
               i32.const 16711935
               i32.and
               local.get $0
               i32.const 16711935
               i32.and
               i32.const 8
               i32.shl
               i32.or
               local.tee $0
               i32.const 16
               i32.shr_s
               i32.const 65535
               i32.and
               local.get $0
               i32.const 16
               i32.shl
               i32.or
               i64.extend_i32_s
               i64.const 32
               i64.shl
               local.get $2
               i64.const 35
               i64.shr_u
               i64.or
               br $break|1
              end
              local.get $5
              i64.const -16
              i64.and
              local.get $5
              i64.const 1
              i64.shr_s
              i64.const 7
              i64.and
              i64.or
              local.tee $2
              i64.const -1
              i64.xor
              local.get $2
              local.get $3
              i64.const 49
              i64.shr_s
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $1
              local.get $3
              i64.const 20
              i64.shr_s
              i32.wrap_i64
              i32.const 255
              i32.and
              i32.const 1
              i32.shl
              i32.load16_s offset=512
              local.tee $0
              i32.const 8
              i32.shr_s
              local.tee $4
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=1076
              local.get $3
              i64.const 33
              i64.shr_s
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $6
              local.get $0
              i32.const 3
              i32.and
              local.tee $7
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=1076
              local.get $3
              i64.const 41
              i64.shr_s
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $8
              local.get $0
              i32.const 4
              i32.shr_s
              i32.const 3
              i32.and
              local.tee $9
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=1076
              i32.add
              i32.add
              local.get $3
              i64.const 53
              i64.shr_s
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $10
              local.get $3
              i64.const 28
              i64.shr_s
              i32.wrap_i64
              i32.const 31
              i32.and
              i32.const 1
              i32.shl
              i32.load16_s offset=512
              local.tee $11
              i32.const 3
              i32.and
              local.tee $12
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=1076
              local.get $3
              i64.const 37
              i64.shr_s
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $13
              local.get $0
              i32.const 2
              i32.shr_s
              i32.const 3
              i32.and
              local.tee $14
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=1076
              local.get $3
              i64.const 45
              i64.shr_s
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $15
              local.get $0
              i32.const 6
              i32.shr_s
              i32.const 3
              i32.and
              local.tee $17
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=1076
              i32.add
              i32.add
              i32.gt_s
              local.tee $0
              select
              local.tee $2
              i64.const 1
              i64.shr_s
              i64.const 6148914691236517205
              i64.and
              local.get $2
              i64.const 6148914691236517205
              i64.and
              i64.const 1
              i64.shl
              i64.or
              local.set $2
              local.get $13
              local.get $6
              local.get $0
              select
              i64.extend_i32_s
              local.get $6
              local.get $13
              local.get $0
              select
              i32.const 6
              i32.shl
              i64.extend_i32_s
              local.get $15
              local.get $8
              local.get $0
              select
              i32.const 12
              i32.shl
              i64.extend_i32_s
              local.get $8
              local.get $15
              local.get $0
              select
              i32.const 17
              i32.shl
              i64.extend_i32_s
              local.get $10
              local.get $1
              local.get $0
              select
              i32.const 23
              i32.shl
              i64.extend_i32_s
              local.get $3
              i64.const 57
              i64.shr_s
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $6
              local.get $3
              i64.const 61
              i64.shr_s
              i32.wrap_i64
              i32.const 7
              i32.and
              local.get $5
              i64.const 3
              i64.shl
              i32.wrap_i64
              i32.const 8
              i32.and
              i32.or
              local.tee $8
              local.get $0
              select
              i64.extend_i32_s
              i64.const 40
              i64.shl
              local.get $8
              local.get $6
              local.get $0
              select
              i64.extend_i32_s
              i64.const 34
              i64.shl
              i64.or
              local.get $1
              local.get $10
              local.get $0
              select
              i64.extend_i32_s
              i64.const 28
              i64.shl
              i64.or
              i64.or
              i64.or
              i64.or
              i64.or
              i64.or
              local.get $11
              i32.const 4
              i32.shr_s
              i32.const 3
              i32.and
              local.tee $1
              local.get $11
              i32.const 2
              i32.shr_s
              i32.const 3
              i32.and
              local.tee $6
              local.get $0
              select
              local.get $6
              local.get $1
              local.get $0
              select
              i32.const 3
              i32.mul
              i32.add
              i32.const 3
              i32.mul
              local.get $4
              local.get $12
              local.get $0
              select
              i32.add
              i32.load8_u offset=1536
              local.tee $1
              i32.const 128
              i32.and
              i32.const 20
              i32.shl
              local.get $1
              i32.const 96
              i32.and
              i32.const 16
              i32.shl
              i32.or
              local.get $1
              i32.const 16
              i32.and
              i32.const 12
              i32.shl
              i32.or
              local.get $1
              i32.const 12
              i32.and
              i32.const 8
              i32.shl
              i32.or
              local.get $1
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i64.extend_i32_s
              i64.const 28
              i64.shl
              local.get $12
              local.get $4
              local.get $0
              select
              i32.const 3
              i32.mul
              local.get $9
              local.get $17
              local.get $0
              select
              i32.add
              i32.const 3
              i32.mul
              local.get $17
              local.get $9
              local.get $0
              select
              i32.add
              i32.const 3
              i32.mul
              local.get $7
              local.get $14
              local.get $0
              select
              i32.add
              i32.const 3
              i32.mul
              local.get $14
              local.get $7
              local.get $0
              select
              i32.add
              i32.load8_u offset=1536
              local.tee $0
              i32.const 128
              i32.and
              i32.const 20
              i32.shl
              local.get $0
              i32.const 96
              i32.and
              i32.const 16
              i32.shl
              i32.or
              local.get $0
              i32.const 16
              i32.and
              i32.const 12
              i32.shl
              i32.or
              local.get $0
              i32.const 12
              i32.and
              i32.const 8
              i32.shl
              i32.or
              local.get $0
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i64.extend_i32_s
              i64.or
              i64.or
              i64.const 17
              i64.shl
              i64.const 98882
              i64.or
              local.set $16
              local.get $2
              i64.const 2
              i64.shr_s
              i64.const 3689348814741910323
              i64.and
              local.get $2
              i64.const 3689348814741910323
              i64.and
              i64.const 2
              i64.shl
              i64.or
              local.tee $2
              i64.const 4
              i64.shr_s
              i64.const 1085102592571150095
              i64.and
              local.get $2
              i64.const 1085102592571150095
              i64.and
              i64.const 4
              i64.shl
              i64.or
              local.tee $2
              i64.const 8
              i64.shr_s
              i64.const 71777214294589695
              i64.and
              local.get $2
              i64.const 71777214294589695
              i64.and
              i64.const 8
              i64.shl
              i64.or
              local.tee $2
              i64.const 16
              i64.shr_s
              i64.const 281470681808895
              i64.and
              local.get $2
              i64.const 281470681808895
              i64.and
              i64.const 16
              i64.shl
              i64.or
              i64.const 32
              i64.rotr
              br $break|1
             end
             local.get $5
             i64.const 2
             i64.shr_s
             i64.const 1
             i64.and
             local.get $5
             i64.const -16
             i64.and
             local.get $5
             i64.const 1
             i64.shr_s
             i64.const 4
             i64.and
             i64.or
             i64.or
             local.tee $2
             i64.const -1
             i64.xor
             local.get $2
             local.get $3
             i64.const 50
             i64.shr_s
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $1
             local.get $3
             i64.const 21
             i64.shr_s
             i32.wrap_i64
             i32.const 255
             i32.and
             i32.const 1
             i32.shl
             i32.load16_s offset=512
             local.tee $0
             i32.const 8
             i32.shr_s
             local.tee $4
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=1076
             local.get $3
             i64.const 34
             i64.shr_s
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $6
             local.get $0
             i32.const 3
             i32.and
             local.tee $7
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=1076
             local.get $3
             i64.const 42
             i64.shr_s
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $8
             local.get $0
             i32.const 4
             i32.shr_s
             i32.const 3
             i32.and
             local.tee $9
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=1076
             i32.add
             i32.add
             local.get $3
             i64.const 54
             i64.shr_s
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $10
             local.get $3
             i64.const 29
             i64.shr_s
             i32.wrap_i64
             i32.const 31
             i32.and
             i32.const 1
             i32.shl
             i32.load16_s offset=512
             local.tee $11
             i32.const 3
             i32.and
             local.tee $12
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=1076
             local.get $3
             i64.const 38
             i64.shr_s
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $13
             local.get $0
             i32.const 2
             i32.shr_s
             i32.const 3
             i32.and
             local.tee $14
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=1076
             local.get $3
             i64.const 46
             i64.shr_s
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $15
             local.get $0
             i32.const 6
             i32.shr_s
             i32.const 3
             i32.and
             local.tee $17
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=1076
             i32.add
             i32.add
             i32.gt_s
             local.tee $0
             select
             local.tee $2
             i64.const 1
             i64.shr_s
             i64.const 6148914691236517205
             i64.and
             local.get $2
             i64.const 6148914691236517205
             i64.and
             i64.const 1
             i64.shl
             i64.or
             local.set $2
             local.get $3
             i64.const 19
             i64.shr_s
             i32.wrap_i64
             i32.const 3
             i32.and
             i64.extend_i32_s
             i64.const 62
             i64.shl
             local.get $13
             local.get $6
             local.get $0
             select
             i64.extend_i32_s
             local.get $6
             local.get $13
             local.get $0
             select
             i32.const 6
             i32.shl
             i64.extend_i32_s
             local.get $15
             local.get $8
             local.get $0
             select
             i32.const 12
             i32.shl
             i64.extend_i32_s
             local.get $8
             local.get $15
             local.get $0
             select
             i32.const 17
             i32.shl
             i64.extend_i32_s
             local.get $10
             local.get $1
             local.get $0
             select
             i32.const 23
             i32.shl
             i64.extend_i32_s
             local.get $3
             i64.const 58
             i64.shr_s
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $6
             local.get $3
             i64.const 62
             i64.shr_s
             i32.wrap_i64
             i32.const 3
             i32.and
             local.get $5
             i64.const 2
             i64.shl
             i32.wrap_i64
             i32.const 12
             i32.and
             i32.or
             local.tee $8
             local.get $0
             select
             i64.extend_i32_s
             i64.const 40
             i64.shl
             local.get $8
             local.get $6
             local.get $0
             select
             i64.extend_i32_s
             i64.const 34
             i64.shl
             i64.or
             local.get $1
             local.get $10
             local.get $0
             select
             i64.extend_i32_s
             i64.const 28
             i64.shl
             i64.or
             i64.or
             i64.or
             i64.or
             i64.or
             i64.or
             local.get $11
             i32.const 4
             i32.shr_s
             i32.const 3
             i32.and
             local.tee $1
             local.get $11
             i32.const 2
             i32.shr_s
             i32.const 3
             i32.and
             local.tee $6
             local.get $0
             select
             local.get $6
             local.get $1
             local.get $0
             select
             i32.const 3
             i32.mul
             i32.add
             i32.const 3
             i32.mul
             local.get $4
             local.get $12
             local.get $0
             select
             i32.add
             i32.load8_u offset=1536
             local.tee $1
             i32.const 128
             i32.and
             i32.const 20
             i32.shl
             local.get $1
             i32.const 96
             i32.and
             i32.const 16
             i32.shl
             i32.or
             local.get $1
             i32.const 16
             i32.and
             i32.const 12
             i32.shl
             i32.or
             local.get $1
             i32.const 12
             i32.and
             i32.const 8
             i32.shl
             i32.or
             local.get $1
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i64.extend_i32_s
             i64.const 28
             i64.shl
             local.get $12
             local.get $4
             local.get $0
             select
             i32.const 3
             i32.mul
             local.get $9
             local.get $17
             local.get $0
             select
             i32.add
             i32.const 3
             i32.mul
             local.get $17
             local.get $9
             local.get $0
             select
             i32.add
             i32.const 3
             i32.mul
             local.get $7
             local.get $14
             local.get $0
             select
             i32.add
             i32.const 3
             i32.mul
             local.get $14
             local.get $7
             local.get $0
             select
             i32.add
             i32.load8_u offset=1536
             local.tee $0
             i32.const 128
             i32.and
             i32.const 20
             i32.shl
             local.get $0
             i32.const 96
             i32.and
             i32.const 16
             i32.shl
             i32.or
             local.get $0
             i32.const 16
             i32.and
             i32.const 12
             i32.shl
             i32.or
             local.get $0
             i32.const 12
             i32.and
             i32.const 8
             i32.shl
             i32.or
             local.get $0
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i64.extend_i32_s
             i64.or
             i64.or
             i64.const 17
             i64.shl
             i64.or
             i64.const 99394
             i64.or
             local.set $16
             local.get $2
             i64.const 2
             i64.shr_s
             i64.const 3689348814741910323
             i64.and
             local.get $2
             i64.const 3689348814741910323
             i64.and
             i64.const 2
             i64.shl
             i64.or
             local.tee $2
             i64.const 4
             i64.shr_s
             i64.const 1085102592571150095
             i64.and
             local.get $2
             i64.const 1085102592571150095
             i64.and
             i64.const 4
             i64.shl
             i64.or
             local.tee $2
             i64.const 8
             i64.shr_s
             i64.const 71777214294589695
             i64.and
             local.get $2
             i64.const 71777214294589695
             i64.and
             i64.const 8
             i64.shl
             i64.or
             local.tee $2
             i64.const 16
             i64.shr_s
             i64.const 281470681808895
             i64.and
             local.get $2
             i64.const 281470681808895
             i64.and
             i64.const 16
             i64.shl
             i64.or
             i64.const 32
             i64.rotr
             br $break|1
            end
            local.get $3
            i64.const 28
            i64.shr_s
            i32.wrap_i64
            i32.const 31
            i32.and
            i32.const 1
            i32.shl
            i32.load16_s offset=512
            local.tee $0
            i32.const 3
            i32.and
            local.set $4
            local.get $0
            i32.const 4
            i32.shr_s
            i32.const 3
            i32.and
            local.tee $1
            local.get $0
            i32.const 2
            i32.shr_s
            i32.const 3
            i32.and
            local.tee $19
            local.get $3
            i64.const 57
            i64.shr_s
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $6
            local.get $3
            i64.const 20
            i64.shr_s
            i32.wrap_i64
            i32.const 255
            i32.and
            i32.const 1
            i32.shl
            i32.load16_s offset=512
            local.tee $0
            i32.const 8
            i32.shr_s
            local.tee $7
            i32.const 6
            i32.shl
            i32.or
            i32.load8_u offset=1284
            local.get $3
            i64.const 33
            i64.shr_s
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $8
            local.get $0
            i32.const 3
            i32.and
            local.tee $9
            i32.const 6
            i32.shl
            i32.or
            i32.load8_u offset=1284
            local.get $3
            i64.const 45
            i64.shr_s
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $10
            local.get $0
            i32.const 4
            i32.shr_s
            i32.const 3
            i32.and
            local.tee $11
            i32.const 6
            i32.shl
            i32.or
            i32.load8_u offset=1284
            i32.add
            i32.add
            local.get $3
            i64.const 63
            i64.shr_s
            i32.wrap_i64
            i32.const 1
            i32.and
            local.get $5
            i64.const 1
            i64.shl
            i32.wrap_i64
            i32.const 62
            i32.and
            i32.or
            local.tee $17
            local.get $4
            i32.const 6
            i32.shl
            i32.or
            i32.load8_u offset=1284
            local.get $3
            i64.const 39
            i64.shr_s
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $12
            local.get $0
            i32.const 2
            i32.shr_s
            i32.const 3
            i32.and
            local.tee $13
            i32.const 6
            i32.shl
            i32.or
            i32.load8_u offset=1284
            local.get $3
            i64.const 51
            i64.shr_s
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $14
            local.get $0
            i32.const 6
            i32.shr_s
            i32.const 3
            i32.and
            local.tee $15
            i32.const 6
            i32.shl
            i32.or
            i32.load8_u offset=1284
            i32.add
            i32.add
            i32.gt_s
            local.tee $0
            select
            local.get $19
            local.get $1
            local.get $0
            select
            i32.const 3
            i32.mul
            i32.add
            i32.const 3
            i32.mul
            local.get $7
            local.get $4
            local.get $0
            select
            i32.add
            i32.load8_u offset=1536
            local.set $1
            local.get $12
            local.get $8
            local.get $0
            select
            i64.extend_i32_s
            local.get $8
            local.get $12
            local.get $0
            select
            i32.const 8
            i32.shl
            i64.extend_i32_s
            local.get $14
            local.get $10
            local.get $0
            select
            i32.const 16
            i32.shl
            i64.extend_i32_s
            local.get $10
            local.get $14
            local.get $0
            select
            i32.const 23
            i32.shl
            i64.extend_i32_s
            local.get $5
            i64.const 5
            i64.shr_s
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $19
            local.get $5
            i64.const 11
            i64.shr_s
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $20
            local.get $0
            select
            i64.extend_i32_s
            i64.const 54
            i64.shl
            local.get $20
            local.get $19
            local.get $0
            select
            i64.extend_i32_s
            i64.const 46
            i64.shl
            i64.or
            local.get $6
            local.get $17
            local.get $0
            select
            i64.extend_i32_s
            i64.const 38
            i64.shl
            i64.or
            local.get $17
            local.get $6
            local.get $0
            select
            i64.extend_i32_s
            i64.const 31
            i64.shl
            i64.or
            i64.or
            i64.or
            i64.or
            i64.or
            local.get $1
            i32.const 3
            i32.and
            i32.const 6
            i32.shl
            i64.extend_i32_s
            local.get $1
            i32.const 12
            i32.and
            i32.const 12
            i32.shl
            i64.extend_i32_s
            local.get $1
            i32.const 16
            i32.and
            i32.const 18
            i32.shl
            i64.extend_i32_s
            local.get $1
            i32.const 96
            i32.and
            i32.const 24
            i32.shl
            i64.extend_i32_s
            local.get $1
            i32.const 128
            i32.and
            i64.extend_i32_s
            i64.const 30
            i64.shl
            i64.or
            i64.or
            i64.or
            i64.or
            i64.const 38
            i64.shl
            local.get $4
            local.get $7
            local.get $0
            select
            i32.const 3
            i32.mul
            local.get $11
            local.get $15
            local.get $0
            select
            i32.add
            i32.const 3
            i32.mul
            local.get $15
            local.get $11
            local.get $0
            select
            i32.add
            i32.const 3
            i32.mul
            local.get $9
            local.get $13
            local.get $0
            select
            i32.add
            i32.const 3
            i32.mul
            local.get $13
            local.get $9
            local.get $0
            select
            i32.add
            i32.load8_u offset=1536
            local.tee $1
            i32.const 128
            i32.and
            i64.extend_i32_s
            i64.const 30
            i64.shl
            local.get $1
            i32.const 96
            i32.and
            i32.const 24
            i32.shl
            i64.extend_i32_s
            i64.or
            local.get $1
            i32.const 16
            i32.and
            i32.const 18
            i32.shl
            i64.extend_i32_s
            i64.or
            local.get $1
            i32.const 12
            i32.and
            i32.const 12
            i32.shl
            i64.extend_i32_s
            i64.or
            local.get $1
            i32.const 3
            i32.and
            i32.const 6
            i32.shl
            i64.extend_i32_s
            i64.or
            i64.or
            i64.or
            local.tee $2
            i64.const 17
            i64.shl
            i64.const 98387
            i64.or
            local.set $16
            local.get $2
            i64.const 47
            i64.shr_u
            local.get $5
            i64.const 16
            i64.shr_s
            i64.const 281474976710648
            i64.and
            local.get $5
            i64.const 17
            i64.shr_s
            i64.const 3
            i64.and
            i64.or
            local.tee $2
            i64.const 281474976710655
            i64.xor
            local.get $2
            local.get $0
            select
            local.tee $2
            i64.const 1
            i64.shr_s
            i64.const 6148914691236517205
            i64.and
            local.get $2
            i64.const 6148914691236517205
            i64.and
            i64.const 1
            i64.shl
            i64.or
            local.tee $2
            i64.const 2
            i64.shr_s
            i64.const 3689348814741910323
            i64.and
            local.get $2
            i64.const 3689348814741910323
            i64.and
            i64.const 2
            i64.shl
            i64.or
            local.tee $2
            i64.const 4
            i64.shr_s
            i64.const 1085102592571150095
            i64.and
            local.get $2
            i64.const 1085102592571150095
            i64.and
            i64.const 4
            i64.shl
            i64.or
            local.tee $2
            i64.const 8
            i64.shr_s
            i64.const 71777214294589695
            i64.and
            local.get $2
            i64.const 71777214294589695
            i64.and
            i64.const 8
            i64.shl
            i64.or
            local.tee $2
            i64.const 16
            i64.shr_s
            i64.const 281470681808895
            i64.and
            local.get $2
            i64.const 281470681808895
            i64.and
            i64.const 16
            i64.shl
            i64.or
            i64.const 32
            i64.rotr
            i64.or
            br $break|1
           end
           local.get $5
           i64.const 28
           i64.shr_s
           i64.const 4294967292
           i64.and
           i32.wrap_i64
           local.tee $0
           i32.const -1
           i32.xor
           local.get $0
           local.get $3
           i64.const 62
           i64.shr_s
           i32.wrap_i64
           i32.const 3
           i32.and
           local.get $5
           i64.const 2
           i64.shl
           i32.wrap_i64
           i32.const 252
           i32.and
           i32.or
           local.tee $4
           local.get $3
           i64.const 30
           i64.shr_s
           i32.wrap_i64
           i32.const 255
           i32.and
           local.tee $6
           local.get $3
           i64.const 46
           i64.shr_s
           i32.wrap_i64
           i32.const 255
           i32.and
           local.tee $7
           i32.add
           i32.add
           local.get $5
           i64.const 6
           i64.shr_s
           i32.wrap_i64
           i32.const 255
           i32.and
           local.tee $8
           local.get $3
           i64.const 38
           i64.shr_s
           i32.wrap_i64
           i32.const 255
           i32.and
           local.tee $9
           local.get $3
           i64.const 54
           i64.shr_s
           i32.wrap_i64
           i32.const 255
           i32.and
           local.tee $10
           i32.add
           i32.add
           i32.gt_s
           local.tee $0
           select
           local.tee $1
           i32.const 1
           i32.shr_s
           i32.const 1431655765
           i32.and
           local.get $1
           i32.const 1431655765
           i32.and
           i32.const 1
           i32.shl
           i32.or
           local.set $1
           local.get $9
           i64.extend_i32_s
           local.get $10
           i32.const 16
           i32.shl
           i64.extend_i32_s
           local.get $5
           i64.const 22
           i64.shr_s
           i32.wrap_i64
           i32.const 255
           i32.and
           i64.extend_i32_s
           i64.const 48
           i64.shl
           local.get $8
           i64.extend_i32_s
           i64.const 32
           i64.shl
           i64.or
           i64.or
           i64.or
           i64.const 0
           i64.const 8
           local.get $0
           select
           i64.shl
           local.get $6
           i64.extend_i32_s
           local.get $7
           i32.const 16
           i32.shl
           i64.extend_i32_s
           local.get $5
           i64.const 14
           i64.shr_s
           i32.wrap_i64
           i32.const 255
           i32.and
           i64.extend_i32_s
           i64.const 48
           i64.shl
           local.get $4
           i64.extend_i32_s
           i64.const 32
           i64.shl
           i64.or
           i64.or
           i64.or
           i64.const 8
           i64.const 0
           local.get $0
           select
           i64.shl
           i64.or
           local.tee $2
           i64.const 17
           i64.shl
           i64.const 99393
           i64.or
           local.set $16
           local.get $1
           i32.const 2
           i32.shr_s
           i32.const 858993459
           i32.and
           local.get $1
           i32.const 858993459
           i32.and
           i32.const 2
           i32.shl
           i32.or
           local.tee $0
           i32.const 4
           i32.shr_s
           i32.const 252645135
           i32.and
           local.get $0
           i32.const 252645135
           i32.and
           i32.const 4
           i32.shl
           i32.or
           local.tee $0
           i32.const 8
           i32.shr_s
           i32.const 16711935
           i32.and
           local.get $0
           i32.const 16711935
           i32.and
           i32.const 8
           i32.shl
           i32.or
           local.tee $0
           i32.const 16
           i32.shr_s
           i32.const 65535
           i32.and
           local.get $0
           i32.const 16
           i32.shl
           i32.or
           i64.extend_i32_s
           i64.const 32
           i64.shl
           local.get $3
           i64.const 28
           i64.shr_s
           i32.wrap_i64
           i32.const 3
           i32.and
           i64.extend_i32_s
           i64.const 30
           i64.shl
           i64.or
           local.get $2
           i64.const 47
           i64.shr_u
           i64.or
           br $break|1
          end
          local.get $5
          i64.const 27
          i64.shr_s
          i64.const 4294967292
          i64.and
          local.get $5
          i64.const 28
          i64.shr_s
          i64.const 1
          i64.and
          i64.or
          i32.wrap_i64
          local.tee $0
          i32.const -1
          i32.xor
          local.get $0
          local.get $3
          i64.const 60
          i64.shr_s
          i32.wrap_i64
          i32.const 15
          i32.and
          local.get $5
          i64.const 4
          i64.shl
          i32.wrap_i64
          i32.const 240
          i32.and
          i32.or
          local.tee $4
          local.get $3
          i64.const 28
          i64.shr_s
          i32.wrap_i64
          i32.const 255
          i32.and
          local.tee $6
          local.get $3
          i64.const 44
          i64.shr_s
          i32.wrap_i64
          i32.const 255
          i32.and
          local.tee $7
          i32.add
          i32.add
          local.get $5
          i64.const 4
          i64.shr_s
          i32.wrap_i64
          i32.const 255
          i32.and
          local.tee $8
          local.get $3
          i64.const 36
          i64.shr_s
          i32.wrap_i64
          i32.const 255
          i32.and
          local.tee $9
          local.get $3
          i64.const 52
          i64.shr_s
          i32.wrap_i64
          i32.const 255
          i32.and
          local.tee $10
          i32.add
          i32.add
          i32.gt_s
          local.tee $0
          select
          local.tee $1
          i32.const 1
          i32.shr_s
          i32.const 1431655765
          i32.and
          local.get $1
          i32.const 1431655765
          i32.and
          i32.const 1
          i32.shl
          i32.or
          local.set $1
          local.get $9
          i64.extend_i32_s
          local.get $10
          i32.const 16
          i32.shl
          i64.extend_i32_s
          local.get $5
          i64.const 20
          i64.shr_s
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_s
          i64.const 48
          i64.shl
          local.get $8
          i64.extend_i32_s
          i64.const 32
          i64.shl
          i64.or
          i64.or
          i64.or
          i64.const 0
          i64.const 8
          local.get $0
          select
          i64.shl
          local.get $6
          i64.extend_i32_s
          local.get $7
          i32.const 16
          i32.shl
          i64.extend_i32_s
          local.get $5
          i64.const 12
          i64.shr_s
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_s
          i64.const 48
          i64.shl
          local.get $4
          i64.extend_i32_s
          i64.const 32
          i64.shl
          i64.or
          i64.or
          i64.or
          i64.const 8
          i64.const 0
          local.get $0
          select
          i64.shl
          i64.or
          local.tee $2
          i64.const 17
          i64.shl
          i64.const 98370
          i64.or
          local.set $16
          local.get $1
          i32.const 2
          i32.shr_s
          i32.const 858993459
          i32.and
          local.get $1
          i32.const 858993459
          i32.and
          i32.const 2
          i32.shl
          i32.or
          local.tee $0
          i32.const 4
          i32.shr_s
          i32.const 252645135
          i32.and
          local.get $0
          i32.const 252645135
          i32.and
          i32.const 4
          i32.shl
          i32.or
          local.tee $0
          i32.const 8
          i32.shr_s
          i32.const 16711935
          i32.and
          local.get $0
          i32.const 16711935
          i32.and
          i32.const 8
          i32.shl
          i32.or
          local.tee $0
          i32.const 16
          i32.shr_s
          i32.const 65535
          i32.and
          local.get $0
          i32.const 16
          i32.shl
          i32.or
          i64.extend_i32_s
          i64.const 32
          i64.shl
          local.get $2
          i64.const 47
          i64.shr_u
          i64.or
          br $break|1
         end
         local.get $3
         i64.const 46
         i64.shr_s
         i32.wrap_i64
         i32.const 255
         i32.and
         i32.const 16
         i32.shl
         i64.extend_i32_s
         local.get $3
         i64.const 30
         i64.shr_s
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_s
         i64.or
         local.get $3
         i64.const 54
         i64.shr_s
         i32.wrap_i64
         i32.const 255
         i32.and
         i32.const 16
         i32.shl
         i64.extend_i32_s
         local.get $3
         i64.const 38
         i64.shr_s
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_s
         i64.or
         i64.const 8
         i64.shl
         i64.or
         i64.const 17
         i64.shl
         i64.const 33346
         i64.or
         local.set $16
         local.get $3
         i64.const 62
         i64.shr_s
         i64.const 3
         i64.and
         local.get $5
         i64.const 3
         i64.shl
         i64.const -16
         i64.and
         local.get $5
         i64.const 2
         i64.shl
         i64.const 4
         i64.and
         i64.or
         i64.or
         local.tee $2
         i64.const 1
         i64.shr_s
         i64.const 6148914691236517205
         i64.and
         local.get $2
         i64.const 6148914691236517205
         i64.and
         i64.const 1
         i64.shl
         i64.or
         local.tee $2
         i64.const 2
         i64.shr_s
         i64.const 3689348814741910323
         i64.and
         local.get $2
         i64.const 3689348814741910323
         i64.and
         i64.const 2
         i64.shl
         i64.or
         local.tee $2
         i64.const 4
         i64.shr_s
         i64.const 1085102592571150095
         i64.and
         local.get $2
         i64.const 1085102592571150095
         i64.and
         i64.const 4
         i64.shl
         i64.or
         local.tee $2
         i64.const 8
         i64.shr_s
         i64.const 71777214294589695
         i64.and
         local.get $2
         i64.const 71777214294589695
         i64.and
         i64.const 8
         i64.shl
         i64.or
         local.tee $2
         i64.const 16
         i64.shr_s
         i64.const 281470681808895
         i64.and
         local.get $2
         i64.const 281470681808895
         i64.and
         i64.const 16
         i64.shl
         i64.or
         i64.const 32
         i64.rotr
         br $break|1
        end
        local.get $3
        i64.const 29
        i64.shr_s
        i32.wrap_i64
        i32.const 31
        i32.and
        local.tee $0
        i32.const 29
        i32.gt_s
        if
         i64.const -516
         local.set $16
         i64.const -4294901761
         br $break|1
        end
        local.get $0
        i32.const 1
        i32.shl
        i32.load16_u offset=1984
        i32.const 13
        i32.shl
        i64.extend_i32_s
        local.get $3
        i64.const 34
        i64.shr_s
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_s
        local.get $3
        i64.const 50
        i64.shr_s
        i32.wrap_i64
        i32.const 255
        i32.and
        i32.const 16
        i32.shl
        i64.extend_i32_s
        local.get $5
        i64.const 18
        i64.shr_s
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_s
        i64.const 48
        i64.shl
        local.get $5
        i64.const 2
        i64.shr_s
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_s
        i64.const 32
        i64.shl
        i64.or
        i64.or
        i64.or
        local.get $3
        i64.const 42
        i64.shr_s
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_s
        local.get $3
        i64.const 58
        i64.shr_s
        i32.wrap_i64
        i32.const 63
        i32.and
        local.get $5
        i64.const 6
        i64.shl
        i32.wrap_i64
        i32.const 192
        i32.and
        i32.or
        i32.const 16
        i32.shl
        i64.extend_i32_s
        local.get $5
        i64.const 26
        i64.shr_s
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_s
        i64.const 48
        i64.shl
        local.get $5
        i64.const 10
        i64.shr_s
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_s
        i64.const 32
        i64.shl
        i64.or
        i64.or
        i64.or
        i64.const 8
        i64.shl
        i64.or
        local.tee $2
        i64.const 29
        i64.shl
        i64.or
        i64.const 134219842
        i64.or
        local.set $16
        local.get $5
        i64.const 34
        i64.shr_s
        i64.const 1
        i64.and
        i32.const -1
        i64.const 5651576228422017
        i64.const -4286381023083155150
        local.get $0
        i32.const 15
        i32.gt_s
        select
        local.get $0
        i32.const 15
        i32.and
        i32.const 2
        i32.shl
        i64.extend_i32_s
        i64.shr_s
        i32.wrap_i64
        i32.const 15
        i32.and
        i32.const 1
        i32.shl
        local.tee $0
        i32.const 2
        i32.add
        i32.shl
        i64.extend_i32_u
        local.get $5
        i64.const 32
        i64.shr_s
        i64.and
        i32.const -1
        local.get $0
        i32.const 1
        i32.or
        i32.shl
        i32.const -4
        i32.xor
        i64.extend_i32_u
        local.get $5
        i64.const 33
        i64.shr_s
        i64.and
        i64.or
        i64.or
        i32.wrap_i64
        local.tee $0
        i32.const 1
        i32.shr_s
        i32.const 1431655765
        i32.and
        local.get $0
        i32.const 1431655765
        i32.and
        i32.const 1
        i32.shl
        i32.or
        local.tee $0
        i32.const 2
        i32.shr_s
        i32.const 858993459
        i32.and
        local.get $0
        i32.const 858993459
        i32.and
        i32.const 2
        i32.shl
        i32.or
        local.tee $0
        i32.const 4
        i32.shr_s
        i32.const 252645135
        i32.and
        local.get $0
        i32.const 252645135
        i32.and
        i32.const 4
        i32.shl
        i32.or
        local.tee $0
        i32.const 8
        i32.shr_s
        i32.const 16711935
        i32.and
        local.get $0
        i32.const 16711935
        i32.and
        i32.const 8
        i32.shl
        i32.or
        local.tee $0
        i32.const 16
        i32.shr_s
        i32.const 65535
        i32.and
        local.get $0
        i32.const 16
        i32.shl
        i32.or
        i64.extend_i32_s
        i64.const 32
        i64.shl
        local.get $2
        i64.const 35
        i64.shr_u
        i64.or
        br $break|1
       end
       local.get $3
       i64.const 45
       i64.shr_s
       i32.wrap_i64
       i32.const 255
       i32.and
       i32.const 16
       i32.shl
       i64.extend_i32_s
       local.get $3
       i64.const 29
       i64.shr_s
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_s
       i64.or
       local.get $3
       i64.const 53
       i64.shr_s
       i32.wrap_i64
       i32.const 255
       i32.and
       i32.const 16
       i32.shl
       i64.extend_i32_s
       local.get $3
       i64.const 37
       i64.shr_s
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_s
       i64.or
       i64.const 8
       i64.shl
       i64.or
       i64.const 17
       i64.shl
       i64.const -4611686018427387904
       i64.or
       i64.const 33858
       i64.or
       local.set $16
       local.get $3
       i64.const 61
       i64.shr_s
       i64.const 1
       i64.and
       local.get $3
       i64.const 60
       i64.shr_s
       i64.const 4
       i64.and
       local.get $3
       i64.const 59
       i64.shr_s
       i64.const 16
       i64.and
       local.get $5
       i64.const 5
       i64.shl
       i64.or
       i64.or
       i64.or
       local.tee $2
       i64.const 1
       i64.shr_s
       i64.const 6148914691236517205
       i64.and
       local.get $2
       i64.const 6148914691236517205
       i64.and
       i64.const 1
       i64.shl
       i64.or
       local.tee $2
       i64.const 2
       i64.shr_s
       i64.const 3689348814741910323
       i64.and
       local.get $2
       i64.const 3689348814741910323
       i64.and
       i64.const 2
       i64.shl
       i64.or
       local.tee $2
       i64.const 4
       i64.shr_s
       i64.const 1085102592571150095
       i64.and
       local.get $2
       i64.const 1085102592571150095
       i64.and
       i64.const 4
       i64.shl
       i64.or
       local.tee $2
       i64.const 8
       i64.shr_s
       i64.const 71777214294589695
       i64.and
       local.get $2
       i64.const 71777214294589695
       i64.and
       i64.const 8
       i64.shl
       i64.or
       local.tee $2
       i64.const 16
       i64.shr_s
       i64.const 281470681808895
       i64.and
       local.get $2
       i64.const 281470681808895
       i64.and
       i64.const 16
       i64.shl
       i64.or
       i64.const 32
       i64.rotr
       br $break|1
      end
      local.get $3
      i64.const 49
      i64.shr_s
      i64.const 15
      i64.and
      local.get $3
      i64.const 48
      i64.shr_s
      i64.const 65504
      i64.and
      local.get $5
      i64.const 16
      i64.shl
      i64.or
      i64.or
      local.tee $2
      i64.const -1
      i64.xor
      local.get $2
      local.get $3
      i64.const 19
      i64.shr_s
      i32.wrap_i64
      i32.const 31
      i32.and
      local.tee $1
      i32.const 3
      i32.shl
      local.get $1
      i32.const 2
      i32.shr_s
      i32.or
      local.get $3
      i64.const 29
      i64.shr_s
      i32.wrap_i64
      i32.const 31
      i32.and
      local.tee $4
      i32.const 3
      i32.shl
      local.get $4
      i32.const 2
      i32.shr_s
      i32.or
      i32.add
      local.get $3
      i64.const 39
      i64.shr_s
      i32.wrap_i64
      i32.const 31
      i32.and
      local.tee $6
      i32.const 3
      i32.shl
      local.get $6
      i32.const 2
      i32.shr_s
      i32.or
      i32.add
      local.get $3
      i64.const 24
      i64.shr_s
      i32.wrap_i64
      i32.const 31
      i32.and
      local.tee $7
      i32.const 3
      i32.shl
      local.get $7
      i32.const 2
      i32.shr_s
      i32.or
      local.get $3
      i64.const 34
      i64.shr_s
      i32.wrap_i64
      i32.const 31
      i32.and
      local.tee $8
      i32.const 3
      i32.shl
      local.get $8
      i32.const 2
      i32.shr_s
      i32.or
      i32.add
      local.get $3
      i64.const 44
      i64.shr_s
      i32.wrap_i64
      i32.const 31
      i32.and
      local.tee $9
      i32.const 3
      i32.shl
      local.get $9
      i32.const 2
      i32.shr_s
      i32.or
      i32.add
      i32.gt_s
      local.tee $0
      select
      local.tee $2
      i64.const 1
      i64.shr_s
      i64.const 6148914691236517205
      i64.and
      local.get $2
      i64.const 6148914691236517205
      i64.and
      i64.const 1
      i64.shl
      i64.or
      local.set $2
      local.get $5
      i64.const 48
      i64.shr_s
      i32.wrap_i64
      i32.const 65535
      i32.and
      local.tee $10
      i32.const -1
      i32.xor
      i32.const 65535
      i32.and
      local.get $10
      local.get $0
      select
      local.tee $10
      i32.const 1
      i32.shr_s
      i32.const 21845
      i32.and
      local.get $10
      i32.const 21845
      i32.and
      i32.const 1
      i32.shl
      i32.or
      local.tee $10
      i32.const 2
      i32.shr_s
      i32.const 13107
      i32.and
      local.get $10
      i32.const 13107
      i32.and
      i32.const 2
      i32.shl
      i32.or
      local.tee $10
      i32.const 4
      i32.shr_s
      i32.const 3855
      i32.and
      local.get $10
      i32.const 3855
      i32.and
      i32.const 4
      i32.shl
      i32.or
      local.tee $10
      i32.const 8
      i32.shr_s
      local.get $10
      i32.const 255
      i32.and
      i32.const 8
      i32.shl
      i32.or
      i64.extend_i32_s
      i64.const 48
      i64.shl
      local.get $7
      local.get $9
      i32.const 20
      i32.shl
      local.get $8
      i32.const 10
      i32.shl
      i32.or
      i32.or
      i32.const 0
      i32.const 5
      local.get $0
      select
      i32.shl
      local.get $1
      local.get $6
      i32.const 20
      i32.shl
      local.get $4
      i32.const 10
      i32.shl
      i32.or
      i32.or
      i32.const 5
      i32.const 0
      local.get $0
      select
      i32.shl
      i32.or
      i64.extend_i32_s
      i64.const 17
      i64.shl
      i64.or
      i64.const 66131
      i64.or
      local.set $16
      local.get $2
      i64.const 2
      i64.shr_s
      i64.const 3689348814741910323
      i64.and
      local.get $2
      i64.const 3689348814741910323
      i64.and
      i64.const 2
      i64.shl
      i64.or
      local.tee $2
      i64.const 4
      i64.shr_s
      i64.const 1085102592571150095
      i64.and
      local.get $2
      i64.const 1085102592571150095
      i64.and
      i64.const 4
      i64.shl
      i64.or
      local.tee $2
      i64.const 8
      i64.shr_s
      i64.const 71777214294589695
      i64.and
      local.get $2
      i64.const 71777214294589695
      i64.and
      i64.const 8
      i64.shl
      i64.or
      local.tee $2
      i64.const 16
      i64.shr_s
      i64.const 281470681808895
      i64.and
      local.get $2
      i64.const 281470681808895
      i64.and
      i64.const 16
      i64.shl
      i64.or
      i64.const 32
      i64.rotr
      br $break|1
     end
     i64.const -516
     local.set $16
     i64.const -4294901761
    end
    local.set $2
    local.get $18
    local.get $16
    i64.store
    local.get $18
    local.get $2
    i64.store offset=8
    local.get $18
    i32.const 16
    i32.add
    local.set $18
    br $for-loop|010
   end
  end
  i32.const 0
 )
)
