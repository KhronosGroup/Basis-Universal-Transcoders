(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "memory" (memory $0 0))
 (global $assembly/uastc-rgba32/firstRun (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (export "decodeRGBA32" (func $assembly/uastc-rgba32/decodeRGBA32))
 (func $assembly/lib/uastc/common/storeCommonData
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
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
  loop $for-loop|0
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
    i32.store16 offset=512
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|00
   end
  end
  i32.const 0
  local.set $0
  loop $for-loop|01
   local.get $0
   i32.const 4
   i32.lt_u
   if
    i32.const 511
    i32.const 0
    local.get $0
    i32.const 1
    i32.and
    select
    local.set $2
    i32.const 278
    i32.const 0
    local.get $0
    i32.const 2
    i32.and
    select
    local.set $3
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 3
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.or
      local.get $2
      i32.const 128
      i32.and
      local.get $2
      local.get $3
      local.get $1
      i32.const 93
      i32.mul
      i32.add
      i32.xor
      i32.const 2
      i32.shr_u
      i32.or
      i32.store8 offset=1024
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
    br $for-loop|01
   end
  end
  i32.const 0
  local.set $0
  loop $for-loop|02
   local.get $0
   i32.const 8
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
    i32.const 6
    i32.and
    i32.const 65
    i32.mul
    local.get $0
    i32.const 2
    i32.shr_u
    i32.or
    local.set $3
    i32.const 0
    local.set $1
    loop $for-loop|13
     local.get $1
     i32.const 5
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 3
      i32.shl
      i32.or
      local.get $2
      i32.const 128
      i32.and
      local.get $2
      local.get $3
      local.get $1
      i32.const 26
      i32.mul
      i32.add
      i32.xor
      i32.const 2
      i32.shr_u
      i32.or
      i32.store8 offset=1036
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|13
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|02
   end
  end
  i32.const 0
  local.set $0
  loop $for-loop|04
   local.get $0
   i32.const 16
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
    i32.const 1
    i32.shr_u
    i32.const 65
    i32.mul
    local.set $3
    i32.const 0
    local.set $1
    loop $for-loop|15
     local.get $1
     i32.const 3
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 4
      i32.shl
      i32.or
      local.get $2
      i32.const 128
      i32.and
      local.get $2
      local.get $3
      local.get $1
      i32.const 22
      i32.mul
      i32.add
      i32.xor
      i32.const 2
      i32.shr_u
      i32.or
      i32.store8 offset=1076
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|15
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|04
   end
  end
  i32.const 0
  local.set $0
  loop $for-loop|06
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
    loop $for-loop|17
     local.get $1
     i32.const 5
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 5
      i32.shl
      i32.or
      local.get $2
      i32.const 128
      i32.and
      local.get $2
      local.get $3
      local.get $1
      i32.const 6
      i32.mul
      i32.add
      i32.xor
      i32.const 2
      i32.shr_u
      i32.or
      i32.store8 offset=1124
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|17
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|06
   end
  end
  i32.const 0
  local.set $0
  loop $for-loop|08
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
    loop $for-loop|19
     local.get $1
     i32.const 3
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 6
      i32.shl
      i32.or
      local.get $2
      i32.const 128
      i32.and
      local.get $2
      local.get $3
      local.get $1
      i32.const 5
      i32.mul
      i32.add
      i32.xor
      i32.const 2
      i32.shr_u
      i32.or
      i32.store8 offset=1284
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|19
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|08
   end
  end
 )
 (func $assembly/uastc-rgba32/writeErrorBlock (param $0 i32) (param $1 i32)
  local.get $0
  i64.const -280375465148161
  i64.store
  local.get $0
  i64.const -280375465148161
  i64.store offset=8
  local.get $0
  local.get $1
  i32.add
  local.tee $0
  i64.const -280375465148161
  i64.store
  local.get $0
  i64.const -280375465148161
  i64.store offset=8
  local.get $0
  local.get $1
  i32.add
  local.tee $0
  i64.const -280375465148161
  i64.store
  local.get $0
  i64.const -280375465148161
  i64.store offset=8
  local.get $0
  local.get $1
  i32.add
  local.tee $0
  i64.const -280375465148161
  i64.store
  local.get $0
  i64.const -280375465148161
  i64.store offset=8
 )
 (func $assembly/uastc-rgba32/decodeBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $14 i64)
  (local $15 i64)
  (local $16 i32)
  (local $17 i64)
  (local $18 i32)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i32)
  (local $24 i32)
  (local $25 i64)
  (local $26 i64)
  (local $27 i64)
  (local $28 i64)
  (local $29 i64)
  (local $30 i32)
  (local $31 i64)
  (local $32 i64)
  local.get $0
  i64.load offset=8
  local.set $3
  local.get $0
  i64.load
  local.tee $4
  i32.wrap_i64
  i32.const 127
  i32.and
  i32.load8_u
  local.tee $16
  i32.const 4
  i32.eq
  local.set $0
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
                       local.get $16
                       local.get $0
                       select
                       br_table $case0|0 $case1|0 $case2|0 $case3|0 $case18|0 $case5|0 $case6|0 $case4|0 $case7|0 $case8|0 $case9|0 $case10|0 $case11|0 $case12|0 $case13|0 $case14|0 $case15|0 $case16|0 $case17|0 $case18|0
                      end
                      local.get $4
                      i64.const 41
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 63
                      i32.and
                      local.get $4
                      i64.const 19
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      i32.const 1
                      i32.shl
                      i32.load16_u offset=512
                      local.tee $0
                      i32.const 4
                      i32.shr_u
                      i32.const 3
                      i32.and
                      i32.const 6
                      i32.shl
                      i32.or
                      i32.load8_u offset=1284
                      i64.extend_i32_u
                      local.set $7
                      local.get $1
                      local.get $4
                      i64.const 29
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 63
                      i32.and
                      local.get $0
                      i32.const 3
                      i32.and
                      i32.const 6
                      i32.shl
                      i32.or
                      i32.load8_u offset=1284
                      i64.extend_i32_u
                      local.tee $9
                      i64.const 18014673391583296
                      i64.mul
                      local.tee $8
                      local.get $4
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
                      i32.load8_u offset=1284
                      i64.extend_i32_u
                      local.get $9
                      i64.sub
                      local.tee $9
                      local.get $3
                      i64.const -16
                      i64.and
                      local.get $3
                      i64.const 1
                      i64.shr_u
                      i64.const 7
                      i64.and
                      i64.or
                      local.tee $5
                      i64.const 65535
                      i64.and
                      local.tee $6
                      local.get $6
                      i64.const 24
                      i64.shl
                      i64.or
                      i64.const 1095216660735
                      i64.and
                      local.tee $6
                      local.get $6
                      i64.const 12
                      i64.shl
                      i64.or
                      i64.const 4222189076152335
                      i64.and
                      local.tee $6
                      i64.const 2
                      i64.shl
                      local.get $6
                      i64.const 2
                      i64.shr_u
                      i64.or
                      i64.const 17733194119839807
                      i64.and
                      local.tee $6
                      local.get $6
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
                      local.get $7
                      i64.const 18014673391583296
                      i64.mul
                      local.tee $6
                      local.get $4
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
                      i32.load8_u offset=1284
                      i64.extend_i32_u
                      local.get $7
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
                      i64.const 8
                      i64.shl
                      i64.or
                      local.tee $10
                      i64.const 65535
                      i64.and
                      local.get $4
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
                      i32.load8_u offset=1284
                      i64.extend_i32_u
                      local.tee $15
                      i64.const 18014673391583296
                      i64.mul
                      local.tee $11
                      local.get $4
                      i64.const 59
                      i64.shr_u
                      i32.wrap_i64
                      local.get $3
                      i64.const 5
                      i64.shl
                      i32.wrap_i64
                      i32.const 32
                      i32.and
                      i32.or
                      local.get $4
                      i64.const 27
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.shl
                      i32.load16_u offset=512
                      i32.const 3
                      i32.and
                      i32.const 6
                      i32.shl
                      i32.or
                      i32.load8_u offset=1284
                      i64.extend_i32_u
                      local.get $15
                      i64.sub
                      local.tee $4
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
                      local.tee $3
                      i64.const 4294901760
                      i64.and
                      i64.const 32
                      i64.shl
                      i64.or
                      local.get $10
                      i64.const 4294901760
                      i64.and
                      local.get $3
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
                      local.get $3
                      i64.const -281474976710656
                      i64.and
                      i64.or
                      local.get $10
                      i64.const -281474976710656
                      i64.and
                      local.get $3
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
                      local.get $8
                      local.get $9
                      local.get $5
                      i64.const 16
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.tee $3
                      local.get $3
                      i64.const 24
                      i64.shl
                      i64.or
                      i64.const 1095216660735
                      i64.and
                      local.tee $3
                      local.get $3
                      i64.const 12
                      i64.shl
                      i64.or
                      i64.const 4222189076152335
                      i64.and
                      local.tee $3
                      i64.const 2
                      i64.shl
                      local.get $3
                      i64.const 2
                      i64.shr_u
                      i64.or
                      i64.const 17733194119839807
                      i64.and
                      local.tee $3
                      local.get $3
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
                      local.get $6
                      local.get $7
                      local.get $10
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
                      local.tee $3
                      i64.const 65535
                      i64.and
                      local.get $11
                      local.get $4
                      local.get $10
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
                      local.get $3
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
                      local.get $3
                      i64.const 32
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.get $10
                      i64.const -281474976710656
                      i64.and
                      i64.or
                      local.get $3
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
                      local.get $8
                      local.get $9
                      local.get $5
                      i64.const 32
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.tee $3
                      local.get $3
                      i64.const 24
                      i64.shl
                      i64.or
                      i64.const 1095216660735
                      i64.and
                      local.tee $3
                      local.get $3
                      i64.const 12
                      i64.shl
                      i64.or
                      i64.const 4222189076152335
                      i64.and
                      local.tee $3
                      i64.const 2
                      i64.shl
                      local.get $3
                      i64.const 2
                      i64.shr_u
                      i64.or
                      i64.const 17733194119839807
                      i64.and
                      local.tee $3
                      local.get $3
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
                      local.get $6
                      local.get $7
                      local.get $10
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
                      local.tee $3
                      i64.const 65535
                      i64.and
                      local.get $11
                      local.get $4
                      local.get $10
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
                      local.get $3
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
                      local.get $3
                      i64.const 32
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.get $10
                      i64.const -281474976710656
                      i64.and
                      i64.or
                      local.get $3
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
                      local.get $8
                      local.get $9
                      local.get $5
                      i64.const 48
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.tee $3
                      local.get $3
                      i64.const 24
                      i64.shl
                      i64.or
                      i64.const 1095216660735
                      i64.and
                      local.tee $3
                      local.get $3
                      i64.const 12
                      i64.shl
                      i64.or
                      i64.const 4222189076152335
                      i64.and
                      local.tee $3
                      i64.const 2
                      i64.shl
                      local.get $3
                      i64.const 2
                      i64.shr_u
                      i64.or
                      i64.const 17733194119839807
                      i64.and
                      local.tee $3
                      local.get $3
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
                      local.get $6
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
                      i64.const 8
                      i64.shl
                      i64.or
                      local.tee $3
                      i64.const 65535
                      i64.and
                      local.get $11
                      local.get $4
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
                      local.tee $4
                      i64.const 4294901760
                      i64.and
                      i64.const 32
                      i64.shl
                      i64.or
                      local.get $3
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
                      local.get $3
                      i64.const 32
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.get $4
                      i64.const -281474976710656
                      i64.and
                      i64.or
                      local.get $3
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
                     local.get $4
                     i64.const 21
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i64.extend_i32_u
                     local.tee $9
                     i64.const 18014673391583296
                     i64.mul
                     local.tee $8
                     local.get $4
                     i64.const 29
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i64.extend_i32_u
                     local.get $9
                     i64.sub
                     local.tee $9
                     local.get $3
                     i64.const 4
                     i64.shr_u
                     i64.const 4294967292
                     i64.and
                     local.get $3
                     i64.const 5
                     i64.shr_u
                     i64.const 1
                     i64.and
                     i64.or
                     local.tee $5
                     i64.const 255
                     i64.and
                     local.tee $6
                     local.get $6
                     i64.const 28
                     i64.shl
                     i64.or
                     i64.const 64424509455
                     i64.and
                     local.tee $6
                     local.get $6
                     i64.const 14
                     i64.shl
                     i64.or
                     i64.const 844437815230467
                     i64.and
                     i64.const 21
                     i64.mul
                     local.tee $6
                     local.get $6
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
                     local.get $4
                     i64.const 37
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i64.extend_i32_u
                     local.tee $7
                     i64.const 18014673391583296
                     i64.mul
                     local.tee $6
                     local.get $4
                     i64.const 45
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i64.extend_i32_u
                     local.get $7
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
                     i64.const 8
                     i64.shl
                     i64.or
                     local.tee $10
                     i64.const 65535
                     i64.and
                     local.get $4
                     i64.const 53
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i64.extend_i32_u
                     local.tee $15
                     i64.const 18014673391583296
                     i64.mul
                     local.tee $11
                     local.get $4
                     i64.const 61
                     i64.shr_u
                     i32.wrap_i64
                     local.get $3
                     i64.const 3
                     i64.shl
                     i32.wrap_i64
                     i32.const 248
                     i32.and
                     i32.or
                     i64.extend_i32_u
                     local.get $15
                     i64.sub
                     local.tee $4
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
                     local.tee $3
                     i64.const 4294901760
                     i64.and
                     i64.const 32
                     i64.shl
                     i64.or
                     local.get $10
                     i64.const 4294901760
                     i64.and
                     local.get $3
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
                     local.get $3
                     i64.const -281474976710656
                     i64.and
                     i64.or
                     local.get $10
                     i64.const -281474976710656
                     i64.and
                     local.get $3
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
                     local.get $8
                     local.get $9
                     local.get $5
                     i64.const 8
                     i64.shr_u
                     i64.const 255
                     i64.and
                     local.tee $3
                     local.get $3
                     i64.const 28
                     i64.shl
                     i64.or
                     i64.const 64424509455
                     i64.and
                     local.tee $3
                     local.get $3
                     i64.const 14
                     i64.shl
                     i64.or
                     i64.const 844437815230467
                     i64.and
                     i64.const 21
                     i64.mul
                     local.tee $3
                     local.get $3
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
                     local.get $6
                     local.get $7
                     local.get $10
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
                     local.tee $3
                     i64.const 65535
                     i64.and
                     local.get $11
                     local.get $4
                     local.get $10
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
                     local.get $3
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
                     local.get $3
                     i64.const 32
                     i64.shr_u
                     i64.const 65535
                     i64.and
                     local.get $10
                     i64.const -281474976710656
                     i64.and
                     i64.or
                     local.get $3
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
                     local.get $8
                     local.get $9
                     local.get $5
                     i64.const 16
                     i64.shr_u
                     i64.const 255
                     i64.and
                     local.tee $3
                     local.get $3
                     i64.const 28
                     i64.shl
                     i64.or
                     i64.const 64424509455
                     i64.and
                     local.tee $3
                     local.get $3
                     i64.const 14
                     i64.shl
                     i64.or
                     i64.const 844437815230467
                     i64.and
                     i64.const 21
                     i64.mul
                     local.tee $3
                     local.get $3
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
                     local.get $6
                     local.get $7
                     local.get $10
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
                     local.tee $3
                     i64.const 65535
                     i64.and
                     local.get $11
                     local.get $4
                     local.get $10
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
                     local.get $3
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
                     local.get $3
                     i64.const 32
                     i64.shr_u
                     i64.const 65535
                     i64.and
                     local.get $10
                     i64.const -281474976710656
                     i64.and
                     i64.or
                     local.get $3
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
                     local.get $8
                     local.get $9
                     local.get $5
                     i64.const 24
                     i64.shr_u
                     i64.const 255
                     i64.and
                     local.tee $3
                     local.get $3
                     i64.const 28
                     i64.shl
                     i64.or
                     i64.const 64424509455
                     i64.and
                     local.tee $3
                     local.get $3
                     i64.const 14
                     i64.shl
                     i64.or
                     i64.const 844437815230467
                     i64.and
                     i64.const 21
                     i64.mul
                     local.tee $3
                     local.get $3
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
                     local.get $6
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
                     i64.const 8
                     i64.shl
                     i64.or
                     local.tee $3
                     i64.const 65535
                     i64.and
                     local.get $11
                     local.get $4
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
                     local.tee $4
                     i64.const 4294901760
                     i64.and
                     i64.const 32
                     i64.shl
                     i64.or
                     local.get $3
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
                     local.get $3
                     i64.const 32
                     i64.shr_u
                     i64.const 65535
                     i64.and
                     local.get $4
                     i64.const -281474976710656
                     i64.and
                     i64.or
                     local.get $3
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
                    local.get $4
                    i64.const 20
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 31
                    i32.and
                    local.tee $0
                    i32.const 29
                    i32.gt_u
                    br_if $folding-inner0
                    local.get $3
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
                    local.tee $13
                    i32.const 3
                    i32.add
                    i64.extend_i32_u
                    i64.shl
                    local.get $3
                    i64.const 7
                    i64.shr_u
                    i64.and
                    i64.const -1
                    local.get $13
                    i32.const 2
                    i32.add
                    i64.extend_i32_u
                    i64.shl
                    i64.const -8
                    i64.xor
                    local.get $3
                    i64.const 8
                    i64.shr_u
                    i64.and
                    i64.or
                    i64.or
                    local.set $9
                    local.get $0
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=2176
                    local.set $16
                    local.get $3
                    i64.const 35
                    i64.shl
                    local.get $4
                    i64.const 29
                    i64.shr_u
                    i64.or
                    i64.const 1085102592571150095
                    i64.and
                    local.tee $8
                    local.get $8
                    i64.const 4
                    i64.shl
                    i64.or
                    local.tee $8
                    i64.const 255
                    i64.and
                    local.get $3
                    i64.const 39
                    i64.shl
                    local.get $4
                    i64.const 25
                    i64.shr_u
                    i64.or
                    i64.const 1085102592571150095
                    i64.and
                    local.tee $4
                    local.get $4
                    i64.const 4
                    i64.shl
                    i64.or
                    local.tee $4
                    i64.const 255
                    i64.and
                    local.tee $3
                    i64.sub
                    local.set $5
                    local.get $8
                    i64.const 24
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.get $4
                    i64.const 24
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.tee $6
                    i64.sub
                    local.set $7
                    local.get $8
                    i64.const 8
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.get $4
                    i64.const 8
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.tee $10
                    i64.sub
                    local.set $11
                    local.get $8
                    i64.const 32
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.get $4
                    i64.const 32
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.tee $12
                    i64.sub
                    local.set $15
                    local.get $8
                    i64.const 16
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.get $4
                    i64.const 16
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.tee $14
                    i64.sub
                    local.set $17
                    local.get $8
                    i64.const 40
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.get $4
                    i64.const 40
                    i64.shr_u
                    i64.const 255
                    i64.and
                    local.tee $4
                    i64.sub
                    local.set $19
                    local.get $3
                    i64.const 18014673391583296
                    i64.mul
                    local.set $20
                    local.get $6
                    i64.const 18014673391583296
                    i64.mul
                    local.set $6
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
                    local.get $4
                    i64.const 18014673391583296
                    i64.mul
                    local.set $21
                    i32.const 0
                    local.set $13
                    loop $for-loop|27
                     local.get $13
                     i32.const 4
                     i32.lt_s
                     if
                      local.get $1
                      local.get $20
                      local.get $9
                      i64.const 4095
                      i64.and
                      local.tee $4
                      local.get $4
                      i64.const 26
                      i64.shl
                      i64.or
                      i64.const 270582939711
                      i64.and
                      local.tee $4
                      local.get $4
                      i64.const 13
                      i64.shl
                      i64.or
                      i64.const 1970354902204423
                      i64.and
                      local.tee $4
                      local.get $4
                      i64.const 3
                      i64.shl
                      i64.or
                      local.tee $4
                      local.get $4
                      i64.const 5
                      i64.shr_u
                      i64.const 281479271743489
                      i64.and
                      i64.add
                      local.tee $4
                      local.get $5
                      i64.mul
                      i64.add
                      local.tee $3
                      local.get $16
                      i64.extend_i32_u
                      local.tee $8
                      local.get $8
                      i64.const 30
                      i64.shl
                      i64.or
                      i64.const 12884901891
                      i64.and
                      local.tee $8
                      local.get $8
                      i64.const 15
                      i64.shl
                      i64.or
                      i64.const 281479271743489
                      i64.and
                      i64.const 65535
                      i64.mul
                      local.tee $8
                      local.get $3
                      local.get $6
                      local.get $4
                      local.get $7
                      i64.mul
                      i64.add
                      i64.xor
                      i64.and
                      i64.xor
                      i64.const 9007336695791648
                      i64.add
                      i64.const 6
                      i64.shr_u
                      i64.const 71777214294589695
                      i64.and
                      local.get $10
                      local.get $4
                      local.get $11
                      i64.mul
                      i64.add
                      local.tee $3
                      local.get $8
                      local.get $3
                      local.get $12
                      local.get $4
                      local.get $15
                      i64.mul
                      i64.add
                      i64.xor
                      i64.and
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
                      local.tee $3
                      i64.const 65535
                      i64.and
                      local.get $14
                      local.get $4
                      local.get $17
                      i64.mul
                      i64.add
                      local.tee $22
                      local.get $8
                      local.get $22
                      local.get $21
                      local.get $4
                      local.get $19
                      i64.mul
                      i64.add
                      i64.xor
                      i64.and
                      i64.xor
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
                      local.get $3
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
                      local.get $3
                      i64.const 32
                      i64.shr_u
                      i64.const 65535
                      i64.and
                      local.get $4
                      i64.const -281474976710656
                      i64.and
                      i64.or
                      local.get $3
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
                      local.get $1
                      local.get $2
                      i32.add
                      local.set $1
                      local.get $9
                      i64.const 12
                      i64.shr_u
                      local.set $9
                      local.get $16
                      i32.const 4
                      i32.shr_u
                      local.set $16
                      local.get $13
                      i32.const 1
                      i32.add
                      local.set $13
                      br $for-loop|27
                     end
                    end
                    br $break|0
                   end
                   local.get $4
                   i64.const 20
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 15
                   i32.and
                   local.tee $0
                   i32.const 10
                   i32.gt_u
                   br_if $folding-inner0
                   local.get $3
                   i64.const 25
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 1
                   i32.and
                   local.get $3
                   i64.const 22
                   i64.shr_u
                   i32.wrap_i64
                   i32.const -1
                   i64.const 7157868367050
                   local.get $0
                   i32.const 2
                   i32.shl
                   local.tee $16
                   i64.extend_i32_u
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 15
                   i32.and
                   i32.const 1
                   i32.shl
                   local.tee $18
                   i32.const 2
                   i32.add
                   i32.shl
                   i32.and
                   local.get $3
                   i64.const 23
                   i64.shr_u
                   local.tee $7
                   i32.wrap_i64
                   i32.const 1
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
                   local.tee $0
                   i32.const 2
                   i32.add
                   i32.shl
                   i32.const 1
                   i32.sub
                   i32.const -1
                   local.get $18
                   i32.const 1
                   i32.add
                   i32.shl
                   i32.or
                   i32.const -1
                   i32.xor
                   i32.and
                   i32.or
                   local.get $3
                   i64.const 24
                   i64.shr_u
                   i32.wrap_i64
                   i32.const -1
                   local.get $0
                   i32.const 1
                   i32.or
                   i32.shl
                   i32.const -4
                   i32.xor
                   i32.and
                   i32.or
                   i32.or
                   i64.extend_i32_u
                   local.set $8
                   local.get $16
                   i32.load offset=2048
                   local.tee $0
                   i32.const 65535
                   i32.and
                   local.set $23
                   local.get $0
                   i32.const 16
                   i32.shr_u
                   local.set $24
                   local.get $4
                   i64.const 53
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $4
                   i64.const 24
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 255
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=512
                   local.tee $0
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.set $9
                   local.get $4
                   i64.const 55
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $0
                   i32.const 2
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.get $9
                   i64.sub
                   local.set $10
                   local.get $3
                   i64.const 1
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $4
                   i64.const 32
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 255
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=512
                   local.tee $16
                   i32.const 2
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.set $5
                   local.get $3
                   i64.const 3
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $16
                   i32.const 4
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.get $5
                   i64.sub
                   local.set $11
                   local.get $3
                   i64.const 13
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $4
                   i64.const 40
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 255
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=512
                   local.tee $18
                   i32.const 4
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.set $6
                   local.get $3
                   i64.const 15
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $18
                   i32.const 6
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.get $6
                   i64.sub
                   local.set $12
                   local.get $4
                   i64.const 59
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
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.get $4
                   i64.const 57
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
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.tee $15
                   i64.sub
                   local.set $14
                   local.get $3
                   i64.const 7
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $16
                   i32.const 8
                   i32.shr_u
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.get $3
                   i64.const 5
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $16
                   i32.const 6
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.tee $17
                   i64.sub
                   local.set $19
                   local.get $3
                   i64.const 19
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $4
                   i64.const 48
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 31
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=512
                   local.tee $30
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.get $3
                   i64.const 17
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $18
                   i32.const 8
                   i32.shr_u
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.tee $20
                   i64.sub
                   local.set $21
                   local.get $4
                   i64.const 63
                   i64.shr_u
                   i32.wrap_i64
                   local.get $3
                   i64.const 1
                   i64.shl
                   i32.wrap_i64
                   i32.const 2
                   i32.and
                   i32.or
                   local.get $16
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.get $4
                   i64.const 61
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
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.tee $4
                   i64.sub
                   local.set $22
                   local.get $3
                   i64.const 11
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $18
                   i32.const 2
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.get $3
                   i64.const 9
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $18
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.tee $25
                   i64.sub
                   local.set $26
                   local.get $7
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $30
                   i32.const 4
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.get $3
                   i64.const 21
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 3
                   i32.and
                   local.get $30
                   i32.const 2
                   i32.shr_u
                   i32.const 3
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   i32.load8_u offset=1024
                   i64.extend_i32_u
                   local.tee $3
                   i64.sub
                   local.set $7
                   local.get $9
                   i64.const 18014673391583296
                   i64.mul
                   local.set $27
                   local.get $5
                   i64.const 18014673391583296
                   i64.mul
                   local.set $28
                   local.get $6
                   i64.const 18014673391583296
                   i64.mul
                   local.set $6
                   local.get $15
                   i64.const 18014673391583296
                   i64.mul
                   local.set $15
                   local.get $17
                   i64.const 18014673391583296
                   i64.mul
                   local.set $17
                   local.get $20
                   i64.const 18014673391583296
                   i64.mul
                   local.set $20
                   local.get $4
                   i64.const 18014673391583296
                   i64.mul
                   local.set $29
                   local.get $25
                   i64.const 18014673391583296
                   i64.mul
                   local.set $25
                   local.get $3
                   i64.const 18014673391583296
                   i64.mul
                   local.set $31
                   loop $for-loop|29
                    local.get $13
                    i32.const 4
                    i32.lt_s
                    if
                     local.get $1
                     local.get $27
                     local.get $8
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
                     local.get $4
                     i64.const 14
                     i64.shl
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
                     local.get $10
                     i64.mul
                     i64.add
                     local.tee $3
                     local.get $23
                     i64.extend_i32_u
                     local.tee $9
                     local.get $9
                     i64.const 30
                     i64.shl
                     i64.or
                     i64.const 12884901891
                     i64.and
                     local.tee $9
                     local.get $9
                     i64.const 15
                     i64.shl
                     i64.or
                     i64.const 281479271743489
                     i64.and
                     i64.const 65535
                     i64.mul
                     local.tee $9
                     local.get $3
                     local.get $28
                     local.get $4
                     local.get $11
                     i64.mul
                     i64.add
                     i64.xor
                     i64.and
                     i64.xor
                     local.tee $3
                     local.get $24
                     i64.extend_i32_u
                     local.tee $5
                     local.get $5
                     i64.const 30
                     i64.shl
                     i64.or
                     i64.const 12884901891
                     i64.and
                     local.tee $5
                     local.get $5
                     i64.const 15
                     i64.shl
                     i64.or
                     i64.const 281479271743489
                     i64.and
                     i64.const 65535
                     i64.mul
                     local.tee $5
                     local.get $3
                     local.get $6
                     local.get $4
                     local.get $12
                     i64.mul
                     i64.add
                     i64.xor
                     i64.and
                     i64.xor
                     i64.const 9007336695791648
                     i64.add
                     i64.const 6
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     local.get $15
                     local.get $4
                     local.get $14
                     i64.mul
                     i64.add
                     local.tee $3
                     local.get $9
                     local.get $3
                     local.get $17
                     local.get $4
                     local.get $19
                     i64.mul
                     i64.add
                     i64.xor
                     i64.and
                     i64.xor
                     local.tee $3
                     local.get $5
                     local.get $3
                     local.get $20
                     local.get $4
                     local.get $21
                     i64.mul
                     i64.add
                     i64.xor
                     i64.and
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
                     local.tee $3
                     i64.const 65535
                     i64.and
                     local.get $29
                     local.get $4
                     local.get $22
                     i64.mul
                     i64.add
                     local.tee $32
                     local.get $9
                     local.get $32
                     local.get $25
                     local.get $4
                     local.get $26
                     i64.mul
                     i64.add
                     i64.xor
                     i64.and
                     i64.xor
                     local.tee $9
                     local.get $5
                     local.get $9
                     local.get $31
                     local.get $4
                     local.get $7
                     i64.mul
                     i64.add
                     i64.xor
                     i64.and
                     i64.xor
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
                     local.get $3
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
                     local.get $3
                     i64.const 32
                     i64.shr_u
                     i64.const 65535
                     i64.and
                     local.get $4
                     i64.const -281474976710656
                     i64.and
                     i64.or
                     local.get $3
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
                     local.get $1
                     local.get $2
                     i32.add
                     local.set $1
                     local.get $8
                     i64.const 8
                     i64.shr_u
                     local.set $8
                     local.get $23
                     i32.const 4
                     i32.shr_u
                     local.set $23
                     local.get $24
                     i32.const 4
                     i32.shr_u
                     local.set $24
                     local.get $13
                     i32.const 1
                     i32.add
                     local.set $13
                     br $for-loop|29
                    end
                   end
                   br $break|0
                  end
                  local.get $4
                  i64.const 20
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 31
                  i32.and
                  local.tee $13
                  i32.const 29
                  i32.const 18
                  local.get $0
                  select
                  i32.gt_u
                  br_if $folding-inner0
                  local.get $4
                  i64.const 53
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $4
                  i64.const 25
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 127
                  i32.and
                  i32.const 1
                  i32.shl
                  i32.load16_u offset=256
                  local.tee $16
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=1036
                  i64.extend_i32_u
                  local.set $9
                  local.get $4
                  i64.const 56
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $16
                  i32.const 4
                  i32.shr_u
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=1036
                  i64.extend_i32_u
                  local.get $4
                  i64.const 59
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $16
                  i32.const 8
                  i32.shr_u
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=1036
                  i64.extend_i32_u
                  local.set $5
                  local.get $4
                  i64.const 62
                  i64.shr_u
                  i32.wrap_i64
                  local.get $3
                  i64.const 2
                  i64.shl
                  i32.wrap_i64
                  i32.const 4
                  i32.and
                  i32.or
                  local.get $4
                  i64.const 32
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 127
                  i32.and
                  i32.const 1
                  i32.shl
                  i32.load16_u offset=256
                  local.tee $16
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=1036
                  i64.extend_i32_u
                  local.set $12
                  local.get $3
                  i64.const 1
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $16
                  i32.const 4
                  i32.shr_u
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=1036
                  i64.extend_i32_u
                  local.set $6
                  local.get $3
                  i64.const 4
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $16
                  i32.const 8
                  i32.shr_u
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=1036
                  i64.extend_i32_u
                  local.set $15
                  local.get $3
                  i64.const 7
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $4
                  i64.const 39
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 127
                  i32.and
                  i32.const 1
                  i32.shl
                  i32.load16_u offset=256
                  local.tee $16
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=1036
                  i64.extend_i32_u
                  local.set $7
                  local.get $3
                  i64.const 10
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $16
                  i32.const 4
                  i32.shr_u
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=1036
                  i64.extend_i32_u
                  local.set $14
                  local.get $3
                  i64.const 13
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $16
                  i32.const 8
                  i32.shr_u
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=1036
                  i64.extend_i32_u
                  local.set $10
                  local.get $3
                  i64.const 16
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $4
                  i64.const 46
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 127
                  i32.and
                  i32.const 1
                  i32.shl
                  i32.load16_u offset=256
                  local.tee $16
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=1036
                  i64.extend_i32_u
                  local.set $17
                  local.get $3
                  i64.const 19
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $16
                  i32.const 4
                  i32.shr_u
                  i32.const 7
                  i32.and
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=1036
                  i64.extend_i32_u
                  local.set $4
                  local.get $3
                  i64.const 22
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 7
                  i32.and
                  local.get $16
                  i32.const 8
                  i32.shr_u
                  i32.const 3
                  i32.shl
                  i32.or
                  i32.load8_u offset=1036
                  i64.extend_i32_u
                  local.set $19
                  local.get $3
                  i64.const 25
                  i64.shr_u
                  i64.const 1
                  i64.and
                  i32.const -1
                  i64.const 5651576228422017
                  i64.const -4286381023083155150
                  local.get $13
                  i32.const 15
                  i32.gt_u
                  local.tee $16
                  select
                  local.get $13
                  i32.const 15
                  i32.and
                  i32.const 2
                  i32.shl
                  local.tee $18
                  i64.extend_i32_u
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 15
                  i32.and
                  i64.const 1065
                  i64.const 3202384868132024868
                  local.get $16
                  select
                  local.get $18
                  i64.extend_i32_u
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 15
                  i32.and
                  local.get $0
                  select
                  i32.const 1
                  i32.shl
                  local.tee $16
                  i32.const 2
                  i32.add
                  i32.shl
                  i64.extend_i32_u
                  local.get $3
                  i64.const 23
                  i64.shr_u
                  i64.and
                  i32.const -1
                  local.get $16
                  i32.const 1
                  i32.or
                  i32.shl
                  i32.const -4
                  i32.xor
                  i64.extend_i32_u
                  local.get $3
                  i64.const 24
                  i64.shr_u
                  i64.and
                  i64.or
                  i64.or
                  local.set $8
                  local.get $0
                  if (result i32)
                   local.get $13
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=2176
                  else
                   local.get $13
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=2096
                  end
                  local.set $13
                  local.get $1
                  local.set $0
                  local.get $9
                  i64.sub
                  local.set $11
                  local.get $14
                  local.get $7
                  i64.sub
                  local.set $14
                  local.get $12
                  local.get $5
                  i64.sub
                  local.set $12
                  local.get $17
                  local.get $10
                  i64.sub
                  local.set $17
                  local.get $15
                  local.get $6
                  i64.sub
                  local.set $15
                  local.get $19
                  local.get $4
                  i64.sub
                  local.set $19
                  local.get $9
                  i64.const 18014673391583296
                  i64.mul
                  local.set $20
                  local.get $7
                  i64.const 18014673391583296
                  i64.mul
                  local.set $7
                  local.get $5
                  i64.const 18014673391583296
                  i64.mul
                  local.set $5
                  local.get $10
                  i64.const 18014673391583296
                  i64.mul
                  local.set $10
                  local.get $6
                  i64.const 18014673391583296
                  i64.mul
                  local.set $6
                  local.get $4
                  i64.const 18014673391583296
                  i64.mul
                  local.set $21
                  i32.const 0
                  local.set $16
                  loop $for-loop|31
                   local.get $16
                   i32.const 4
                   i32.lt_s
                   if
                    local.get $0
                    local.get $20
                    local.get $8
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
                    local.get $4
                    i64.const 14
                    i64.shl
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
                    local.get $11
                    i64.mul
                    i64.add
                    local.tee $3
                    local.get $13
                    i64.extend_i32_u
                    local.tee $9
                    local.get $9
                    i64.const 30
                    i64.shl
                    i64.or
                    i64.const 12884901891
                    i64.and
                    local.tee $9
                    local.get $9
                    i64.const 15
                    i64.shl
                    i64.or
                    i64.const 281479271743489
                    i64.and
                    i64.const 65535
                    i64.mul
                    local.tee $9
                    local.get $3
                    local.get $7
                    local.get $4
                    local.get $14
                    i64.mul
                    i64.add
                    i64.xor
                    i64.and
                    i64.xor
                    i64.const 9007336695791648
                    i64.add
                    i64.const 6
                    i64.shr_u
                    i64.const 71777214294589695
                    i64.and
                    local.get $5
                    local.get $4
                    local.get $12
                    i64.mul
                    i64.add
                    local.tee $3
                    local.get $9
                    local.get $3
                    local.get $10
                    local.get $4
                    local.get $17
                    i64.mul
                    i64.add
                    i64.xor
                    i64.and
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
                    local.tee $3
                    i64.const 65535
                    i64.and
                    local.get $6
                    local.get $4
                    local.get $15
                    i64.mul
                    i64.add
                    local.tee $22
                    local.get $9
                    local.get $22
                    local.get $21
                    local.get $4
                    local.get $19
                    i64.mul
                    i64.add
                    i64.xor
                    i64.and
                    i64.xor
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
                    local.get $3
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
                    local.get $3
                    i64.const 32
                    i64.shr_u
                    i64.const 65535
                    i64.and
                    local.get $4
                    i64.const -281474976710656
                    i64.and
                    i64.or
                    local.get $3
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
                    local.get $0
                    local.get $2
                    i32.add
                    local.set $0
                    local.get $8
                    i64.const 8
                    i64.shr_u
                    local.set $8
                    local.get $13
                    i32.const 4
                    i32.shr_u
                    local.set $13
                    local.get $16
                    i32.const 1
                    i32.add
                    local.set $16
                    br $for-loop|31
                   end
                  end
                  br $break|0
                 end
                 local.get $1
                 local.get $4
                 i64.const 20
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 255
                 i32.and
                 i64.extend_i32_u
                 local.tee $9
                 i64.const 18014673391583296
                 i64.mul
                 local.tee $8
                 local.get $4
                 i64.const 28
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 255
                 i32.and
                 i64.extend_i32_u
                 local.get $9
                 i64.sub
                 local.tee $9
                 local.get $3
                 i64.const 3
                 i64.shr_u
                 i64.const 281474976710648
                 i64.and
                 local.get $3
                 i64.const 4
                 i64.shr_u
                 i64.const 3
                 i64.and
                 i64.or
                 local.tee $5
                 i64.const 4095
                 i64.and
                 local.tee $6
                 local.get $6
                 i64.const 26
                 i64.shl
                 i64.or
                 i64.const 270582939711
                 i64.and
                 local.tee $6
                 local.get $6
                 i64.const 13
                 i64.shl
                 i64.or
                 i64.const 1970354902204423
                 i64.and
                 local.tee $6
                 local.get $6
                 i64.const 3
                 i64.shl
                 i64.or
                 local.tee $6
                 local.get $6
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
                 local.get $4
                 i64.const 36
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 255
                 i32.and
                 i64.extend_i32_u
                 local.tee $7
                 i64.const 18014673391583296
                 i64.mul
                 local.tee $6
                 local.get $4
                 i64.const 44
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 255
                 i32.and
                 i64.extend_i32_u
                 local.get $7
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
                 i64.const 8
                 i64.shl
                 i64.or
                 local.tee $10
                 i64.const 65535
                 i64.and
                 local.get $4
                 i64.const 52
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 255
                 i32.and
                 i64.extend_i32_u
                 local.tee $15
                 i64.const 18014673391583296
                 i64.mul
                 local.tee $11
                 local.get $4
                 i64.const 60
                 i64.shr_u
                 i32.wrap_i64
                 local.get $3
                 i64.const 4
                 i64.shl
                 i32.wrap_i64
                 i32.const 240
                 i32.and
                 i32.or
                 i64.extend_i32_u
                 local.get $15
                 i64.sub
                 local.tee $4
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
                 local.tee $3
                 i64.const 4294901760
                 i64.and
                 i64.const 32
                 i64.shl
                 i64.or
                 local.get $10
                 i64.const 4294901760
                 i64.and
                 local.get $3
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
                 local.get $3
                 i64.const -281474976710656
                 i64.and
                 i64.or
                 local.get $10
                 i64.const -281474976710656
                 i64.and
                 local.get $3
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
                 local.get $8
                 local.get $9
                 local.get $5
                 i64.const 12
                 i64.shr_u
                 i64.const 4095
                 i64.and
                 local.tee $3
                 local.get $3
                 i64.const 26
                 i64.shl
                 i64.or
                 i64.const 270582939711
                 i64.and
                 local.tee $3
                 local.get $3
                 i64.const 13
                 i64.shl
                 i64.or
                 i64.const 1970354902204423
                 i64.and
                 local.tee $3
                 local.get $3
                 i64.const 3
                 i64.shl
                 i64.or
                 local.tee $3
                 local.get $3
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
                 local.get $6
                 local.get $7
                 local.get $10
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
                 local.tee $3
                 i64.const 65535
                 i64.and
                 local.get $11
                 local.get $4
                 local.get $10
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
                 local.get $3
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
                 local.get $3
                 i64.const 32
                 i64.shr_u
                 i64.const 65535
                 i64.and
                 local.get $10
                 i64.const -281474976710656
                 i64.and
                 i64.or
                 local.get $3
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
                 local.get $8
                 local.get $9
                 local.get $5
                 i64.const 24
                 i64.shr_u
                 i64.const 4095
                 i64.and
                 local.tee $3
                 local.get $3
                 i64.const 26
                 i64.shl
                 i64.or
                 i64.const 270582939711
                 i64.and
                 local.tee $3
                 local.get $3
                 i64.const 13
                 i64.shl
                 i64.or
                 i64.const 1970354902204423
                 i64.and
                 local.tee $3
                 local.get $3
                 i64.const 3
                 i64.shl
                 i64.or
                 local.tee $3
                 local.get $3
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
                 local.get $6
                 local.get $7
                 local.get $10
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
                 local.tee $3
                 i64.const 65535
                 i64.and
                 local.get $11
                 local.get $4
                 local.get $10
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
                 local.get $3
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
                 local.get $3
                 i64.const 32
                 i64.shr_u
                 i64.const 65535
                 i64.and
                 local.get $10
                 i64.const -281474976710656
                 i64.and
                 i64.or
                 local.get $3
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
                 local.get $8
                 local.get $9
                 local.get $5
                 i64.const 36
                 i64.shr_u
                 i64.const 4095
                 i64.and
                 local.tee $3
                 local.get $3
                 i64.const 26
                 i64.shl
                 i64.or
                 i64.const 270582939711
                 i64.and
                 local.tee $3
                 local.get $3
                 i64.const 13
                 i64.shl
                 i64.or
                 i64.const 1970354902204423
                 i64.and
                 local.tee $3
                 local.get $3
                 i64.const 3
                 i64.shl
                 i64.or
                 local.tee $3
                 local.get $3
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
                 local.get $6
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
                 i64.const 8
                 i64.shl
                 i64.or
                 local.tee $3
                 i64.const 65535
                 i64.and
                 local.get $11
                 local.get $4
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
                 local.tee $4
                 i64.const 4294901760
                 i64.and
                 i64.const 32
                 i64.shl
                 i64.or
                 local.get $3
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
                 local.get $3
                 i64.const 32
                 i64.shr_u
                 i64.const 65535
                 i64.and
                 local.get $4
                 i64.const -281474976710656
                 i64.and
                 i64.or
                 local.get $3
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
                local.get $3
                i64.const 2
                i64.shr_u
                i64.const 1
                i64.and
                local.get $3
                i64.const -16
                i64.and
                local.get $3
                i64.const 1
                i64.shr_u
                i64.const 4
                i64.and
                i64.or
                i64.or
                local.tee $8
                i64.const 13107
                i64.and
                local.tee $9
                local.get $9
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.set $7
                local.get $4
                i64.const 51
                i64.shr_u
                i32.wrap_i64
                i32.const 31
                i32.and
                local.get $4
                i64.const 29
                i64.shr_u
                i32.wrap_i64
                i32.const 127
                i32.and
                i32.const 1
                i32.shl
                i32.load16_u offset=256
                local.tee $16
                i32.const 7
                i32.and
                i32.const 5
                i32.shl
                i32.or
                i32.load8_u offset=1124
                i64.extend_i32_u
                local.get $4
                i64.const 46
                i64.shr_u
                i32.wrap_i64
                i32.const 31
                i32.and
                local.get $4
                i64.const 22
                i64.shr_u
                i32.wrap_i64
                i32.const 127
                i32.and
                i32.const 1
                i32.shl
                i32.load16_u offset=256
                local.tee $0
                i32.const 8
                i32.shr_u
                i32.const 5
                i32.shl
                i32.or
                i32.load8_u offset=1124
                i64.extend_i32_u
                local.tee $10
                i64.sub
                local.set $9
                local.get $1
                local.get $4
                i64.const 36
                i64.shr_u
                i32.wrap_i64
                i32.const 31
                i32.and
                local.get $0
                i32.const 7
                i32.and
                i32.const 5
                i32.shl
                i32.or
                i32.load8_u offset=1124
                i64.extend_i32_u
                local.tee $6
                i64.const 18014673391583296
                i64.mul
                local.tee $5
                local.get $4
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
                i32.load8_u offset=1124
                i64.extend_i32_u
                local.get $6
                i64.sub
                local.tee $6
                local.get $8
                i64.const 2
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $11
                local.get $11
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $11
                local.get $11
                i64.const 12
                i64.shl
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $11
                local.get $11
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                i64.add
                local.tee $12
                local.get $7
                local.get $7
                i64.const 12
                i64.shl
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $7
                local.get $7
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                i64.add
                local.tee $15
                local.get $4
                i64.const 20
                i64.shr_u
                i32.wrap_i64
                i32.const 3
                i32.and
                local.tee $18
                i32.eqz
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
                local.tee $7
                local.get $9
                local.get $12
                local.get $15
                local.get $18
                i32.const 1
                i32.eq
                local.tee $13
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
                local.get $4
                i64.const 56
                i64.shr_u
                i32.wrap_i64
                i32.const 31
                i32.and
                local.get $16
                i32.const 4
                i32.shr_u
                i32.const 7
                i32.and
                i32.const 5
                i32.shl
                i32.or
                i32.load8_u offset=1124
                i64.extend_i32_u
                local.tee $14
                i64.const 18014673391583296
                i64.mul
                local.tee $11
                local.get $4
                i64.const 61
                i64.shr_u
                i32.wrap_i64
                local.get $3
                i64.const 3
                i64.shl
                i32.wrap_i64
                i32.const 24
                i32.and
                i32.or
                local.get $16
                i32.const 8
                i32.shr_u
                i32.const 5
                i32.shl
                i32.or
                i32.load8_u offset=1124
                i64.extend_i32_u
                local.get $14
                i64.sub
                local.tee $4
                local.get $12
                local.get $15
                local.get $18
                i32.const 2
                i32.eq
                local.tee $16
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
                local.tee $3
                i64.const 4294901760
                i64.and
                i64.const 32
                i64.shl
                i64.or
                local.get $10
                i64.const 4294901760
                i64.and
                local.get $3
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
                local.get $3
                i64.const -281474976710656
                i64.and
                i64.or
                local.get $10
                i64.const -281474976710656
                i64.and
                local.get $3
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
                local.get $5
                local.get $6
                local.get $8
                i64.const 18
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $3
                local.get $3
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $3
                local.get $3
                i64.const 12
                i64.shl
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $3
                local.get $3
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                i64.add
                local.tee $10
                local.get $8
                i64.const 16
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $3
                local.get $3
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $3
                local.get $3
                i64.const 12
                i64.shl
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $3
                local.get $3
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                i64.add
                local.tee $12
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
                local.get $7
                local.get $9
                local.get $10
                local.get $12
                local.get $13
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
                local.tee $3
                i64.const 65535
                i64.and
                local.get $11
                local.get $4
                local.get $10
                local.get $12
                local.get $16
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
                local.get $3
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
                local.get $3
                i64.const 32
                i64.shr_u
                i64.const 65535
                i64.and
                local.get $10
                i64.const -281474976710656
                i64.and
                i64.or
                local.get $3
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
                local.get $5
                local.get $6
                local.get $8
                i64.const 34
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $3
                local.get $3
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $3
                local.get $3
                i64.const 12
                i64.shl
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $3
                local.get $3
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                i64.add
                local.tee $10
                local.get $8
                i64.const 32
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $3
                local.get $3
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $3
                local.get $3
                i64.const 12
                i64.shl
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $3
                local.get $3
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                i64.add
                local.tee $12
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
                local.get $7
                local.get $9
                local.get $10
                local.get $12
                local.get $13
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
                local.tee $3
                i64.const 65535
                i64.and
                local.get $11
                local.get $4
                local.get $10
                local.get $12
                local.get $16
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
                local.get $3
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
                local.get $3
                i64.const 32
                i64.shr_u
                i64.const 65535
                i64.and
                local.get $10
                i64.const -281474976710656
                i64.and
                i64.or
                local.get $3
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
                local.get $5
                local.get $6
                local.get $8
                i64.const 50
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $3
                local.get $3
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $3
                local.get $3
                i64.const 12
                i64.shl
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $3
                local.get $3
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                i64.add
                local.tee $5
                local.get $8
                i64.const 48
                i64.shr_u
                i64.const 13107
                i64.and
                local.tee $3
                local.get $3
                i64.const 24
                i64.shl
                i64.or
                i64.const 219043332147
                i64.and
                local.tee $3
                local.get $3
                i64.const 12
                i64.shl
                i64.or
                i64.const 844437815230467
                i64.and
                i64.const 21
                i64.mul
                local.tee $3
                local.get $3
                i64.const 5
                i64.shr_u
                i64.const 281479271743489
                i64.and
                i64.add
                local.tee $8
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
                local.get $7
                local.get $9
                local.get $5
                local.get $8
                local.get $13
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
                local.tee $3
                i64.const 65535
                i64.and
                local.get $11
                local.get $4
                local.get $5
                local.get $8
                local.get $16
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
                local.get $3
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
                local.get $3
                i64.const 32
                i64.shr_u
                i64.const 65535
                i64.and
                local.get $4
                i64.const -281474976710656
                i64.and
                i64.or
                local.get $3
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
               local.get $4
               i64.const 5
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.get $4
               i64.const 13
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               i32.const 8
               i32.shl
               i32.or
               local.get $4
               i64.const 21
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               i32.const 16
               i32.shl
               i32.or
               local.get $4
               i64.const 29
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               i32.const 24
               i32.shl
               i32.or
               local.tee $0
               i64.extend_i32_u
               i64.const 32
               i64.shl
               local.get $0
               i64.extend_i32_u
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
              local.get $4
              i64.const 28
              i64.shr_u
              i32.wrap_i64
              i32.const 31
              i32.and
              local.tee $0
              i32.const 29
              i32.gt_u
              br_if $folding-inner0
              local.get $3
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
              local.tee $13
              i32.const 2
              i32.add
              i32.shl
              i64.extend_i32_u
              local.get $3
              i64.const 31
              i64.shr_u
              i64.and
              i32.const -1
              local.get $13
              i32.const 1
              i32.or
              i32.shl
              i32.const -4
              i32.xor
              i64.extend_i32_u
              local.get $3
              i64.const 32
              i64.shr_u
              i64.and
              i64.or
              i64.or
              local.set $8
              local.get $0
              i32.const 1
              i32.shl
              i32.load16_u offset=2176
              local.set $13
              local.get $3
              i64.const 27
              i64.shl
              local.get $4
              i64.const 37
              i64.shr_u
              i64.or
              i64.const 1085102592571150095
              i64.and
              local.tee $9
              local.get $9
              i64.const 4
              i64.shl
              i64.or
              local.tee $9
              i64.const 255
              i64.and
              local.get $3
              i64.const 31
              i64.shl
              local.get $4
              i64.const 33
              i64.shr_u
              i64.or
              i64.const 1085102592571150095
              i64.and
              local.tee $4
              local.get $4
              i64.const 4
              i64.shl
              i64.or
              local.tee $4
              i64.const 255
              i64.and
              local.tee $3
              i64.sub
              local.set $6
              local.get $9
              i64.const 32
              i64.shr_u
              i64.const 255
              i64.and
              local.get $4
              i64.const 32
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $5
              i64.sub
              local.set $7
              local.get $9
              i64.const 8
              i64.shr_u
              i64.const 255
              i64.and
              local.get $4
              i64.const 8
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $10
              i64.sub
              local.set $11
              local.get $9
              i64.const 40
              i64.shr_u
              i64.const 255
              i64.and
              local.get $4
              i64.const 40
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $12
              i64.sub
              local.set $15
              local.get $9
              i64.const 16
              i64.shr_u
              i64.const 255
              i64.and
              local.get $4
              i64.const 16
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $14
              i64.sub
              local.set $17
              local.get $9
              i64.const 48
              i64.shr_u
              i64.const 255
              i64.and
              local.get $4
              i64.const 48
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $19
              i64.sub
              local.set $20
              local.get $9
              i64.const 24
              i64.shr_u
              i64.const 255
              i64.and
              local.get $4
              i64.const 24
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $21
              i64.sub
              local.set $22
              local.get $9
              i64.const 56
              i64.shr_u
              i64.const 255
              i64.and
              local.get $4
              i64.const 56
              i64.shr_u
              i64.const 255
              i64.and
              local.tee $4
              i64.sub
              local.set $25
              local.get $3
              i64.const 18014673391583296
              i64.mul
              local.set $26
              local.get $5
              i64.const 18014673391583296
              i64.mul
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
              local.get $19
              i64.const 18014673391583296
              i64.mul
              local.set $19
              local.get $21
              i64.const 18014673391583296
              i64.mul
              local.set $21
              local.get $4
              i64.const 18014673391583296
              i64.mul
              local.set $28
              i32.const 0
              local.set $0
              loop $for-loop|54
               local.get $0
               i32.const 4
               i32.lt_s
               if
                local.get $26
                local.get $8
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
                local.get $4
                i64.const 14
                i64.shl
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
                local.get $6
                i64.mul
                i64.add
                local.set $5
                local.get $21
                local.get $4
                local.get $22
                i64.mul
                i64.add
                local.tee $9
                local.get $13
                i64.extend_i32_u
                local.tee $3
                local.get $3
                i64.const 30
                i64.shl
                i64.or
                i64.const 12884901891
                i64.and
                local.tee $3
                local.get $3
                i64.const 15
                i64.shl
                i64.or
                i64.const 281479271743489
                i64.and
                i64.const 65535
                i64.mul
                local.tee $3
                local.get $9
                local.get $28
                local.get $4
                local.get $25
                i64.mul
                i64.add
                i64.xor
                i64.and
                i64.xor
                local.set $9
                local.get $1
                local.get $5
                local.get $3
                local.get $5
                local.get $27
                local.get $4
                local.get $7
                i64.mul
                i64.add
                i64.xor
                i64.and
                i64.xor
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                local.get $10
                local.get $4
                local.get $11
                i64.mul
                i64.add
                local.tee $5
                local.get $3
                local.get $5
                local.get $12
                local.get $4
                local.get $15
                i64.mul
                i64.add
                i64.xor
                i64.and
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
                local.tee $5
                i64.const 65535
                i64.and
                local.get $14
                local.get $4
                local.get $17
                i64.mul
                i64.add
                local.tee $29
                local.get $3
                local.get $29
                local.get $19
                local.get $4
                local.get $20
                i64.mul
                i64.add
                i64.xor
                i64.and
                i64.xor
                i64.const 9007336695791648
                i64.add
                i64.const 6
                i64.shr_u
                i64.const 71777214294589695
                i64.and
                local.get $9
                i64.const 5
                i64.shr_u
                i64.const 143835907860922879
                i64.and
                local.get $9
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
                local.get $9
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
                local.get $5
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
                local.get $5
                i64.const 32
                i64.shr_u
                i64.const 65535
                i64.and
                local.get $4
                i64.const -281474976710656
                i64.and
                i64.or
                local.get $5
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
                local.get $1
                local.get $2
                i32.add
                local.set $1
                local.get $8
                i64.const 8
                i64.shr_u
                local.set $8
                local.get $13
                i32.const 4
                i32.shr_u
                local.set $13
                local.get $0
                i32.const 1
                i32.add
                local.set $0
                br $for-loop|54
               end
              end
              br $break|0
             end
             local.get $3
             i64.const -16
             i64.and
             local.get $3
             i64.const 1
             i64.shr_u
             i64.const 7
             i64.and
             i64.or
             local.set $8
             local.get $4
             i64.const 33
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.get $4
             i64.const 20
             i64.shr_u
             i32.wrap_i64
             i32.const 255
             i32.and
             i32.const 1
             i32.shl
             i32.load16_u offset=512
             local.tee $0
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=1076
             i64.extend_i32_u
             local.set $9
             local.get $4
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
             i32.load8_u offset=1076
             i64.extend_i32_u
             local.get $9
             i64.sub
             local.set $5
             local.get $4
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
             i32.load8_u offset=1076
             i64.extend_i32_u
             local.get $4
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
             i32.load8_u offset=1076
             i64.extend_i32_u
             local.tee $6
             i64.sub
             local.set $7
             local.get $4
             i64.const 53
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.get $4
             i64.const 28
             i64.shr_u
             i32.wrap_i64
             i32.const 31
             i32.and
             i32.const 1
             i32.shl
             i32.load16_u offset=512
             local.tee $13
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=1076
             i64.extend_i32_u
             local.get $4
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
             i32.load8_u offset=1076
             i64.extend_i32_u
             local.tee $10
             i64.sub
             local.set $11
             local.get $4
             i64.const 61
             i64.shr_u
             i32.wrap_i64
             local.get $3
             i64.const 3
             i64.shl
             i32.wrap_i64
             i32.const 8
             i32.and
             i32.or
             local.get $13
             i32.const 4
             i32.shr_u
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=1076
             i64.extend_i32_u
             local.get $4
             i64.const 57
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.get $13
             i32.const 2
             i32.shr_u
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=1076
             i64.extend_i32_u
             local.tee $4
             i64.sub
             local.set $12
             local.get $9
             i64.const 18014673391583296
             i64.mul
             local.set $15
             local.get $6
             i64.const 18014673391583296
             i64.mul
             local.set $6
             local.get $10
             i64.const 18014673391583296
             i64.mul
             local.set $10
             local.get $4
             i64.const 18014673391583296
             i64.mul
             local.set $14
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
               local.get $14
               local.get $8
               i64.const 65535
               i64.and
               local.tee $4
               local.get $4
               i64.const 24
               i64.shl
               i64.or
               i64.const 1095216660735
               i64.and
               local.tee $4
               local.get $4
               i64.const 12
               i64.shl
               i64.or
               i64.const 4222189076152335
               i64.and
               local.tee $4
               i64.const 2
               i64.shl
               local.get $4
               i64.const 2
               i64.shr_u
               i64.or
               i64.const 17733194119839807
               i64.and
               local.tee $4
               local.get $4
               i64.const 5
               i64.shr_u
               i64.const 281479271743489
               i64.and
               i64.add
               local.tee $4
               local.get $12
               i64.mul
               i64.add
               local.set $3
               local.get $0
               local.get $15
               local.get $4
               local.get $5
               i64.mul
               i64.add
               i64.const 9007336695791648
               i64.add
               i64.const 6
               i64.shr_u
               i64.const 71777214294589695
               i64.and
               local.get $6
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
               i64.const 8
               i64.shl
               i64.or
               local.tee $9
               i64.const 65535
               i64.and
               local.get $10
               local.get $4
               local.get $11
               i64.mul
               i64.add
               i64.const 9007336695791648
               i64.add
               i64.const 6
               i64.shr_u
               i64.const 71777214294589695
               i64.and
               local.get $3
               i64.const 5
               i64.shr_u
               i64.const 143835907860922879
               i64.and
               local.get $3
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
               local.get $3
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
               local.get $9
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
               local.get $9
               i64.const 32
               i64.shr_u
               i64.const 65535
               i64.and
               local.get $4
               i64.const -281474976710656
               i64.and
               i64.or
               local.get $9
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
               local.get $0
               local.get $2
               i32.add
               local.set $0
               local.get $8
               i64.const 16
               i64.shr_u
               local.set $8
               br $while-continue|56
              end
             end
             br $break|0
            end
            local.get $3
            i64.const 2
            i64.shr_u
            i64.const 1
            i64.and
            local.get $3
            i64.const -16
            i64.and
            local.get $3
            i64.const 1
            i64.shr_u
            i64.const 4
            i64.and
            i64.or
            i64.or
            local.tee $8
            i64.const 13107
            i64.and
            local.tee $9
            local.get $9
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.set $6
            local.get $4
            i64.const 19
            i64.shr_u
            i32.wrap_i64
            i32.const 3
            i32.and
            local.tee $16
            i32.eqz
            local.set $0
            local.get $4
            i64.const 58
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $4
            i64.const 29
            i64.shr_u
            i32.wrap_i64
            i32.const 31
            i32.and
            i32.const 1
            i32.shl
            i32.load16_u offset=512
            local.tee $24
            i32.const 2
            i32.shr_u
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=1076
            i64.extend_i32_u
            local.tee $5
            i64.const 18014673391583296
            i64.mul
            local.tee $9
            local.get $4
            i64.const 62
            i64.shr_u
            i32.wrap_i64
            local.get $3
            i64.const 2
            i64.shl
            i32.wrap_i64
            i32.const 12
            i32.and
            i32.or
            local.get $24
            i32.const 4
            i32.shr_u
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=1076
            i64.extend_i32_u
            local.get $5
            i64.sub
            local.tee $3
            local.get $8
            i64.const 2
            i64.shr_u
            i64.const 13107
            i64.and
            local.tee $5
            local.get $5
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $5
            local.get $5
            i64.const 12
            i64.shl
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $5
            local.get $5
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            i64.add
            local.tee $5
            local.get $6
            local.get $6
            i64.const 12
            i64.shl
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $6
            local.get $6
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            i64.add
            local.tee $6
            local.get $16
            i32.const 3
            i32.eq
            local.tee $18
            select
            i64.mul
            i64.add
            local.set $7
            local.get $1
            local.get $4
            i64.const 34
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $4
            i64.const 21
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            i32.const 1
            i32.shl
            i32.load16_u offset=512
            local.tee $13
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=1076
            i64.extend_i32_u
            local.tee $11
            i64.const 18014673391583296
            i64.mul
            local.tee $10
            local.get $4
            i64.const 38
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $13
            i32.const 2
            i32.shr_u
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=1076
            i64.extend_i32_u
            local.get $11
            i64.sub
            local.tee $11
            local.get $5
            local.get $6
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
            local.get $4
            i64.const 42
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $13
            i32.const 4
            i32.shr_u
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=1076
            i64.extend_i32_u
            local.tee $15
            i64.const 18014673391583296
            i64.mul
            local.tee $12
            local.get $4
            i64.const 46
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $13
            i32.const 6
            i32.shr_u
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=1076
            i64.extend_i32_u
            local.get $15
            i64.sub
            local.tee $15
            local.get $5
            local.get $6
            local.get $16
            i32.const 1
            i32.eq
            local.tee $23
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
            local.tee $14
            i64.const 65535
            i64.and
            local.get $4
            i64.const 50
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $13
            i32.const 8
            i32.shr_u
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=1076
            i64.extend_i32_u
            local.tee $19
            i64.const 18014673391583296
            i64.mul
            local.tee $17
            local.get $4
            i64.const 54
            i64.shr_u
            i32.wrap_i64
            i32.const 15
            i32.and
            local.get $24
            i32.const 3
            i32.and
            i32.const 4
            i32.shl
            i32.or
            i32.load8_u offset=1076
            i64.extend_i32_u
            local.get $19
            i64.sub
            local.tee $4
            local.get $5
            local.get $6
            local.get $16
            i32.const 2
            i32.eq
            local.tee $13
            select
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
            local.tee $5
            i64.const 4294901760
            i64.and
            i64.const 32
            i64.shl
            i64.or
            local.get $14
            i64.const 4294901760
            i64.and
            local.get $5
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
            local.get $5
            i64.const -281474976710656
            i64.and
            i64.or
            local.get $14
            i64.const -281474976710656
            i64.and
            local.get $5
            i64.const 281470681743360
            i64.and
            i64.or
            i64.const 16
            i64.shr_u
            i64.or
            i64.store offset=8
            local.get $9
            local.get $3
            local.get $8
            i64.const 18
            i64.shr_u
            i64.const 13107
            i64.and
            local.tee $5
            local.get $5
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $5
            local.get $5
            i64.const 12
            i64.shl
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $5
            local.get $5
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            i64.add
            local.tee $5
            local.get $8
            i64.const 16
            i64.shr_u
            i64.const 13107
            i64.and
            local.tee $6
            local.get $6
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $6
            local.get $6
            i64.const 12
            i64.shl
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $6
            local.get $6
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            i64.add
            local.tee $6
            local.get $18
            select
            i64.mul
            i64.add
            local.set $7
            local.get $1
            local.get $2
            i32.add
            local.tee $1
            local.get $10
            local.get $11
            local.get $5
            local.get $6
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
            local.get $12
            local.get $15
            local.get $5
            local.get $6
            local.get $23
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
            local.tee $14
            i64.const 65535
            i64.and
            local.get $17
            local.get $4
            local.get $5
            local.get $6
            local.get $13
            select
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
            local.tee $5
            i64.const 4294901760
            i64.and
            i64.const 32
            i64.shl
            i64.or
            local.get $14
            i64.const 4294901760
            i64.and
            local.get $5
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
            local.get $5
            i64.const -281474976710656
            i64.and
            i64.or
            local.get $14
            i64.const -281474976710656
            i64.and
            local.get $5
            i64.const 281470681743360
            i64.and
            i64.or
            i64.const 16
            i64.shr_u
            i64.or
            i64.store offset=8
            local.get $9
            local.get $3
            local.get $8
            i64.const 34
            i64.shr_u
            i64.const 13107
            i64.and
            local.tee $5
            local.get $5
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $5
            local.get $5
            i64.const 12
            i64.shl
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $5
            local.get $5
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            i64.add
            local.tee $5
            local.get $8
            i64.const 32
            i64.shr_u
            i64.const 13107
            i64.and
            local.tee $6
            local.get $6
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $6
            local.get $6
            i64.const 12
            i64.shl
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $6
            local.get $6
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            i64.add
            local.tee $6
            local.get $18
            select
            i64.mul
            i64.add
            local.set $7
            local.get $1
            local.get $2
            i32.add
            local.tee $1
            local.get $10
            local.get $11
            local.get $5
            local.get $6
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
            local.get $12
            local.get $15
            local.get $5
            local.get $6
            local.get $23
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
            local.tee $14
            i64.const 65535
            i64.and
            local.get $17
            local.get $4
            local.get $5
            local.get $6
            local.get $13
            select
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
            local.tee $5
            i64.const 4294901760
            i64.and
            i64.const 32
            i64.shl
            i64.or
            local.get $14
            i64.const 4294901760
            i64.and
            local.get $5
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
            local.get $5
            i64.const -281474976710656
            i64.and
            i64.or
            local.get $14
            i64.const -281474976710656
            i64.and
            local.get $5
            i64.const 281470681743360
            i64.and
            i64.or
            i64.const 16
            i64.shr_u
            i64.or
            i64.store offset=8
            local.get $9
            local.get $3
            local.get $8
            i64.const 50
            i64.shr_u
            i64.const 13107
            i64.and
            local.tee $3
            local.get $3
            i64.const 24
            i64.shl
            i64.or
            i64.const 219043332147
            i64.and
            local.tee $3
            local.get $3
            i64.const 12
            i64.shl
            i64.or
            i64.const 844437815230467
            i64.and
            i64.const 21
            i64.mul
            local.tee $3
            local.get $3
            i64.const 5
            i64.shr_u
            i64.const 281479271743489
            i64.and
            i64.add
            local.tee $3
            local.get $8
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
            local.get $8
            i64.const 12
            i64.shl
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
            local.get $18
            select
            i64.mul
            i64.add
            local.set $9
            local.get $1
            local.get $2
            i32.add
            local.tee $1
            local.get $10
            local.get $11
            local.get $3
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
            local.get $12
            local.get $15
            local.get $3
            local.get $8
            local.get $23
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
            local.tee $5
            i64.const 65535
            i64.and
            local.get $17
            local.get $4
            local.get $3
            local.get $8
            local.get $13
            select
            i64.mul
            i64.add
            i64.const 9007336695791648
            i64.add
            i64.const 6
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            local.get $9
            i64.const 5
            i64.shr_u
            i64.const 143835907860922879
            i64.and
            local.get $9
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
            local.get $9
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
            local.get $5
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
            local.get $5
            i64.const 32
            i64.shr_u
            i64.const 65535
            i64.and
            local.get $4
            i64.const -281474976710656
            i64.and
            i64.or
            local.get $5
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
           local.get $3
           i64.const 5
           i64.shr_u
           i32.wrap_i64
           i32.const 63
           i32.and
           local.get $4
           i64.const 28
           i64.shr_u
           i32.wrap_i64
           i32.const 31
           i32.and
           i32.const 1
           i32.shl
           i32.load16_u offset=512
           local.tee $13
           i32.const 2
           i32.shr_u
           i32.const 3
           i32.and
           i32.const 6
           i32.shl
           i32.or
           i32.load8_u offset=1284
           i64.extend_i32_u
           local.tee $6
           i64.const 18014673391583296
           i64.mul
           local.tee $8
           local.get $3
           i64.const 16
           i64.shr_u
           i64.const 281474976710648
           i64.and
           local.get $3
           i64.const 17
           i64.shr_u
           i64.const 3
           i64.and
           i64.or
           local.tee $9
           i64.const 4095
           i64.and
           local.tee $5
           local.get $5
           i64.const 26
           i64.shl
           i64.or
           i64.const 270582939711
           i64.and
           local.tee $5
           local.get $5
           i64.const 13
           i64.shl
           i64.or
           i64.const 1970354902204423
           i64.and
           local.tee $5
           local.get $5
           i64.const 3
           i64.shl
           i64.or
           local.tee $5
           local.get $5
           i64.const 5
           i64.shr_u
           i64.const 281479271743489
           i64.and
           i64.add
           local.tee $5
           local.get $3
           i64.const 11
           i64.shr_u
           i32.wrap_i64
           i32.const 63
           i32.and
           local.get $13
           i32.const 4
           i32.shr_u
           i32.const 3
           i32.and
           i32.const 6
           i32.shl
           i32.or
           i32.load8_u offset=1284
           i64.extend_i32_u
           local.get $6
           i64.sub
           local.tee $6
           i64.mul
           i64.add
           local.set $7
           local.get $1
           local.get $4
           i64.const 33
           i64.shr_u
           i32.wrap_i64
           i32.const 63
           i32.and
           local.get $4
           i64.const 20
           i64.shr_u
           i32.wrap_i64
           i32.const 255
           i32.and
           i32.const 1
           i32.shl
           i32.load16_u offset=512
           local.tee $0
           i32.const 3
           i32.and
           i32.const 6
           i32.shl
           i32.or
           i32.load8_u offset=1284
           i64.extend_i32_u
           local.tee $11
           i64.const 18014673391583296
           i64.mul
           local.tee $10
           local.get $5
           local.get $4
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
           i32.load8_u offset=1284
           i64.extend_i32_u
           local.get $11
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
           local.get $4
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
           i32.load8_u offset=1284
           i64.extend_i32_u
           local.tee $15
           i64.const 18014673391583296
           i64.mul
           local.tee $12
           local.get $5
           local.get $4
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
           i32.load8_u offset=1284
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
           i64.const 8
           i64.shl
           i64.or
           local.tee $14
           i64.const 65535
           i64.and
           local.get $4
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
           i32.load8_u offset=1284
           i64.extend_i32_u
           local.tee $19
           i64.const 18014673391583296
           i64.mul
           local.tee $17
           local.get $5
           local.get $4
           i64.const 63
           i64.shr_u
           i32.wrap_i64
           local.get $3
           i64.const 1
           i64.shl
           i32.wrap_i64
           i32.const 62
           i32.and
           i32.or
           local.get $13
           i32.const 3
           i32.and
           i32.const 6
           i32.shl
           i32.or
           i32.load8_u offset=1284
           i64.extend_i32_u
           local.get $19
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
           local.get $7
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
           local.tee $3
           i64.const 4294901760
           i64.and
           i64.const 32
           i64.shl
           i64.or
           local.get $14
           i64.const 4294901760
           i64.and
           local.get $3
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
           local.get $3
           i64.const -281474976710656
           i64.and
           i64.or
           local.get $14
           i64.const -281474976710656
           i64.and
           local.get $3
           i64.const 281470681743360
           i64.and
           i64.or
           i64.const 16
           i64.shr_u
           i64.or
           i64.store offset=8
           local.get $8
           local.get $6
           local.get $9
           i64.const 12
           i64.shr_u
           i64.const 4095
           i64.and
           local.tee $3
           local.get $3
           i64.const 26
           i64.shl
           i64.or
           i64.const 270582939711
           i64.and
           local.tee $3
           local.get $3
           i64.const 13
           i64.shl
           i64.or
           i64.const 1970354902204423
           i64.and
           local.tee $3
           local.get $3
           i64.const 3
           i64.shl
           i64.or
           local.tee $3
           local.get $3
           i64.const 5
           i64.shr_u
           i64.const 281479271743489
           i64.and
           i64.add
           local.tee $3
           i64.mul
           i64.add
           local.set $5
           local.get $1
           local.get $2
           i32.add
           local.tee $0
           local.get $10
           local.get $3
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
           local.get $3
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
           local.tee $7
           i64.const 65535
           i64.and
           local.get $17
           local.get $3
           local.get $4
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           local.get $5
           i64.const 5
           i64.shr_u
           i64.const 143835907860922879
           i64.and
           local.get $5
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
           local.get $5
           i64.const 6
           i64.shr_u
           i64.add
           i64.const 71777214294589695
           i64.and
           i64.const 8
           i64.shl
           i64.or
           local.tee $3
           i64.const 4294901760
           i64.and
           i64.const 32
           i64.shl
           i64.or
           local.get $7
           i64.const 4294901760
           i64.and
           local.get $3
           i64.const 65535
           i64.and
           i64.or
           i64.const 16
           i64.shl
           i64.or
           i64.store
           local.get $0
           local.get $7
           i64.const 32
           i64.shr_u
           i64.const 65535
           i64.and
           local.get $3
           i64.const -281474976710656
           i64.and
           i64.or
           local.get $7
           i64.const -281474976710656
           i64.and
           local.get $3
           i64.const 281470681743360
           i64.and
           i64.or
           i64.const 16
           i64.shr_u
           i64.or
           i64.store offset=8
           local.get $8
           local.get $6
           local.get $9
           i64.const 24
           i64.shr_u
           i64.const 4095
           i64.and
           local.tee $3
           local.get $3
           i64.const 26
           i64.shl
           i64.or
           i64.const 270582939711
           i64.and
           local.tee $3
           local.get $3
           i64.const 13
           i64.shl
           i64.or
           i64.const 1970354902204423
           i64.and
           local.tee $3
           local.get $3
           i64.const 3
           i64.shl
           i64.or
           local.tee $3
           local.get $3
           i64.const 5
           i64.shr_u
           i64.const 281479271743489
           i64.and
           i64.add
           local.tee $3
           i64.mul
           i64.add
           local.set $5
           local.get $0
           local.get $2
           i32.add
           local.tee $0
           local.get $10
           local.get $3
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
           local.get $3
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
           local.tee $7
           i64.const 65535
           i64.and
           local.get $17
           local.get $3
           local.get $4
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           local.get $5
           i64.const 5
           i64.shr_u
           i64.const 143835907860922879
           i64.and
           local.get $5
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
           local.get $5
           i64.const 6
           i64.shr_u
           i64.add
           i64.const 71777214294589695
           i64.and
           i64.const 8
           i64.shl
           i64.or
           local.tee $3
           i64.const 4294901760
           i64.and
           i64.const 32
           i64.shl
           i64.or
           local.get $7
           i64.const 4294901760
           i64.and
           local.get $3
           i64.const 65535
           i64.and
           i64.or
           i64.const 16
           i64.shl
           i64.or
           i64.store
           local.get $0
           local.get $7
           i64.const 32
           i64.shr_u
           i64.const 65535
           i64.and
           local.get $3
           i64.const -281474976710656
           i64.and
           i64.or
           local.get $7
           i64.const -281474976710656
           i64.and
           local.get $3
           i64.const 281470681743360
           i64.and
           i64.or
           i64.const 16
           i64.shr_u
           i64.or
           i64.store offset=8
           local.get $8
           local.get $6
           local.get $9
           i64.const 36
           i64.shr_u
           i64.const 4095
           i64.and
           local.tee $3
           local.get $3
           i64.const 26
           i64.shl
           i64.or
           i64.const 270582939711
           i64.and
           local.tee $3
           local.get $3
           i64.const 13
           i64.shl
           i64.or
           i64.const 1970354902204423
           i64.and
           local.tee $3
           local.get $3
           i64.const 3
           i64.shl
           i64.or
           local.tee $3
           local.get $3
           i64.const 5
           i64.shr_u
           i64.const 281479271743489
           i64.and
           i64.add
           local.tee $3
           i64.mul
           i64.add
           local.set $8
           local.get $0
           local.get $2
           i32.add
           local.tee $0
           local.get $10
           local.get $3
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
           local.get $3
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
           local.tee $9
           i64.const 65535
           i64.and
           local.get $17
           local.get $3
           local.get $4
           i64.mul
           i64.add
           i64.const 9007336695791648
           i64.add
           i64.const 6
           i64.shr_u
           i64.const 71777214294589695
           i64.and
           local.get $8
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
           local.tee $4
           i64.const 4294901760
           i64.and
           i64.const 32
           i64.shl
           i64.or
           local.get $9
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
           local.get $9
           i64.const 32
           i64.shr_u
           i64.const 65535
           i64.and
           local.get $4
           i64.const -281474976710656
           i64.and
           i64.or
           local.get $9
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
          local.get $3
          i64.const 28
          i64.shr_u
          i64.const 4294967292
          i64.and
          local.tee $8
          i64.const 85
          i64.and
          local.set $7
          local.get $1
          local.get $4
          i64.const 30
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          local.tee $5
          i64.const 281479271743489
          i64.mul
          local.tee $9
          local.get $5
          local.get $4
          i64.const 38
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          i64.xor
          i64.const 281479271743489
          i64.mul
          local.tee $5
          local.get $8
          i64.const 1
          i64.shr_u
          i64.const 85
          i64.and
          local.tee $6
          local.get $6
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $6
          local.get $6
          i64.const 14
          i64.shl
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $6
          local.get $7
          local.get $7
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $7
          local.get $7
          i64.const 14
          i64.shl
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $7
          local.get $4
          i64.const 28
          i64.shr_u
          i32.wrap_i64
          i32.const 3
          i32.and
          local.tee $0
          i32.eqz
          local.tee $13
          select
          i64.and
          i64.xor
          local.get $4
          i64.const 46
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          local.tee $11
          i64.const 72058693566333184
          i64.mul
          local.tee $10
          local.get $11
          local.get $4
          i64.const 54
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          i64.xor
          i64.const 72058693566333184
          i64.mul
          local.tee $11
          local.get $6
          local.get $7
          local.get $0
          i32.const 1
          i32.eq
          local.tee $16
          select
          i64.and
          i64.xor
          i64.or
          local.tee $12
          i64.const 65535
          i64.and
          local.get $4
          i64.const 62
          i64.shr_u
          i32.wrap_i64
          local.get $3
          i64.const 2
          i64.shl
          i32.wrap_i64
          i32.const 252
          i32.and
          i32.or
          i64.extend_i32_u
          local.tee $15
          i64.const 281479271743489
          i64.mul
          local.tee $4
          local.get $15
          local.get $3
          i64.const 6
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          i64.xor
          i64.const 281479271743489
          i64.mul
          local.tee $15
          local.get $6
          local.get $7
          local.get $0
          i32.const 2
          i32.eq
          local.tee $18
          select
          i64.and
          i64.xor
          local.get $3
          i64.const 14
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          local.tee $17
          i64.const 72058693566333184
          i64.mul
          local.tee $14
          local.get $17
          local.get $3
          i64.const 22
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i64.extend_i32_u
          i64.xor
          i64.const 72058693566333184
          i64.mul
          local.tee $3
          local.get $6
          local.get $7
          local.get $0
          i32.const 3
          i32.eq
          local.tee $0
          select
          i64.and
          i64.xor
          i64.or
          local.tee $6
          i64.const 4294901760
          i64.and
          i64.const 32
          i64.shl
          i64.or
          local.get $12
          i64.const 4294901760
          i64.and
          local.get $6
          i64.const 65535
          i64.and
          i64.or
          i64.const 16
          i64.shl
          i64.or
          i64.store
          local.get $1
          local.get $12
          i64.const 32
          i64.shr_u
          i64.const 65535
          i64.and
          local.get $6
          i64.const -281474976710656
          i64.and
          i64.or
          local.get $12
          i64.const -281474976710656
          i64.and
          local.get $6
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
          local.get $9
          local.get $5
          local.get $8
          i64.const 9
          i64.shr_u
          i64.const 85
          i64.and
          local.tee $6
          local.get $6
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $6
          local.get $6
          i64.const 14
          i64.shl
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $6
          local.get $8
          i64.const 8
          i64.shr_u
          i64.const 85
          i64.and
          local.tee $7
          local.get $7
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $7
          local.get $7
          i64.const 14
          i64.shl
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $7
          local.get $13
          select
          i64.and
          i64.xor
          local.get $10
          local.get $11
          local.get $6
          local.get $7
          local.get $16
          select
          i64.and
          i64.xor
          i64.or
          local.tee $12
          i64.const 65535
          i64.and
          local.get $4
          local.get $15
          local.get $6
          local.get $7
          local.get $18
          select
          i64.and
          i64.xor
          local.get $14
          local.get $3
          local.get $6
          local.get $7
          local.get $0
          select
          i64.and
          i64.xor
          i64.or
          local.tee $6
          i64.const 4294901760
          i64.and
          i64.const 32
          i64.shl
          i64.or
          local.get $12
          i64.const 4294901760
          i64.and
          local.get $6
          i64.const 65535
          i64.and
          i64.or
          i64.const 16
          i64.shl
          i64.or
          i64.store
          local.get $1
          local.get $12
          i64.const 32
          i64.shr_u
          i64.const 65535
          i64.and
          local.get $6
          i64.const -281474976710656
          i64.and
          i64.or
          local.get $12
          i64.const -281474976710656
          i64.and
          local.get $6
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
          local.get $9
          local.get $5
          local.get $8
          i64.const 17
          i64.shr_u
          i64.const 85
          i64.and
          local.tee $6
          local.get $6
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $6
          local.get $6
          i64.const 14
          i64.shl
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $6
          local.get $8
          i64.const 16
          i64.shr_u
          i64.const 85
          i64.and
          local.tee $7
          local.get $7
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $7
          local.get $7
          i64.const 14
          i64.shl
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $7
          local.get $13
          select
          i64.and
          i64.xor
          local.get $10
          local.get $11
          local.get $6
          local.get $7
          local.get $16
          select
          i64.and
          i64.xor
          i64.or
          local.tee $12
          i64.const 65535
          i64.and
          local.get $4
          local.get $15
          local.get $6
          local.get $7
          local.get $18
          select
          i64.and
          i64.xor
          local.get $14
          local.get $3
          local.get $6
          local.get $7
          local.get $0
          select
          i64.and
          i64.xor
          i64.or
          local.tee $6
          i64.const 4294901760
          i64.and
          i64.const 32
          i64.shl
          i64.or
          local.get $12
          i64.const 4294901760
          i64.and
          local.get $6
          i64.const 65535
          i64.and
          i64.or
          i64.const 16
          i64.shl
          i64.or
          i64.store
          local.get $1
          local.get $12
          i64.const 32
          i64.shr_u
          i64.const 65535
          i64.and
          local.get $6
          i64.const -281474976710656
          i64.and
          i64.or
          local.get $12
          i64.const -281474976710656
          i64.and
          local.get $6
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
          local.get $9
          local.get $5
          local.get $8
          i64.const 25
          i64.shr_u
          i64.const 85
          i64.and
          local.tee $9
          local.get $9
          i64.const 28
          i64.shl
          i64.or
          i64.const 21474836485
          i64.and
          local.tee $9
          local.get $9
          i64.const 14
          i64.shl
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $9
          local.get $8
          i64.const 24
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
          local.get $8
          i64.const 14
          i64.shl
          i64.or
          i64.const 281479271743489
          i64.and
          i64.const 65535
          i64.mul
          local.tee $8
          local.get $13
          select
          i64.and
          i64.xor
          local.get $10
          local.get $11
          local.get $9
          local.get $8
          local.get $16
          select
          i64.and
          i64.xor
          i64.or
          local.tee $5
          i64.const 65535
          i64.and
          local.get $4
          local.get $15
          local.get $9
          local.get $8
          local.get $18
          select
          i64.and
          i64.xor
          local.get $14
          local.get $3
          local.get $9
          local.get $8
          local.get $0
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
          local.get $5
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
          local.get $5
          i64.const 32
          i64.shr_u
          i64.const 65535
          i64.and
          local.get $4
          i64.const -281474976710656
          i64.and
          i64.or
          local.get $5
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
         local.get $3
         i64.const 12
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_u
         local.tee $6
         i64.const 18014673391583296
         i64.mul
         local.tee $8
         local.get $3
         i64.const 27
         i64.shr_u
         i64.const 4294967292
         i64.and
         local.get $3
         i64.const 28
         i64.shr_u
         i64.const 1
         i64.and
         i64.or
         local.tee $9
         i64.const 255
         i64.and
         local.tee $5
         local.get $5
         i64.const 28
         i64.shl
         i64.or
         i64.const 64424509455
         i64.and
         local.tee $5
         local.get $5
         i64.const 14
         i64.shl
         i64.or
         i64.const 844437815230467
         i64.and
         i64.const 21
         i64.mul
         local.tee $5
         local.get $5
         i64.const 5
         i64.shr_u
         i64.const 281479271743489
         i64.and
         i64.add
         local.tee $5
         local.get $3
         i64.const 20
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_u
         local.get $6
         i64.sub
         local.tee $6
         i64.mul
         i64.add
         local.set $7
         local.get $1
         local.get $4
         i64.const 28
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_u
         local.tee $11
         i64.const 18014673391583296
         i64.mul
         local.tee $10
         local.get $5
         local.get $4
         i64.const 36
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
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         local.get $4
         i64.const 44
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_u
         local.tee $15
         i64.const 18014673391583296
         i64.mul
         local.tee $12
         local.get $5
         local.get $4
         i64.const 52
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
         i64.const 8
         i64.shl
         i64.or
         local.tee $14
         i64.const 65535
         i64.and
         local.get $4
         i64.const 60
         i64.shr_u
         i32.wrap_i64
         local.get $3
         i64.const 4
         i64.shl
         i32.wrap_i64
         i32.const 240
         i32.and
         i32.or
         i64.extend_i32_u
         local.tee $17
         i64.const 18014673391583296
         i64.mul
         local.tee $4
         local.get $5
         local.get $3
         i64.const 4
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i64.extend_i32_u
         local.get $17
         i64.sub
         local.tee $3
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
         local.tee $5
         i64.const 4294901760
         i64.and
         i64.const 32
         i64.shl
         i64.or
         local.get $14
         i64.const 4294901760
         i64.and
         local.get $5
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
         local.get $5
         i64.const -281474976710656
         i64.and
         i64.or
         local.get $14
         i64.const -281474976710656
         i64.and
         local.get $5
         i64.const 281470681743360
         i64.and
         i64.or
         i64.const 16
         i64.shr_u
         i64.or
         i64.store offset=8
         local.get $8
         local.get $6
         local.get $9
         i64.const 8
         i64.shr_u
         i64.const 255
         i64.and
         local.tee $5
         local.get $5
         i64.const 28
         i64.shl
         i64.or
         i64.const 64424509455
         i64.and
         local.tee $5
         local.get $5
         i64.const 14
         i64.shl
         i64.or
         i64.const 844437815230467
         i64.and
         i64.const 21
         i64.mul
         local.tee $5
         local.get $5
         i64.const 5
         i64.shr_u
         i64.const 281479271743489
         i64.and
         i64.add
         local.tee $5
         i64.mul
         i64.add
         local.set $7
         local.get $1
         local.get $2
         i32.add
         local.tee $0
         local.get $10
         local.get $5
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
         local.get $5
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
         local.tee $14
         i64.const 65535
         i64.and
         local.get $4
         local.get $3
         local.get $5
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
         local.tee $5
         i64.const 4294901760
         i64.and
         i64.const 32
         i64.shl
         i64.or
         local.get $14
         i64.const 4294901760
         i64.and
         local.get $5
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
         local.get $5
         i64.const -281474976710656
         i64.and
         i64.or
         local.get $14
         i64.const -281474976710656
         i64.and
         local.get $5
         i64.const 281470681743360
         i64.and
         i64.or
         i64.const 16
         i64.shr_u
         i64.or
         i64.store offset=8
         local.get $8
         local.get $6
         local.get $9
         i64.const 16
         i64.shr_u
         i64.const 255
         i64.and
         local.tee $5
         local.get $5
         i64.const 28
         i64.shl
         i64.or
         i64.const 64424509455
         i64.and
         local.tee $5
         local.get $5
         i64.const 14
         i64.shl
         i64.or
         i64.const 844437815230467
         i64.and
         i64.const 21
         i64.mul
         local.tee $5
         local.get $5
         i64.const 5
         i64.shr_u
         i64.const 281479271743489
         i64.and
         i64.add
         local.tee $5
         i64.mul
         i64.add
         local.set $7
         local.get $0
         local.get $2
         i32.add
         local.tee $0
         local.get $10
         local.get $5
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
         local.get $5
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
         local.tee $14
         i64.const 65535
         i64.and
         local.get $4
         local.get $3
         local.get $5
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
         local.tee $5
         i64.const 4294901760
         i64.and
         i64.const 32
         i64.shl
         i64.or
         local.get $14
         i64.const 4294901760
         i64.and
         local.get $5
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
         local.get $5
         i64.const -281474976710656
         i64.and
         i64.or
         local.get $14
         i64.const -281474976710656
         i64.and
         local.get $5
         i64.const 281470681743360
         i64.and
         i64.or
         i64.const 16
         i64.shr_u
         i64.or
         i64.store offset=8
         local.get $8
         local.get $6
         local.get $9
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
         local.get $8
         i64.const 14
         i64.shl
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
         local.set $9
         local.get $0
         local.get $2
         i32.add
         local.tee $0
         local.get $10
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
         local.get $12
         local.get $8
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
         local.tee $5
         i64.const 65535
         i64.and
         local.get $4
         local.get $3
         local.get $8
         i64.mul
         i64.add
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         local.get $9
         i64.const 5
         i64.shr_u
         i64.const 143835907860922879
         i64.and
         local.get $9
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
         local.get $9
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
         local.get $5
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
         local.get $5
         i64.const 32
         i64.shr_u
         i64.const 65535
         i64.and
         local.get $4
         i64.const -281474976710656
         i64.and
         i64.or
         local.get $5
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
        local.get $4
        i64.const 46
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_u
        local.tee $9
        i64.const 18014673391583296
        i64.mul
        local.tee $8
        local.get $4
        i64.const 54
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_u
        local.get $9
        i64.sub
        local.tee $9
        local.get $4
        i64.const 62
        i64.shr_u
        i64.const 3
        i64.and
        local.get $3
        i64.const 3
        i64.shl
        i64.const -16
        i64.and
        local.get $3
        i64.const 2
        i64.shl
        i64.const 4
        i64.and
        i64.or
        i64.or
        local.tee $3
        i64.const 65535
        i64.and
        local.tee $5
        local.get $5
        i64.const 24
        i64.shl
        i64.or
        i64.const 1095216660735
        i64.and
        local.tee $5
        local.get $5
        i64.const 12
        i64.shl
        i64.or
        i64.const 4222189076152335
        i64.and
        local.tee $5
        i64.const 2
        i64.shl
        local.get $5
        i64.const 2
        i64.shr_u
        i64.or
        i64.const 17733194119839807
        i64.and
        local.tee $5
        local.get $5
        i64.const 5
        i64.shr_u
        i64.const 281479271743489
        i64.and
        i64.add
        local.tee $7
        i64.mul
        i64.add
        local.set $5
        local.get $1
        local.get $4
        i64.const 30
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_u
        local.tee $10
        i64.const 18014673391583296
        i64.mul
        local.tee $6
        local.get $4
        i64.const 38
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        i64.extend_i32_u
        local.get $10
        i64.sub
        local.tee $4
        local.get $7
        i64.mul
        i64.add
        i64.const 9007336695791648
        i64.add
        i64.const 6
        i64.shr_u
        i64.const 71777214294589695
        i64.and
        local.tee $7
        i64.const 255
        i64.and
        local.get $7
        i64.const 16711680
        i64.and
        i64.const 16
        i64.shl
        i64.or
        i64.const 65793
        i64.mul
        local.get $5
        i64.const 5
        i64.shr_u
        i64.const 143835907860922879
        i64.and
        local.get $5
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
        local.get $5
        i64.const 6
        i64.shr_u
        i64.add
        i64.const 71777214294589695
        i64.and
        i64.const 8
        i64.shl
        local.tee $5
        i64.const 65280
        i64.and
        i64.const 16
        i64.shl
        local.get $5
        i64.const 4278190080
        i64.and
        i64.const 32
        i64.shl
        i64.or
        i64.or
        i64.store
        local.get $1
        local.get $7
        i64.const 1095216660480
        i64.and
        i64.const 32
        i64.shr_u
        local.get $7
        i64.const 71776119061217280
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.const 65793
        i64.mul
        local.get $5
        i64.const -72057594037927936
        i64.and
        local.get $5
        i64.const 280375465082880
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.or
        i64.store offset=8
        local.get $8
        local.get $9
        local.get $3
        i64.const 16
        i64.shr_u
        i64.const 65535
        i64.and
        local.tee $5
        local.get $5
        i64.const 24
        i64.shl
        i64.or
        i64.const 1095216660735
        i64.and
        local.tee $5
        local.get $5
        i64.const 12
        i64.shl
        i64.or
        i64.const 4222189076152335
        i64.and
        local.tee $5
        i64.const 2
        i64.shl
        local.get $5
        i64.const 2
        i64.shr_u
        i64.or
        i64.const 17733194119839807
        i64.and
        local.tee $5
        local.get $5
        i64.const 5
        i64.shr_u
        i64.const 281479271743489
        i64.and
        i64.add
        local.tee $7
        i64.mul
        i64.add
        local.set $5
        local.get $1
        local.get $2
        i32.add
        local.tee $0
        local.get $6
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
        local.tee $7
        i64.const 255
        i64.and
        local.get $7
        i64.const 16711680
        i64.and
        i64.const 16
        i64.shl
        i64.or
        i64.const 65793
        i64.mul
        local.get $5
        i64.const 5
        i64.shr_u
        i64.const 143835907860922879
        i64.and
        local.get $5
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
        local.get $5
        i64.const 6
        i64.shr_u
        i64.add
        i64.const 71777214294589695
        i64.and
        i64.const 8
        i64.shl
        local.tee $5
        i64.const 65280
        i64.and
        i64.const 16
        i64.shl
        local.get $5
        i64.const 4278190080
        i64.and
        i64.const 32
        i64.shl
        i64.or
        i64.or
        i64.store
        local.get $0
        local.get $7
        i64.const 1095216660480
        i64.and
        i64.const 32
        i64.shr_u
        local.get $7
        i64.const 71776119061217280
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.const 65793
        i64.mul
        local.get $5
        i64.const -72057594037927936
        i64.and
        local.get $5
        i64.const 280375465082880
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.or
        i64.store offset=8
        local.get $8
        local.get $9
        local.get $3
        i64.const 32
        i64.shr_u
        i64.const 65535
        i64.and
        local.tee $5
        local.get $5
        i64.const 24
        i64.shl
        i64.or
        i64.const 1095216660735
        i64.and
        local.tee $5
        local.get $5
        i64.const 12
        i64.shl
        i64.or
        i64.const 4222189076152335
        i64.and
        local.tee $5
        i64.const 2
        i64.shl
        local.get $5
        i64.const 2
        i64.shr_u
        i64.or
        i64.const 17733194119839807
        i64.and
        local.tee $5
        local.get $5
        i64.const 5
        i64.shr_u
        i64.const 281479271743489
        i64.and
        i64.add
        local.tee $7
        i64.mul
        i64.add
        local.set $5
        local.get $0
        local.get $2
        i32.add
        local.tee $0
        local.get $6
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
        local.tee $7
        i64.const 255
        i64.and
        local.get $7
        i64.const 16711680
        i64.and
        i64.const 16
        i64.shl
        i64.or
        i64.const 65793
        i64.mul
        local.get $5
        i64.const 5
        i64.shr_u
        i64.const 143835907860922879
        i64.and
        local.get $5
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
        local.get $5
        i64.const 6
        i64.shr_u
        i64.add
        i64.const 71777214294589695
        i64.and
        i64.const 8
        i64.shl
        local.tee $5
        i64.const 65280
        i64.and
        i64.const 16
        i64.shl
        local.get $5
        i64.const 4278190080
        i64.and
        i64.const 32
        i64.shl
        i64.or
        i64.or
        i64.store
        local.get $0
        local.get $7
        i64.const 1095216660480
        i64.and
        i64.const 32
        i64.shr_u
        local.get $7
        i64.const 71776119061217280
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.const 65793
        i64.mul
        local.get $5
        i64.const -72057594037927936
        i64.and
        local.get $5
        i64.const 280375465082880
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.or
        i64.store offset=8
        local.get $8
        local.get $9
        local.get $3
        i64.const 48
        i64.shr_u
        i64.const 65535
        i64.and
        local.tee $3
        local.get $3
        i64.const 24
        i64.shl
        i64.or
        i64.const 1095216660735
        i64.and
        local.tee $3
        local.get $3
        i64.const 12
        i64.shl
        i64.or
        i64.const 4222189076152335
        i64.and
        local.tee $3
        i64.const 2
        i64.shl
        local.get $3
        i64.const 2
        i64.shr_u
        i64.or
        i64.const 17733194119839807
        i64.and
        local.tee $3
        local.get $3
        i64.const 5
        i64.shr_u
        i64.const 281479271743489
        i64.and
        i64.add
        local.tee $8
        i64.mul
        i64.add
        local.set $3
        local.get $0
        local.get $2
        i32.add
        local.tee $0
        local.get $6
        local.get $4
        local.get $8
        i64.mul
        i64.add
        i64.const 9007336695791648
        i64.add
        i64.const 6
        i64.shr_u
        i64.const 71777214294589695
        i64.and
        local.tee $4
        i64.const 255
        i64.and
        local.get $4
        i64.const 16711680
        i64.and
        i64.const 16
        i64.shl
        i64.or
        i64.const 65793
        i64.mul
        local.get $3
        i64.const 5
        i64.shr_u
        i64.const 143835907860922879
        i64.and
        local.get $3
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
        local.get $3
        i64.const 6
        i64.shr_u
        i64.add
        i64.const 71777214294589695
        i64.and
        i64.const 8
        i64.shl
        local.tee $3
        i64.const 65280
        i64.and
        i64.const 16
        i64.shl
        local.get $3
        i64.const 4278190080
        i64.and
        i64.const 32
        i64.shl
        i64.or
        i64.or
        i64.store
        local.get $0
        local.get $4
        i64.const 1095216660480
        i64.and
        i64.const 32
        i64.shr_u
        local.get $4
        i64.const 71776119061217280
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.const 65793
        i64.mul
        local.get $3
        i64.const -72057594037927936
        i64.and
        local.get $3
        i64.const 280375465082880
        i64.and
        i64.const 16
        i64.shr_u
        i64.or
        i64.or
        i64.store offset=8
        br $break|0
       end
       local.get $4
       i64.const 29
       i64.shr_u
       i32.wrap_i64
       i32.const 31
       i32.and
       local.tee $0
       i32.const 29
       i32.gt_u
       br_if $folding-inner0
       local.get $3
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
       local.tee $13
       i32.const 2
       i32.add
       i32.shl
       i64.extend_i32_u
       local.get $3
       i64.const 32
       i64.shr_u
       i64.and
       i32.const -1
       local.get $13
       i32.const 1
       i32.or
       i32.shl
       i32.const -4
       i32.xor
       i64.extend_i32_u
       local.get $3
       i64.const 33
       i64.shr_u
       i64.and
       i64.or
       i64.or
       local.set $8
       local.get $0
       i32.const 1
       i32.shl
       i32.load16_u offset=2176
       local.set $0
       local.get $4
       i64.const 42
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.get $4
       i64.const 34
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.tee $9
       i64.sub
       local.set $5
       local.get $3
       i64.const 10
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.get $3
       i64.const 2
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.tee $6
       i64.sub
       local.set $7
       local.get $4
       i64.const 58
       i64.shr_u
       i32.wrap_i64
       local.get $3
       i64.const 6
       i64.shl
       i32.wrap_i64
       i32.const 192
       i32.and
       i32.or
       i64.extend_i32_u
       local.get $4
       i64.const 50
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.tee $4
       i64.sub
       local.set $10
       local.get $3
       i64.const 26
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.get $3
       i64.const 18
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       local.tee $3
       i64.sub
       local.set $11
       local.get $9
       i64.const 18014673391583296
       i64.mul
       local.set $12
       local.get $6
       i64.const 18014673391583296
       i64.mul
       local.set $6
       local.get $4
       i64.const 18014673391583296
       i64.mul
       local.set $15
       local.get $3
       i64.const 18014673391583296
       i64.mul
       local.set $14
       i32.const 0
       local.set $13
       loop $for-loop|104
        local.get $13
        i32.const 4
        i32.lt_s
        if
         local.get $12
         local.get $8
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
         local.get $4
         i64.const 14
         i64.shl
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
         local.get $5
         i64.mul
         i64.add
         local.set $9
         local.get $15
         local.get $4
         local.get $10
         i64.mul
         i64.add
         local.tee $3
         local.get $0
         i64.extend_i32_u
         local.tee $17
         local.get $17
         i64.const 30
         i64.shl
         i64.or
         i64.const 12884901891
         i64.and
         local.tee $17
         local.get $17
         i64.const 15
         i64.shl
         i64.or
         i64.const 281479271743489
         i64.and
         i64.const 65535
         i64.mul
         local.tee $17
         local.get $3
         local.get $14
         local.get $4
         local.get $11
         i64.mul
         i64.add
         i64.xor
         i64.and
         i64.xor
         local.set $3
         local.get $1
         local.get $9
         local.get $17
         local.get $9
         local.get $6
         local.get $4
         local.get $7
         i64.mul
         i64.add
         i64.xor
         i64.and
         i64.xor
         i64.const 9007336695791648
         i64.add
         i64.const 6
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         local.tee $4
         i64.const 255
         i64.and
         local.get $4
         i64.const 16711680
         i64.and
         i64.const 16
         i64.shl
         i64.or
         i64.const 65793
         i64.mul
         local.get $3
         i64.const 5
         i64.shr_u
         i64.const 143835907860922879
         i64.and
         local.get $3
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
         local.get $3
         i64.const 6
         i64.shr_u
         i64.add
         i64.const 71777214294589695
         i64.and
         i64.const 8
         i64.shl
         local.tee $3
         i64.const 65280
         i64.and
         i64.const 16
         i64.shl
         local.get $3
         i64.const 4278190080
         i64.and
         i64.const 32
         i64.shl
         i64.or
         i64.or
         i64.store
         local.get $1
         local.get $4
         i64.const 1095216660480
         i64.and
         i64.const 32
         i64.shr_u
         local.get $4
         i64.const 71776119061217280
         i64.and
         i64.const 16
         i64.shr_u
         i64.or
         i64.const 65793
         i64.mul
         local.get $3
         i64.const -72057594037927936
         i64.and
         local.get $3
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
         local.set $1
         local.get $8
         i64.const 8
         i64.shr_u
         local.set $8
         local.get $0
         i32.const 4
         i32.shr_u
         local.set $0
         local.get $13
         i32.const 1
         i32.add
         local.set $13
         br $for-loop|104
        end
       end
       br $break|0
      end
      local.get $1
      local.get $4
      i64.const 29
      i64.shr_u
      i32.wrap_i64
      i32.const 255
      i32.and
      i64.extend_i32_u
      local.tee $9
      i64.const 18014673391583296
      i64.mul
      local.tee $8
      local.get $4
      i64.const 37
      i64.shr_u
      i32.wrap_i64
      i32.const 255
      i32.and
      i64.extend_i32_u
      local.get $9
      i64.sub
      local.tee $9
      local.get $4
      i64.const 61
      i64.shr_u
      i64.const 1
      i64.and
      local.get $4
      i64.const 60
      i64.shr_u
      i64.const 4
      i64.and
      local.get $4
      i64.const 59
      i64.shr_u
      i64.const 16
      i64.and
      local.get $3
      i64.const 5
      i64.shl
      i64.or
      i64.or
      i64.or
      local.tee $3
      i64.const 13107
      i64.and
      local.tee $5
      local.get $5
      i64.const 24
      i64.shl
      i64.or
      i64.const 219043332147
      i64.and
      local.tee $5
      local.get $5
      i64.const 12
      i64.shl
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $5
      local.get $5
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      i64.add
      i64.mul
      i64.add
      i64.const 9007336695791648
      i64.add
      i64.const 6
      i64.shr_u
      i64.const 71777214294589695
      i64.and
      local.tee $5
      i64.const 255
      i64.and
      local.get $5
      i64.const 16711680
      i64.and
      i64.const 16
      i64.shl
      i64.or
      i64.const 65793
      i64.mul
      local.get $4
      i64.const 45
      i64.shr_u
      i32.wrap_i64
      i32.const 255
      i32.and
      i64.extend_i32_u
      local.tee $7
      i64.const 18014673391583296
      i64.mul
      local.tee $6
      local.get $4
      i64.const 53
      i64.shr_u
      i32.wrap_i64
      i32.const 255
      i32.and
      i64.extend_i32_u
      local.get $7
      i64.sub
      local.tee $4
      local.get $3
      i64.const 2
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
      local.get $7
      i64.const 12
      i64.shl
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $7
      local.get $7
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      i64.add
      i64.mul
      i64.add
      local.tee $7
      i64.const 6
      i64.shr_u
      local.get $7
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
      i64.add
      i64.const 71777214294589695
      i64.and
      i64.const 8
      i64.shl
      local.tee $7
      i64.const 65280
      i64.and
      i64.const 16
      i64.shl
      local.get $7
      i64.const 4278190080
      i64.and
      i64.const 32
      i64.shl
      i64.or
      i64.or
      i64.store
      local.get $1
      local.get $5
      i64.const 1095216660480
      i64.and
      i64.const 32
      i64.shr_u
      local.get $5
      i64.const 71776119061217280
      i64.and
      i64.const 16
      i64.shr_u
      i64.or
      i64.const 65793
      i64.mul
      local.get $7
      i64.const -72057594037927936
      i64.and
      local.get $7
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
      local.get $8
      local.get $9
      local.get $3
      i64.const 16
      i64.shr_u
      i64.const 13107
      i64.and
      local.tee $5
      local.get $5
      i64.const 24
      i64.shl
      i64.or
      i64.const 219043332147
      i64.and
      local.tee $5
      local.get $5
      i64.const 12
      i64.shl
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $5
      local.get $5
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      i64.add
      i64.mul
      i64.add
      i64.const 9007336695791648
      i64.add
      i64.const 6
      i64.shr_u
      i64.const 71777214294589695
      i64.and
      local.tee $5
      i64.const 255
      i64.and
      local.get $5
      i64.const 16711680
      i64.and
      i64.const 16
      i64.shl
      i64.or
      i64.const 65793
      i64.mul
      local.get $6
      local.get $4
      local.get $3
      i64.const 18
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
      local.get $7
      i64.const 12
      i64.shl
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $7
      local.get $7
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      i64.add
      i64.mul
      i64.add
      local.tee $7
      i64.const 6
      i64.shr_u
      local.get $7
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
      i64.add
      i64.const 71777214294589695
      i64.and
      i64.const 8
      i64.shl
      local.tee $7
      i64.const 65280
      i64.and
      i64.const 16
      i64.shl
      local.get $7
      i64.const 4278190080
      i64.and
      i64.const 32
      i64.shl
      i64.or
      i64.or
      i64.store
      local.get $0
      local.get $5
      i64.const 1095216660480
      i64.and
      i64.const 32
      i64.shr_u
      local.get $5
      i64.const 71776119061217280
      i64.and
      i64.const 16
      i64.shr_u
      i64.or
      i64.const 65793
      i64.mul
      local.get $7
      i64.const -72057594037927936
      i64.and
      local.get $7
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
      local.get $8
      local.get $9
      local.get $3
      i64.const 32
      i64.shr_u
      i64.const 13107
      i64.and
      local.tee $5
      local.get $5
      i64.const 24
      i64.shl
      i64.or
      i64.const 219043332147
      i64.and
      local.tee $5
      local.get $5
      i64.const 12
      i64.shl
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $5
      local.get $5
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      i64.add
      i64.mul
      i64.add
      i64.const 9007336695791648
      i64.add
      i64.const 6
      i64.shr_u
      i64.const 71777214294589695
      i64.and
      local.tee $5
      i64.const 255
      i64.and
      local.get $5
      i64.const 16711680
      i64.and
      i64.const 16
      i64.shl
      i64.or
      i64.const 65793
      i64.mul
      local.get $6
      local.get $4
      local.get $3
      i64.const 34
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
      local.get $7
      i64.const 12
      i64.shl
      i64.or
      i64.const 844437815230467
      i64.and
      i64.const 21
      i64.mul
      local.tee $7
      local.get $7
      i64.const 5
      i64.shr_u
      i64.const 281479271743489
      i64.and
      i64.add
      i64.mul
      i64.add
      local.tee $7
      i64.const 6
      i64.shr_u
      local.get $7
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
      i64.add
      i64.const 71777214294589695
      i64.and
      i64.const 8
      i64.shl
      local.tee $7
      i64.const 65280
      i64.and
      i64.const 16
      i64.shl
      local.get $7
      i64.const 4278190080
      i64.and
      i64.const 32
      i64.shl
      i64.or
      i64.or
      i64.store
      local.get $0
      local.get $5
      i64.const 1095216660480
      i64.and
      i64.const 32
      i64.shr_u
      local.get $5
      i64.const 71776119061217280
      i64.and
      i64.const 16
      i64.shr_u
      i64.or
      i64.const 65793
      i64.mul
      local.get $7
      i64.const -72057594037927936
      i64.and
      local.get $7
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
      local.get $8
      local.get $9
      local.get $3
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
      local.get $8
      i64.const 12
      i64.shl
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
      local.get $6
      local.get $4
      local.get $3
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
      local.get $4
      i64.const 12
      i64.shl
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
      i64.mul
      i64.add
      local.tee $4
      i64.const 6
      i64.shr_u
      local.get $4
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
     local.get $4
     i64.const 21
     i64.shr_u
     i32.wrap_i64
     i32.const 260301048
     i32.and
     local.tee $0
     local.get $0
     i32.const 5
     i32.shr_u
     i32.or
     local.tee $0
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.get $4
     i64.const 16
     i64.shr_u
     i32.wrap_i64
     i32.const 260301048
     i32.and
     local.tee $13
     local.get $13
     i32.const 5
     i32.shr_u
     i32.or
     local.tee $13
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.tee $9
     i64.sub
     local.set $8
     local.get $1
     local.get $9
     i64.const 18014673391583296
     i64.mul
     local.tee $9
     local.get $8
     local.get $4
     i64.const 49
     i64.shr_u
     i64.const 15
     i64.and
     local.get $3
     i64.const 16
     i64.shl
     i64.const 1099511562240
     i64.and
     local.get $4
     i64.const 48
     i64.shr_u
     i64.const 65504
     i64.and
     i64.or
     i64.or
     local.tee $12
     i64.const 1048575
     i64.and
     local.tee $4
     local.get $4
     i64.const 22
     i64.shl
     i64.or
     i64.const 4393751544831
     i64.and
     local.tee $4
     local.get $4
     i64.const 11
     i64.shl
     i64.or
     i64.const 8725857424048159
     i64.and
     local.tee $4
     i64.const 1
     i64.shl
     local.get $4
     i64.const 4
     i64.shr_u
     i64.or
     i64.const 17733194119839807
     i64.and
     local.tee $4
     local.get $4
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
     local.get $13
     i32.const 10
     i32.shr_u
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.tee $5
     i64.const 18014673391583296
     i64.mul
     local.tee $4
     local.get $0
     i32.const 10
     i32.shr_u
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.get $5
     i64.sub
     local.tee $5
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
     local.tee $6
     i64.const 65535
     i64.and
     local.get $13
     i32.const 20
     i32.shr_u
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.tee $10
     i64.const 18014673391583296
     i64.mul
     local.tee $7
     local.get $0
     i32.const 20
     i32.shr_u
     i32.const 255
     i32.and
     i64.extend_i32_u
     local.get $10
     i64.sub
     local.tee $10
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
     local.tee $11
     i64.const 4294901760
     i64.and
     i64.const 32
     i64.shl
     i64.or
     local.get $6
     i64.const 4294901760
     i64.and
     local.get $11
     i64.const 65535
     i64.and
     i64.or
     i64.const 16
     i64.shl
     i64.or
     i64.store
     local.get $1
     local.get $6
     i64.const 32
     i64.shr_u
     i64.const 65535
     i64.and
     local.get $11
     i64.const -281474976710656
     i64.and
     i64.or
     local.get $6
     i64.const -281474976710656
     i64.and
     local.get $11
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
     local.get $9
     local.get $8
     local.get $12
     i64.const 20
     i64.shr_u
     i64.const 1048575
     i64.and
     local.tee $6
     local.get $6
     i64.const 22
     i64.shl
     i64.or
     i64.const 4393751544831
     i64.and
     local.tee $6
     local.get $6
     i64.const 11
     i64.shl
     i64.or
     i64.const 8725857424048159
     i64.and
     local.tee $6
     i64.const 1
     i64.shl
     local.get $6
     i64.const 4
     i64.shr_u
     i64.or
     i64.const 17733194119839807
     i64.and
     local.tee $6
     local.get $6
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
     local.get $4
     local.get $5
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
     local.tee $6
     i64.const 65535
     i64.and
     local.get $7
     local.get $10
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
     local.tee $11
     i64.const 4294901760
     i64.and
     i64.const 32
     i64.shl
     i64.or
     local.get $6
     i64.const 4294901760
     i64.and
     local.get $11
     i64.const 65535
     i64.and
     i64.or
     i64.const 16
     i64.shl
     i64.or
     i64.store
     local.get $0
     local.get $6
     i64.const 32
     i64.shr_u
     i64.const 65535
     i64.and
     local.get $11
     i64.const -281474976710656
     i64.and
     i64.or
     local.get $6
     i64.const -281474976710656
     i64.and
     local.get $11
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
     local.get $9
     local.get $8
     local.get $3
     i64.const 24
     i64.shr_u
     i64.const 1099511627775
     i64.and
     local.tee $11
     i64.const 1048575
     i64.and
     local.tee $3
     local.get $3
     i64.const 22
     i64.shl
     i64.or
     i64.const 4393751544831
     i64.and
     local.tee $3
     local.get $3
     i64.const 11
     i64.shl
     i64.or
     i64.const 8725857424048159
     i64.and
     local.tee $3
     i64.const 1
     i64.shl
     local.get $3
     i64.const 4
     i64.shr_u
     i64.or
     i64.const 17733194119839807
     i64.and
     local.tee $3
     local.get $3
     i64.const 5
     i64.shr_u
     i64.const 281479271743489
     i64.and
     i64.add
     local.tee $6
     i64.mul
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     local.get $4
     local.get $5
     local.get $6
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
     local.tee $3
     i64.const 65535
     i64.and
     local.get $7
     local.get $6
     local.get $10
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
     local.tee $6
     i64.const 4294901760
     i64.and
     i64.const 32
     i64.shl
     i64.or
     local.get $3
     i64.const 4294901760
     i64.and
     local.get $6
     i64.const 65535
     i64.and
     i64.or
     i64.const 16
     i64.shl
     i64.or
     i64.store
     local.get $0
     local.get $3
     i64.const 32
     i64.shr_u
     i64.const 65535
     i64.and
     local.get $6
     i64.const -281474976710656
     i64.and
     i64.or
     local.get $3
     i64.const -281474976710656
     i64.and
     local.get $6
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
     local.get $9
     local.get $8
     local.get $11
     i64.const 20
     i64.shr_u
     i64.const 1048575
     i64.and
     local.tee $3
     local.get $3
     i64.const 22
     i64.shl
     i64.or
     i64.const 4393751544831
     i64.and
     local.tee $3
     local.get $3
     i64.const 11
     i64.shl
     i64.or
     i64.const 8725857424048159
     i64.and
     local.tee $3
     i64.const 1
     i64.shl
     local.get $3
     i64.const 4
     i64.shr_u
     i64.or
     i64.const 17733194119839807
     i64.and
     local.tee $3
     local.get $3
     i64.const 5
     i64.shr_u
     i64.const 281479271743489
     i64.and
     i64.add
     local.tee $3
     i64.mul
     i64.add
     i64.const 9007336695791648
     i64.add
     i64.const 6
     i64.shr_u
     i64.const 71777214294589695
     i64.and
     local.get $4
     local.get $3
     local.get $5
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
     local.get $7
     local.get $3
     local.get $10
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
     local.tee $3
     i64.const 4294901760
     i64.and
     i64.const 32
     i64.shl
     i64.or
     local.get $4
     i64.const 4294901760
     i64.and
     local.get $3
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
     local.get $3
     i64.const -281474976710656
     i64.and
     i64.or
     local.get $4
     i64.const -281474976710656
     i64.and
     local.get $3
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
    local.get $2
    call $assembly/uastc-rgba32/writeErrorBlock
   end
   return
  end
  local.get $1
  local.get $2
  call $assembly/uastc-rgba32/writeErrorBlock
 )
 (func $assembly/uastc-rgba32/decodeRGBA32 (param $0 i32) (param $1 i32) (result i32)
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
  if
   i32.const 1
   return
  end
  memory.size
  i32.const 1
  i32.sub
  i32.const 16
  i32.shl
  local.get $1
  i32.const 3
  i32.add
  i32.const 2
  i32.shr_s
  local.tee $8
  local.get $0
  local.get $0
  i32.const 3
  i32.add
  i32.const 2
  i32.shr_s
  local.tee $6
  i32.add
  i32.mul
  i32.const 4
  i32.shl
  i32.lt_s
  if
   i32.const 1
   return
  end
  global.get $assembly/uastc-rgba32/firstRun
  if
   call $assembly/lib/uastc/common/storeCommonData
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
   global.set $assembly/uastc-rgba32/firstRun
  end
  local.get $0
  i32.const 2
  i32.shr_s
  local.set $7
  local.get $0
  i32.const 3
  i32.and
  i32.const 2
  i32.shl
  local.tee $9
  local.get $0
  i32.const 2
  i32.shl
  local.tee $5
  i32.const 3
  i32.mul
  i32.add
  local.set $0
  i32.const 16
  i32.const 0
  local.get $9
  select
  local.set $10
  i32.const 65536
  local.set $2
  local.get $6
  local.get $8
  i32.mul
  i32.const 4
  i32.shl
  local.tee $11
  i32.const 65536
  i32.add
  local.set $1
  loop $for-loop|0
   local.get $4
   local.get $8
   i32.lt_s
   if
    i32.const 0
    local.set $3
    loop $for-loop|1
     local.get $3
     local.get $7
     i32.lt_s
     if
      local.get $2
      local.get $1
      local.get $5
      call $assembly/uastc-rgba32/decodeBlock
      local.get $2
      i32.const 16
      i32.add
      local.set $2
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    local.get $2
    local.get $10
    i32.add
    local.set $2
    local.get $0
    local.get $1
    i32.add
    local.set $1
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $9
  if
   local.get $7
   i32.const 4
   i32.shl
   i32.const 65536
   i32.add
   local.tee $2
   local.get $11
   i32.add
   local.set $1
   local.get $6
   i32.const 4
   i32.shl
   local.set $6
   local.get $5
   i32.const 2
   i32.shl
   local.set $7
   i32.const 0
   local.set $3
   loop $for-loop|2
    local.get $3
    local.get $8
    i32.lt_s
    if
     local.get $2
     i32.const 4096
     i32.const 16
     call $assembly/uastc-rgba32/decodeBlock
     i32.const 0
     local.set $0
     loop $for-loop|3
      local.get $0
      local.get $9
      i32.lt_s
      if
       local.get $0
       local.get $1
       i32.add
       local.get $0
       i32.load offset=4096
       i32.store
       local.get $0
       local.get $1
       local.get $5
       i32.add
       local.tee $4
       i32.add
       local.get $0
       i32.load offset=4112
       i32.store
       local.get $0
       local.get $4
       local.get $5
       i32.add
       local.tee $4
       i32.add
       local.get $0
       i32.load offset=4128
       i32.store
       local.get $0
       local.get $4
       local.get $5
       i32.add
       i32.add
       local.get $0
       i32.load offset=4144
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $for-loop|3
      end
     end
     local.get $2
     local.get $6
     i32.add
     local.set $2
     local.get $1
     local.get $7
     i32.add
     local.set $1
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
)
