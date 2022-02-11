(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 512) "\003\00\cc\ff\00\00\f0\0f\00\00\f0\0f\00\f0\0033DDff\88\88\cc\cc\"\"\00\ee\11\11DD\99\99\0f\f0\00\0f\c0\0c\0c\c0\00\00\00\00")
 (data (i32.const 560) "\f0\00DD3\01\80\cc\ff\f0\"\"\c8\ff\ce\cc\03<\ee\00\00w\030\ce\00\80\ff\ffo3\13\ff\11l\13\ef\00\00\00")
 (data (i32.const 600) "\cc\cc\88\88\11\11\c8\ec\7f7\ec\fe7\01\7f\13\00\c8\13\00\80\fe\ff\17\17\00\ff\00\f0\ff\ff\0fq\ff\ff\8e\ce\08\8c\00\10s\ff\ce1s\8c\08\ef\ceff\0f\f0UU\0f\0f\c96\00\00\00\00")
 (data (i32.const 664) "\0b\00\n\03\0b\0f\0c\07\0b\12\n\05\0b\0e\0c\t\0b\00\n\04\0b\10\0c\08\0b\12\n\06\0b\02\0c\0d\0b\00\n\03\0b\11\0c\07\0b\12\n\05\0b\0e\0c\t\0b\00\n\04\0b\01\0c\08\0b\12\n\06\0b\02\0c\0d\0b\00\n\03\0b\13\0c\07\0b\12\n\05\0b\0e\0c\t\0b\00\n\04\0b\10\0c\08\0b\12\n\06\0b\02\0c\0d\0b\00\n\03\0b\11\0c\07\0b\12\n\05\0b\0e\0c\t\0b\00\n\04\0b\01\0c\08\0b\12\n\06\0b\02\0c\0d")
 (data (i32.const 792) "\00\ffE\ba\17\e8\\\a3.\d1t\8b")
 (data (i32.const 808) "\00\ff \dfA\bea\9e\06\f9\'\d8G\b8h\97\0d\f2-\d2N\b1n\91\13\ec4\cbT\abu\8a\1a\e5:\c5[\a4{\84")
 (data (i32.const 848) "\00\ff\10\ef \df0\cfA\beQ\aea\9eq\8e\05\fa\15\ea&\d96\c9F\b9V\a9g\98w\88\0b\f4\1b\e4+\d4;\c4L\b3\\\a3l\93|\83")
 (export "decode" (func $assembly/uastc/rgba8/decode))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:assembly/uastc/rgba8
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  loop $for-loop|0
   local.get $0
   i32.const 32
   i32.lt_u
   if
    i32.const 511
    i32.const 0
    local.get $0
    i32.const 1
    i32.and
    select
    local.set $2
    local.get $0
    i32.const 30
    i32.and
    i32.const 4
    i32.shl
    local.get $0
    i32.const 4
    i32.shr_u
    i32.or
    local.set $3
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 5
     i32.lt_u
     if
      local.get $1
      i32.const 5
      i32.shl
      local.get $0
      i32.or
      local.get $2
      i32.const 128
      i32.and
      local.get $1
      i32.const 6
      i32.mul
      local.get $3
      i32.add
      local.get $2
      i32.xor
      i32.const 2
      i32.shr_u
      i32.or
      i32.store8 offset=896
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $0
  loop $for-loop|2
   local.get $0
   i32.const 64
   i32.lt_u
   if
    i32.const 511
    i32.const 0
    local.get $0
    i32.const 1
    i32.and
    select
    local.set $2
    local.get $0
    i32.const 62
    i32.and
    i32.const 3
    i32.shl
    local.get $0
    i32.const 5
    i32.shr_u
    i32.or
    local.set $3
    i32.const 0
    local.set $1
    loop $for-loop|3
     local.get $1
     i32.const 3
     i32.lt_u
     if
      local.get $1
      i32.const 6
      i32.shl
      local.get $0
      i32.or
      local.get $2
      i32.const 128
      i32.and
      local.get $1
      i32.const 5
      i32.mul
      local.get $3
      i32.add
      local.get $2
      i32.xor
      i32.const 2
      i32.shr_u
      i32.or
      i32.store8 offset=1056
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|3
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|2
   end
  end
  i32.const 0
  local.set $0
  loop $for-loop|4
   local.get $0
   i32.const 128
   i32.lt_u
   if
    local.get $0
    i32.const 1
    i32.shl
    local.get $0
    i32.const 5
    i32.rem_u
    local.get $0
    i32.const 125
    i32.rem_u
    i32.const 25
    i32.div_u
    i32.const 8
    i32.shl
    local.get $0
    i32.const 25
    i32.rem_u
    i32.const 5
    i32.div_u
    i32.const 4
    i32.shl
    i32.or
    i32.or
    i32.store16 offset=1248
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|4
   end
  end
  i32.const 0
  local.set $0
  loop $for-loop|5
   local.get $0
   i32.const 256
   i32.lt_u
   if
    local.get $0
    i32.const 1
    i32.shl
    local.get $0
    i32.const 3
    i32.rem_u
    local.get $0
    i32.const 243
    i32.rem_u
    i32.const 81
    i32.div_u
    i32.const 8
    i32.shl
    local.get $0
    i32.const 81
    i32.rem_u
    i32.const 27
    i32.div_u
    i32.const 6
    i32.shl
    i32.or
    local.get $0
    i32.const 27
    i32.rem_u
    i32.const 9
    i32.div_u
    i32.const 4
    i32.shl
    i32.or
    local.get $0
    i32.const 9
    i32.rem_u
    i32.const 3
    i32.div_u
    i32.const 2
    i32.shl
    i32.or
    i32.or
    i32.store16 offset=1504
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|5
   end
  end
 )
 (func $assembly/uastc/rgba8/decodeBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i32)
  (local $25 i32)
  (local $26 i64)
  (local $27 i64)
  (local $28 i64)
  (local $29 i64)
  (local $30 i64)
  (local $31 i64)
  local.get $0
  i64.load offset=8
  local.set $7
  local.get $0
  i64.load
  local.tee $8
  i32.wrap_i64
  i32.const 127
  i32.and
  i32.load8_u offset=664
  local.tee $0
  i32.const 4
  i32.eq
  local.set $9
  block $folding-inner0
   block $break|0
    block $case18|0
     block $case17|0
      block $case16|0
       block $case15|0
        block $case14|0
         block $case13|0
          block $case12|0
           block $case11|0
            block $case10|0
             block $case9|0
              block $case8|0
               block $case7|0
                block $case6|0
                 block $case5|0
                  block $case4|0
                   block $case3|0
                    block $case2|0
                     block $case1|0
                      block $case0|0
                       i32.const 7
                       local.get $0
                       local.get $9
                       select
                       br_table $case0|0 $case1|0 $case2|0 $case3|0 $case18|0 $case5|0 $case6|0 $case4|0 $case7|0 $case8|0 $case9|0 $case10|0 $case11|0 $case12|0 $case13|0 $case14|0 $case15|0 $case16|0 $case17|0 $case18|0
                      end
                      local.get $1
                      local.get $8
                      i64.const 29
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 63
                      i32.and
                      local.get $8
                      i64.const 19
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      i32.const 1
                      i32.shl
                      i32.load16_u offset=1504
                      local.tee $0
                      i32.const 3
                      i32.and
                      i32.const 6
                      i32.shl
                      i32.or
                      i32.load8_u offset=1056
                      i64.extend_i32_u
                      local.tee $4
                      i64.const 18014673391583296
                      i64.mul
                      local.tee $10
                      local.get $7
                      i64.const -16
                      i64.and
                      local.get $7
                      i64.const 1
                      i64.shr_u
                      i64.const 7
                      i64.and
                      i64.or
                      local.tee $11
                      i64.const 65535
                      i64.and
                      local.tee $12
                      local.get $12
                      i64.const 24
                      i64.shl
                      i64.or
                      i64.const 1095216660735
                      i64.and
                      local.tee $12
                      i64.const 12
                      i64.shl
                      local.get $12
                      i64.or
                      i64.const 4222189076152335
                      i64.and
                      local.tee $12
                      i64.const 2
                      i64.shl
                      local.get $12
                      i64.const 2
                      i64.shr_u
                      i64.or
                      i64.const 17733194119839807
                      i64.and
                      local.tee $12
                      local.get $12
                      i64.const 5
                      i64.shr_u
                      i64.const 281479271743489
                      i64.and
                      i64.add
                      local.tee $12
                      local.get $8
                      i64.const 35
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 63
                      i32.and
                      local.get $0
                      i32.const 2
                      i32.shr_u
                      i32.const 3
                      i32.and
                      i32.const 6
                      i32.shl
                      i32.or
                      i32.load8_u offset=1056
                      i64.extend_i32_u
                      local.get $4
                      i64.sub
                      local.tee $4
                      i64.mul
                      i64.add
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      local.get $8
                      i64.const 41
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 63
                      i32.and
                      local.get $0
                      i32.const 4
                      i32.shr_u
                      i32.const 3
                      i32.and
                      i32.const 6
                      i32.shl
                      i32.or
                      i32.load8_u offset=1056
                      i64.extend_i32_u
                      local.tee $13
                      i64.const 18014673391583296
                      i64.mul
                      local.tee $14
                      local.get $8
                      i64.const 47
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 63
                      i32.and
                      local.get $0
                      i32.const 6
                      i32.shr_u
                      i32.const 3
                      i32.and
                      i32.const 6
                      i32.shl
                      i32.or
                      i32.load8_u offset=1056
                      i64.extend_i32_u
                      local.get $13
                      i64.sub
                      local.tee $13
                      local.get $12
                      i64.mul
                      i64.add
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      i64.const 8
                      i64.shl
                      i64.or
                      local.tee $15
                      i64.const 65535
                      i64.and
                      local.get $8
                      i64.const 53
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 63
                      i32.and
                      local.get $0
                      i32.const 8
                      i32.shr_u
                      i32.const 6
                      i32.shl
                      i32.or
                      i32.load8_u offset=1056
                      i64.extend_i32_u
                      local.tee $16
                      i64.const 18014673391583296
                      i64.mul
                      local.tee $17
                      local.get $8
                      i64.const 59
                      i64.shr_u
                      i32.wrap_i64
                      local.get $7
                      i64.const 5
                      i64.shl
                      i32.wrap_i64
                      i32.const 32
                      i32.and
                      i32.or
                      local.get $8
                      i64.const 27
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.shl
                      i32.load16_u offset=1504
                      i32.const 3
                      i32.and
                      i32.const 6
                      i32.shl
                      i32.or
                      i32.load8_u offset=1056
                      i64.extend_i32_u
                      local.get $16
                      i64.sub
                      local.tee $7
                      local.get $12
                      i64.mul
                      i64.add
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      i64.const -71777214294589696
                      i64.or
                      local.tee $8
                      i64.const 4294901760
                      i64.and
                      i64.const 32
                      i64.shl
                      i64.or
                      local.get $15
                      i64.const 4294901760
                      i64.and
                      local.get $8
                      i64.const 65535
                      i64.and
                      i64.or
                      i64.const 16
                      i64.shl
                      i64.or
                      i64.store
                      local.get $1
                      local.get $15
                      i64.const 32
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.get $8
                      i64.const -281474976710656
                      i64.and
                      i64.or
                      local.get $15
                      i64.const -281474976710656
                      i64.and
                      local.get $8
                      i64.const 281470681743360
                      i64.and
                      i64.or
                      i64.const 16
                      i64.shr_u
                      i64.or
                      i64.store offset=8
                      local.get $1
                      local.get $2
                      i32.add
                      local.tee $0
                      local.get $10
                      local.get $4
                      local.get $11
                      i64.const 16
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.tee $8
                      local.get $8
                      i64.const 24
                      i64.shl
                      i64.or
                      i64.const 1095216660735
                      i64.and
                      local.tee $8
                      i64.const 12
                      i64.shl
                      local.get $8
                      i64.or
                      i64.const 4222189076152335
                      i64.and
                      local.tee $8
                      i64.const 2
                      i64.shl
                      local.get $8
                      i64.const 2
                      i64.shr_u
                      i64.or
                      i64.const 17733194119839807
                      i64.and
                      local.tee $8
                      local.get $8
                      i64.const 5
                      i64.shr_u
                      i64.const 281479271743489
                      i64.and
                      i64.add
                      local.tee $8
                      i64.mul
                      i64.add
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      local.get $14
                      local.get $8
                      local.get $13
                      i64.mul
                      i64.add
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      i64.const 8
                      i64.shl
                      i64.or
                      local.tee $12
                      i64.const 65535
                      i64.and
                      local.get $17
                      local.get $7
                      local.get $8
                      i64.mul
                      i64.add
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      i64.const -71777214294589696
                      i64.or
                      local.tee $8
                      i64.const 4294901760
                      i64.and
                      i64.const 32
                      i64.shl
                      i64.or
                      local.get $12
                      i64.const 4294901760
                      i64.and
                      local.get $8
                      i64.const 65535
                      i64.and
                      i64.or
                      i64.const 16
                      i64.shl
                      i64.or
                      i64.store
                      local.get $0
                      local.get $12
                      i64.const 32
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.get $8
                      i64.const -281474976710656
                      i64.and
                      i64.or
                      local.get $12
                      i64.const -281474976710656
                      i64.and
                      local.get $8
                      i64.const 281470681743360
                      i64.and
                      i64.or
                      i64.const 16
                      i64.shr_u
                      i64.or
                      i64.store offset=8
                      local.get $0
                      local.get $2
                      i32.add
                      local.tee $0
                      local.get $10
                      local.get $4
                      local.get $11
                      i64.const 32
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.tee $8
                      local.get $8
                      i64.const 24
                      i64.shl
                      i64.or
                      i64.const 1095216660735
                      i64.and
                      local.tee $8
                      i64.const 12
                      i64.shl
                      local.get $8
                      i64.or
                      i64.const 4222189076152335
                      i64.and
                      local.tee $8
                      i64.const 2
                      i64.shl
                      local.get $8
                      i64.const 2
                      i64.shr_u
                      i64.or
                      i64.const 17733194119839807
                      i64.and
                      local.tee $8
                      local.get $8
                      i64.const 5
                      i64.shr_u
                      i64.const 281479271743489
                      i64.and
                      i64.add
                      local.tee $8
                      i64.mul
                      i64.add
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      local.get $14
                      local.get $8
                      local.get $13
                      i64.mul
                      i64.add
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      i64.const 8
                      i64.shl
                      i64.or
                      local.tee $12
                      i64.const 65535
                      i64.and
                      local.get $17
                      local.get $7
                      local.get $8
                      i64.mul
                      i64.add
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      i64.const -71777214294589696
                      i64.or
                      local.tee $8
                      i64.const 4294901760
                      i64.and
                      i64.const 32
                      i64.shl
                      i64.or
                      local.get $12
                      i64.const 4294901760
                      i64.and
                      local.get $8
                      i64.const 65535
                      i64.and
                      i64.or
                      i64.const 16
                      i64.shl
                      i64.or
                      i64.store
                      local.get $0
                      local.get $12
                      i64.const 32
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.get $8
                      i64.const -281474976710656
                      i64.and
                      i64.or
                      local.get $12
                      i64.const -281474976710656
                      i64.and
                      local.get $8
                      i64.const 281470681743360
                      i64.and
                      i64.or
                      i64.const 16
                      i64.shr_u
                      i64.or
                      i64.store offset=8
                      local.get $0
                      local.get $2
                      i32.add
                      local.tee $0
                      local.get $10
                      local.get $4
                      local.get $11
                      i64.const 48
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.tee $8
                      local.get $8
                      i64.const 24
                      i64.shl
                      i64.or
                      i64.const 1095216660735
                      i64.and
                      local.tee $8
                      i64.const 12
                      i64.shl
                      local.get $8
                      i64.or
                      i64.const 4222189076152335
                      i64.and
                      local.tee $8
                      i64.const 2
                      i64.shl
                      local.get $8
                      i64.const 2
                      i64.shr_u
                      i64.or
                      i64.const 17733194119839807
                      i64.and
                      local.tee $8
                      local.get $8
                      i64.const 5
                      i64.shr_u
                      i64.const 281479271743489
                      i64.and
                      i64.add
                      local.tee $8
                      i64.mul
                      i64.add
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      local.get $14
                      local.get $8
                      local.get $13
                      i64.mul
                      i64.add
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      i64.const 8
                      i64.shl
                      i64.or
                      local.tee $4
                      i64.const 65535
                      i64.and
                      local.get $17
                      local.get $7
                      local.get $8
                      i64.mul
                      i64.add
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      i64.const -71777214294589696
                      i64.or
                      local.tee $7
                      i64.const 4294901760
                      i64.and
                      i64.const 32
                      i64.shl
                      i64.or
                      local.get $4
                      i64.const 4294901760
                      i64.and
                      local.get $7
                      i64.const 65535
                      i64.and
                      i64.or
                      i64.const 16
                      i64.shl
                      i64.or
                      i64.store
                      local.get $0
                      local.get $4
                      i64.const 32
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.get $7
                      i64.const -281474976710656
                      i64.and
                      i64.or
                      local.get $4
                      i64.const -281474976710656
                      i64.and
                      local.get $7
                      i64.const 281470681743360
                      i64.and
                      i64.or
                      i64.const 16
                      i64.shr_u
                      i64.or
                      i64.store offset=8
                      br $break|0
                     end
                     local.get $1
                     local.get $8
                     i64.const 21
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i64.extend_i32_u
                     local.tee $4
                     i64.const 18014673391583296
                     i64.mul
                     local.tee $10
                     local.get $7
                     i64.const 4
                     i64.shr_u
                     i64.const 4294967292
                     i64.and
                     local.get $7
                     i64.const 5
                     i64.shr_u
                     i64.const 1
                     i64.and
                     i64.or
                     local.tee $11
                     i64.const 255
                     i64.and
                     local.tee $12
                     local.get $12
                     i64.const 28
                     i64.shl
                     i64.or
                     i64.const 64424509455
                     i64.and
                     local.tee $12
                     i64.const 14
                     i64.shl
                     local.get $12
                     i64.or
                     i64.const 844437815230467
                     i64.and
                     i64.const 21
                     i64.mul
                     local.tee $12
                     local.get $12
                     i64.const 5
                     i64.shr_u
                     i64.const 281479271743489
                     i64.and
                     i64.add
                     local.tee $12
                     local.get $8
                     i64.const 29
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i64.extend_i32_u
                     local.get $4
                     i64.sub
                     local.tee $4
                     i64.mul
                     i64.add
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     local.get $8
                     i64.const 37
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i64.extend_i32_u
                     local.tee $13
                     i64.const 18014673391583296
                     i64.mul
                     local.tee $14
                     local.get $8
                     i64.const 45
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i64.extend_i32_u
                     local.get $13
                     i64.sub
                     local.tee $13
                     local.get $12
                     i64.mul
                     i64.add
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     i64.const 8
                     i64.shl
                     i64.or
                     local.tee $15
                     i64.const 65535
                     i64.and
                     local.get $8
                     i64.const 53
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i64.extend_i32_u
                     local.tee $16
                     i64.const 18014673391583296
                     i64.mul
                     local.tee $17
                     local.get $8
                     i64.const 61
                     i64.shr_u
                     i32.wrap_i64
                     local.get $7
                     i64.const 3
                     i64.shl
                     i32.wrap_i64
                     i32.const 248
                     i32.and
                     i32.or
                     i64.extend_i32_u
                     local.get $16
                     i64.sub
                     local.tee $7
                     local.get $12
                     i64.mul
                     i64.add
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     i64.const -71777214294589696
                     i64.or
                     local.tee $8
                     i64.const 4294901760
                     i64.and
                     i64.const 32
                     i64.shl
                     i64.or
                     local.get $15
                     i64.const 4294901760
                     i64.and
                     local.get $8
                     i64.const 65535
                     i64.and
                     i64.or
                     i64.const 16
                     i64.shl
                     i64.or
                     i64.store
                     local.get $1
                     local.get $15
                     i64.const 32
                     i64.shr_u
                     i64.const 65535
                     i64.and
                     local.get $8
                     i64.const -281474976710656
                     i64.and
                     i64.or
                     local.get $15
                     i64.const -281474976710656
                     i64.and
                     local.get $8
                     i64.const 281470681743360
                     i64.and
                     i64.or
                     i64.const 16
                     i64.shr_u
                     i64.or
                     i64.store offset=8
                     local.get $1
                     local.get $2
                     i32.add
                     local.tee $0
                     local.get $10
                     local.get $4
                     local.get $11
                     i64.const 8
                     i64.shr_u
                     i64.const 255
                     i64.and
                     local.tee $8
                     local.get $8
                     i64.const 28
                     i64.shl
                     i64.or
                     i64.const 64424509455
                     i64.and
                     local.tee $8
                     i64.const 14
                     i64.shl
                     local.get $8
                     i64.or
                     i64.const 844437815230467
                     i64.and
                     i64.const 21
                     i64.mul
                     local.tee $8
                     local.get $8
                     i64.const 5
                     i64.shr_u
                     i64.const 281479271743489
                     i64.and
                     i64.add
                     local.tee $8
                     i64.mul
                     i64.add
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     local.get $14
                     local.get $8
                     local.get $13
                     i64.mul
                     i64.add
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     i64.const 8
                     i64.shl
                     i64.or
                     local.tee $12
                     i64.const 65535
                     i64.and
                     local.get $17
                     local.get $7
                     local.get $8
                     i64.mul
                     i64.add
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     i64.const -71777214294589696
                     i64.or
                     local.tee $8
                     i64.const 4294901760
                     i64.and
                     i64.const 32
                     i64.shl
                     i64.or
                     local.get $12
                     i64.const 4294901760
                     i64.and
                     local.get $8
                     i64.const 65535
                     i64.and
                     i64.or
                     i64.const 16
                     i64.shl
                     i64.or
                     i64.store
                     local.get $0
                     local.get $12
                     i64.const 32
                     i64.shr_u
                     i64.const 65535
                     i64.and
                     local.get $8
                     i64.const -281474976710656
                     i64.and
                     i64.or
                     local.get $12
                     i64.const -281474976710656
                     i64.and
                     local.get $8
                     i64.const 281470681743360
                     i64.and
                     i64.or
                     i64.const 16
                     i64.shr_u
                     i64.or
                     i64.store offset=8
                     local.get $0
                     local.get $2
                     i32.add
                     local.tee $0
                     local.get $10
                     local.get $4
                     local.get $11
                     i64.const 16
                     i64.shr_u
                     i64.const 255
                     i64.and
                     local.tee $8
                     local.get $8
                     i64.const 28
                     i64.shl
                     i64.or
                     i64.const 64424509455
                     i64.and
                     local.tee $8
                     i64.const 14
                     i64.shl
                     local.get $8
                     i64.or
                     i64.const 844437815230467
                     i64.and
                     i64.const 21
                     i64.mul
                     local.tee $8
                     local.get $8
                     i64.const 5
                     i64.shr_u
                     i64.const 281479271743489
                     i64.and
                     i64.add
                     local.tee $8
                     i64.mul
                     i64.add
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     local.get $14
                     local.get $8
                     local.get $13
                     i64.mul
                     i64.add
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     i64.const 8
                     i64.shl
                     i64.or
                     local.tee $12
                     i64.const 65535
                     i64.and
                     local.get $17
                     local.get $7
                     local.get $8
                     i64.mul
                     i64.add
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     i64.const -71777214294589696
                     i64.or
                     local.tee $8
                     i64.const 4294901760
                     i64.and
                     i64.const 32
                     i64.shl
                     i64.or
                     local.get $12
                     i64.const 4294901760
                     i64.and
                     local.get $8
                     i64.const 65535
                     i64.and
                     i64.or
                     i64.const 16
                     i64.shl
                     i64.or
                     i64.store
                     local.get $0
                     local.get $12
                     i64.const 32
                     i64.shr_u
                     i64.const 65535
                     i64.and
                     local.get $8
                     i64.const -281474976710656
                     i64.and
                     i64.or
                     local.get $12
                     i64.const -281474976710656
                     i64.and
                     local.get $8
                     i64.const 281470681743360
                     i64.and
                     i64.or
                     i64.const 16
                     i64.shr_u
                     i64.or
                     i64.store offset=8
                     local.get $0
                     local.get $2
                     i32.add
                     local.tee $0
                     local.get $10
                     local.get $4
                     local.get $11
                     i64.const 24
                     i64.shr_u
                     i64.const 255
                     i64.and
                     local.tee $8
                     local.get $8
                     i64.const 28
                     i64.shl
                     i64.or
                     i64.const 64424509455
                     i64.and
                     local.tee $8
                     i64.const 14
                     i64.shl
                     local.get $8
                     i64.or
                     i64.const 844437815230467
                     i64.and
                     i64.const 21
                     i64.mul
                     local.tee $8
                     local.get $8
                     i64.const 5
                     i64.shr_u
                     i64.const 281479271743489
                     i64.and
                     i64.add
                     local.tee $8
                     i64.mul
                     i64.add
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     local.get $14
                     local.get $8
                     local.get $13
                     i64.mul
                     i64.add
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     i64.const 8
                     i64.shl
                     i64.or
                     local.tee $4
                     i64.const 65535
                     i64.and
                     local.get $17
                     local.get $7
                     local.get $8
                     i64.mul
                     i64.add
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     i64.const -71777214294589696
                     i64.or
                     local.tee $7
                     i64.const 4294901760
                     i64.and
                     i64.const 32
                     i64.shl
                     i64.or
                     local.get $4
                     i64.const 4294901760
                     i64.and
                     local.get $7
                     i64.const 65535
                     i64.and
                     i64.or
                     i64.const 16
                     i64.shl
                     i64.or
                     i64.store
                     local.get $0
                     local.get $4
                     i64.const 32
                     i64.shr_u
                     i64.const 65535
                     i64.and
                     local.get $7
                     i64.const -281474976710656
                     i64.and
                     i64.or
                     local.get $4
                     i64.const -281474976710656
                     i64.and
                     local.get $7
                     i64.const 281470681743360
                     i64.and
                     i64.or
                     i64.const 16
                     i64.shr_u
                     i64.or
                     i64.store offset=8
                     br $break|0
                    end
                    local.get $8
                    i64.const 20
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 31
                    i32.and
                    local.tee $0
                    i32.const 29
                    i32.gt_u
                    br_if $folding-inner0
                    local.get $7
                    i64.const 9
                    i64.shr_u
                    i64.const 3
                    i64.and
                    i64.const -1
                    i64.const 5651576228422017
                    i64.const -4286381023083155150
                    local.get $0
                    i32.const 15
                    i32.gt_u
                    select
                    local.get $0
                    i32.const 15
                    i32.and
                    i32.const 2
                    i32.shl
                    i64.extend_i32_u
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 15
                    i32.and
                    i32.const 3
                    i32.mul
                    local.tee $3
                    i32.const 3
                    i32.add
                    i64.extend_i32_u
                    i64.shl
                    local.get $7
                    i64.const 7
                    i64.shr_u
                    i64.and
                    i64.const -1
                    local.get $3
                    i32.const 2
                    i32.add
                    i64.extend_i32_u
                    i64.shl
                    i64.const -8
                    i64.xor
                    local.get $7
                    i64.const 8
                    i64.shr_u
                    i64.and
                    i64.or
                    i64.or
                    local.set $4
                    local.get $0
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=600
                    local.set $0
                    local.get $7
                    i64.const 35
                    i64.shl
                    local.get $8
                    i64.const 29
                    i64.shr_u
                    i64.or
                    i64.const 1085102592571150095
                    i64.and
                    local.tee $10
                    i64.const 4
                    i64.shl
                    local.get $10
                    i64.or
                    local.tee $10
                    i64.const 255
                    i64.and
                    local.get $7
                    i64.const 39
                    i64.shl
                    local.get $8
                    i64.const 25
                    i64.shr_u
                    i64.or
                    i64.const 1085102592571150095
                    i64.and
                    local.tee $7
                    i64.const 4
                    i64.shl
                    local.get $7
                    i64.or
                    local.tee $7
                    i64.const 255
                    i64.and
                    local.tee $8
                    i64.sub
                    local.set $11
                    local.get $10
                    i64.const 24
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.get $7
                    i64.const 24
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.tee $12
                    i64.sub
                    local.set $13
                    local.get $10
                    i64.const 8
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.get $7
                    i64.const 8
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.tee $14
                    i64.sub
                    local.set $15
                    local.get $10
                    i64.const 32
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.get $7
                    i64.const 32
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.tee $16
                    i64.sub
                    local.set $17
                    local.get $10
                    i64.const 16
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.get $7
                    i64.const 16
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.tee $18
                    i64.sub
                    local.set $19
                    local.get $10
                    i64.const 40
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.get $7
                    i64.const 40
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.tee $7
                    i64.sub
                    local.set $10
                    local.get $8
                    i64.const 18014673391583296
                    i64.mul
                    local.set $8
                    local.get $12
                    i64.const 18014673391583296
                    i64.mul
                    local.set $12
                    local.get $14
                    i64.const 18014673391583296
                    i64.mul
                    local.set $14
                    local.get $16
                    i64.const 18014673391583296
                    i64.mul
                    local.set $16
                    local.get $18
                    i64.const 18014673391583296
                    i64.mul
                    local.set $18
                    local.get $7
                    i64.const 18014673391583296
                    i64.mul
                    local.set $7
                    loop $for-loop|27
                     local.get $6
                     i32.const 4
                     i32.lt_s
                     if
                      local.get $1
                      local.get $8
                      local.get $4
                      i64.const 4095
                      i64.and
                      local.tee $20
                      local.get $20
                      i64.const 26
                      i64.shl
                      i64.or
                      i64.const 270582939711
                      i64.and
                      local.tee $20
                      i64.const 13
                      i64.shl
                      local.get $20
                      i64.or
                      i64.const 1970354902204423
                      i64.and
                      local.tee $20
                      i64.const 3
                      i64.shl
                      local.get $20
                      i64.or
                      local.tee $20
                      local.get $20
                      i64.const 5
                      i64.shr_u
                      i64.const 281479271743489
                      i64.and
                      i64.add
                      local.tee $20
                      local.get $11
                      i64.mul
                      i64.add
                      local.tee $21
                      local.get $0
                      i64.extend_i32_u
                      local.tee $22
                      i64.const 30
                      i64.shl
                      local.get $22
                      i64.or
                      i64.const 12884901891
                      i64.and
                      local.tee $22
                      i64.const 15
                      i64.shl
                      local.get $22
                      i64.or
                      i64.const 281479271743489
                      i64.and
                      i64.const 65535
                      i64.mul
                      local.tee $22
                      local.get $12
                      local.get $13
                      local.get $20
                      i64.mul
                      i64.add
                      local.get $21
                      i64.xor
                      i64.and
                      i64.xor
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      local.get $14
                      local.get $15
                      local.get $20
                      i64.mul
                      i64.add
                      local.tee $21
                      local.get $16
                      local.get $17
                      local.get $20
                      i64.mul
                      i64.add
                      i64.xor
                      local.get $22
                      i64.and
                      local.get $21
                      i64.xor
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      i64.const 8
                      i64.shl
                      i64.or
                      local.tee $21
                      i64.const 65535
                      i64.and
                      local.get $22
                      local.get $18
                      local.get $19
                      local.get $20
                      i64.mul
                      i64.add
                      local.tee $23
                      local.get $7
                      local.get $10
                      local.get $20
                      i64.mul
                      i64.add
                      i64.xor
                      i64.and
                      local.get $23
                      i64.xor
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      i64.const -71777214294589696
                      i64.or
                      local.tee $20
                      i64.const 4294901760
                      i64.and
                      i64.const 32
                      i64.shl
                      i64.or
                      local.get $21
                      i64.const 4294901760
                      i64.and
                      local.get $20
                      i64.const 65535
                      i64.and
                      i64.or
                      i64.const 16
                      i64.shl
                      i64.or
                      i64.store
                      local.get $1
                      local.get $21
                      i64.const 32
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.get $20
                      i64.const -281474976710656
                      i64.and
                      i64.or
                      local.get $21
                      i64.const -281474976710656
                      i64.and
                      local.get $20
                      i64.const 281470681743360
                      i64.and
                      i64.or
                      i64.const 16
                      i64.shr_u
                      i64.or
                      i64.store offset=8
                      local.get $1
                      local.get $2
                      i32.add
                      local.set $1
                      local.get $4
                      i64.const 12
                      i64.shr_u
                      local.set $4
                      local.get $0
                      i32.const 4
                      i32.shr_u
                      local.set $0
                      local.get $6
                      i32.const 1
                      i32.add
                      local.set $6
                      br $for-loop|27
                     end
                    end
                    br $break|0
                   end
                   local.get $8
                   i64.const 20
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 15
                   i32.and
                   local.tee $0
                   i32.const 10
                   i32.gt_u
                   br_if $folding-inner0
                   local.get $7
                   i64.const 25
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 1
                   i32.and
                   local.get $7
                   i64.const 24
                   i64.shr_u
                   i32.wrap_i64
                   i32.const -1
                   i32.const 1476400895
                   local.get $0
                   i32.const 3
                   i32.mul
                   i32.shr_u
                   i32.const 7
                   i32.and
                   i32.const 1
                   i32.add
                   i32.const 1
                   i32.shl
                   local.tee $3
                   i32.const 1
                   i32.or
                   i32.shl
                   i32.const -4
                   i32.xor
                   i32.and
                   local.get $7
                   i64.const 22
                   i64.shr_u
                   i32.wrap_i64
                   i32.const -1
                   i64.const 7157868367050
                   local.get $0
                   i32.const 2
                   i32.shl
                   local.tee $0
                   i64.extend_i32_u
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 15
                   i32.and
                   i32.const 1
                   i32.shl
                   local.tee $5
                   i32.const 2
                   i32.add
                   i32.shl
                   i32.and
                   local.get $7
                   i64.const 23
                   i64.shr_u
                   i32.wrap_i64
                   local.tee $9
                   i32.const 1
                   local.get $3
                   i32.const 2
                   i32.add
                   i32.shl
                   i32.const 1
                   i32.sub
                   i32.const -1
                   local.get $5
                   i32.const 1
                   i32.add
                   i32.shl
                   i32.or
                   i32.const -1
                   i32.xor
                   i32.and
                   i32.or
                   i32.or
                   i32.or
                   i64.extend_i32_u
                   local.set $4
                   local.get $0
                   i32.load offset=512
                   local.tee $0
                   i32.const 65535
                   i32.and
                   local.set $5
                   local.get $0
                   i32.const 16
                   i32.shr_u
                   local.set $3
                   local.get $8
                   i64.const 53
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $8
                   i64.const 24
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 255
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=1504
                   local.tee $24
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.set $10
                   local.get $8
                   i64.const 55
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $24
                   i32.const 2
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.get $10
                   i64.sub
                   local.set $11
                   local.get $7
                   i64.const 1
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $8
                   i64.const 32
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 255
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=1504
                   local.tee $0
                   i32.const 2
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.set $12
                   local.get $7
                   i64.const 3
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $0
                   i32.const 4
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.get $12
                   i64.sub
                   local.set $13
                   local.get $7
                   i64.const 13
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $8
                   i64.const 40
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 255
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=1504
                   local.tee $6
                   i32.const 4
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.set $14
                   local.get $7
                   i64.const 15
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $6
                   i32.const 6
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.get $14
                   i64.sub
                   local.set $15
                   local.get $8
                   i64.const 59
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $24
                   i32.const 6
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.get $8
                   i64.const 57
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $24
                   i32.const 4
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.tee $16
                   i64.sub
                   local.set $17
                   local.get $7
                   i64.const 7
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $0
                   i32.const 8
                   i32.shr_u
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.get $7
                   i64.const 5
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $0
                   i32.const 6
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.tee $18
                   i64.sub
                   local.set $19
                   local.get $7
                   i64.const 19
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $8
                   i64.const 48
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 31
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=1504
                   local.tee $25
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.get $7
                   i64.const 17
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $6
                   i32.const 8
                   i32.shr_u
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.tee $20
                   i64.sub
                   local.set $21
                   local.get $8
                   i64.const 63
                   i64.shr_u
                   i32.wrap_i64
                   local.get $7
                   i64.const 1
                   i64.shl
                   i32.wrap_i64
                   i32.const 2
                   i32.and
                   i32.or
                   local.get $0
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.get $8
                   i64.const 61
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $24
                   i32.const 8
                   i32.shr_u
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.tee $8
                   i64.sub
                   local.set $22
                   local.get $7
                   i64.const 11
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $6
                   i32.const 2
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.get $7
                   i64.const 9
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $6
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.tee $23
                   i64.sub
                   local.set $26
                   local.get $9
                   i32.const 3
                   i32.and
                   local.get $25
                   i32.const 4
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.get $7
                   i64.const 21
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $25
                   i32.const 2
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=792
                   i64.extend_i32_u
                   local.tee $7
                   i64.sub
                   local.set $27
                   local.get $10
                   i64.const 18014673391583296
                   i64.mul
                   local.set $10
                   local.get $12
                   i64.const 18014673391583296
                   i64.mul
                   local.set $12
                   local.get $14
                   i64.const 18014673391583296
                   i64.mul
                   local.set $14
                   local.get $16
                   i64.const 18014673391583296
                   i64.mul
                   local.set $16
                   local.get $18
                   i64.const 18014673391583296
                   i64.mul
                   local.set $18
                   local.get $20
                   i64.const 18014673391583296
                   i64.mul
                   local.set $20
                   local.get $8
                   i64.const 18014673391583296
                   i64.mul
                   local.set $8
                   local.get $23
                   i64.const 18014673391583296
                   i64.mul
                   local.set $23
                   local.get $7
                   i64.const 18014673391583296
                   i64.mul
                   local.set $7
                   i32.const 0
                   local.set $0
                   loop $for-loop|29
                    local.get $0
                    i32.const 4
                    i32.lt_s
                    if
                     local.get $1
                     local.get $3
                     i64.extend_i32_u
                     local.tee $28
                     i64.const 30
                     i64.shl
                     local.get $28
                     i64.or
                     i64.const 12884901891
                     i64.and
                     local.tee $28
                     i64.const 15
                     i64.shl
                     local.get $28
                     i64.or
                     i64.const 281479271743489
                     i64.and
                     i64.const 65535
                     i64.mul
                     local.tee $28
                     local.get $10
                     local.get $4
                     i64.const 255
                     i64.and
                     local.tee $29
                     local.get $29
                     i64.const 28
                     i64.shl
                     i64.or
                     i64.const 64424509455
                     i64.and
                     local.tee $29
                     i64.const 14
                     i64.shl
                     local.get $29
                     i64.or
                     i64.const 844437815230467
                     i64.and
                     i64.const 21
                     i64.mul
                     local.tee $29
                     local.get $29
                     i64.const 5
                     i64.shr_u
                     i64.const 281479271743489
                     i64.and
                     i64.add
                     local.tee $29
                     local.get $11
                     i64.mul
                     i64.add
                     local.tee $30
                     local.get $5
                     i64.extend_i32_u
                     local.tee $31
                     i64.const 30
                     i64.shl
                     local.get $31
                     i64.or
                     i64.const 12884901891
                     i64.and
                     local.tee $31
                     i64.const 15
                     i64.shl
                     local.get $31
                     i64.or
                     i64.const 281479271743489
                     i64.and
                     i64.const 65535
                     i64.mul
                     local.tee $31
                     local.get $12
                     local.get $13
                     local.get $29
                     i64.mul
                     i64.add
                     local.get $30
                     i64.xor
                     i64.and
                     i64.xor
                     local.tee $30
                     local.get $14
                     local.get $15
                     local.get $29
                     i64.mul
                     i64.add
                     i64.xor
                     i64.and
                     local.get $30
                     i64.xor
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     local.get $16
                     local.get $17
                     local.get $29
                     i64.mul
                     i64.add
                     local.tee $30
                     local.get $18
                     local.get $19
                     local.get $29
                     i64.mul
                     i64.add
                     i64.xor
                     local.get $31
                     i64.and
                     local.get $30
                     i64.xor
                     local.tee $30
                     local.get $20
                     local.get $21
                     local.get $29
                     i64.mul
                     i64.add
                     i64.xor
                     local.get $28
                     i64.and
                     local.get $30
                     i64.xor
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     i64.const 8
                     i64.shl
                     i64.or
                     local.tee $30
                     i64.const 65535
                     i64.and
                     local.get $28
                     local.get $31
                     local.get $8
                     local.get $22
                     local.get $29
                     i64.mul
                     i64.add
                     local.tee $31
                     local.get $23
                     local.get $26
                     local.get $29
                     i64.mul
                     i64.add
                     i64.xor
                     i64.and
                     local.get $31
                     i64.xor
                     local.tee $31
                     local.get $7
                     local.get $27
                     local.get $29
                     i64.mul
                     i64.add
                     i64.xor
                     i64.and
                     local.get $31
                     i64.xor
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     i64.const -71777214294589696
                     i64.or
                     local.tee $28
                     i64.const 4294901760
                     i64.and
                     i64.const 32
                     i64.shl
                     i64.or
                     local.get $30
                     i64.const 4294901760
                     i64.and
                     local.get $28
                     i64.const 65535
                     i64.and
                     i64.or
                     i64.const 16
                     i64.shl
                     i64.or
                     i64.store
                     local.get $1
                     local.get $30
                     i64.const 32
                     i64.shr_u
                     i64.const 65535
                     i64.and
                     local.get $28
                     i64.const -281474976710656
                     i64.and
                     i64.or
                     local.get $30
                     i64.const -281474976710656
                     i64.and
                     local.get $28
                     i64.const 281470681743360
                     i64.and
                     i64.or
                     i64.const 16
                     i64.shr_u
                     i64.or
                     i64.store offset=8
                     local.get $1
                     local.get $2
                     i32.add
                     local.set $1
                     local.get $4
                     i64.const 8
                     i64.shr_u
                     local.set $4
                     local.get $5
                     i32.const 4
                     i32.shr_u
                     local.set $5
                     local.get $3
                     i32.const 4
                     i32.shr_u
                     local.set $3
                     local.get $0
                     i32.const 1
                     i32.add
                     local.set $0
                     br $for-loop|29
                    end
                   end
                   br $break|0
                  end
                  local.get $8
                  i64.const 20
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 31
                  i32.and
                  local.tee $0
                  i32.const 29
                  i32.const 18
                  local.get $9
                  select
                  i32.gt_u
                  br_if $folding-inner0
                  local.get $8
                  i64.const 53
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $8
                  i64.const 25
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 127
                  i32.and
                  i32.const 1
                  i32.shl
                  i32.load16_u offset=1248
                  local.tee $3
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=808
                  i64.extend_i32_u
                  local.set $10
                  local.get $8
                  i64.const 56
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $3
                  i32.const 4
                  i32.shr_u
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=808
                  i64.extend_i32_u
                  local.get $8
                  i64.const 59
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $3
                  i32.const 8
                  i32.shr_u
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=808
                  i64.extend_i32_u
                  local.set $12
                  local.get $8
                  i64.const 62
                  i64.shr_u
                  i32.wrap_i64
                  local.get $7
                  i64.const 2
                  i64.shl
                  i32.wrap_i64
                  i32.const 4
                  i32.and
                  i32.or
                  local.get $8
                  i64.const 32
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 127
                  i32.and
                  i32.const 1
                  i32.shl
                  i32.load16_u offset=1248
                  local.tee $3
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=808
                  i64.extend_i32_u
                  local.set $13
                  local.get $7
                  i64.const 1
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $3
                  i32.const 4
                  i32.shr_u
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=808
                  i64.extend_i32_u
                  local.set $14
                  local.get $7
                  i64.const 4
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $3
                  i32.const 8
                  i32.shr_u
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=808
                  i64.extend_i32_u
                  local.set $15
                  local.get $7
                  i64.const 7
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $8
                  i64.const 39
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 127
                  i32.and
                  i32.const 1
                  i32.shl
                  i32.load16_u offset=1248
                  local.tee $3
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=808
                  i64.extend_i32_u
                  local.set $16
                  local.get $7
                  i64.const 10
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $3
                  i32.const 4
                  i32.shr_u
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=808
                  i64.extend_i32_u
                  local.set $17
                  local.get $7
                  i64.const 13
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $3
                  i32.const 8
                  i32.shr_u
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=808
                  i64.extend_i32_u
                  local.set $18
                  local.get $7
                  i64.const 16
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $8
                  i64.const 46
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 127
                  i32.and
                  i32.const 1
                  i32.shl
                  i32.load16_u offset=1248
                  local.tee $3
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=808
                  i64.extend_i32_u
                  local.set $8
                  local.get $7
                  i64.const 19
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $3
                  i32.const 4
                  i32.shr_u
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=808
                  i64.extend_i32_u
                  local.set $19
                  local.get $7
                  i64.const 22
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $3
                  i32.const 8
                  i32.shr_u
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=808
                  i64.extend_i32_u
                  local.set $20
                  local.get $7
                  i64.const 25
                  i64.shr_u
                  i64.const 1
                  i64.and
                  i32.const -1
                  local.get $9
                  if (result i32)
                   i64.const 5651576228422017
                   i64.const -4286381023083155150
                   local.get $0
                   i32.const 15
                   i32.gt_u
                   select
                   local.get $0
                   i32.const 15
                   i32.and
                   i32.const 2
                   i32.shl
                   i64.extend_i32_u
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 15
                   i32.and
                  else
                   i64.const 1065
                   i64.const 3202384868132024868
                   local.get $0
                   i32.const 15
                   i32.gt_u
                   select
                   local.get $0
                   i32.const 15
                   i32.and
                   i32.const 2
                   i32.shl
                   i64.extend_i32_u
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 15
                   i32.and
                  end
                  i32.const 1
                  i32.shl
                  local.tee $3
                  i32.const 2
                  i32.add
                  i32.shl
                  i64.extend_i32_u
                  local.get $7
                  i64.const 23
                  i64.shr_u
                  i64.and
                  i32.const -1
                  local.get $3
                  i32.const 1
                  i32.or
                  i32.shl
                  i32.const -4
                  i32.xor
                  i64.extend_i32_u
                  local.get $7
                  i64.const 24
                  i64.shr_u
                  i64.and
                  i64.or
                  i64.or
                  local.set $4
                  local.get $9
                  if (result i32)
                   local.get $0
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=600
                  else
                   local.get $0
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=560
                  end
                  local.set $3
                  local.get $1
                  local.set $0
                  local.get $10
                  i64.sub
                  local.set $7
                  local.get $17
                  local.get $16
                  i64.sub
                  local.set $11
                  local.get $13
                  local.get $12
                  i64.sub
                  local.set $13
                  local.get $8
                  local.get $18
                  i64.sub
                  local.set $8
                  local.get $15
                  local.get $14
                  i64.sub
                  local.set $15
                  local.get $20
                  local.get $19
                  i64.sub
                  local.set $17
                  local.get $10
                  i64.const 18014673391583296
                  i64.mul
                  local.set $10
                  local.get $16
                  i64.const 18014673391583296
                  i64.mul
                  local.set $16
                  local.get $12
                  i64.const 18014673391583296
                  i64.mul
                  local.set $12
                  local.get $18
                  i64.const 18014673391583296
                  i64.mul
                  local.set $18
                  local.get $14
                  i64.const 18014673391583296
                  i64.mul
                  local.set $14
                  local.get $19
                  i64.const 18014673391583296
                  i64.mul
                  local.set $19
                  loop $for-loop|31
                   local.get $5
                   i32.const 4
                   i32.lt_s
                   if
                    local.get $0
                    local.get $10
                    local.get $4
                    i64.const 255
                    i64.and
                    local.tee $20
                    local.get $20
                    i64.const 28
                    i64.shl
                    i64.or
                    i64.const 64424509455
                    i64.and
                    local.tee $20
                    i64.const 14
                    i64.shl
                    local.get $20
                    i64.or
                    i64.const 844437815230467
                    i64.and
                    i64.const 21
                    i64.mul
                    local.tee $20
                    local.get $20
                    i64.const 5
                    i64.shr_u
                    i64.const 281479271743489
                    i64.and
                    i64.add
                    local.tee $20
                    local.get $7
                    i64.mul
                    i64.add
                    local.tee $21
                    local.get $3
                    i64.extend_i32_u
                    local.tee $22
                    i64.const 30
                    i64.shl
                    local.get $22
                    i64.or
                    i64.const 12884901891
                    i64.and
                    local.tee $22
                    i64.const 15
                    i64.shl
                    local.get $22
                    i64.or
                    i64.const 281479271743489
                    i64.and
                    i64.const 65535
                    i64.mul
                    local.tee $22
                    local.get $16
                    local.get $11
                    local.get $20
                    i64.mul
                    i64.add
                    local.get $21
                    i64.xor
                    i64.and
                    i64.xor
                    i64.const 9007336695791648
                    i64.add
                    i64.const 6
                    i64.shr_u
                    i64.const 71777214294589695
                    i64.and
                    local.get $12
                    local.get $13
                    local.get $20
                    i64.mul
                    i64.add
                    local.tee $21
                    local.get $18
                    local.get $8
                    local.get $20
                    i64.mul
                    i64.add
                    i64.xor
                    local.get $22
                    i64.and
                    local.get $21
                    i64.xor
                    i64.const 9007336695791648
                    i64.add
                    i64.const 6
                    i64.shr_u
                    i64.const 71777214294589695
                    i64.and
                    i64.const 8
                    i64.shl
                    i64.or
                    local.tee $21
                    i64.const 65535
                    i64.and
                    local.get $22
                    local.get $14
                    local.get $15
                    local.get $20
                    i64.mul
                    i64.add
                    local.tee $23
                    local.get $19
                    local.get $17
                    local.get $20
                    i64.mul
                    i64.add
                    i64.xor
                    i64.and
                    local.get $23
                    i64.xor
                    i64.const 9007336695791648
                    i64.add
                    i64.const 6
                    i64.shr_u
                    i64.const 71777214294589695
                    i64.and
                    i64.const -71777214294589696
                    i64.or
                    local.tee $20
                    i64.const 4294901760
                    i64.and
                    i64.const 32
                    i64.shl
                    i64.or
                    local.get $21
                    i64.const 4294901760
                    i64.and
                    local.get $20
                    i64.const 65535
                    i64.and
                    i64.or
                    i64.const 16
                    i64.shl
                    i64.or
                    i64.store
                    local.get $0
                    local.get $21
                    i64.const 32
                    i64.shr_u
                    i64.const 65535
                    i64.and
                    local.get $20
                    i64.const -281474976710656
                    i64.and
                    i64.or
                    local.get $21
                    i64.const -281474976710656
                    i64.and
                    local.get $20
                    i64.const 281470681743360
                    i64.and
                    i64.or
                    i64.const 16
                    i64.shr_u
                    i64.or
                    i64.store offset=8
                    local.get $0
                    local.get $2
                    i32.add
                    local.set $0
                    local.get $4
                    i64.const 8
                    i64.shr_u
                    local.set $4
                    local.get $3
                    i32.const 4
                    i32.shr_u
                    local.set $3
                    local.get $5
                    i32.const 1
                    i32.add
                    local.set $5
                    br $for-loop|31
                   end
                  end
                  br $break|0
                 end
                 local.get $1
                 local.get $8
                 i64.const 20
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 255
                 i32.and
                 i64.extend_i32_u
                 local.tee $4
                 i64.const 18014673391583296
                 i64.mul
                 local.tee $10
                 local.get $7
                 i64.const 3
                 i64.shr_u
                 i64.const 281474976710648
                 i64.and
                 local.get $7
                 i64.const 4
                 i64.shr_u
                 i64.const 3
                 i64.and
                 i64.or
                 local.tee $11
                 i64.const 4095
                 i64.and
                 local.tee $12
                 local.get $12
                 i64.const 26
                 i64.shl
                 i64.or
                 i64.const 270582939711
                 i64.and
                 local.tee $12
                 i64.const 13
                 i64.shl
                 local.get $12
                 i64.or
                 i64.const 1970354902204423
                 i64.and
                 local.tee $12
                 i64.const 3
                 i64.shl
                 local.get $12
                 i64.or
                 local.tee $12
                 local.get $12
                 i64.const 5
                 i64.shr_u
                 i64.const 281479271743489
                 i64.and
                 i64.add
                 local.tee $12
                 local.get $8
                 i64.const 28
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 255
                 i32.and
                 i64.extend_i32_u
                 local.get $4
                 i64.sub
                 local.tee $4
                 i64.mul
                 i64.add
                 i64.const 9007336695791648
                 i64.add
                 i64.const 6
                 i64.shr_u
                 i64.const 71777214294589695
                 i64.and
                 local.get $8
                 i64.const 36
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 255
                 i32.and
                 i64.extend_i32_u
                 local.tee $13
                 i64.const 18014673391583296
                 i64.mul
                 local.tee $14
                 local.get $8
                 i64.const 44
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 255
                 i32.and
                 i64.extend_i32_u
                 local.get $13
                 i64.sub
                 local.tee $13
                 local.get $12
                 i64.mul
                 i64.add
                 i64.const 9007336695791648
                 i64.add
                 i64.const 6
                 i64.shr_u
                 i64.const 71777214294589695
                 i64.and
                 i64.const 8
                 i64.shl
                 i64.or
                 local.tee $15
                 i64.const 65535
                 i64.and
                 local.get $8
                 i64.const 52
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 255
                 i32.and
                 i64.extend_i32_u
                 local.tee $16
                 i64.const 18014673391583296
                 i64.mul
                 local.tee $17
                 local.get $8
                 i64.const 60
                 i64.shr_u
                 i32.wrap_i64
                 local.get $7
                 i64.const 4
                 i64.shl
                 i32.wrap_i64
                 i32.const 240
                 i32.and
                 i32.or
                 i64.extend_i32_u
                 local.get $16
                 i64.sub
                 local.tee $7
                 local.get $12
                 i64.mul
                 i64.add
                 i64.const 9007336695791648
                 i64.add
                 i64.const 6
                 i64.shr_u
                 i64.const 71777214294589695
                 i64.and
                 i64.const -71777214294589696
                 i64.or
                 local.tee $8
                 i64.const 4294901760
                 i64.and
                 i64.const 32
                 i64.shl
                 i64.or
                 local.get $15
                 i64.const 4294901760
                 i64.and
                 local.get $8
                 i64.const 65535
                 i64.and
                 i64.or
                 i64.const 16
                 i64.shl
                 i64.or
                 i64.store
                 local.get $1
                 local.get $15
                 i64.const 32
                 i64.shr_u
                 i64.const 65535
                 i64.and
                 local.get $8
                 i64.const -281474976710656
                 i64.and
                 i64.or
                 local.get $15
                 i64.const -281474976710656
                 i64.and
                 local.get $8
                 i64.const 281470681743360
                 i64.and
                 i64.or
                 i64.const 16
                 i64.shr_u
                 i64.or
                 i64.store offset=8
                 local.get $1
                 local.get $2
                 i32.add
                 local.tee $0
                 local.get $10
                 local.get $4
                 local.get $11
                 i64.const 12
                 i64.shr_u
                 i64.const 4095
                 i64.and
                 local.tee $8
                 local.get $8
                 i64.const 26
                 i64.shl
                 i64.or
                 i64.const 270582939711
                 i64.and
                 local.tee $8
                 i64.const 13
                 i64.shl
                 local.get $8
                 i64.or
                 i64.const 1970354902204423
                 i64.and
                 local.tee $8
                 i64.const 3
                 i64.shl
                 local.get $8
                 i64.or
                 local.tee $8
                 local.get $8
                 i64.const 5
                 i64.shr_u
                 i64.const 281479271743489
                 i64.and
                 i64.add
                 local.tee $8
                 i64.mul
                 i64.add
                 i64.const 9007336695791648
                 i64.add
                 i64.const 6
                 i64.shr_u
                 i64.const 71777214294589695
                 i64.and
                 local.get $14
                 local.get $8
                 local.get $13
                 i64.mul
                 i64.add
                 i64.const 9007336695791648
                 i64.add
                 i64.const 6
                 i64.shr_u
                 i64.const 71777214294589695
                 i64.and
                 i64.const 8
                 i64.shl
                 i64.or
                 local.tee $12
                 i64.const 65535
                 i64.and
                 local.get $17
                 local.get $7
                 local.get $8
                 i64.mul
                 i64.add
                 i64.const 9007336695791648
                 i64.add
                 i64.const 6
                 i64.shr_u
                 i64.const 71777214294589695
                 i64.and
                 i64.const -71777214294589696
                 i64.or
                 local.tee $8
                 i64.const 4294901760
                 i64.and
                 i64.const 32
                 i64.shl
                 i64.or
                 local.get $12
                 i64.const 4294901760
                 i64.and
                 local.get $8
                 i64.const 65535
                 i64.and
                 i64.or
                 i64.const 16
                 i64.shl
                 i64.or
                 i64.store
                 local.get $0
                 local.get $12
                 i64.const 32
                 i64.shr_u
                 i64.const 65535
                 i64.and
                 local.get $8
                 i64.const -281474976710656
                 i64.and
                 i64.or
                 local.get $12
                 i64.const -281474976710656
                 i64.and
                 local.get $8
                 i64.const 281470681743360
                 i64.and
                 i64.or
                 i64.const 16
                 i64.shr_u
                 i64.or
                 i64.store offset=8
                 local.get $0
                 local.get $2
                 i32.add
                 local.tee $0
                 local.get $10
                 local.get $4
                 local.get $11
                 i64.const 24
                 i64.shr_u
                 i64.const 4095
                 i64.and
                 local.tee $8
                 local.get $8
                 i64.const 26
                 i64.shl
                 i64.or
                 i64.const 270582939711
                 i64.and
                 local.tee $8
                 i64.const 13
                 i64.shl
                 local.get $8
                 i64.or
                 i64.const 1970354902204423
                 i64.and
                 local.tee $8
                 i64.const 3
                 i64.shl
                 local.get $8
                 i64.or
                 local.tee $8
                 local.get $8
                 i64.const 5
                 i64.shr_u
                 i64.const 281479271743489
                 i64.and
                 i64.add
                 local.tee $8
                 i64.mul
                 i64.add
                 i64.const 9007336695791648
                 i64.add
                 i64.const 6
                 i64.shr_u
                 i64.const 71777214294589695
                 i64.and
                 local.get $14
                 local.get $8
                 local.get $13
                 i64.mul
                 i64.add
                 i64.const 9007336695791648
                 i64.add
                 i64.const 6
                 i64.shr_u
                 i64.const 71777214294589695
                 i64.and
                 i64.const 8
                 i64.shl
                 i64.or
                 local.tee $12
                 i64.const 65535
                 i64.and
                 local.get $17
                 local.get $7
                 local.get $8
                 i64.mul
                 i64.add
                 i64.const 9007336695791648
                 i64.add
                 i64.const 6
                 i64.shr_u
                 i64.const 71777214294589695
                 i64.and
                 i64.const -71777214294589696
                 i64.or
                 local.tee $8
                 i64.const 4294901760
                 i64.and
                 i64.const 32
                 i64.shl
                 i64.or
                 local.get $12
                 i64.const 4294901760
                 i64.and
                 local.get $8
                 i64.const 65535
                 i64.and
                 i64.or
                 i64.const 16
                 i64.shl
                 i64.or
                 i64.store
                 local.get $0
                 local.get $12
                 i64.const 32
                 i64.shr_u
                 i64.const 65535
                 i64.and
                 local.get $8
                 i64.const -281474976710656
                 i64.and
                 i64.or
                 local.get $12
                 i64.const -281474976710656
                 i64.and
                 local.get $8
                 i64.const 281470681743360
                 i64.and
                 i64.or
                 i64.const 16
                 i64.shr_u
                 i64.or
                 i64.store offset=8
                 local.get $0
                 local.get $2
                 i32.add
                 local.tee $0
                 local.get $10
                 local.get $4
                 local.get $11
                 i64.const 36
                 i64.shr_u
                 i64.const 4095
                 i64.and
                 local.tee $8
                 local.get $8
                 i64.const 26
                 i64.shl
                 i64.or
                 i64.const 270582939711
                 i64.and
                 local.tee $8
                 i64.const 13
                 i64.shl
                 local.get $8
                 i64.or
                 i64.const 1970354902204423
                 i64.and
                 local.tee $8
                 i64.const 3
                 i64.shl
                 local.get $8
                 i64.or
                 local.tee $8
                 local.get $8
                 i64.const 5
                 i64.shr_u
                 i64.const 281479271743489
                 i64.and
                 i64.add
                 local.tee $8
                 i64.mul
                 i64.add
                 i64.const 9007336695791648
                 i64.add
                 i64.const 6
                 i64.shr_u
                 i64.const 71777214294589695
                 i64.and
                 local.get $14
                 local.get $8
                 local.get $13
                 i64.mul
                 i64.add
                 i64.const 9007336695791648
                 i64.add
                 i64.const 6
                 i64.shr_u
                 i64.const 71777214294589695
                 i64.and
                 i64.const 8
                 i64.shl
                 i64.or
                 local.tee $4
                 i64.const 65535
                 i64.and
                 local.get $17
                 local.get $7
                 local.get $8
                 i64.mul
                 i64.add
                 i64.const 9007336695791648
                 i64.add
                 i64.const 6
                 i64.shr_u
                 i64.const 71777214294589695
                 i64.and
                 i64.const -71777214294589696
                 i64.or
                 local.tee $7
                 i64.const 4294901760
                 i64.and
                 i64.const 32
                 i64.shl
                 i64.or
                 local.get $4
                 i64.const 4294901760
                 i64.and
                 local.get $7
                 i64.const 65535
                 i64.and
                 i64.or
                 i64.const 16
                 i64.shl
                 i64.or
                 i64.store
                 local.get $0
                 local.get $4
                 i64.const 32
                 i64.shr_u
                 i64.const 65535
                 i64.and
                 local.get $7
                 i64.const -281474976710656
                 i64.and
                 i64.or
                 local.get $4
                 i64.const -281474976710656
                 i64.and
                 local.get $7
                 i64.const 281470681743360
                 i64.and
                 i64.or
                 i64.const 16
                 i64.shr_u
                 i64.or
                 i64.store offset=8
                 br $break|0
                end
                local.get $8
                i64.const 36
                i64.shr_u
                i32.wrap_i64
                i32.const 31
                i32.and
                local.get $8
                i64.const 22
                i64.shr_u
                i32.wrap_i64
                i32.const 127
                i32.and
                i32.const 1
                i32.shl
                i32.load16_u offset=1248
                local.tee $0
                i32.const 7
                i32.and
                i32.const 5
                i32.shl
                i32.or
                i32.load8_u offset=896
                i64.extend_i32_u
                local.set $4
                local.get $8
                i64.const 51
                i64.shr_u
                i32.wrap_i64
                i32.const 31
                i32.and
                local.get $8
                i64.const 29
                i64.shr_u
                i32.wrap_i64
                i32.const 127
                i32.and
                i32.const 1
                i32.shl
                i32.load16_u offset=1248
                local.tee $3
                i32.const 7
                i32.and
                i32.const 5
                i32.shl
                i32.or
                i32.load8_u offset=896
                i64.extend_i32_u
                local.get $8
                i64.const 46
                i64.shr_u
                i32.wrap_i64
                i32.const 31
                i32.and
                local.get $0
                i32.const 8
                i32.shr_u
                i32.const 5
                i32.shl
                i32.or
                i32.load8_u offset=896
                i64.extend_i32_u
                local.tee $10
                i64.sub
                local.set $11
                local.get $8
                i64.const 61
                i64.shr_u
                i32.wrap_i64
                local.get $7
                i64.const 3
                i64.shl
                i32.wrap_i64
                i32.const 24
                i32.and
                i32.or
                local.get $3
                i32.const 8
                i32.shr_u
                i32.const 5
                i32.shl
                i32.or
                i32.load8_u offset=896
                i64.extend_i32_u
                local.get $8
                i64.const 56
                i64.shr_u
                i32.wrap_i64
                i32.const 31
                i32.and
                local.get $3
                i32.const 4
                i32.shr_u
                i32.const 7
                i32.and
                i32.const 5
                i32.shl
                i32.or
                i32.load8_u offset=896
                i64.extend_i32_u
                local.tee $12
                i64.sub
                local.set $13
                local.get $1
                local.get $4
                i64.const 18014673391583296
                i64.mul
                local.tee $14
                local.get $8
                i64.const 41
                i64.shr_u
                i32.wrap_i64
                i32.const 31
                i32.and
                local.get $0
                i32.const 4
                i32.shr_u
                i32.const 7
                i32.and
                i32.const 5
                i32.shl
                i32.or
                i32.load8_u offset=896
                i64.extend_i32_u
                local.get $4
                i64.sub
                local.tee $4
                local.get $7
                i64.const 2
                i64.shr_u
                i64.const 1
                i64.and
                local.get $7
                i64.const -16
                i64.and
                local.get $7
                i64.const 1
                i64.shr_u
                i64.const 4
                i64.and
                i64.or
                i64.or
                local.tee $7
                i64.const 13107
                i64.and
                local.tee $15
                local.get $15
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $15
                i64.const 12
                i64.shl
                local.get $15
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $15
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                local.get $15
                i64.add
                local.tee $15
                local.get $7
                i64.const 2
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $16
                local.get $16
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $16
                i64.const 12
                i64.shl
                local.get $16
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $16
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                local.get $16
                i64.add
                local.tee $16
                local.get $8
                i64.const 20
                i64.shr_u
                i32.wrap_i64
                i32.const 3
                i32.and
                local.tee $0
                select
                i64.mul
                i64.add
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                local.get $10
                i64.const 18014673391583296
                i64.mul
                local.tee $8
                local.get $11
                local.get $16
                local.get $15
                local.get $0
                i32.const 1
                i32.eq
                local.tee $3
                select
                i64.mul
                i64.add
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                i64.const 8
                i64.shl
                i64.or
                local.tee $10
                i64.const 65535
                i64.and
                local.get $12
                i64.const 18014673391583296
                i64.mul
                local.tee $12
                local.get $13
                local.get $16
                local.get $15
                local.get $0
                i32.const 2
                i32.eq
                local.tee $5
                select
                i64.mul
                i64.add
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                i64.const -71777214294589696
                i64.or
                local.tee $15
                i64.const 4294901760
                i64.and
                i64.const 32
                i64.shl
                i64.or
                local.get $10
                i64.const 4294901760
                i64.and
                local.get $15
                i64.const 65535
                i64.and
                i64.or
                i64.const 16
                i64.shl
                i64.or
                i64.store
                local.get $1
                local.get $10
                i64.const 32
                i64.shr_u
                i64.const 65535
                i64.and
                local.get $15
                i64.const -281474976710656
                i64.and
                i64.or
                local.get $10
                i64.const -281474976710656
                i64.and
                local.get $15
                i64.const 281470681743360
                i64.and
                i64.or
                i64.const 16
                i64.shr_u
                i64.or
                i64.store offset=8
                local.get $1
                local.get $2
                i32.add
                local.tee $1
                local.get $14
                local.get $4
                local.get $7
                i64.const 16
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $10
                local.get $10
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $10
                i64.const 12
                i64.shl
                local.get $10
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $10
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                local.get $10
                i64.add
                local.tee $10
                local.get $7
                i64.const 18
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $15
                local.get $15
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $15
                i64.const 12
                i64.shl
                local.get $15
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $15
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                local.get $15
                i64.add
                local.tee $15
                local.get $0
                select
                i64.mul
                i64.add
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                local.get $8
                local.get $11
                local.get $15
                local.get $10
                local.get $3
                select
                i64.mul
                i64.add
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                i64.const 8
                i64.shl
                i64.or
                local.tee $16
                i64.const 65535
                i64.and
                local.get $12
                local.get $13
                local.get $15
                local.get $10
                local.get $5
                select
                i64.mul
                i64.add
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                i64.const -71777214294589696
                i64.or
                local.tee $10
                i64.const 4294901760
                i64.and
                i64.const 32
                i64.shl
                i64.or
                local.get $16
                i64.const 4294901760
                i64.and
                local.get $10
                i64.const 65535
                i64.and
                i64.or
                i64.const 16
                i64.shl
                i64.or
                i64.store
                local.get $1
                local.get $16
                i64.const 32
                i64.shr_u
                i64.const 65535
                i64.and
                local.get $10
                i64.const -281474976710656
                i64.and
                i64.or
                local.get $16
                i64.const -281474976710656
                i64.and
                local.get $10
                i64.const 281470681743360
                i64.and
                i64.or
                i64.const 16
                i64.shr_u
                i64.or
                i64.store offset=8
                local.get $1
                local.get $2
                i32.add
                local.tee $1
                local.get $14
                local.get $4
                local.get $7
                i64.const 32
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $10
                local.get $10
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $10
                i64.const 12
                i64.shl
                local.get $10
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $10
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                local.get $10
                i64.add
                local.tee $10
                local.get $7
                i64.const 34
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $15
                local.get $15
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $15
                i64.const 12
                i64.shl
                local.get $15
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $15
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                local.get $15
                i64.add
                local.tee $15
                local.get $0
                select
                i64.mul
                i64.add
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                local.get $8
                local.get $11
                local.get $15
                local.get $10
                local.get $3
                select
                i64.mul
                i64.add
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                i64.const 8
                i64.shl
                i64.or
                local.tee $16
                i64.const 65535
                i64.and
                local.get $12
                local.get $13
                local.get $15
                local.get $10
                local.get $5
                select
                i64.mul
                i64.add
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                i64.const -71777214294589696
                i64.or
                local.tee $10
                i64.const 4294901760
                i64.and
                i64.const 32
                i64.shl
                i64.or
                local.get $16
                i64.const 4294901760
                i64.and
                local.get $10
                i64.const 65535
                i64.and
                i64.or
                i64.const 16
                i64.shl
                i64.or
                i64.store
                local.get $1
                local.get $16
                i64.const 32
                i64.shr_u
                i64.const 65535
                i64.and
                local.get $10
                i64.const -281474976710656
                i64.and
                i64.or
                local.get $16
                i64.const -281474976710656
                i64.and
                local.get $10
                i64.const 281470681743360
                i64.and
                i64.or
                i64.const 16
                i64.shr_u
                i64.or
                i64.store offset=8
                local.get $1
                local.get $2
                i32.add
                local.tee $1
                local.get $14
                local.get $4
                local.get $7
                i64.const 48
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $4
                local.get $4
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $4
                i64.const 12
                i64.shl
                local.get $4
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $4
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                local.get $4
                i64.add
                local.tee $4
                local.get $7
                i64.const 50
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $7
                local.get $7
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $7
                i64.const 12
                i64.shl
                local.get $7
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $7
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                local.get $7
                i64.add
                local.tee $7
                local.get $0
                select
                i64.mul
                i64.add
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                local.get $8
                local.get $11
                local.get $7
                local.get $4
                local.get $3
                select
                i64.mul
                i64.add
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                i64.const 8
                i64.shl
                i64.or
                local.tee $8
                i64.const 65535
                i64.and
                local.get $12
                local.get $13
                local.get $7
                local.get $4
                local.get $5
                select
                i64.mul
                i64.add
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                i64.const -71777214294589696
                i64.or
                local.tee $4
                i64.const 4294901760
                i64.and
                i64.const 32
                i64.shl
                i64.or
                local.get $8
                i64.const 4294901760
                i64.and
                local.get $4
                i64.const 65535
                i64.and
                i64.or
                i64.const 16
                i64.shl
                i64.or
                i64.store
                local.get $1
                local.get $8
                i64.const 32
                i64.shr_u
                i64.const 65535
                i64.and
                local.get $4
                i64.const -281474976710656
                i64.and
                i64.or
                local.get $8
                i64.const -281474976710656
                i64.and
                local.get $4
                i64.const 281470681743360
                i64.and
                i64.or
                i64.const 16
                i64.shr_u
                i64.or
                i64.store offset=8
                br $break|0
               end
               local.get $1
               local.get $8
               i64.const 5
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.get $8
               i64.const 13
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               i32.const 8
               i32.shl
               i32.or
               local.get $8
               i64.const 21
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               i32.const 16
               i32.shl
               i32.or
               local.get $8
               i64.const 29
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               i32.const 24
               i32.shl
               i32.or
               i64.extend_i32_u
               local.tee $4
               i64.const 32
               i64.shl
               local.get $4
               i64.or
               local.tee $4
               i64.store
               local.get $1
               local.get $4
               i64.store offset=8
               local.get $1
               local.get $2
               i32.add
               local.tee $0
               local.get $4
               i64.store
               local.get $0
               local.get $4
               i64.store offset=8
               local.get $0
               local.get $2
               i32.add
               local.tee $0
               local.get $4
               i64.store
               local.get $0
               local.get $4
               i64.store offset=8
               local.get $0
               local.get $2
               i32.add
               local.tee $0
               local.get $4
               i64.store
               local.get $0
               local.get $4
               i64.store offset=8
               br $break|0
              end
              local.get $8
              i64.const 28
              i64.shr_u
              i32.wrap_i64
              i32.const 31
              i32.and
              local.tee $0
              i32.const 29
              i32.gt_u
              br_if $folding-inner0
              local.get $7
              i64.const 33
              i64.shr_u
              i64.const 1
              i64.and
              i32.const -1
              i64.const 5651576228422017
              i64.const -4286381023083155150
              local.get $0
              i32.const 15
              i32.gt_u
              select
              local.get $0
              i32.const 15
              i32.and
              i32.const 2
              i32.shl
              i64.extend_i32_u
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              i32.const 1
              i32.shl
              local.tee $5
              i32.const 2
              i32.add
              i32.shl
              i64.extend_i32_u
              local.get $7
              i64.const 31
              i64.shr_u
              i64.and
              i32.const -1
              local.get $5
              i32.const 1
              i32.or
              i32.shl
              i32.const -4
              i32.xor
              i64.extend_i32_u
              local.get $7
              i64.const 32
              i64.shr_u
              i64.and
              i64.or
              i64.or
              local.set $4
              local.get $0
              i32.const 1
              i32.shl
              i32.load16_u offset=600
              local.set $0
              local.get $7
              i64.const 27
              i64.shl
              local.get $8
              i64.const 37
              i64.shr_u
              i64.or
              i64.const 1085102592571150095
              i64.and
              local.tee $10
              i64.const 4
              i64.shl
              local.get $10
              i64.or
              local.tee $10
              i64.const 255
              i64.and
              local.get $7
              i64.const 31
              i64.shl
              local.get $8
              i64.const 33
              i64.shr_u
              i64.or
              i64.const 1085102592571150095
              i64.and
              local.tee $7
              i64.const 4
              i64.shl
              local.get $7
              i64.or
              local.tee $7
              i64.const 255
              i64.and
              local.tee $8
              i64.sub
              local.set $11
              local.get $10
              i64.const 32
              i64.shr_u
              i64.const 255
              i64.and
              local.get $7
              i64.const 32
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $12
              i64.sub
              local.set $13
              local.get $10
              i64.const 8
              i64.shr_u
              i64.const 255
              i64.and
              local.get $7
              i64.const 8
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $14
              i64.sub
              local.set $15
              local.get $10
              i64.const 40
              i64.shr_u
              i64.const 255
              i64.and
              local.get $7
              i64.const 40
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $16
              i64.sub
              local.set $17
              local.get $10
              i64.const 16
              i64.shr_u
              i64.const 255
              i64.and
              local.get $7
              i64.const 16
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $18
              i64.sub
              local.set $19
              local.get $10
              i64.const 48
              i64.shr_u
              i64.const 255
              i64.and
              local.get $7
              i64.const 48
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $20
              i64.sub
              local.set $21
              local.get $10
              i64.const 24
              i64.shr_u
              i64.const 255
              i64.and
              local.get $7
              i64.const 24
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $22
              i64.sub
              local.set $23
              local.get $10
              i64.const 56
              i64.shr_u
              i64.const 255
              i64.and
              local.get $7
              i64.const 56
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $7
              i64.sub
              local.set $10
              local.get $8
              i64.const 18014673391583296
              i64.mul
              local.set $8
              local.get $12
              i64.const 18014673391583296
              i64.mul
              local.set $12
              local.get $14
              i64.const 18014673391583296
              i64.mul
              local.set $14
              local.get $16
              i64.const 18014673391583296
              i64.mul
              local.set $16
              local.get $18
              i64.const 18014673391583296
              i64.mul
              local.set $18
              local.get $20
              i64.const 18014673391583296
              i64.mul
              local.set $20
              local.get $22
              i64.const 18014673391583296
              i64.mul
              local.set $22
              local.get $7
              i64.const 18014673391583296
              i64.mul
              local.set $7
              loop $for-loop|54
               local.get $3
               i32.const 4
               i32.lt_s
               if
                local.get $1
                local.get $8
                local.get $4
                i64.const 255
                i64.and
                local.tee $26
                local.get $26
                i64.const 28
                i64.shl
                i64.or
                i64.const 64424509455
                i64.and
                local.tee $26
                i64.const 14
                i64.shl
                local.get $26
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $26
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                local.get $26
                i64.add
                local.tee $26
                local.get $11
                i64.mul
                i64.add
                local.tee $27
                local.get $0
                i64.extend_i32_u
                local.tee $28
                i64.const 30
                i64.shl
                local.get $28
                i64.or
                i64.const 12884901891
                i64.and
                local.tee $28
                i64.const 15
                i64.shl
                local.get $28
                i64.or
                i64.const 281479271743489
                i64.and
                i64.const 65535
                i64.mul
                local.tee $28
                local.get $12
                local.get $13
                local.get $26
                i64.mul
                i64.add
                local.get $27
                i64.xor
                i64.and
                i64.xor
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                local.get $14
                local.get $15
                local.get $26
                i64.mul
                i64.add
                local.tee $27
                local.get $16
                local.get $17
                local.get $26
                i64.mul
                i64.add
                i64.xor
                local.get $28
                i64.and
                local.get $27
                i64.xor
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                i64.const 8
                i64.shl
                i64.or
                local.tee $27
                i64.const 65535
                i64.and
                local.get $18
                local.get $19
                local.get $26
                i64.mul
                i64.add
                local.tee $29
                local.get $20
                local.get $21
                local.get $26
                i64.mul
                i64.add
                i64.xor
                local.get $28
                i64.and
                local.get $29
                i64.xor
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                local.get $28
                local.get $22
                local.get $23
                local.get $26
                i64.mul
                i64.add
                local.tee $29
                local.get $7
                local.get $10
                local.get $26
                i64.mul
                i64.add
                i64.xor
                i64.and
                local.get $29
                i64.xor
                local.tee $26
                i64.const 5
                i64.shr_u
                i64.const 143835907860922879
                i64.and
                local.get $26
                i64.const 3
                i64.shl
                i64.const 141865552958718456
                i64.and
                i64.add
                i64.const 281479271743489
                i64.add
                i64.const 9
                i64.shr_u
                i64.const 281479271743489
                i64.and
                local.get $26
                i64.const 6
                i64.shr_u
                i64.add
                i64.const 71777214294589695
                i64.and
                i64.const 8
                i64.shl
                i64.or
                local.tee $26
                i64.const 4294901760
                i64.and
                i64.const 32
                i64.shl
                i64.or
                local.get $27
                i64.const 4294901760
                i64.and
                local.get $26
                i64.const 65535
                i64.and
                i64.or
                i64.const 16
                i64.shl
                i64.or
                i64.store
                local.get $1
                local.get $27
                i64.const 32
                i64.shr_u
                i64.const 65535
                i64.and
                local.get $26
                i64.const -281474976710656
                i64.and
                i64.or
                local.get $27
                i64.const -281474976710656
                i64.and
                local.get $26
                i64.const 281470681743360
                i64.and
                i64.or
                i64.const 16
                i64.shr_u
                i64.or
                i64.store offset=8
                local.get $1
                local.get $2
                i32.add
                local.set $1
                local.get $4
                i64.const 8
                i64.shr_u
                local.set $4
                local.get $0
                i32.const 4
                i32.shr_u
                local.set $0
                local.get $3
                i32.const 1
                i32.add
                local.set $3
                br $for-loop|54
               end
              end
              br $break|0
             end
             local.get $7
             i64.const -16
             i64.and
             local.get $7
             i64.const 1
             i64.shr_u
             i64.const 7
             i64.and
             i64.or
             local.set $4
             local.get $8
             i64.const 33
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.get $8
             i64.const 20
             i64.shr_u
             i32.wrap_i64
             i32.const 255
             i32.and
             i32.const 1
             i32.shl
             i32.load16_u offset=1504
             local.tee $0
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             i64.extend_i32_u
             local.set $10
             local.get $8
             i64.const 37
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.get $0
             i32.const 2
             i32.shr_u
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             i64.extend_i32_u
             local.get $10
             i64.sub
             local.set $11
             local.get $8
             i64.const 45
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.get $0
             i32.const 6
             i32.shr_u
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             i64.extend_i32_u
             local.get $8
             i64.const 41
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.get $0
             i32.const 4
             i32.shr_u
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             i64.extend_i32_u
             local.tee $12
             i64.sub
             local.set $13
             local.get $8
             i64.const 53
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.get $8
             i64.const 28
             i64.shr_u
             i32.wrap_i64
             i32.const 31
             i32.and
             i32.const 1
             i32.shl
             i32.load16_u offset=1504
             local.tee $3
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             i64.extend_i32_u
             local.get $8
             i64.const 49
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.get $0
             i32.const 8
             i32.shr_u
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             i64.extend_i32_u
             local.tee $14
             i64.sub
             local.set $15
             local.get $8
             i64.const 61
             i64.shr_u
             i32.wrap_i64
             local.get $7
             i64.const 3
             i64.shl
             i32.wrap_i64
             i32.const 8
             i32.and
             i32.or
             local.get $3
             i32.const 4
             i32.shr_u
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             i64.extend_i32_u
             local.get $8
             i64.const 57
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.get $3
             i32.const 2
             i32.shr_u
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             i64.extend_i32_u
             local.tee $7
             i64.sub
             local.set $8
             local.get $10
             i64.const 18014673391583296
             i64.mul
             local.set $10
             local.get $12
             i64.const 18014673391583296
             i64.mul
             local.set $12
             local.get $14
             i64.const 18014673391583296
             i64.mul
             local.set $14
             local.get $7
             i64.const 18014673391583296
             i64.mul
             local.set $7
             local.get $1
             local.tee $0
             local.get $2
             i32.const 2
             i32.shl
             i32.add
             local.set $1
             loop $while-continue|56
              local.get $0
              local.get $1
              i32.lt_s
              if
               local.get $0
               local.get $10
               local.get $4
               i64.const 65535
               i64.and
               local.tee $16
               local.get $16
               i64.const 24
               i64.shl
               i64.or
               i64.const 1095216660735
               i64.and
               local.tee $16
               i64.const 12
               i64.shl
               local.get $16
               i64.or
               i64.const 4222189076152335
               i64.and
               local.tee $16
               i64.const 2
               i64.shl
               local.get $16
               i64.const 2
               i64.shr_u
               i64.or
               i64.const 17733194119839807
               i64.and
               local.tee $16
               local.get $16
               i64.const 5
               i64.shr_u
               i64.const 281479271743489
               i64.and
               i64.add
               local.tee $16
               local.get $11
               i64.mul
               i64.add
               i64.const 9007336695791648
               i64.add
               i64.const 6
               i64.shr_u
               i64.const 71777214294589695
               i64.and
               local.get $12
               local.get $13
               local.get $16
               i64.mul
               i64.add
               i64.const 9007336695791648
               i64.add
               i64.const 6
               i64.shr_u
               i64.const 71777214294589695
               i64.and
               i64.const 8
               i64.shl
               i64.or
               local.tee $17
               i64.const 65535
               i64.and
               local.get $14
               local.get $15
               local.get $16
               i64.mul
               i64.add
               i64.const 9007336695791648
               i64.add
               i64.const 6
               i64.shr_u
               i64.const 71777214294589695
               i64.and
               local.get $7
               local.get $8
               local.get $16
               i64.mul
               i64.add
               i64.const 9007336695791648
               i64.add
               i64.const 6
               i64.shr_u
               i64.const 71777214294589695
               i64.and
               i64.const 8
               i64.shl
               i64.or
               local.tee $16
               i64.const 4294901760
               i64.and
               i64.const 32
               i64.shl
               i64.or
               local.get $17
               i64.const 4294901760
               i64.and
               local.get $16
               i64.const 65535
               i64.and
               i64.or
               i64.const 16
               i64.shl
               i64.or
               i64.store
               local.get $0
               local.get $17
               i64.const 32
               i64.shr_u
               i64.const 65535
               i64.and
               local.get $16
               i64.const -281474976710656
               i64.and
               i64.or
               local.get $17
               i64.const -281474976710656
               i64.and
               local.get $16
               i64.const 281470681743360
               i64.and
               i64.or
               i64.const 16
               i64.shr_u
               i64.or
               i64.store offset=8
               local.get $0
               local.get $2
               i32.add
               local.set $0
               local.get $4
               i64.const 16
               i64.shr_u
               local.set $4
               br $while-continue|56
              end
             end
             br $break|0
            end
            local.get $8
            i64.const 34
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $8
            i64.const 21
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            i32.const 1
            i32.shl
            i32.load16_u offset=1504
            local.tee $0
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=848
            i64.extend_i32_u
            local.set $4
            local.get $8
            i64.const 58
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $8
            i64.const 29
            i64.shr_u
            i32.wrap_i64
            i32.const 31
            i32.and
            i32.const 1
            i32.shl
            i32.load16_u offset=1504
            local.tee $3
            i32.const 2
            i32.shr_u
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=848
            i64.extend_i32_u
            local.set $10
            local.get $8
            i64.const 54
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $3
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=848
            i64.extend_i32_u
            local.get $8
            i64.const 50
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $0
            i32.const 8
            i32.shr_u
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=848
            i64.extend_i32_u
            local.tee $11
            i64.sub
            local.set $12
            local.get $8
            i64.const 19
            i64.shr_u
            i32.wrap_i64
            i32.const 3
            i32.and
            local.tee $5
            i32.const 1
            i32.eq
            local.set $6
            local.get $8
            i64.const 46
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $0
            i32.const 6
            i32.shr_u
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=848
            i64.extend_i32_u
            local.get $8
            i64.const 42
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $0
            i32.const 4
            i32.shr_u
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=848
            i64.extend_i32_u
            local.tee $14
            i64.sub
            local.set $15
            local.get $1
            local.get $4
            i64.const 18014673391583296
            i64.mul
            local.tee $13
            local.get $8
            i64.const 38
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $0
            i32.const 2
            i32.shr_u
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=848
            i64.extend_i32_u
            local.get $4
            i64.sub
            local.tee $4
            local.get $7
            i64.const 2
            i64.shr_u
            i64.const 1
            i64.and
            local.get $7
            i64.const -16
            i64.and
            local.get $7
            i64.const 1
            i64.shr_u
            i64.const 4
            i64.and
            i64.or
            i64.or
            local.tee $16
            i64.const 13107
            i64.and
            local.tee $17
            local.get $17
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $17
            i64.const 12
            i64.shl
            local.get $17
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $17
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            local.get $17
            i64.add
            local.tee $17
            local.get $16
            i64.const 2
            i64.shr_u
            i64.const 13107
            i64.and
            local.tee $18
            local.get $18
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $18
            i64.const 12
            i64.shl
            local.get $18
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $18
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            local.get $18
            i64.add
            local.tee $18
            local.get $5
            select
            i64.mul
            i64.add
            i64.const 9007336695791648
            i64.add
            i64.const 6
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            local.get $14
            i64.const 18014673391583296
            i64.mul
            local.tee $14
            local.get $18
            local.get $17
            local.get $6
            select
            local.get $15
            i64.mul
            i64.add
            i64.const 9007336695791648
            i64.add
            i64.const 6
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            i64.const 8
            i64.shl
            i64.or
            local.tee $19
            i64.const 65535
            i64.and
            local.get $11
            i64.const 18014673391583296
            i64.mul
            local.tee $11
            local.get $12
            local.get $18
            local.get $17
            local.get $5
            i32.const 2
            i32.eq
            local.tee $0
            select
            i64.mul
            i64.add
            i64.const 9007336695791648
            i64.add
            i64.const 6
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            local.get $10
            i64.const 18014673391583296
            i64.mul
            local.tee $20
            local.get $8
            i64.const 62
            i64.shr_u
            i32.wrap_i64
            local.get $7
            i64.const 2
            i64.shl
            i32.wrap_i64
            i32.const 12
            i32.and
            i32.or
            local.get $3
            i32.const 4
            i32.shr_u
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=848
            i64.extend_i32_u
            local.get $10
            i64.sub
            local.tee $7
            local.get $18
            local.get $17
            local.get $5
            i32.const 3
            i32.eq
            local.tee $3
            select
            i64.mul
            i64.add
            local.tee $8
            i64.const 5
            i64.shr_u
            i64.const 143835907860922879
            i64.and
            local.get $8
            i64.const 3
            i64.shl
            i64.const 141865552958718456
            i64.and
            i64.add
            i64.const 281479271743489
            i64.add
            i64.const 9
            i64.shr_u
            i64.const 281479271743489
            i64.and
            local.get $8
            i64.const 6
            i64.shr_u
            i64.add
            i64.const 71777214294589695
            i64.and
            i64.const 8
            i64.shl
            i64.or
            local.tee $8
            i64.const 4294901760
            i64.and
            i64.const 32
            i64.shl
            i64.or
            local.get $19
            i64.const 4294901760
            i64.and
            local.get $8
            i64.const 65535
            i64.and
            i64.or
            i64.const 16
            i64.shl
            i64.or
            i64.store
            local.get $1
            local.get $19
            i64.const 32
            i64.shr_u
            i64.const 65535
            i64.and
            local.get $8
            i64.const -281474976710656
            i64.and
            i64.or
            local.get $19
            i64.const -281474976710656
            i64.and
            local.get $8
            i64.const 281470681743360
            i64.and
            i64.or
            i64.const 16
            i64.shr_u
            i64.or
            i64.store offset=8
            local.get $1
            local.get $2
            i32.add
            local.tee $1
            local.get $13
            local.get $4
            local.get $16
            i64.const 16
            i64.shr_u
            i64.const 13107
            i64.and
            local.tee $8
            local.get $8
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $8
            i64.const 12
            i64.shl
            local.get $8
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $8
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            local.get $8
            i64.add
            local.tee $8
            local.get $16
            i64.const 18
            i64.shr_u
            i64.const 13107
            i64.and
            local.tee $10
            local.get $10
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $10
            i64.const 12
            i64.shl
            local.get $10
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $10
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            local.get $10
            i64.add
            local.tee $10
            local.get $5
            select
            i64.mul
            i64.add
            i64.const 9007336695791648
            i64.add
            i64.const 6
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            local.get $14
            local.get $15
            local.get $10
            local.get $8
            local.get $6
            select
            i64.mul
            i64.add
            i64.const 9007336695791648
            i64.add
            i64.const 6
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            i64.const 8
            i64.shl
            i64.or
            local.tee $17
            i64.const 65535
            i64.and
            local.get $11
            local.get $12
            local.get $10
            local.get $8
            local.get $0
            select
            i64.mul
            i64.add
            i64.const 9007336695791648
            i64.add
            i64.const 6
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            local.get $20
            local.get $7
            local.get $10
            local.get $8
            local.get $3
            select
            i64.mul
            i64.add
            local.tee $8
            i64.const 5
            i64.shr_u
            i64.const 143835907860922879
            i64.and
            local.get $8
            i64.const 3
            i64.shl
            i64.const 141865552958718456
            i64.and
            i64.add
            i64.const 281479271743489
            i64.add
            i64.const 9
            i64.shr_u
            i64.const 281479271743489
            i64.and
            local.get $8
            i64.const 6
            i64.shr_u
            i64.add
            i64.const 71777214294589695
            i64.and
            i64.const 8
            i64.shl
            i64.or
            local.tee $8
            i64.const 4294901760
            i64.and
            i64.const 32
            i64.shl
            i64.or
            local.get $17
            i64.const 4294901760
            i64.and
            local.get $8
            i64.const 65535
            i64.and
            i64.or
            i64.const 16
            i64.shl
            i64.or
            i64.store
            local.get $1
            local.get $17
            i64.const 32
            i64.shr_u
            i64.const 65535
            i64.and
            local.get $8
            i64.const -281474976710656
            i64.and
            i64.or
            local.get $17
            i64.const -281474976710656
            i64.and
            local.get $8
            i64.const 281470681743360
            i64.and
            i64.or
            i64.const 16
            i64.shr_u
            i64.or
            i64.store offset=8
            local.get $1
            local.get $2
            i32.add
            local.tee $1
            local.get $13
            local.get $4
            local.get $16
            i64.const 32
            i64.shr_u
            i64.const 13107
            i64.and
            local.tee $8
            local.get $8
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $8
            i64.const 12
            i64.shl
            local.get $8
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $8
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            local.get $8
            i64.add
            local.tee $8
            local.get $16
            i64.const 34
            i64.shr_u
            i64.const 13107
            i64.and
            local.tee $10
            local.get $10
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $10
            i64.const 12
            i64.shl
            local.get $10
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $10
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            local.get $10
            i64.add
            local.tee $10
            local.get $5
            select
            i64.mul
            i64.add
            i64.const 9007336695791648
            i64.add
            i64.const 6
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            local.get $14
            local.get $15
            local.get $10
            local.get $8
            local.get $6
            select
            i64.mul
            i64.add
            i64.const 9007336695791648
            i64.add
            i64.const 6
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            i64.const 8
            i64.shl
            i64.or
            local.tee $17
            i64.const 65535
            i64.and
            local.get $11
            local.get $12
            local.get $10
            local.get $8
            local.get $0
            select
            i64.mul
            i64.add
            i64.const 9007336695791648
            i64.add
            i64.const 6
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            local.get $20
            local.get $7
            local.get $10
            local.get $8
            local.get $3
            select
            i64.mul
            i64.add
            local.tee $8
            i64.const 5
            i64.shr_u
            i64.const 143835907860922879
            i64.and
            local.get $8
            i64.const 3
            i64.shl
            i64.const 141865552958718456
            i64.and
            i64.add
            i64.const 281479271743489
            i64.add
            i64.const 9
            i64.shr_u
            i64.const 281479271743489
            i64.and
            local.get $8
            i64.const 6
            i64.shr_u
            i64.add
            i64.const 71777214294589695
            i64.and
            i64.const 8
            i64.shl
            i64.or
            local.tee $8
            i64.const 4294901760
            i64.and
            i64.const 32
            i64.shl
            i64.or
            local.get $17
            i64.const 4294901760
            i64.and
            local.get $8
            i64.const 65535
            i64.and
            i64.or
            i64.const 16
            i64.shl
            i64.or
            i64.store
            local.get $1
            local.get $17
            i64.const 32
            i64.shr_u
            i64.const 65535
            i64.and
            local.get $8
            i64.const -281474976710656
            i64.and
            i64.or
            local.get $17
            i64.const -281474976710656
            i64.and
            local.get $8
            i64.const 281470681743360
            i64.and
            i64.or
            i64.const 16
            i64.shr_u
            i64.or
            i64.store offset=8
            local.get $1
            local.get $2
            i32.add
            local.tee $1
            local.get $4
            local.get $16
            i64.const 48
            i64.shr_u
            i64.const 13107
            i64.and
            local.tee $4
            local.get $4
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $4
            i64.const 12
            i64.shl
            local.get $4
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $4
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            local.get $4
            i64.add
            local.tee $4
            local.get $16
            i64.const 50
            i64.shr_u
            i64.const 13107
            i64.and
            local.tee $8
            local.get $8
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $8
            i64.const 12
            i64.shl
            local.get $8
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $8
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            local.get $8
            i64.add
            local.tee $8
            local.get $5
            select
            i64.mul
            local.get $13
            i64.add
            i64.const 9007336695791648
            i64.add
            i64.const 6
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            local.get $14
            local.get $15
            local.get $8
            local.get $4
            local.get $6
            select
            i64.mul
            i64.add
            i64.const 9007336695791648
            i64.add
            i64.const 6
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            i64.const 8
            i64.shl
            i64.or
            local.tee $10
            i64.const 65535
            i64.and
            local.get $11
            local.get $12
            local.get $8
            local.get $4
            local.get $0
            select
            i64.mul
            i64.add
            i64.const 9007336695791648
            i64.add
            i64.const 6
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            local.get $20
            local.get $7
            local.get $8
            local.get $4
            local.get $3
            select
            i64.mul
            i64.add
            local.tee $4
            i64.const 5
            i64.shr_u
            i64.const 143835907860922879
            i64.and
            local.get $4
            i64.const 3
            i64.shl
            i64.const 141865552958718456
            i64.and
            i64.add
            i64.const 281479271743489
            i64.add
            i64.const 9
            i64.shr_u
            i64.const 281479271743489
            i64.and
            local.get $4
            i64.const 6
            i64.shr_u
            i64.add
            i64.const 71777214294589695
            i64.and
            i64.const 8
            i64.shl
            i64.or
            local.tee $4
            i64.const 4294901760
            i64.and
            i64.const 32
            i64.shl
            i64.or
            local.get $10
            i64.const 4294901760
            i64.and
            local.get $4
            i64.const 65535
            i64.and
            i64.or
            i64.const 16
            i64.shl
            i64.or
            i64.store
            local.get $1
            local.get $10
            i64.const 32
            i64.shr_u
            i64.const 65535
            i64.and
            local.get $4
            i64.const -281474976710656
            i64.and
            i64.or
            local.get $10
            i64.const -281474976710656
            i64.and
            local.get $4
            i64.const 281470681743360
            i64.and
            i64.or
            i64.const 16
            i64.shr_u
            i64.or
            i64.store offset=8
            br $break|0
           end
           local.get $1
           local.get $8
           i64.const 33
           i64.shr_u
           i32.wrap_i64
           i32.const 63
           i32.and
           local.get $8
           i64.const 20
           i64.shr_u
           i32.wrap_i64
           i32.const 255
           i32.and
           i32.const 1
           i32.shl
           i32.load16_u offset=1504
           local.tee $0
           i32.const 3
           i32.and
           i32.const 6
           i32.shl
           i32.or
           i32.load8_u offset=1056
           i64.extend_i32_u
           local.tee $4
           i64.const 18014673391583296
           i64.mul
           local.tee $10
           local.get $7
           i64.const 16
           i64.shr_u
           i64.const 281474976710648
           i64.and
           local.get $7
           i64.const 17
           i64.shr_u
           i64.const 3
           i64.and
           i64.or
           local.tee $11
           i64.const 4095
           i64.and
           local.tee $12
           local.get $12
           i64.const 26
           i64.shl
           i64.or
           i64.const 270582939711
           i64.and
           local.tee $12
           i64.const 13
           i64.shl
           local.get $12
           i64.or
           i64.const 1970354902204423
           i64.and
           local.tee $12
           i64.const 3
           i64.shl
           local.get $12
           i64.or
           local.tee $12
           local.get $12
           i64.const 5
           i64.shr_u
           i64.const 281479271743489
           i64.and
           i64.add
           local.tee $12
           local.get $8
           i64.const 39
           i64.shr_u
           i32.wrap_i64
           i32.const 63
           i32.and
           local.get $0
           i32.const 2
           i32.shr_u
           i32.const 3
           i32.and
           i32.const 6
           i32.shl
           i32.or
           i32.load8_u offset=1056
           i64.extend_i32_u
           local.get $4
           i64.sub
           local.tee $4
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           local.get $8
           i64.const 45
           i64.shr_u
           i32.wrap_i64
           i32.const 63
           i32.and
           local.get $0
           i32.const 4
           i32.shr_u
           i32.const 3
           i32.and
           i32.const 6
           i32.shl
           i32.or
           i32.load8_u offset=1056
           i64.extend_i32_u
           local.tee $13
           i64.const 18014673391583296
           i64.mul
           local.tee $14
           local.get $12
           local.get $8
           i64.const 51
           i64.shr_u
           i32.wrap_i64
           i32.const 63
           i32.and
           local.get $0
           i32.const 6
           i32.shr_u
           i32.const 3
           i32.and
           i32.const 6
           i32.shl
           i32.or
           i32.load8_u offset=1056
           i64.extend_i32_u
           local.get $13
           i64.sub
           local.tee $13
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           i64.const 8
           i64.shl
           i64.or
           local.tee $15
           i64.const 65535
           i64.and
           local.get $8
           i64.const 57
           i64.shr_u
           i32.wrap_i64
           i32.const 63
           i32.and
           local.get $0
           i32.const 8
           i32.shr_u
           i32.const 6
           i32.shl
           i32.or
           i32.load8_u offset=1056
           i64.extend_i32_u
           local.tee $16
           i64.const 18014673391583296
           i64.mul
           local.tee $17
           local.get $12
           local.get $8
           i64.const 63
           i64.shr_u
           i32.wrap_i64
           local.get $7
           i64.const 1
           i64.shl
           i32.wrap_i64
           i32.const 62
           i32.and
           i32.or
           local.get $8
           i64.const 28
           i64.shr_u
           i32.wrap_i64
           i32.const 31
           i32.and
           i32.const 1
           i32.shl
           i32.load16_u offset=1504
           local.tee $0
           i32.const 3
           i32.and
           i32.const 6
           i32.shl
           i32.or
           i32.load8_u offset=1056
           i64.extend_i32_u
           local.get $16
           i64.sub
           local.tee $8
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           local.get $7
           i64.const 5
           i64.shr_u
           i32.wrap_i64
           i32.const 63
           i32.and
           local.get $0
           i32.const 2
           i32.shr_u
           i32.const 3
           i32.and
           i32.const 6
           i32.shl
           i32.or
           i32.load8_u offset=1056
           i64.extend_i32_u
           local.tee $16
           i64.const 18014673391583296
           i64.mul
           local.tee $18
           local.get $12
           local.get $7
           i64.const 11
           i64.shr_u
           i32.wrap_i64
           i32.const 63
           i32.and
           local.get $0
           i32.const 4
           i32.shr_u
           i32.const 3
           i32.and
           i32.const 6
           i32.shl
           i32.or
           i32.load8_u offset=1056
           i64.extend_i32_u
           local.get $16
           i64.sub
           local.tee $7
           i64.mul
           i64.add
           local.tee $12
           i64.const 5
           i64.shr_u
           i64.const 143835907860922879
           i64.and
           local.get $12
           i64.const 3
           i64.shl
           i64.const 141865552958718456
           i64.and
           i64.add
           i64.const 281479271743489
           i64.add
           i64.const 9
           i64.shr_u
           i64.const 281479271743489
           i64.and
           local.get $12
           i64.const 6
           i64.shr_u
           i64.add
           i64.const 71777214294589695
           i64.and
           i64.const 8
           i64.shl
           i64.or
           local.tee $12
           i64.const 4294901760
           i64.and
           i64.const 32
           i64.shl
           i64.or
           local.get $15
           i64.const 4294901760
           i64.and
           local.get $12
           i64.const 65535
           i64.and
           i64.or
           i64.const 16
           i64.shl
           i64.or
           i64.store
           local.get $1
           local.get $15
           i64.const 32
           i64.shr_u
           i64.const 65535
           i64.and
           local.get $12
           i64.const -281474976710656
           i64.and
           i64.or
           local.get $15
           i64.const -281474976710656
           i64.and
           local.get $12
           i64.const 281470681743360
           i64.and
           i64.or
           i64.const 16
           i64.shr_u
           i64.or
           i64.store offset=8
           local.get $1
           local.get $2
           i32.add
           local.tee $0
           local.get $10
           local.get $4
           local.get $11
           i64.const 12
           i64.shr_u
           i64.const 4095
           i64.and
           local.tee $12
           local.get $12
           i64.const 26
           i64.shl
           i64.or
           i64.const 270582939711
           i64.and
           local.tee $12
           i64.const 13
           i64.shl
           local.get $12
           i64.or
           i64.const 1970354902204423
           i64.and
           local.tee $12
           i64.const 3
           i64.shl
           local.get $12
           i64.or
           local.tee $12
           local.get $12
           i64.const 5
           i64.shr_u
           i64.const 281479271743489
           i64.and
           i64.add
           local.tee $12
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           local.get $14
           local.get $12
           local.get $13
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           i64.const 8
           i64.shl
           i64.or
           local.tee $15
           i64.const 65535
           i64.and
           local.get $17
           local.get $8
           local.get $12
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           local.get $18
           local.get $7
           local.get $12
           i64.mul
           i64.add
           local.tee $12
           i64.const 5
           i64.shr_u
           i64.const 143835907860922879
           i64.and
           local.get $12
           i64.const 3
           i64.shl
           i64.const 141865552958718456
           i64.and
           i64.add
           i64.const 281479271743489
           i64.add
           i64.const 9
           i64.shr_u
           i64.const 281479271743489
           i64.and
           local.get $12
           i64.const 6
           i64.shr_u
           i64.add
           i64.const 71777214294589695
           i64.and
           i64.const 8
           i64.shl
           i64.or
           local.tee $12
           i64.const 4294901760
           i64.and
           i64.const 32
           i64.shl
           i64.or
           local.get $15
           i64.const 4294901760
           i64.and
           local.get $12
           i64.const 65535
           i64.and
           i64.or
           i64.const 16
           i64.shl
           i64.or
           i64.store
           local.get $0
           local.get $15
           i64.const 32
           i64.shr_u
           i64.const 65535
           i64.and
           local.get $12
           i64.const -281474976710656
           i64.and
           i64.or
           local.get $15
           i64.const -281474976710656
           i64.and
           local.get $12
           i64.const 281470681743360
           i64.and
           i64.or
           i64.const 16
           i64.shr_u
           i64.or
           i64.store offset=8
           local.get $0
           local.get $2
           i32.add
           local.tee $0
           local.get $10
           local.get $4
           local.get $11
           i64.const 24
           i64.shr_u
           i64.const 4095
           i64.and
           local.tee $12
           local.get $12
           i64.const 26
           i64.shl
           i64.or
           i64.const 270582939711
           i64.and
           local.tee $12
           i64.const 13
           i64.shl
           local.get $12
           i64.or
           i64.const 1970354902204423
           i64.and
           local.tee $12
           i64.const 3
           i64.shl
           local.get $12
           i64.or
           local.tee $12
           local.get $12
           i64.const 5
           i64.shr_u
           i64.const 281479271743489
           i64.and
           i64.add
           local.tee $12
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           local.get $14
           local.get $12
           local.get $13
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           i64.const 8
           i64.shl
           i64.or
           local.tee $15
           i64.const 65535
           i64.and
           local.get $17
           local.get $8
           local.get $12
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           local.get $18
           local.get $7
           local.get $12
           i64.mul
           i64.add
           local.tee $12
           i64.const 5
           i64.shr_u
           i64.const 143835907860922879
           i64.and
           local.get $12
           i64.const 3
           i64.shl
           i64.const 141865552958718456
           i64.and
           i64.add
           i64.const 281479271743489
           i64.add
           i64.const 9
           i64.shr_u
           i64.const 281479271743489
           i64.and
           local.get $12
           i64.const 6
           i64.shr_u
           i64.add
           i64.const 71777214294589695
           i64.and
           i64.const 8
           i64.shl
           i64.or
           local.tee $12
           i64.const 4294901760
           i64.and
           i64.const 32
           i64.shl
           i64.or
           local.get $15
           i64.const 4294901760
           i64.and
           local.get $12
           i64.const 65535
           i64.and
           i64.or
           i64.const 16
           i64.shl
           i64.or
           i64.store
           local.get $0
           local.get $15
           i64.const 32
           i64.shr_u
           i64.const 65535
           i64.and
           local.get $12
           i64.const -281474976710656
           i64.and
           i64.or
           local.get $15
           i64.const -281474976710656
           i64.and
           local.get $12
           i64.const 281470681743360
           i64.and
           i64.or
           i64.const 16
           i64.shr_u
           i64.or
           i64.store offset=8
           local.get $0
           local.get $2
           i32.add
           local.tee $0
           local.get $10
           local.get $4
           local.get $11
           i64.const 36
           i64.shr_u
           i64.const 4095
           i64.and
           local.tee $10
           local.get $10
           i64.const 26
           i64.shl
           i64.or
           i64.const 270582939711
           i64.and
           local.tee $10
           i64.const 13
           i64.shl
           local.get $10
           i64.or
           i64.const 1970354902204423
           i64.and
           local.tee $10
           i64.const 3
           i64.shl
           local.get $10
           i64.or
           local.tee $10
           local.get $10
           i64.const 5
           i64.shr_u
           i64.const 281479271743489
           i64.and
           i64.add
           local.tee $10
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           local.get $10
           local.get $13
           i64.mul
           local.get $14
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           i64.const 8
           i64.shl
           i64.or
           local.tee $4
           i64.const 65535
           i64.and
           local.get $17
           local.get $8
           local.get $10
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           local.get $18
           local.get $7
           local.get $10
           i64.mul
           i64.add
           local.tee $7
           i64.const 5
           i64.shr_u
           i64.const 143835907860922879
           i64.and
           local.get $7
           i64.const 3
           i64.shl
           i64.const 141865552958718456
           i64.and
           i64.add
           i64.const 281479271743489
           i64.add
           i64.const 9
           i64.shr_u
           i64.const 281479271743489
           i64.and
           local.get $7
           i64.const 6
           i64.shr_u
           i64.add
           i64.const 71777214294589695
           i64.and
           i64.const 8
           i64.shl
           i64.or
           local.tee $7
           i64.const 4294901760
           i64.and
           i64.const 32
           i64.shl
           i64.or
           local.get $4
           i64.const 4294901760
           i64.and
           local.get $7
           i64.const 65535
           i64.and
           i64.or
           i64.const 16
           i64.shl
           i64.or
           i64.store
           local.get $0
           local.get $4
           i64.const 32
           i64.shr_u
           i64.const 65535
           i64.and
           local.get $7
           i64.const -281474976710656
           i64.and
           i64.or
           local.get $4
           i64.const -281474976710656
           i64.and
           local.get $7
           i64.const 281470681743360
           i64.and
           i64.or
           i64.const 16
           i64.shr_u
           i64.or
           i64.store offset=8
           br $break|0
          end
          local.get $8
          i64.const 28
          i64.shr_u
          i32.wrap_i64
          i32.const 3
          i32.and
          local.tee $0
          i32.const 1
          i32.eq
          local.set $3
          local.get $1
          local.get $8
          i64.const 30
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          local.tee $4
          i64.const 281479271743489
          i64.mul
          local.tee $10
          local.get $4
          local.get $8
          i64.const 38
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          i64.xor
          i64.const 281479271743489
          i64.mul
          local.tee $4
          local.get $7
          i64.const 28
          i64.shr_u
          i64.const 4294967292
          i64.and
          local.tee $11
          i64.const 85
          i64.and
          local.tee $12
          local.get $12
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $12
          i64.const 14
          i64.shl
          local.get $12
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $12
          local.get $11
          i64.const 1
          i64.shr_u
          i64.const 85
          i64.and
          local.tee $13
          local.get $13
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $13
          i64.const 14
          i64.shl
          local.get $13
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $13
          local.get $0
          select
          i64.and
          i64.xor
          local.get $8
          i64.const 46
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          local.tee $14
          i64.const 72058693566333184
          i64.mul
          local.tee $15
          local.get $8
          i64.const 54
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          local.get $14
          i64.xor
          i64.const 72058693566333184
          i64.mul
          local.tee $14
          local.get $13
          local.get $12
          local.get $3
          select
          i64.and
          i64.xor
          i64.or
          local.tee $16
          i64.const 65535
          i64.and
          local.get $7
          i64.const 14
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          local.tee $17
          i64.const 72058693566333184
          i64.mul
          local.tee $18
          local.get $7
          i64.const 22
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          local.get $17
          i64.xor
          i64.const 72058693566333184
          i64.mul
          local.tee $17
          local.get $13
          local.get $12
          local.get $0
          i32.const 3
          i32.eq
          local.tee $5
          select
          i64.and
          i64.xor
          local.get $8
          i64.const 62
          i64.shr_u
          i32.wrap_i64
          local.get $7
          i64.const 2
          i64.shl
          i32.wrap_i64
          i32.const 252
          i32.and
          i32.or
          i64.extend_i32_u
          local.tee $8
          i64.const 281479271743489
          i64.mul
          local.tee $19
          local.get $7
          i64.const 6
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          local.get $8
          i64.xor
          i64.const 281479271743489
          i64.mul
          local.tee $7
          local.get $13
          local.get $12
          local.get $0
          i32.const 2
          i32.eq
          local.tee $6
          select
          i64.and
          i64.xor
          i64.or
          local.tee $8
          i64.const 4294901760
          i64.and
          i64.const 32
          i64.shl
          i64.or
          local.get $16
          i64.const 4294901760
          i64.and
          local.get $8
          i64.const 65535
          i64.and
          i64.or
          i64.const 16
          i64.shl
          i64.or
          i64.store
          local.get $1
          local.get $16
          i64.const 32
          i64.shr_u
          i64.const 65535
          i64.and
          local.get $8
          i64.const -281474976710656
          i64.and
          i64.or
          local.get $16
          i64.const -281474976710656
          i64.and
          local.get $8
          i64.const 281470681743360
          i64.and
          i64.or
          i64.const 16
          i64.shr_u
          i64.or
          i64.store offset=8
          local.get $1
          local.get $2
          i32.add
          local.tee $1
          local.get $15
          local.get $14
          local.get $11
          i64.const 9
          i64.shr_u
          i64.const 85
          i64.and
          local.tee $8
          local.get $8
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $8
          i64.const 14
          i64.shl
          local.get $8
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $8
          local.get $11
          i64.const 8
          i64.shr_u
          i64.const 85
          i64.and
          local.tee $12
          local.get $12
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $12
          i64.const 14
          i64.shl
          local.get $12
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $12
          local.get $3
          select
          i64.and
          i64.xor
          local.get $10
          local.get $4
          local.get $12
          local.get $8
          local.get $0
          select
          i64.and
          i64.xor
          i64.or
          local.tee $13
          i64.const 65535
          i64.and
          local.get $18
          local.get $17
          local.get $8
          local.get $12
          local.get $5
          select
          i64.and
          i64.xor
          local.get $19
          local.get $7
          local.get $8
          local.get $12
          local.get $6
          select
          i64.and
          i64.xor
          i64.or
          local.tee $8
          i64.const 4294901760
          i64.and
          i64.const 32
          i64.shl
          i64.or
          local.get $13
          i64.const 4294901760
          i64.and
          local.get $8
          i64.const 65535
          i64.and
          i64.or
          i64.const 16
          i64.shl
          i64.or
          i64.store
          local.get $1
          local.get $13
          i64.const 32
          i64.shr_u
          i64.const 65535
          i64.and
          local.get $8
          i64.const -281474976710656
          i64.and
          i64.or
          local.get $13
          i64.const -281474976710656
          i64.and
          local.get $8
          i64.const 281470681743360
          i64.and
          i64.or
          i64.const 16
          i64.shr_u
          i64.or
          i64.store offset=8
          local.get $1
          local.get $2
          i32.add
          local.tee $1
          local.get $15
          local.get $14
          local.get $11
          i64.const 17
          i64.shr_u
          i64.const 85
          i64.and
          local.tee $8
          local.get $8
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $8
          i64.const 14
          i64.shl
          local.get $8
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $8
          local.get $11
          i64.const 16
          i64.shr_u
          i64.const 85
          i64.and
          local.tee $12
          local.get $12
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $12
          i64.const 14
          i64.shl
          local.get $12
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $12
          local.get $3
          select
          i64.and
          i64.xor
          local.get $10
          local.get $4
          local.get $12
          local.get $8
          local.get $0
          select
          i64.and
          i64.xor
          i64.or
          local.tee $13
          i64.const 65535
          i64.and
          local.get $18
          local.get $17
          local.get $8
          local.get $12
          local.get $5
          select
          i64.and
          i64.xor
          local.get $19
          local.get $7
          local.get $8
          local.get $12
          local.get $6
          select
          i64.and
          i64.xor
          i64.or
          local.tee $8
          i64.const 4294901760
          i64.and
          i64.const 32
          i64.shl
          i64.or
          local.get $13
          i64.const 4294901760
          i64.and
          local.get $8
          i64.const 65535
          i64.and
          i64.or
          i64.const 16
          i64.shl
          i64.or
          i64.store
          local.get $1
          local.get $13
          i64.const 32
          i64.shr_u
          i64.const 65535
          i64.and
          local.get $8
          i64.const -281474976710656
          i64.and
          i64.or
          local.get $13
          i64.const -281474976710656
          i64.and
          local.get $8
          i64.const 281470681743360
          i64.and
          i64.or
          i64.const 16
          i64.shr_u
          i64.or
          i64.store offset=8
          local.get $1
          local.get $2
          i32.add
          local.tee $1
          local.get $10
          local.get $4
          local.get $11
          i64.const 24
          i64.shr_u
          i64.const 85
          i64.and
          local.tee $4
          local.get $4
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $4
          i64.const 14
          i64.shl
          local.get $4
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $4
          local.get $11
          i64.const 25
          i64.shr_u
          i64.const 85
          i64.and
          local.tee $8
          local.get $8
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $8
          i64.const 14
          i64.shl
          local.get $8
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $8
          local.get $0
          select
          i64.and
          i64.xor
          local.get $15
          local.get $14
          local.get $8
          local.get $4
          local.get $3
          select
          i64.and
          i64.xor
          i64.or
          local.tee $10
          i64.const 65535
          i64.and
          local.get $19
          local.get $7
          local.get $8
          local.get $4
          local.get $6
          select
          i64.and
          i64.xor
          local.get $18
          local.get $17
          local.get $8
          local.get $4
          local.get $5
          select
          i64.and
          i64.xor
          i64.or
          local.tee $4
          i64.const 4294901760
          i64.and
          i64.const 32
          i64.shl
          i64.or
          local.get $10
          i64.const 4294901760
          i64.and
          local.get $4
          i64.const 65535
          i64.and
          i64.or
          i64.const 16
          i64.shl
          i64.or
          i64.store
          local.get $1
          local.get $10
          i64.const 32
          i64.shr_u
          i64.const 65535
          i64.and
          local.get $4
          i64.const -281474976710656
          i64.and
          i64.or
          local.get $10
          i64.const -281474976710656
          i64.and
          local.get $4
          i64.const 281470681743360
          i64.and
          i64.or
          i64.const 16
          i64.shr_u
          i64.or
          i64.store offset=8
          br $break|0
         end
         local.get $7
         i64.const 27
         i64.shr_u
         i64.const 4294967292
         i64.and
         local.get $7
         i64.const 28
         i64.shr_u
         i64.const 1
         i64.and
         i64.or
         local.tee $4
         i64.const 255
         i64.and
         local.tee $10
         local.get $10
         i64.const 28
         i64.shl
         i64.or
         i64.const 64424509455
         i64.and
         local.tee $10
         i64.const 14
         i64.shl
         local.get $10
         i64.or
         i64.const 844437815230467
         i64.and
         i64.const 21
         i64.mul
         local.tee $10
         local.get $10
         i64.const 5
         i64.shr_u
         i64.const 281479271743489
         i64.and
         i64.add
         local.set $10
         local.get $7
         i64.const 12
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_u
         local.tee $11
         i64.const 18014673391583296
         i64.mul
         local.tee $12
         local.get $4
         i64.const 16
         i64.shr_u
         i64.const 255
         i64.and
         local.tee $13
         local.get $13
         i64.const 28
         i64.shl
         i64.or
         i64.const 64424509455
         i64.and
         local.tee $13
         i64.const 14
         i64.shl
         local.get $13
         i64.or
         i64.const 844437815230467
         i64.and
         i64.const 21
         i64.mul
         local.tee $13
         local.get $13
         i64.const 5
         i64.shr_u
         i64.const 281479271743489
         i64.and
         i64.add
         local.tee $13
         local.get $7
         i64.const 20
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_u
         local.get $11
         i64.sub
         local.tee $11
         i64.mul
         i64.add
         local.set $14
         local.get $1
         local.get $8
         i64.const 28
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_u
         local.tee $15
         i64.const 18014673391583296
         i64.mul
         local.tee $16
         local.get $10
         local.get $8
         i64.const 36
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_u
         local.get $15
         i64.sub
         local.tee $15
         i64.mul
         i64.add
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         local.get $8
         i64.const 44
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_u
         local.tee $17
         i64.const 18014673391583296
         i64.mul
         local.tee $18
         local.get $10
         local.get $8
         i64.const 52
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_u
         local.get $17
         i64.sub
         local.tee $17
         i64.mul
         i64.add
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         i64.const 8
         i64.shl
         i64.or
         local.tee $19
         i64.const 65535
         i64.and
         local.get $8
         i64.const 60
         i64.shr_u
         i32.wrap_i64
         local.get $7
         i64.const 4
         i64.shl
         i32.wrap_i64
         i32.const 240
         i32.and
         i32.or
         i64.extend_i32_u
         local.tee $8
         i64.const 18014673391583296
         i64.mul
         local.tee $20
         local.get $10
         local.get $7
         i64.const 4
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_u
         local.get $8
         i64.sub
         local.tee $7
         i64.mul
         i64.add
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         local.get $12
         local.get $10
         local.get $11
         i64.mul
         i64.add
         local.tee $8
         i64.const 5
         i64.shr_u
         i64.const 143835907860922879
         i64.and
         local.get $8
         i64.const 3
         i64.shl
         i64.const 141865552958718456
         i64.and
         i64.add
         i64.const 281479271743489
         i64.add
         i64.const 9
         i64.shr_u
         i64.const 281479271743489
         i64.and
         local.get $8
         i64.const 6
         i64.shr_u
         i64.add
         i64.const 71777214294589695
         i64.and
         i64.const 8
         i64.shl
         i64.or
         local.tee $8
         i64.const 4294901760
         i64.and
         i64.const 32
         i64.shl
         i64.or
         local.get $19
         i64.const 4294901760
         i64.and
         local.get $8
         i64.const 65535
         i64.and
         i64.or
         i64.const 16
         i64.shl
         i64.or
         i64.store
         local.get $1
         local.get $19
         i64.const 32
         i64.shr_u
         i64.const 65535
         i64.and
         local.get $8
         i64.const -281474976710656
         i64.and
         i64.or
         local.get $19
         i64.const -281474976710656
         i64.and
         local.get $8
         i64.const 281470681743360
         i64.and
         i64.or
         i64.const 16
         i64.shr_u
         i64.or
         i64.store offset=8
         local.get $1
         local.get $2
         i32.add
         local.tee $0
         local.get $15
         local.get $4
         i64.const 8
         i64.shr_u
         i64.const 255
         i64.and
         local.tee $8
         local.get $8
         i64.const 28
         i64.shl
         i64.or
         i64.const 64424509455
         i64.and
         local.tee $8
         i64.const 14
         i64.shl
         local.get $8
         i64.or
         i64.const 844437815230467
         i64.and
         i64.const 21
         i64.mul
         local.tee $8
         local.get $8
         i64.const 5
         i64.shr_u
         i64.const 281479271743489
         i64.and
         i64.add
         local.tee $8
         i64.mul
         local.get $16
         i64.add
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         local.get $18
         local.get $8
         local.get $17
         i64.mul
         i64.add
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         i64.const 8
         i64.shl
         i64.or
         local.tee $10
         i64.const 65535
         i64.and
         local.get $20
         local.get $7
         local.get $8
         i64.mul
         i64.add
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         local.get $12
         local.get $8
         local.get $11
         i64.mul
         i64.add
         local.tee $8
         i64.const 5
         i64.shr_u
         i64.const 143835907860922879
         i64.and
         local.get $8
         i64.const 3
         i64.shl
         i64.const 141865552958718456
         i64.and
         i64.add
         i64.const 281479271743489
         i64.add
         i64.const 9
         i64.shr_u
         i64.const 281479271743489
         i64.and
         local.get $8
         i64.const 6
         i64.shr_u
         i64.add
         i64.const 71777214294589695
         i64.and
         i64.const 8
         i64.shl
         i64.or
         local.tee $8
         i64.const 4294901760
         i64.and
         i64.const 32
         i64.shl
         i64.or
         local.get $10
         i64.const 4294901760
         i64.and
         local.get $8
         i64.const 65535
         i64.and
         i64.or
         i64.const 16
         i64.shl
         i64.or
         i64.store
         local.get $0
         local.get $10
         i64.const 32
         i64.shr_u
         i64.const 65535
         i64.and
         local.get $8
         i64.const -281474976710656
         i64.and
         i64.or
         local.get $10
         i64.const -281474976710656
         i64.and
         local.get $8
         i64.const 281470681743360
         i64.and
         i64.or
         i64.const 16
         i64.shr_u
         i64.or
         i64.store offset=8
         local.get $0
         local.get $2
         i32.add
         local.tee $0
         local.get $16
         local.get $13
         local.get $15
         i64.mul
         i64.add
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         local.get $18
         local.get $13
         local.get $17
         i64.mul
         i64.add
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         i64.const 8
         i64.shl
         i64.or
         local.tee $8
         i64.const 65535
         i64.and
         local.get $20
         local.get $7
         local.get $13
         i64.mul
         i64.add
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         local.get $14
         i64.const 5
         i64.shr_u
         i64.const 143835907860922879
         i64.and
         local.get $14
         i64.const 3
         i64.shl
         i64.const 141865552958718456
         i64.and
         i64.add
         i64.const 281479271743489
         i64.add
         i64.const 9
         i64.shr_u
         i64.const 281479271743489
         i64.and
         local.get $14
         i64.const 6
         i64.shr_u
         i64.add
         i64.const 71777214294589695
         i64.and
         i64.const 8
         i64.shl
         i64.or
         local.tee $10
         i64.const 4294901760
         i64.and
         i64.const 32
         i64.shl
         i64.or
         local.get $8
         i64.const 4294901760
         i64.and
         local.get $10
         i64.const 65535
         i64.and
         i64.or
         i64.const 16
         i64.shl
         i64.or
         i64.store
         local.get $0
         local.get $8
         i64.const 32
         i64.shr_u
         i64.const 65535
         i64.and
         local.get $10
         i64.const -281474976710656
         i64.and
         i64.or
         local.get $8
         i64.const -281474976710656
         i64.and
         local.get $10
         i64.const 281470681743360
         i64.and
         i64.or
         i64.const 16
         i64.shr_u
         i64.or
         i64.store offset=8
         local.get $0
         local.get $2
         i32.add
         local.tee $0
         local.get $16
         local.get $15
         local.get $4
         i64.const 24
         i64.shr_u
         i64.const 255
         i64.and
         local.tee $4
         local.get $4
         i64.const 28
         i64.shl
         i64.or
         i64.const 64424509455
         i64.and
         local.tee $4
         i64.const 14
         i64.shl
         local.get $4
         i64.or
         i64.const 844437815230467
         i64.and
         i64.const 21
         i64.mul
         local.tee $4
         local.get $4
         i64.const 5
         i64.shr_u
         i64.const 281479271743489
         i64.and
         i64.add
         local.tee $4
         i64.mul
         i64.add
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         local.get $18
         local.get $4
         local.get $17
         i64.mul
         i64.add
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         i64.const 8
         i64.shl
         i64.or
         local.tee $8
         i64.const 65535
         i64.and
         local.get $20
         local.get $4
         local.get $7
         i64.mul
         i64.add
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         local.get $12
         local.get $4
         local.get $11
         i64.mul
         i64.add
         local.tee $4
         i64.const 5
         i64.shr_u
         i64.const 143835907860922879
         i64.and
         local.get $4
         i64.const 3
         i64.shl
         i64.const 141865552958718456
         i64.and
         i64.add
         i64.const 281479271743489
         i64.add
         i64.const 9
         i64.shr_u
         i64.const 281479271743489
         i64.and
         local.get $4
         i64.const 6
         i64.shr_u
         i64.add
         i64.const 71777214294589695
         i64.and
         i64.const 8
         i64.shl
         i64.or
         local.tee $4
         i64.const 4294901760
         i64.and
         i64.const 32
         i64.shl
         i64.or
         local.get $8
         i64.const 4294901760
         i64.and
         local.get $4
         i64.const 65535
         i64.and
         i64.or
         i64.const 16
         i64.shl
         i64.or
         i64.store
         local.get $0
         local.get $8
         i64.const 32
         i64.shr_u
         i64.const 65535
         i64.and
         local.get $4
         i64.const -281474976710656
         i64.and
         i64.or
         local.get $8
         i64.const -281474976710656
         i64.and
         local.get $4
         i64.const 281470681743360
         i64.and
         i64.or
         i64.const 16
         i64.shr_u
         i64.or
         i64.store offset=8
         br $break|0
        end
        local.get $8
        i64.const 54
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_u
        local.get $8
        i64.const 46
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_u
        local.tee $4
        i64.sub
        local.set $10
        local.get $1
        local.get $8
        i64.const 38
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_u
        local.get $8
        i64.const 30
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_u
        local.tee $11
        i64.sub
        local.tee $12
        local.get $8
        i64.const 62
        i64.shr_u
        i64.const 3
        i64.and
        local.get $7
        i64.const 3
        i64.shl
        i64.const -16
        i64.and
        local.get $7
        i64.const 2
        i64.shl
        i64.const 4
        i64.and
        i64.or
        i64.or
        local.tee $7
        i64.const 65535
        i64.and
        local.tee $8
        local.get $8
        i64.const 24
        i64.shl
        i64.or
        i64.const 1095216660735
        i64.and
        local.tee $8
        i64.const 12
        i64.shl
        local.get $8
        i64.or
        i64.const 4222189076152335
        i64.and
        local.tee $8
        i64.const 2
        i64.shl
        local.get $8
        i64.const 2
        i64.shr_u
        i64.or
        i64.const 17733194119839807
        i64.and
        local.tee $8
        local.get $8
        i64.const 5
        i64.shr_u
        i64.const 281479271743489
        i64.and
        i64.add
        local.tee $8
        i64.mul
        local.get $11
        i64.const 18014673391583296
        i64.mul
        local.tee $11
        i64.add
        i64.const 9007336695791648
        i64.add
        i64.const 6
        i64.shr_u
        i64.const 71777214294589695
        i64.and
        local.tee $13
        i64.const 255
        i64.and
        local.get $13
        i64.const 16711680
        i64.and
        i64.const 16
        i64.shl
        i64.or
        i64.const 65793
        i64.mul
        local.get $4
        i64.const 18014673391583296
        i64.mul
        local.tee $4
        local.get $8
        local.get $10
        i64.mul
        i64.add
        local.tee $8
        i64.const 5
        i64.shr_u
        i64.const 143835907860922879
        i64.and
        local.get $8
        i64.const 3
        i64.shl
        i64.const 141865552958718456
        i64.and
        i64.add
        i64.const 281479271743489
        i64.add
        i64.const 9
        i64.shr_u
        i64.const 281479271743489
        i64.and
        local.get $8
        i64.const 6
        i64.shr_u
        i64.add
        i64.const 71777214294589695
        i64.and
        i64.const 8
        i64.shl
        local.tee $8
        i64.const 65280
        i64.and
        i64.const 16
        i64.shl
        local.get $8
        i64.const 4278190080
        i64.and
        i64.const 32
        i64.shl
        i64.or
        i64.or
        i64.store
        local.get $1
        local.get $13
        i64.const 1095216660480
        i64.and
        i64.const 32
        i64.shr_u
        local.get $13
        i64.const 71776119061217280
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.const 65793
        i64.mul
        local.get $8
        i64.const -72057594037927936
        i64.and
        local.get $8
        i64.const 280375465082880
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.or
        i64.store offset=8
        local.get $1
        local.get $2
        i32.add
        local.tee $0
        local.get $11
        local.get $12
        local.get $7
        i64.const 16
        i64.shr_u
        i64.const 65535
        i64.and
        local.tee $8
        local.get $8
        i64.const 24
        i64.shl
        i64.or
        i64.const 1095216660735
        i64.and
        local.tee $8
        i64.const 12
        i64.shl
        local.get $8
        i64.or
        i64.const 4222189076152335
        i64.and
        local.tee $8
        i64.const 2
        i64.shl
        local.get $8
        i64.const 2
        i64.shr_u
        i64.or
        i64.const 17733194119839807
        i64.and
        local.tee $8
        local.get $8
        i64.const 5
        i64.shr_u
        i64.const 281479271743489
        i64.and
        i64.add
        local.tee $8
        i64.mul
        i64.add
        i64.const 9007336695791648
        i64.add
        i64.const 6
        i64.shr_u
        i64.const 71777214294589695
        i64.and
        local.tee $13
        i64.const 255
        i64.and
        local.get $13
        i64.const 16711680
        i64.and
        i64.const 16
        i64.shl
        i64.or
        i64.const 65793
        i64.mul
        local.get $4
        local.get $8
        local.get $10
        i64.mul
        i64.add
        local.tee $8
        i64.const 5
        i64.shr_u
        i64.const 143835907860922879
        i64.and
        local.get $8
        i64.const 3
        i64.shl
        i64.const 141865552958718456
        i64.and
        i64.add
        i64.const 281479271743489
        i64.add
        i64.const 9
        i64.shr_u
        i64.const 281479271743489
        i64.and
        local.get $8
        i64.const 6
        i64.shr_u
        i64.add
        i64.const 71777214294589695
        i64.and
        i64.const 8
        i64.shl
        local.tee $8
        i64.const 65280
        i64.and
        i64.const 16
        i64.shl
        local.get $8
        i64.const 4278190080
        i64.and
        i64.const 32
        i64.shl
        i64.or
        i64.or
        i64.store
        local.get $0
        local.get $13
        i64.const 1095216660480
        i64.and
        i64.const 32
        i64.shr_u
        local.get $13
        i64.const 71776119061217280
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.const 65793
        i64.mul
        local.get $8
        i64.const -72057594037927936
        i64.and
        local.get $8
        i64.const 280375465082880
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.or
        i64.store offset=8
        local.get $4
        local.get $10
        local.get $7
        i64.const 32
        i64.shr_u
        i64.const 65535
        i64.and
        local.tee $8
        local.get $8
        i64.const 24
        i64.shl
        i64.or
        i64.const 1095216660735
        i64.and
        local.tee $8
        i64.const 12
        i64.shl
        local.get $8
        i64.or
        i64.const 4222189076152335
        i64.and
        local.tee $8
        i64.const 2
        i64.shl
        local.get $8
        i64.const 2
        i64.shr_u
        i64.or
        i64.const 17733194119839807
        i64.and
        local.tee $8
        local.get $8
        i64.const 5
        i64.shr_u
        i64.const 281479271743489
        i64.and
        i64.add
        local.tee $8
        i64.mul
        i64.add
        local.tee $13
        i64.const 5
        i64.shr_u
        i64.const 143835907860922879
        i64.and
        local.get $13
        i64.const 3
        i64.shl
        i64.const 141865552958718456
        i64.and
        i64.add
        i64.const 281479271743489
        i64.add
        i64.const 9
        i64.shr_u
        i64.const 281479271743489
        i64.and
        local.get $13
        i64.const 6
        i64.shr_u
        i64.add
        i64.const 71777214294589695
        i64.and
        i64.const 8
        i64.shl
        local.set $13
        local.get $0
        local.get $2
        i32.add
        local.tee $0
        local.get $11
        local.get $8
        local.get $12
        i64.mul
        i64.add
        i64.const 9007336695791648
        i64.add
        i64.const 6
        i64.shr_u
        i64.const 71777214294589695
        i64.and
        local.tee $8
        i64.const 255
        i64.and
        local.get $8
        i64.const 16711680
        i64.and
        i64.const 16
        i64.shl
        i64.or
        i64.const 65793
        i64.mul
        local.get $13
        i64.const 65280
        i64.and
        i64.const 16
        i64.shl
        local.get $13
        i64.const 4278190080
        i64.and
        i64.const 32
        i64.shl
        i64.or
        i64.or
        i64.store
        local.get $0
        local.get $8
        i64.const 1095216660480
        i64.and
        i64.const 32
        i64.shr_u
        local.get $8
        i64.const 71776119061217280
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.const 65793
        i64.mul
        local.get $13
        i64.const -72057594037927936
        i64.and
        local.get $13
        i64.const 280375465082880
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.or
        i64.store offset=8
        local.get $0
        local.get $2
        i32.add
        local.tee $0
        local.get $11
        local.get $12
        local.get $7
        i64.const 48
        i64.shr_u
        i64.const 65535
        i64.and
        local.tee $7
        local.get $7
        i64.const 24
        i64.shl
        i64.or
        i64.const 1095216660735
        i64.and
        local.tee $7
        i64.const 12
        i64.shl
        local.get $7
        i64.or
        i64.const 4222189076152335
        i64.and
        local.tee $7
        i64.const 2
        i64.shl
        local.get $7
        i64.const 2
        i64.shr_u
        i64.or
        i64.const 17733194119839807
        i64.and
        local.tee $7
        local.get $7
        i64.const 5
        i64.shr_u
        i64.const 281479271743489
        i64.and
        i64.add
        local.tee $7
        i64.mul
        i64.add
        i64.const 9007336695791648
        i64.add
        i64.const 6
        i64.shr_u
        i64.const 71777214294589695
        i64.and
        local.tee $8
        i64.const 255
        i64.and
        local.get $8
        i64.const 16711680
        i64.and
        i64.const 16
        i64.shl
        i64.or
        i64.const 65793
        i64.mul
        local.get $4
        local.get $7
        local.get $10
        i64.mul
        i64.add
        local.tee $4
        i64.const 5
        i64.shr_u
        i64.const 143835907860922879
        i64.and
        local.get $4
        i64.const 3
        i64.shl
        i64.const 141865552958718456
        i64.and
        i64.add
        i64.const 281479271743489
        i64.add
        i64.const 9
        i64.shr_u
        i64.const 281479271743489
        i64.and
        local.get $4
        i64.const 6
        i64.shr_u
        i64.add
        i64.const 71777214294589695
        i64.and
        i64.const 8
        i64.shl
        local.tee $4
        i64.const 65280
        i64.and
        i64.const 16
        i64.shl
        local.get $4
        i64.const 4278190080
        i64.and
        i64.const 32
        i64.shl
        i64.or
        i64.or
        i64.store
        local.get $0
        local.get $8
        i64.const 1095216660480
        i64.and
        i64.const 32
        i64.shr_u
        local.get $8
        i64.const 71776119061217280
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.const 65793
        i64.mul
        local.get $4
        i64.const -72057594037927936
        i64.and
        local.get $4
        i64.const 280375465082880
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.or
        i64.store offset=8
        br $break|0
       end
       local.get $8
       i64.const 29
       i64.shr_u
       i32.wrap_i64
       i32.const 31
       i32.and
       local.tee $0
       i32.const 29
       i32.gt_u
       br_if $folding-inner0
       local.get $7
       i64.const 34
       i64.shr_u
       i64.const 1
       i64.and
       i32.const -1
       i64.const 5651576228422017
       i64.const -4286381023083155150
       local.get $0
       i32.const 15
       i32.gt_u
       select
       local.get $0
       i32.const 15
       i32.and
       i32.const 2
       i32.shl
       i64.extend_i32_u
       i64.shr_u
       i32.wrap_i64
       i32.const 15
       i32.and
       i32.const 1
       i32.shl
       local.tee $3
       i32.const 2
       i32.add
       i32.shl
       i64.extend_i32_u
       local.get $7
       i64.const 32
       i64.shr_u
       i64.and
       i32.const -1
       local.get $3
       i32.const 1
       i32.or
       i32.shl
       i32.const -4
       i32.xor
       i64.extend_i32_u
       local.get $7
       i64.const 33
       i64.shr_u
       i64.and
       i64.or
       i64.or
       local.set $4
       local.get $0
       i32.const 1
       i32.shl
       i32.load16_u offset=600
       local.set $0
       local.get $1
       local.set $3
       local.get $8
       i64.const 42
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.get $8
       i64.const 34
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.tee $10
       i64.sub
       local.set $11
       local.get $7
       i64.const 10
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.get $7
       i64.const 2
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.tee $12
       i64.sub
       local.set $13
       local.get $8
       i64.const 58
       i64.shr_u
       i32.wrap_i64
       local.get $7
       i64.const 6
       i64.shl
       i32.wrap_i64
       i32.const 192
       i32.and
       i32.or
       i64.extend_i32_u
       local.get $8
       i64.const 50
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.tee $8
       i64.sub
       local.set $14
       local.get $7
       i64.const 26
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.get $7
       i64.const 18
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.tee $7
       i64.sub
       local.set $15
       local.get $10
       i64.const 18014673391583296
       i64.mul
       local.set $10
       local.get $12
       i64.const 18014673391583296
       i64.mul
       local.set $12
       local.get $8
       i64.const 18014673391583296
       i64.mul
       local.set $8
       local.get $7
       i64.const 18014673391583296
       i64.mul
       local.set $7
       loop $for-loop|104
        local.get $5
        i32.const 4
        i32.lt_s
        if
         local.get $3
         local.get $10
         local.get $4
         i64.const 255
         i64.and
         local.tee $16
         local.get $16
         i64.const 28
         i64.shl
         i64.or
         i64.const 64424509455
         i64.and
         local.tee $16
         i64.const 14
         i64.shl
         local.get $16
         i64.or
         i64.const 844437815230467
         i64.and
         i64.const 21
         i64.mul
         local.tee $16
         local.get $16
         i64.const 5
         i64.shr_u
         i64.const 281479271743489
         i64.and
         i64.add
         local.tee $16
         local.get $11
         i64.mul
         i64.add
         local.tee $17
         local.get $0
         i64.extend_i32_u
         local.tee $18
         i64.const 30
         i64.shl
         local.get $18
         i64.or
         i64.const 12884901891
         i64.and
         local.tee $18
         i64.const 15
         i64.shl
         local.get $18
         i64.or
         i64.const 281479271743489
         i64.and
         i64.const 65535
         i64.mul
         local.tee $18
         local.get $12
         local.get $13
         local.get $16
         i64.mul
         i64.add
         local.get $17
         i64.xor
         i64.and
         i64.xor
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         local.tee $17
         i64.const 255
         i64.and
         local.get $17
         i64.const 16711680
         i64.and
         i64.const 16
         i64.shl
         i64.or
         i64.const 65793
         i64.mul
         local.get $18
         local.get $8
         local.get $14
         local.get $16
         i64.mul
         i64.add
         local.tee $19
         local.get $7
         local.get $15
         local.get $16
         i64.mul
         i64.add
         i64.xor
         i64.and
         local.get $19
         i64.xor
         local.tee $16
         i64.const 5
         i64.shr_u
         i64.const 143835907860922879
         i64.and
         local.get $16
         i64.const 3
         i64.shl
         i64.const 141865552958718456
         i64.and
         i64.add
         i64.const 281479271743489
         i64.add
         i64.const 9
         i64.shr_u
         i64.const 281479271743489
         i64.and
         local.get $16
         i64.const 6
         i64.shr_u
         i64.add
         i64.const 71777214294589695
         i64.and
         i64.const 8
         i64.shl
         local.tee $16
         i64.const 65280
         i64.and
         i64.const 16
         i64.shl
         local.get $16
         i64.const 4278190080
         i64.and
         i64.const 32
         i64.shl
         i64.or
         i64.or
         i64.store
         local.get $3
         local.get $17
         i64.const 1095216660480
         i64.and
         i64.const 32
         i64.shr_u
         local.get $17
         i64.const 71776119061217280
         i64.and
         i64.const 16
         i64.shr_u
         i64.or
         i64.const 65793
         i64.mul
         local.get $16
         i64.const -72057594037927936
         i64.and
         local.get $16
         i64.const 280375465082880
         i64.and
         i64.const 16
         i64.shr_u
         i64.or
         i64.or
         i64.store offset=8
         local.get $2
         local.get $3
         i32.add
         local.set $3
         local.get $4
         i64.const 8
         i64.shr_u
         local.set $4
         local.get $0
         i32.const 4
         i32.shr_u
         local.set $0
         local.get $5
         i32.const 1
         i32.add
         local.set $5
         br $for-loop|104
        end
       end
       br $break|0
      end
      local.get $8
      i64.const 53
      i64.shr_u
      i32.wrap_i64
      i32.const 255
      i32.and
      i64.extend_i32_u
      local.get $8
      i64.const 45
      i64.shr_u
      i32.wrap_i64
      i32.const 255
      i32.and
      i64.extend_i32_u
      local.tee $4
      i64.sub
      local.set $10
      local.get $8
      i64.const 37
      i64.shr_u
      i32.wrap_i64
      i32.const 255
      i32.and
      i64.extend_i32_u
      local.get $8
      i64.const 29
      i64.shr_u
      i32.wrap_i64
      i32.const 255
      i32.and
      i64.extend_i32_u
      local.tee $11
      i64.sub
      local.set $12
      local.get $1
      local.get $11
      i64.const 18014673391583296
      i64.mul
      local.tee $11
      local.get $8
      i64.const 61
      i64.shr_u
      i64.const 1
      i64.and
      local.get $8
      i64.const 60
      i64.shr_u
      i64.const 4
      i64.and
      local.get $8
      i64.const 59
      i64.shr_u
      i64.const 16
      i64.and
      local.get $7
      i64.const 5
      i64.shl
      i64.or
      i64.or
      i64.or
      local.tee $7
      i64.const 13107
      i64.and
      local.tee $8
      local.get $8
      i64.const 24
      i64.shl
      i64.or
      i64.const 219043332147
      i64.and
      local.tee $8
      i64.const 12
      i64.shl
      local.get $8
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $8
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      local.get $8
      i64.add
      local.get $12
      i64.mul
      i64.add
      i64.const 9007336695791648
      i64.add
      i64.const 6
      i64.shr_u
      i64.const 71777214294589695
      i64.and
      local.tee $8
      i64.const 255
      i64.and
      local.get $8
      i64.const 16711680
      i64.and
      i64.const 16
      i64.shl
      i64.or
      i64.const 65793
      i64.mul
      local.get $4
      i64.const 18014673391583296
      i64.mul
      local.tee $4
      local.get $7
      i64.const 2
      i64.shr_u
      i64.const 13107
      i64.and
      local.tee $13
      local.get $13
      i64.const 24
      i64.shl
      i64.or
      i64.const 219043332147
      i64.and
      local.tee $13
      i64.const 12
      i64.shl
      local.get $13
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $13
      local.get $13
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      i64.add
      local.get $10
      i64.mul
      i64.add
      local.tee $13
      i64.const 5
      i64.shr_u
      i64.const 143835907860922879
      i64.and
      local.get $13
      i64.const 3
      i64.shl
      i64.const 141865552958718456
      i64.and
      i64.add
      i64.const 281479271743489
      i64.add
      i64.const 9
      i64.shr_u
      i64.const 281479271743489
      i64.and
      local.get $13
      i64.const 6
      i64.shr_u
      i64.add
      i64.const 71777214294589695
      i64.and
      i64.const 8
      i64.shl
      local.tee $13
      i64.const 65280
      i64.and
      i64.const 16
      i64.shl
      local.get $13
      i64.const 4278190080
      i64.and
      i64.const 32
      i64.shl
      i64.or
      i64.or
      i64.store
      local.get $1
      local.get $8
      i64.const 1095216660480
      i64.and
      i64.const 32
      i64.shr_u
      local.get $8
      i64.const 71776119061217280
      i64.and
      i64.const 16
      i64.shr_u
      i64.or
      i64.const 65793
      i64.mul
      local.get $13
      i64.const -72057594037927936
      i64.and
      local.get $13
      i64.const 280375465082880
      i64.and
      i64.const 16
      i64.shr_u
      i64.or
      i64.or
      i64.store offset=8
      local.get $1
      local.get $2
      i32.add
      local.tee $0
      local.get $11
      local.get $7
      i64.const 16
      i64.shr_u
      i64.const 13107
      i64.and
      local.tee $8
      local.get $8
      i64.const 24
      i64.shl
      i64.or
      i64.const 219043332147
      i64.and
      local.tee $8
      i64.const 12
      i64.shl
      local.get $8
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $8
      local.get $8
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      i64.add
      local.get $12
      i64.mul
      i64.add
      i64.const 9007336695791648
      i64.add
      i64.const 6
      i64.shr_u
      i64.const 71777214294589695
      i64.and
      local.tee $8
      i64.const 255
      i64.and
      local.get $8
      i64.const 16711680
      i64.and
      i64.const 16
      i64.shl
      i64.or
      i64.const 65793
      i64.mul
      local.get $4
      local.get $7
      i64.const 18
      i64.shr_u
      i64.const 13107
      i64.and
      local.tee $13
      local.get $13
      i64.const 24
      i64.shl
      i64.or
      i64.const 219043332147
      i64.and
      local.tee $13
      i64.const 12
      i64.shl
      local.get $13
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $13
      local.get $13
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      i64.add
      local.get $10
      i64.mul
      i64.add
      local.tee $13
      i64.const 5
      i64.shr_u
      i64.const 143835907860922879
      i64.and
      local.get $13
      i64.const 3
      i64.shl
      i64.const 141865552958718456
      i64.and
      i64.add
      i64.const 281479271743489
      i64.add
      i64.const 9
      i64.shr_u
      i64.const 281479271743489
      i64.and
      local.get $13
      i64.const 6
      i64.shr_u
      i64.add
      i64.const 71777214294589695
      i64.and
      i64.const 8
      i64.shl
      local.tee $13
      i64.const 65280
      i64.and
      i64.const 16
      i64.shl
      local.get $13
      i64.const 4278190080
      i64.and
      i64.const 32
      i64.shl
      i64.or
      i64.or
      i64.store
      local.get $0
      local.get $8
      i64.const 1095216660480
      i64.and
      i64.const 32
      i64.shr_u
      local.get $8
      i64.const 71776119061217280
      i64.and
      i64.const 16
      i64.shr_u
      i64.or
      i64.const 65793
      i64.mul
      local.get $13
      i64.const -72057594037927936
      i64.and
      local.get $13
      i64.const 280375465082880
      i64.and
      i64.const 16
      i64.shr_u
      i64.or
      i64.or
      i64.store offset=8
      local.get $0
      local.get $2
      i32.add
      local.tee $0
      local.get $11
      local.get $7
      i64.const 32
      i64.shr_u
      i64.const 13107
      i64.and
      local.tee $8
      local.get $8
      i64.const 24
      i64.shl
      i64.or
      i64.const 219043332147
      i64.and
      local.tee $8
      i64.const 12
      i64.shl
      local.get $8
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $8
      local.get $8
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      i64.add
      local.get $12
      i64.mul
      i64.add
      i64.const 9007336695791648
      i64.add
      i64.const 6
      i64.shr_u
      i64.const 71777214294589695
      i64.and
      local.tee $8
      i64.const 255
      i64.and
      local.get $8
      i64.const 16711680
      i64.and
      i64.const 16
      i64.shl
      i64.or
      i64.const 65793
      i64.mul
      local.get $4
      local.get $7
      i64.const 34
      i64.shr_u
      i64.const 13107
      i64.and
      local.tee $13
      local.get $13
      i64.const 24
      i64.shl
      i64.or
      i64.const 219043332147
      i64.and
      local.tee $13
      i64.const 12
      i64.shl
      local.get $13
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $13
      local.get $13
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      i64.add
      local.get $10
      i64.mul
      i64.add
      local.tee $13
      i64.const 5
      i64.shr_u
      i64.const 143835907860922879
      i64.and
      local.get $13
      i64.const 3
      i64.shl
      i64.const 141865552958718456
      i64.and
      i64.add
      i64.const 281479271743489
      i64.add
      i64.const 9
      i64.shr_u
      i64.const 281479271743489
      i64.and
      local.get $13
      i64.const 6
      i64.shr_u
      i64.add
      i64.const 71777214294589695
      i64.and
      i64.const 8
      i64.shl
      local.tee $13
      i64.const 65280
      i64.and
      i64.const 16
      i64.shl
      local.get $13
      i64.const 4278190080
      i64.and
      i64.const 32
      i64.shl
      i64.or
      i64.or
      i64.store
      local.get $0
      local.get $8
      i64.const 1095216660480
      i64.and
      i64.const 32
      i64.shr_u
      local.get $8
      i64.const 71776119061217280
      i64.and
      i64.const 16
      i64.shr_u
      i64.or
      i64.const 65793
      i64.mul
      local.get $13
      i64.const -72057594037927936
      i64.and
      local.get $13
      i64.const 280375465082880
      i64.and
      i64.const 16
      i64.shr_u
      i64.or
      i64.or
      i64.store offset=8
      local.get $0
      local.get $2
      i32.add
      local.tee $0
      local.get $7
      i64.const 48
      i64.shr_u
      i64.const 13107
      i64.and
      local.tee $8
      local.get $8
      i64.const 24
      i64.shl
      i64.or
      i64.const 219043332147
      i64.and
      local.tee $8
      i64.const 12
      i64.shl
      local.get $8
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $8
      local.get $8
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      i64.add
      local.get $12
      i64.mul
      local.get $11
      i64.add
      i64.const 9007336695791648
      i64.add
      i64.const 6
      i64.shr_u
      i64.const 71777214294589695
      i64.and
      local.tee $8
      i64.const 255
      i64.and
      local.get $8
      i64.const 16711680
      i64.and
      i64.const 16
      i64.shl
      i64.or
      i64.const 65793
      i64.mul
      local.get $4
      local.get $7
      i64.const 50
      i64.shr_u
      i64.const 13107
      i64.and
      local.tee $4
      local.get $4
      i64.const 24
      i64.shl
      i64.or
      i64.const 219043332147
      i64.and
      local.tee $4
      i64.const 12
      i64.shl
      local.get $4
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $4
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      local.get $4
      i64.add
      local.get $10
      i64.mul
      i64.add
      local.tee $4
      i64.const 5
      i64.shr_u
      i64.const 143835907860922879
      i64.and
      local.get $4
      i64.const 3
      i64.shl
      i64.const 141865552958718456
      i64.and
      i64.add
      i64.const 281479271743489
      i64.add
      i64.const 9
      i64.shr_u
      i64.const 281479271743489
      i64.and
      local.get $4
      i64.const 6
      i64.shr_u
      i64.add
      i64.const 71777214294589695
      i64.and
      i64.const 8
      i64.shl
      local.tee $4
      i64.const 65280
      i64.and
      i64.const 16
      i64.shl
      local.get $4
      i64.const 4278190080
      i64.and
      i64.const 32
      i64.shl
      i64.or
      i64.or
      i64.store
      local.get $0
      local.get $8
      i64.const 1095216660480
      i64.and
      i64.const 32
      i64.shr_u
      local.get $8
      i64.const 71776119061217280
      i64.and
      i64.const 16
      i64.shr_u
      i64.or
      i64.const 65793
      i64.mul
      local.get $4
      i64.const -72057594037927936
      i64.and
      local.get $4
      i64.const 280375465082880
      i64.and
      i64.const 16
      i64.shr_u
      i64.or
      i64.or
      i64.store offset=8
      br $break|0
     end
     local.get $1
     local.get $8
     i64.const 16
     i64.shr_u
     i32.wrap_i64
     i32.const 260301048
     i32.and
     local.tee $0
     i32.const 5
     i32.shr_u
     local.get $0
     i32.or
     local.tee $0
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.tee $4
     i64.const 18014673391583296
     i64.mul
     local.tee $10
     local.get $8
     i64.const 21
     i64.shr_u
     i32.wrap_i64
     i32.const 260301048
     i32.and
     local.tee $3
     i32.const 5
     i32.shr_u
     local.get $3
     i32.or
     local.tee $3
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.get $4
     i64.sub
     local.tee $4
     local.get $8
     i64.const 49
     i64.shr_u
     i64.const 15
     i64.and
     local.get $7
     i64.const 16
     i64.shl
     i64.const 1099511562240
     i64.and
     local.get $8
     i64.const 48
     i64.shr_u
     i64.const 65504
     i64.and
     i64.or
     i64.or
     local.tee $8
     i64.const 1048575
     i64.and
     local.tee $11
     local.get $11
     i64.const 22
     i64.shl
     i64.or
     i64.const 4393751544831
     i64.and
     local.tee $11
     i64.const 11
     i64.shl
     local.get $11
     i64.or
     i64.const 8725857424048159
     i64.and
     local.tee $11
     i64.const 1
     i64.shl
     local.get $11
     i64.const 4
     i64.shr_u
     i64.or
     i64.const 17733194119839807
     i64.and
     local.tee $11
     local.get $11
     i64.const 5
     i64.shr_u
     i64.const 281479271743489
     i64.and
     i64.add
     local.tee $11
     i64.mul
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     local.get $0
     i32.const 10
     i32.shr_u
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.tee $12
     i64.const 18014673391583296
     i64.mul
     local.tee $13
     local.get $3
     i32.const 10
     i32.shr_u
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.get $12
     i64.sub
     local.tee $12
     local.get $11
     i64.mul
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     i64.const 8
     i64.shl
     i64.or
     local.tee $14
     i64.const 65535
     i64.and
     local.get $0
     i32.const 20
     i32.shr_u
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.tee $15
     i64.const 18014673391583296
     i64.mul
     local.tee $16
     local.get $11
     local.get $3
     i32.const 20
     i32.shr_u
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.get $15
     i64.sub
     local.tee $11
     i64.mul
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     i64.const -71777214294589696
     i64.or
     local.tee $15
     i64.const 4294901760
     i64.and
     i64.const 32
     i64.shl
     i64.or
     local.get $14
     i64.const 4294901760
     i64.and
     local.get $15
     i64.const 65535
     i64.and
     i64.or
     i64.const 16
     i64.shl
     i64.or
     i64.store
     local.get $1
     local.get $14
     i64.const 32
     i64.shr_u
     i64.const 65535
     i64.and
     local.get $15
     i64.const -281474976710656
     i64.and
     i64.or
     local.get $14
     i64.const -281474976710656
     i64.and
     local.get $15
     i64.const 281470681743360
     i64.and
     i64.or
     i64.const 16
     i64.shr_u
     i64.or
     i64.store offset=8
     local.get $1
     local.get $2
     i32.add
     local.tee $0
     local.get $4
     local.get $8
     i64.const 20
     i64.shr_u
     i64.const 1048575
     i64.and
     local.tee $8
     local.get $8
     i64.const 22
     i64.shl
     i64.or
     i64.const 4393751544831
     i64.and
     local.tee $8
     i64.const 11
     i64.shl
     local.get $8
     i64.or
     i64.const 8725857424048159
     i64.and
     local.tee $8
     i64.const 1
     i64.shl
     local.get $8
     i64.const 4
     i64.shr_u
     i64.or
     i64.const 17733194119839807
     i64.and
     local.tee $8
     local.get $8
     i64.const 5
     i64.shr_u
     i64.const 281479271743489
     i64.and
     i64.add
     local.tee $8
     i64.mul
     local.get $10
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     local.get $13
     local.get $8
     local.get $12
     i64.mul
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     i64.const 8
     i64.shl
     i64.or
     local.tee $14
     i64.const 65535
     i64.and
     local.get $16
     local.get $8
     local.get $11
     i64.mul
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     i64.const -71777214294589696
     i64.or
     local.tee $8
     i64.const 4294901760
     i64.and
     i64.const 32
     i64.shl
     i64.or
     local.get $14
     i64.const 4294901760
     i64.and
     local.get $8
     i64.const 65535
     i64.and
     i64.or
     i64.const 16
     i64.shl
     i64.or
     i64.store
     local.get $0
     local.get $14
     i64.const 32
     i64.shr_u
     i64.const 65535
     i64.and
     local.get $8
     i64.const -281474976710656
     i64.and
     i64.or
     local.get $14
     i64.const -281474976710656
     i64.and
     local.get $8
     i64.const 281470681743360
     i64.and
     i64.or
     i64.const 16
     i64.shr_u
     i64.or
     i64.store offset=8
     local.get $0
     local.get $2
     i32.add
     local.tee $0
     local.get $10
     local.get $4
     local.get $7
     i64.const 24
     i64.shr_u
     i64.const 1099511627775
     i64.and
     local.tee $7
     i64.const 1048575
     i64.and
     local.tee $8
     local.get $8
     i64.const 22
     i64.shl
     i64.or
     i64.const 4393751544831
     i64.and
     local.tee $8
     i64.const 11
     i64.shl
     local.get $8
     i64.or
     i64.const 8725857424048159
     i64.and
     local.tee $8
     i64.const 1
     i64.shl
     local.get $8
     i64.const 4
     i64.shr_u
     i64.or
     i64.const 17733194119839807
     i64.and
     local.tee $8
     local.get $8
     i64.const 5
     i64.shr_u
     i64.const 281479271743489
     i64.and
     i64.add
     local.tee $8
     i64.mul
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     local.get $13
     local.get $8
     local.get $12
     i64.mul
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     i64.const 8
     i64.shl
     i64.or
     local.tee $14
     i64.const 65535
     i64.and
     local.get $16
     local.get $8
     local.get $11
     i64.mul
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     i64.const -71777214294589696
     i64.or
     local.tee $8
     i64.const 4294901760
     i64.and
     i64.const 32
     i64.shl
     i64.or
     local.get $14
     i64.const 4294901760
     i64.and
     local.get $8
     i64.const 65535
     i64.and
     i64.or
     i64.const 16
     i64.shl
     i64.or
     i64.store
     local.get $0
     local.get $14
     i64.const 32
     i64.shr_u
     i64.const 65535
     i64.and
     local.get $8
     i64.const -281474976710656
     i64.and
     i64.or
     local.get $14
     i64.const -281474976710656
     i64.and
     local.get $8
     i64.const 281470681743360
     i64.and
     i64.or
     i64.const 16
     i64.shr_u
     i64.or
     i64.store offset=8
     local.get $0
     local.get $2
     i32.add
     local.tee $0
     local.get $10
     local.get $4
     local.get $7
     i64.const 20
     i64.shr_u
     i64.const 1048575
     i64.and
     local.tee $7
     local.get $7
     i64.const 22
     i64.shl
     i64.or
     i64.const 4393751544831
     i64.and
     local.tee $7
     i64.const 11
     i64.shl
     local.get $7
     i64.or
     i64.const 8725857424048159
     i64.and
     local.tee $7
     i64.const 1
     i64.shl
     local.get $7
     i64.const 4
     i64.shr_u
     i64.or
     i64.const 17733194119839807
     i64.and
     local.tee $7
     local.get $7
     i64.const 5
     i64.shr_u
     i64.const 281479271743489
     i64.and
     i64.add
     local.tee $7
     i64.mul
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     local.get $13
     local.get $7
     local.get $12
     i64.mul
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     i64.const 8
     i64.shl
     i64.or
     local.tee $4
     i64.const 65535
     i64.and
     local.get $16
     local.get $7
     local.get $11
     i64.mul
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     i64.const -71777214294589696
     i64.or
     local.tee $7
     i64.const 4294901760
     i64.and
     i64.const 32
     i64.shl
     i64.or
     local.get $4
     i64.const 4294901760
     i64.and
     local.get $7
     i64.const 65535
     i64.and
     i64.or
     i64.const 16
     i64.shl
     i64.or
     i64.store
     local.get $0
     local.get $4
     i64.const 32
     i64.shr_u
     i64.const 65535
     i64.and
     local.get $7
     i64.const -281474976710656
     i64.and
     i64.or
     local.get $4
     i64.const -281474976710656
     i64.and
     local.get $7
     i64.const 281470681743360
     i64.and
     i64.or
     i64.const 16
     i64.shr_u
     i64.or
     i64.store offset=8
     br $break|0
    end
    local.get $1
    i64.const -280375465148161
    i64.store
    local.get $1
    i64.const -280375465148161
    i64.store offset=8
    local.get $1
    local.get $2
    i32.add
    local.tee $0
    i64.const -280375465148161
    i64.store
    local.get $0
    i64.const -280375465148161
    i64.store offset=8
    local.get $0
    local.get $2
    i32.add
    local.tee $0
    i64.const -280375465148161
    i64.store
    local.get $0
    i64.const -280375465148161
    i64.store offset=8
    local.get $0
    local.get $2
    i32.add
    local.tee $0
    i64.const -280375465148161
    i64.store
    local.get $0
    i64.const -280375465148161
    i64.store offset=8
   end
   return
  end
  local.get $1
  i64.const -280375465148161
  i64.store
  local.get $1
  i64.const -280375465148161
  i64.store offset=8
  local.get $1
  local.get $2
  i32.add
  local.tee $0
  i64.const -280375465148161
  i64.store
  local.get $0
  i64.const -280375465148161
  i64.store offset=8
  local.get $0
  local.get $2
  i32.add
  local.tee $0
  i64.const -280375465148161
  i64.store
  local.get $0
  i64.const -280375465148161
  i64.store offset=8
  local.get $0
  local.get $2
  i32.add
  local.tee $0
  i64.const -280375465148161
  i64.store
  local.get $0
  i64.const -280375465148161
  i64.store offset=8
 )
 (func $assembly/uastc/rgba8/decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.get $1
  i32.or
  i32.const 0
  i32.lt_s
  local.get $0
  i32.const 16384
  i32.gt_s
  i32.or
  local.get $1
  i32.const 16384
  i32.gt_s
  i32.or
  if
   i32.const 1
   return
  end
  local.get $1
  i32.const 3
  i32.add
  i32.const 2
  i32.shr_s
  local.tee $6
  local.get $0
  i32.const 3
  i32.add
  i32.const 2
  i32.shr_s
  local.tee $9
  i32.mul
  i32.const 4
  i32.shl
  local.tee $1
  local.get $6
  i32.const 2
  i32.shl
  local.get $0
  i32.mul
  i32.const 2
  i32.shl
  i32.add
  memory.size
  i32.const 1
  i32.sub
  i32.const 16
  i32.shl
  i32.gt_s
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 2
  i32.shr_s
  local.set $8
  local.get $0
  i32.const 3
  i32.and
  i32.const 2
  i32.shl
  local.tee $7
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 3
  i32.mul
  i32.add
  local.set $10
  i32.const 16
  i32.const 0
  local.get $7
  select
  local.set $11
  i32.const 65536
  local.set $2
  local.get $1
  i32.const 65536
  i32.add
  local.set $0
  loop $for-loop|0
   local.get $5
   local.get $6
   i32.lt_s
   if
    i32.const 0
    local.set $3
    loop $for-loop|1
     local.get $3
     local.get $8
     i32.lt_s
     if
      local.get $2
      local.get $0
      local.get $4
      call $assembly/uastc/rgba8/decodeBlock
      local.get $2
      i32.const 16
      i32.add
      local.set $2
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    local.get $2
    local.get $11
    i32.add
    local.set $2
    local.get $0
    local.get $10
    i32.add
    local.set $0
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $7
  if
   local.get $8
   i32.const 4
   i32.shl
   local.tee $0
   i32.const 65536
   i32.add
   local.set $2
   local.get $1
   i32.const 65536
   i32.add
   local.get $0
   i32.add
   local.set $0
   local.get $9
   i32.const 4
   i32.shl
   local.set $5
   local.get $4
   i32.const 2
   i32.shl
   local.set $8
   i32.const 0
   local.set $3
   loop $for-loop|2
    local.get $3
    local.get $6
    i32.lt_s
    if
     local.get $2
     i32.const 4096
     i32.const 16
     call $assembly/uastc/rgba8/decodeBlock
     i32.const 0
     local.set $1
     loop $for-loop|3
      local.get $1
      local.get $7
      i32.lt_s
      if
       local.get $0
       local.get $1
       i32.add
       local.get $1
       i32.load offset=4096
       i32.store
       local.get $1
       local.get $0
       local.get $4
       i32.add
       local.tee $9
       i32.add
       local.get $1
       i32.load offset=4112
       i32.store
       local.get $1
       local.get $4
       local.get $9
       i32.add
       local.tee $9
       i32.add
       local.get $1
       i32.load offset=4128
       i32.store
       local.get $4
       local.get $9
       i32.add
       local.get $1
       i32.add
       local.get $1
       i32.load offset=4144
       i32.store
       local.get $1
       i32.const 4
       i32.add
       local.set $1
       br $for-loop|3
      end
     end
     local.get $2
     local.get $5
     i32.add
     local.set $2
     local.get $0
     local.get $8
     i32.add
     local.set $0
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
  end
  i32.const 0
 )
 (func $~start
  call $start:assembly/uastc/rgba8
 )
)
