(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_=>_i64 (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result i64)))
 (type $i32_i32_i32_i32_i32_i32_=>_i64 (func (param i32 i32 i32 i32 i32 i32) (result i64)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 472) "\003\00\cc\00\0f\00\f0\f0\0f\00\f0\f0\00\00\ffDD\88\88ff\88\88\"\"\cc\cc\ee\00\00\ee\"\"DD\f0\00\00\0f\c0\0c\0c\c0\00\00\00\00")
 (data (i32.const 520) "\f0\00\00\ffDD\88\88\cc\08\00\f6\80\cc\103\00\0f\00\f0\"\"\cc\cc\c8\8c\00s\00\c4\ce\08<\c0\c0\03\ee\00\00\ee\88\88\00w0\03\cc\cc\00\ec\ce\00\00\13\80\ec\00`\00\90L\00\80\ec\ee\00\00\eel\13\80\ec\00\8c\10s\00\00\00\00")
 (data (i32.const 600) "\cc\cc\88\88\ee\ee\c8\ec\80\c8\ec\fe\c8\fe\80\ec\00\c8\ec\ff\80\fe\00\e8\e8\ff\00\ff\f0\ff\00\f0\8e\00\00q\ce\08\8c\00\10s\001\ce\8c\8c\08\101ff\f0\0f\aa\aa\f0\f06\c9\00\00\00\00")
 (data (i32.const 664) "\0b\00\n\03\0b\0f\0c\07\0b\12\n\05\0b\0e\0c\t\0b\00\n\04\0b\10\0c\08\0b\12\n\06\0b\02\0c\0d\0b\00\n\03\0b\11\0c\07\0b\12\n\05\0b\0e\0c\t\0b\00\n\04\0b\01\0c\08\0b\12\n\06\0b\02\0c\0d\0b\00\n\03\0b\13\0c\07\0b\12\n\05\0b\0e\0c\t\0b\00\n\04\0b\10\0c\08\0b\12\n\06\0b\02\0c\0d\0b\00\n\03\0b\11\0c\07\0b\12\n\05\0b\0e\0c\t\0b\00\n\04\0b\01\0c\08\0b\12\n\06\0b\02\0c\0d")
 (data (i32.const 792) "\00\ffE\ba\17\e8\\\a3.\d1t\8b")
 (data (i32.const 808) "\00\ff \dfA\bea\9e\06\f9\'\d8G\b8h\97\0d\f2-\d2N\b1n\91\13\ec4\cbT\abu\8a\1a\e5:\c5[\a4{\84")
 (data (i32.const 848) "\00\ff\10\ef \df0\cfA\beQ\aea\9eq\8e\05\fa\15\ea&\d96\c9F\b9V\a9g\98w\88\0b\f4\1b\e4+\d4;\c4L\b3\\\a3l\93|\83")
 (export "transcode" (func $assembly/uastc/bc7/transcode))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:assembly/uastc/bc7
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  i32.const 0
  local.set $0
  loop $for-loop|6
   local.get $0
   i32.const 256
   i32.lt_u
   if
    local.get $0
    i32.const 1
    i32.shl
    local.get $0
    i32.const 1
    i32.shr_u
    local.tee $1
    local.get $0
    i32.const 1
    i32.and
    local.get $1
    i32.add
    local.get $0
    i32.const 7
    i32.shr_u
    i32.sub
    i32.const 7
    i32.shl
    i32.or
    i32.store16 offset=2048
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|6
   end
  end
  i32.const 0
  local.set $0
  loop $for-loop|7
   local.get $0
   i32.const 256
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.tee $2
    local.get $0
    i32.const 1
    i32.add
    local.tee $1
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.shl
    local.tee $3
    i32.const 126
    local.get $3
    i32.const 126
    i32.lt_s
    select
    local.tee $3
    i32.store8 offset=3072
    local.get $2
    local.get $0
    i32.const 1
    local.get $0
    i32.const 1
    i32.gt_s
    select
    i32.const 1
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.shl
    i32.const 1
    i32.add
    local.tee $4
    i32.const 127
    local.get $4
    i32.const 127
    i32.lt_s
    select
    local.tee $4
    i32.store8 offset=3073
    local.get $2
    local.get $0
    local.get $4
    i32.const 1
    i32.shl
    local.get $4
    i32.const 6
    i32.shr_s
    i32.or
    i32.sub
    local.tee $2
    local.get $2
    i32.mul
    local.get $0
    local.get $3
    i32.const 1
    i32.shl
    local.get $3
    i32.const 6
    i32.shr_s
    i32.or
    i32.sub
    local.tee $0
    local.get $0
    i32.mul
    i32.sub
    i32.store8 offset=3074
    local.get $1
    local.set $0
    br $for-loop|7
   end
  end
  i32.const 0
  local.set $0
  loop $for-loop|8
   local.get $0
   i32.const 256
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.tee $1
    local.get $0
    i32.const 253
    i32.mul
    i32.const 10
    i32.shr_s
    local.tee $2
    i32.const 1
    i32.add
    i32.const 126
    i32.and
    local.tee $3
    i32.const 62
    local.get $3
    i32.const 62
    i32.lt_u
    select
    local.tee $3
    i32.store8 offset=4096
    local.get $1
    local.get $2
    i32.const 126
    i32.and
    i32.const 1
    i32.add
    local.tee $2
    i32.const 63
    local.get $2
    i32.const 63
    i32.lt_u
    select
    local.tee $2
    i32.store8 offset=4097
    local.get $1
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    local.get $2
    i32.const 4
    i32.shr_s
    i32.or
    i32.sub
    local.tee $1
    local.get $1
    i32.mul
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    local.get $3
    i32.const 4
    i32.shr_s
    i32.or
    i32.sub
    local.tee $1
    local.get $1
    i32.mul
    i32.sub
    i32.store8 offset=4098
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|8
   end
  end
 )
 (func $assembly/uastc/bc7/mode6 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (result i64)
  i32.const 254
  local.get $2
  i32.const 1
  i32.add
  local.get $2
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i32.const 14
  i32.shl
  i32.const 254
  local.get $0
  i32.const 1
  i32.add
  local.get $0
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i32.or
  i64.extend_i32_s
  i32.const 254
  local.get $6
  i32.const 1
  i32.add
  local.get $6
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i32.const 14
  i32.shl
  i32.const 254
  local.get $4
  i32.const 1
  i32.add
  local.get $4
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i32.or
  i64.extend_i32_s
  i64.const 28
  i64.shl
  i64.or
  local.get $2
  i32.const 1
  i32.shr_u
  i32.const 14
  i32.shl
  local.get $0
  i32.const 1
  i32.shr_u
  i32.or
  i64.extend_i32_u
  local.get $4
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  local.get $6
  i32.const 1
  i32.shr_u
  i32.const 14
  i32.shl
  i64.extend_i32_u
  i64.const 268435456
  i64.or
  i64.or
  i64.const 28
  i64.shl
  i64.or
  local.get $0
  i32.const 1
  i32.and
  local.get $2
  i32.const 1
  i32.and
  i32.add
  local.get $4
  i32.const 1
  i32.and
  i32.add
  local.get $6
  i32.const 1
  i32.and
  i32.add
  local.get $0
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  local.get $2
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  i32.add
  local.get $4
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  i32.add
  local.get $6
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  i32.add
  i32.le_u
  select
  i32.const 254
  local.get $7
  i32.const 1
  i32.add
  local.get $7
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i32.const 14
  i32.shl
  i32.const 254
  local.get $5
  i32.const 1
  i32.add
  local.get $5
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i32.or
  i64.extend_i32_s
  i64.const 35
  i64.shl
  i32.const 254
  local.get $3
  i32.const 1
  i32.add
  local.get $3
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i32.const 14
  i32.shl
  i32.const 254
  local.get $1
  i32.const 1
  i32.add
  local.get $1
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i32.or
  i64.extend_i32_s
  i64.const 7
  i64.shl
  i64.or
  local.get $5
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  local.get $7
  i32.const 1
  i32.shr_u
  i32.const 14
  i32.shl
  i64.extend_i32_u
  i64.const 4194304
  i64.or
  i64.or
  i64.const 35
  i64.shl
  local.get $3
  i32.const 1
  i32.shr_u
  i32.const 14
  i32.shl
  local.get $1
  i32.const 1
  i32.shr_u
  i32.or
  i64.extend_i32_u
  i64.const 7
  i64.shl
  i64.or
  local.get $1
  i32.const 1
  i32.and
  local.get $3
  i32.const 1
  i32.and
  i32.add
  local.get $5
  i32.const 1
  i32.and
  i32.add
  local.get $7
  i32.const 1
  i32.and
  i32.add
  local.get $1
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  local.get $3
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  i32.add
  local.get $5
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  i32.add
  local.get $7
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  i32.add
  i32.le_u
  select
  i64.or
 )
 (func $assembly/uastc/bc7/mode3 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i64)
  i32.const 254
  local.get $2
  i32.const 1
  i32.add
  local.get $2
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i32.const 14
  i32.shl
  i32.const 254
  local.get $0
  i32.const 1
  i32.add
  local.get $0
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i32.or
  i64.extend_i32_s
  i32.const 254
  local.get $4
  i32.const 1
  i32.add
  local.get $4
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i64.extend_i32_s
  i64.const 28
  i64.shl
  i64.or
  local.get $2
  i32.const 1
  i32.shr_u
  i32.const 14
  i32.shl
  local.get $0
  i32.const 1
  i32.shr_u
  i32.or
  i64.extend_i32_u
  local.get $4
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 16384
  i64.or
  i64.const 28
  i64.shl
  i64.or
  local.get $0
  i32.const 1
  i32.and
  local.get $2
  i32.const 1
  i32.and
  i32.add
  local.get $4
  i32.const 1
  i32.and
  i32.add
  local.get $0
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  local.get $2
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  i32.add
  local.get $4
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  i32.add
  i32.le_u
  select
  i32.const 254
  local.get $3
  i32.const 1
  i32.add
  local.get $3
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i32.const 21
  i32.shl
  i32.const 254
  local.get $1
  i32.const 1
  i32.add
  local.get $1
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i32.const 7
  i32.shl
  i32.or
  i64.extend_i32_s
  i32.const 254
  local.get $5
  i32.const 1
  i32.add
  local.get $5
  i32.const 255
  i32.eq
  select
  i32.const 1
  i32.shr_s
  i64.extend_i32_s
  i64.const 35
  i64.shl
  i64.or
  local.get $5
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 256
  i64.or
  i64.const 35
  i64.shl
  local.get $3
  i32.const 1
  i32.shr_u
  i32.const 14
  i32.shl
  local.get $1
  i32.const 1
  i32.shr_u
  i32.or
  i64.extend_i32_u
  i64.const 7
  i64.shl
  i64.or
  local.get $1
  i32.const 1
  i32.and
  local.get $3
  i32.const 1
  i32.and
  i32.add
  local.get $5
  i32.const 1
  i32.and
  i32.add
  local.get $1
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  local.get $3
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  i32.add
  local.get $5
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  i32.add
  i32.le_u
  select
  i64.or
 )
 (func $assembly/uastc/bc7/mode1 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i64)
  local.get $4
  i32.const 2
  i32.shl
  local.tee $4
  i32.load8_u offset=3072
  i32.const 1
  i32.shr_u
  i32.const 24
  i32.shl
  local.get $3
  i32.const 2
  i32.shl
  local.tee $3
  i32.load8_u offset=3072
  i32.const 1
  i32.shr_u
  i32.const 18
  i32.shl
  i32.or
  local.get $2
  i32.const 2
  i32.shl
  local.tee $2
  i32.load8_u offset=3072
  i32.const 1
  i32.shr_u
  i32.const 12
  i32.shl
  i32.or
  local.get $1
  i32.const 2
  i32.shl
  local.tee $1
  i32.load8_u offset=3072
  i32.const 1
  i32.shr_u
  i32.const 6
  i32.shl
  i32.or
  local.get $0
  i32.const 2
  i32.shl
  local.tee $0
  i32.load8_u offset=3072
  i32.const 1
  i32.shr_u
  i32.or
  i64.extend_i32_u
  local.get $5
  i32.const 2
  i32.shl
  local.tee $5
  i32.load8_u offset=3072
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 30
  i64.shl
  i64.or
  local.get $4
  i32.load8_u offset=3073
  i32.const 1
  i32.shr_u
  i32.const 24
  i32.shl
  local.get $3
  i32.load8_u offset=3073
  i32.const 1
  i32.shr_u
  i32.const 18
  i32.shl
  i32.or
  local.get $2
  i32.load8_u offset=3073
  i32.const 1
  i32.shr_u
  i32.const 12
  i32.shl
  i32.or
  local.get $1
  i32.load8_u offset=3073
  i32.const 1
  i32.shr_u
  i32.const 6
  i32.shl
  i32.or
  local.get $0
  i32.load8_u offset=3073
  i32.const 1
  i32.shr_u
  i32.or
  i64.extend_i32_u
  local.get $5
  i32.load8_u offset=3073
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 64
  i64.or
  i64.const 30
  i64.shl
  i64.or
  local.get $5
  i32.load8_s offset=3074
  local.get $3
  i32.load8_s offset=3074
  local.get $1
  i32.load8_s offset=3074
  local.get $4
  i32.load8_s offset=3074
  local.get $0
  i32.load8_s offset=3074
  local.get $2
  i32.load8_s offset=3074
  i32.add
  i32.add
  i32.add
  i32.add
  i32.add
  i32.const 0
  i32.ge_s
  select
 )
 (func $assembly/uastc/bc7/mode7 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (result i64)
  local.get $0
  i32.const 2
  i32.shl
  local.tee $0
  i32.load8_u offset=4096
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  local.get $2
  i32.const 2
  i32.shl
  local.tee $2
  i32.load8_u offset=4096
  i32.const 1
  i32.shr_u
  i32.const 10
  i32.shl
  i64.extend_i32_u
  local.get $6
  i32.const 2
  i32.shl
  local.tee $6
  i32.load8_u offset=4096
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 30
  i64.shl
  local.get $4
  i32.const 2
  i32.shl
  local.tee $4
  i32.load8_u offset=4096
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 20
  i64.shl
  i64.or
  i64.or
  i64.or
  local.get $0
  i32.load8_u offset=4097
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  local.get $2
  i32.load8_u offset=4097
  i32.const 1
  i32.shr_u
  i32.const 10
  i32.shl
  i64.extend_i32_u
  local.get $6
  i32.load8_u offset=4097
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 30
  i64.shl
  i64.const 1099511627776
  i64.or
  local.get $4
  i32.load8_u offset=4097
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 20
  i64.shl
  i64.or
  i64.or
  i64.or
  local.get $6
  i32.load8_s offset=4098
  local.get $4
  i32.load8_s offset=4098
  local.get $0
  i32.load8_s offset=4098
  local.get $2
  i32.load8_s offset=4098
  i32.add
  i32.add
  i32.add
  i32.const 0
  i32.ge_s
  select
  local.get $1
  i32.const 2
  i32.shl
  local.tee $0
  i32.load8_u offset=4096
  i32.const 1
  i32.shr_u
  i32.const 5
  i32.shl
  i64.extend_i32_u
  local.get $3
  i32.const 2
  i32.shl
  local.tee $1
  i32.load8_u offset=4096
  i32.const 1
  i32.shr_u
  i32.const 15
  i32.shl
  i64.extend_i32_u
  local.get $7
  i32.const 2
  i32.shl
  local.tee $2
  i32.load8_u offset=4096
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 35
  i64.shl
  local.get $5
  i32.const 2
  i32.shl
  local.tee $3
  i32.load8_u offset=4096
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 25
  i64.shl
  i64.or
  i64.or
  i64.or
  local.get $0
  i32.load8_u offset=4097
  i32.const 1
  i32.shr_u
  i32.const 5
  i32.shl
  i64.extend_i32_u
  local.get $1
  i32.load8_u offset=4097
  i32.const 1
  i32.shr_u
  i32.const 15
  i32.shl
  i64.extend_i32_u
  local.get $2
  i32.load8_u offset=4097
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 35
  i64.shl
  i64.const 2199023255552
  i64.or
  local.get $3
  i32.load8_u offset=4097
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 25
  i64.shl
  i64.or
  i64.or
  i64.or
  local.get $2
  i32.load8_s offset=4098
  local.get $3
  i32.load8_s offset=4098
  local.get $0
  i32.load8_s offset=4098
  local.get $1
  i32.load8_s offset=4098
  i32.add
  i32.add
  i32.add
  i32.const 0
  i32.ge_s
  select
  i64.or
 )
 (func $assembly/uastc/bc7/mode7LA (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $2
  i32.const 2
  i32.shl
  local.tee $2
  i32.load8_u offset=4096
  i32.const 1
  i32.shr_u
  i32.const 10
  i32.shl
  local.get $0
  i32.const 2
  i32.shl
  local.tee $0
  i32.load8_u offset=4096
  i32.const 1
  i32.shr_u
  i32.or
  local.get $2
  i32.load8_u offset=4097
  i32.const 1
  i32.shr_u
  i32.const 10
  i32.shl
  i32.const 1048576
  i32.or
  local.get $0
  i32.load8_u offset=4097
  i32.const 1
  i32.shr_u
  i32.or
  local.get $2
  i32.load8_s offset=4098
  local.get $0
  i32.load8_s offset=4098
  i32.const 3
  i32.mul
  i32.add
  i32.const 0
  i32.ge_s
  select
  local.get $3
  i32.const 2
  i32.shl
  local.tee $0
  i32.load8_u offset=4096
  i32.const 1
  i32.shr_u
  i32.const 15
  i32.shl
  local.get $1
  i32.const 2
  i32.shl
  local.tee $1
  i32.load8_u offset=4096
  i32.const 1
  i32.shr_u
  i32.const 5
  i32.shl
  i32.or
  local.get $0
  i32.load8_u offset=4097
  i32.const 1
  i32.shr_u
  i32.const 15
  i32.shl
  i32.const 2097152
  i32.or
  local.get $1
  i32.load8_u offset=4097
  i32.const 1
  i32.shr_u
  i32.const 5
  i32.shl
  i32.or
  local.get $0
  i32.load8_s offset=4098
  local.get $1
  i32.load8_s offset=4098
  i32.const 3
  i32.mul
  i32.add
  i32.const 0
  i32.ge_s
  select
  i32.or
 )
 (func $assembly/uastc/bc7/transcode (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
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
  (local $44 i32)
  (local $45 i32)
  local.get $0
  i32.const 268431360
  i32.gt_u
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 4
  i32.shl
  local.tee $7
  memory.size
  i32.const 1
  i32.sub
  i32.const 16
  i32.shl
  i32.gt_u
  if
   i32.const 1
   return
  end
  i32.const 65536
  local.set $6
  loop $for-loop|0
   local.get $7
   i32.const 65536
   i32.add
   local.get $6
   i32.gt_s
   if
    local.get $6
    i64.load offset=8
    local.set $15
    i64.const 0
    local.set $2
    block $break|1
     block $case19|1
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
                         local.get $6
                         i64.load
                         local.tee $1
                         i32.wrap_i64
                         i32.const 127
                         i32.and
                         i32.load8_u offset=664
                         br_table $case0|1 $case1|1 $case2|1 $case3|1 $case4|1 $case5|1 $case6|1 $case7|1 $case8|1 $case9|1 $case10|1 $case11|1 $case12|1 $case13|1 $case14|1 $case15|1 $case16|1 $case17|1 $case18|1 $case19|1
                        end
                        local.get $1
                        i64.const 29
                        i64.shr_u
                        i32.wrap_i64
                        i32.const 63
                        i32.and
                        local.get $1
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
                        local.get $1
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
                        local.get $1
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
                        local.get $1
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
                        local.get $1
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
                        local.get $1
                        i64.const 59
                        i64.shr_u
                        i32.wrap_i64
                        local.get $15
                        i64.const 5
                        i64.shl
                        i32.wrap_i64
                        i32.const 32
                        i32.and
                        i32.or
                        local.get $1
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
                        i32.const 255
                        i32.const 255
                        call $assembly/uastc/bc7/mode6
                        local.tee $1
                        i64.const 7
                        i64.shl
                        i64.const 64
                        i64.or
                        local.set $3
                        local.get $15
                        i64.const -2
                        i64.and
                        local.get $1
                        i64.const 57
                        i64.shr_u
                        i64.or
                        local.set $2
                        br $break|1
                       end
                       local.get $1
                       i64.const 21
                       i64.shr_u
                       i32.wrap_i64
                       i32.const 255
                       i32.and
                       local.get $1
                       i64.const 29
                       i64.shr_u
                       i32.wrap_i64
                       i32.const 255
                       i32.and
                       local.get $1
                       i64.const 37
                       i64.shr_u
                       i32.wrap_i64
                       i32.const 255
                       i32.and
                       local.get $1
                       i64.const 45
                       i64.shr_u
                       i32.wrap_i64
                       i32.const 255
                       i32.and
                       local.get $1
                       i64.const 53
                       i64.shr_u
                       i32.wrap_i64
                       i32.const 255
                       i32.and
                       local.get $1
                       i64.const 61
                       i64.shr_u
                       i32.wrap_i64
                       local.get $15
                       i64.const 3
                       i64.shl
                       i32.wrap_i64
                       i32.const 248
                       i32.and
                       i32.or
                       call $assembly/uastc/bc7/mode3
                       local.tee $1
                       i64.const 16383
                       i64.and
                       local.tee $3
                       local.set $2
                       local.get $1
                       i64.const 14
                       i64.shr_u
                       i64.const 16383
                       i64.and
                       local.tee $16
                       local.set $4
                       local.get $1
                       i64.const 28
                       i64.shr_u
                       i64.const 16383
                       i64.and
                       local.tee $8
                       local.set $5
                       local.get $1
                       i64.const 42
                       i64.shr_u
                       i64.const 3
                       i64.and
                       local.tee $9
                       local.set $1
                       local.get $15
                       i64.const 4
                       i64.shr_u
                       i64.const 4294967292
                       i64.and
                       local.get $15
                       i64.const 5
                       i64.shr_u
                       i64.const 1
                       i64.and
                       i64.or
                       i32.wrap_i64
                       local.tee $0
                       i32.const -2147483648
                       i32.and
                       if
                        local.get $2
                        i64.const 7
                        i64.shr_u
                        i64.const 127
                        i64.and
                        local.get $2
                        i64.const 127
                        i64.and
                        i64.const 7
                        i64.shl
                        i64.or
                        local.set $2
                        local.get $4
                        i64.const 7
                        i64.shr_u
                        i64.const 127
                        i64.and
                        local.get $4
                        i64.const 127
                        i64.and
                        i64.const 7
                        i64.shl
                        i64.or
                        local.set $4
                        local.get $5
                        i64.const 7
                        i64.shr_u
                        i64.const 127
                        i64.and
                        local.get $5
                        i64.const 127
                        i64.and
                        i64.const 7
                        i64.shl
                        i64.or
                        local.set $5
                        local.get $1
                        i64.const 1
                        i64.shr_u
                        i64.const 1
                        i64.and
                        local.get $1
                        i64.const 1
                        i64.and
                        i64.const 1
                        i64.shl
                        i64.or
                        local.set $1
                        local.get $0
                        i32.const -252645136
                        i32.xor
                        local.set $0
                       end
                       local.get $4
                       i64.const 52
                       i64.shl
                       local.get $16
                       i64.const 38
                       i64.shl
                       i64.or
                       local.get $2
                       i64.const 24
                       i64.shl
                       i64.or
                       local.get $3
                       i64.const 10
                       i64.shl
                       i64.or
                       i64.const 8
                       i64.or
                       local.set $3
                       local.get $0
                       i32.const 1
                       i32.shr_u
                       i32.const 1073741822
                       i32.and
                       local.get $0
                       i32.const 1
                       i32.and
                       i32.or
                       i64.extend_i32_u
                       i64.const 34
                       i64.shl
                       local.get $1
                       i64.const 32
                       i64.shl
                       i64.or
                       local.get $9
                       i64.const 30
                       i64.shl
                       i64.or
                       local.get $5
                       i64.const 16
                       i64.shl
                       i64.or
                       local.get $8
                       i64.const 2
                       i64.shl
                       i64.or
                       local.get $4
                       i64.const 12
                       i64.shr_u
                       i64.or
                       local.set $2
                       br $break|1
                      end
                      local.get $1
                      i64.const 20
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 31
                      i32.and
                      local.tee $0
                      i32.const 29
                      i32.gt_u
                      if
                       i64.const -9151873029083480128
                       local.set $3
                       br $break|1
                      end
                      local.get $15
                      i64.const 39
                      i64.shl
                      local.get $1
                      i64.const 25
                      i64.shr_u
                      i64.or
                      i64.const 1085102592571150095
                      i64.and
                      local.tee $2
                      i64.const 4
                      i64.shl
                      local.get $2
                      i64.or
                      local.tee $2
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.set $10
                      local.get $15
                      i64.const 35
                      i64.shl
                      local.get $1
                      i64.const 29
                      i64.shr_u
                      i64.or
                      i64.const 1085102592571150095
                      i64.and
                      local.tee $1
                      i64.const 4
                      i64.shl
                      local.get $1
                      i64.or
                      local.tee $3
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.set $11
                      local.get $15
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
                      local.tee $12
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
                      local.get $15
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
                      local.get $15
                      i64.const 8
                      i64.shr_u
                      i64.and
                      i64.or
                      i64.or
                      local.set $1
                      local.get $2
                      i64.const 8
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $13
                      local.get $2
                      i64.const 32
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $14
                      i32.const 1029946068
                      local.get $0
                      i32.shr_u
                      i32.const 1
                      i32.and
                      local.tee $17
                      select
                      local.set $18
                      local.get $3
                      i64.const 8
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $19
                      local.get $3
                      i64.const 32
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $20
                      local.get $17
                      select
                      local.set $21
                      local.get $2
                      i64.const 16
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $22
                      local.get $2
                      i64.const 40
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $23
                      local.get $17
                      select
                      local.set $24
                      local.get $3
                      i64.const 16
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $25
                      local.get $3
                      i64.const 40
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $26
                      local.get $17
                      select
                      local.set $27
                      local.get $2
                      i64.const 24
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $28
                      local.get $10
                      local.get $17
                      select
                      local.get $3
                      i64.const 24
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $29
                      local.get $11
                      local.get $17
                      select
                      local.get $14
                      local.get $13
                      local.get $17
                      select
                      local.get $20
                      local.get $19
                      local.get $17
                      select
                      local.get $23
                      local.get $22
                      local.get $17
                      select
                      local.get $26
                      local.get $25
                      local.get $17
                      select
                      call $assembly/uastc/bc7/mode1
                      local.tee $2
                      i64.const 4095
                      i64.and
                      local.set $3
                      local.get $2
                      i64.const 12
                      i64.shr_u
                      i64.const 4095
                      i64.and
                      local.set $4
                      local.get $0
                      local.get $12
                      i32.add
                      i32.const 874586141
                      local.get $0
                      i32.const 26
                      i32.sub
                      i32.const 3
                      i32.shl
                      i32.shr_u
                      i32.const 255
                      i32.and
                      local.get $0
                      i32.const 26
                      i32.lt_u
                      select
                      i32.const 2
                      i32.shl
                      i64.extend_i32_u
                      local.get $2
                      i64.const 24
                      i64.shr_u
                      i64.const 4095
                      i64.and
                      local.tee $5
                      i64.const 56
                      i64.shl
                      local.get $11
                      local.get $29
                      local.get $17
                      select
                      local.tee $11
                      local.get $10
                      local.get $28
                      local.get $17
                      select
                      local.tee $10
                      i64.const 1
                      local.get $0
                      i32.const 16
                      i32.lt_u
                      if (result i32)
                       i32.const 15
                      else
                       i64.const 72048970541048450
                       local.get $0
                       i32.const 15
                       i32.and
                       i32.const 2
                       i32.shl
                       i64.extend_i32_u
                       i64.shr_s
                       i32.wrap_i64
                       i32.const 15
                       i32.and
                      end
                      i32.const 3
                      i32.mul
                      local.tee $12
                      i32.const 2
                      i32.add
                      i64.extend_i32_u
                      i64.shl
                      local.get $1
                      i64.and
                      i64.const 0
                      i64.ne
                      local.tee $13
                      select
                      local.get $10
                      local.get $11
                      local.get $13
                      select
                      local.get $21
                      local.get $18
                      local.get $13
                      select
                      local.get $18
                      local.get $21
                      local.get $13
                      select
                      local.get $27
                      local.get $24
                      local.get $13
                      select
                      local.get $24
                      local.get $27
                      local.get $13
                      select
                      call $assembly/uastc/bc7/mode1
                      local.tee $8
                      i64.const 12
                      i64.shr_u
                      i64.const 4095
                      i64.and
                      i64.const 44
                      i64.shl
                      i64.or
                      local.get $4
                      i64.const 32
                      i64.shl
                      i64.or
                      local.get $8
                      i64.const 4095
                      i64.and
                      i64.const 20
                      i64.shl
                      i64.or
                      local.get $3
                      i64.const 8
                      i64.shl
                      i64.or
                      i64.or
                      i64.const 2
                      i64.or
                      local.set $3
                      local.get $13
                      if
                       local.get $1
                       local.get $0
                       i32.const 1
                       i32.shl
                       i32.load16_u offset=600
                       i64.extend_i32_u
                       local.tee $1
                       i64.const 16
                       i64.shl
                       local.get $1
                       i64.or
                       i64.const 4278190335
                       i64.and
                       local.tee $1
                       i64.const 8
                       i64.shl
                       local.get $1
                       i64.or
                       i64.const 1031043870735
                       i64.and
                       local.tee $1
                       i64.const 4
                       i64.shl
                       local.get $1
                       i64.or
                       i64.const 13403570319555
                       i64.and
                       local.tee $1
                       i64.const 2
                       i64.shl
                       local.get $1
                       i64.or
                       i64.const 40210710958665
                       i64.and
                       i64.const 7
                       i64.mul
                       i64.xor
                       local.set $1
                      end
                      local.get $1
                      i64.const 3
                      i64.and
                      i64.const 281474976710655
                      local.get $12
                      i32.const 1
                      i32.add
                      i64.extend_i32_u
                      i64.shl
                      local.tee $4
                      local.get $1
                      i64.const 2
                      i64.shr_u
                      i64.and
                      local.get $4
                      i64.const 281474976710652
                      i64.xor
                      local.get $1
                      i64.const 1
                      i64.shr_u
                      i64.and
                      i64.or
                      i64.or
                      i64.const 18
                      i64.shl
                      local.get $8
                      i64.const 36
                      i64.shr_u
                      i64.const 1
                      i64.and
                      i64.const 17
                      i64.shl
                      i64.or
                      local.get $2
                      i64.const 36
                      i64.shr_u
                      i64.const 1
                      i64.and
                      i64.const 16
                      i64.shl
                      i64.or
                      local.get $8
                      i64.const 24
                      i64.shr_u
                      i64.const 4095
                      i64.and
                      i64.const 4
                      i64.shl
                      i64.or
                      local.get $5
                      i64.const 8
                      i64.shr_u
                      i64.or
                      local.set $2
                      br $break|1
                     end
                     local.get $1
                     i64.const 20
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $17
                     i32.const 10
                     i32.gt_u
                     if
                      i64.const -9151873029083480128
                      local.set $3
                      br $break|1
                     end
                     local.get $1
                     i64.const 63
                     i64.shr_u
                     i32.wrap_i64
                     local.get $15
                     i64.const 1
                     i64.shl
                     i32.wrap_i64
                     i32.const 2
                     i32.and
                     i32.or
                     local.get $1
                     i64.const 32
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
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.set $18
                     local.get $15
                     i64.const 9
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $1
                     i64.const 40
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i32.const 1
                     i32.shl
                     i32.load16_u offset=1504
                     local.tee $11
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.set $19
                     i32.const 1307649
                     local.get $17
                     i32.const 1
                     i32.shl
                     local.tee $10
                     i32.shr_s
                     i32.const 3
                     i32.and
                     i32.const 1
                     i32.add
                     local.set $20
                     local.get $15
                     i64.const 1
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
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $21
                     local.get $15
                     i64.const 13
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $11
                     i32.const 4
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $22
                     local.get $1
                     i64.const 53
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $1
                     i64.const 24
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i32.const 1
                     i32.shl
                     i32.load16_u offset=1504
                     local.tee $12
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $23
                     i32.const 3939711
                     local.get $10
                     i32.shr_s
                     i32.const 3
                     i32.and
                     i32.const 1
                     i32.add
                     local.tee $24
                     i32.const 2
                     i32.and
                     local.tee $13
                     select
                     local.get $20
                     i32.const 2
                     i32.and
                     local.tee $14
                     select
                     local.set $25
                     local.get $15
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
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $26
                     local.get $15
                     i64.const 15
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $11
                     i32.const 6
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $27
                     local.get $1
                     i64.const 55
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $12
                     i32.const 2
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $28
                     local.get $13
                     select
                     local.get $14
                     select
                     local.set $29
                     local.get $15
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
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $30
                     local.get $15
                     i64.const 17
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $11
                     i32.const 8
                     i32.shr_u
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $31
                     local.get $1
                     i64.const 57
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $12
                     i32.const 4
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $32
                     local.get $13
                     select
                     local.get $14
                     select
                     local.set $33
                     local.get $15
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
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $34
                     local.get $15
                     i64.const 19
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $1
                     i64.const 48
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
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $35
                     local.get $1
                     i64.const 59
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $12
                     i32.const 6
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $36
                     local.get $13
                     select
                     local.get $14
                     select
                     local.set $37
                     local.get $19
                     local.get $15
                     i64.const 21
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
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $38
                     local.get $1
                     i64.const 61
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $12
                     i32.const 8
                     i32.shr_u
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $39
                     local.get $13
                     select
                     local.get $14
                     select
                     local.set $10
                     local.get $15
                     i64.const 11
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $11
                     i32.const 2
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=792
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $11
                     local.get $15
                     i64.const 23
                     i64.shr_u
                     i32.wrap_i64
                     local.tee $40
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
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $12
                     local.get $18
                     local.get $13
                     select
                     local.get $14
                     select
                     local.set $13
                     local.get $34
                     local.get $35
                     local.get $36
                     local.get $24
                     i32.const 4
                     i32.and
                     local.tee $41
                     select
                     local.get $20
                     i32.const 4
                     i32.and
                     local.tee $42
                     select
                     local.set $14
                     i64.const 3744803
                     i64.const 1444824297008334852
                     local.get $17
                     i32.const 7
                     i32.gt_u
                     select
                     local.get $17
                     i32.const 7
                     i32.and
                     i32.const 3
                     i32.shl
                     i64.extend_i32_u
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i32.const 3
                     i32.shl
                     i64.extend_i32_u
                     local.get $21
                     local.get $22
                     local.get $23
                     local.get $41
                     select
                     local.get $42
                     select
                     local.tee $43
                     local.get $26
                     local.get $27
                     local.get $28
                     local.get $41
                     select
                     local.get $42
                     select
                     local.tee $44
                     local.get $15
                     i64.const 25
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 1
                     i32.and
                     local.get $15
                     i64.const 24
                     i64.shr_u
                     i32.wrap_i64
                     i32.const -1
                     i32.const 1476400895
                     local.get $17
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
                     i32.const 1
                     i32.or
                     i32.shl
                     i32.const -4
                     i32.xor
                     i32.and
                     local.get $15
                     i64.const 22
                     i64.shr_u
                     i32.wrap_i64
                     i32.const -1
                     i64.const 7157868367050
                     local.get $17
                     i32.const 2
                     i32.shl
                     i64.extend_i32_u
                     local.tee $1
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     i32.const 1
                     i32.shl
                     local.tee $45
                     i32.const 2
                     i32.add
                     i32.shl
                     i32.and
                     local.get $40
                     i32.const 1
                     local.get $0
                     i32.const 2
                     i32.add
                     i32.shl
                     i32.const 1
                     i32.sub
                     i32.const -1
                     local.get $45
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
                     local.tee $0
                     i32.const 1
                     i32.const 10
                     i32.const 15
                     local.get $17
                     i32.const 14
                     i32.and
                     i32.const 8
                     i32.eq
                     select
                     i32.const 1
                     i32.shl
                     local.tee $40
                     i32.const 1
                     i32.add
                     i32.shl
                     i32.and
                     local.tee $45
                     select
                     i32.const 25
                     i32.shl
                     local.get $44
                     local.get $43
                     local.get $45
                     select
                     i32.const 20
                     i32.shl
                     i32.or
                     local.get $25
                     local.get $29
                     i32.const 1
                     i64.const 11429803878536
                     local.get $1
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     i32.const 1
                     i32.shl
                     local.tee $43
                     i32.const 1
                     i32.add
                     i32.shl
                     local.get $0
                     i32.and
                     local.tee $44
                     select
                     i32.const 15
                     i32.shl
                     i32.or
                     local.get $29
                     local.get $25
                     local.get $44
                     select
                     i32.const 10
                     i32.shl
                     i32.or
                     local.get $26
                     local.get $27
                     local.get $28
                     local.get $24
                     i32.const 1
                     i32.and
                     local.tee $24
                     select
                     local.get $20
                     i32.const 1
                     i32.and
                     local.tee $20
                     select
                     i32.const 5
                     i32.shl
                     i32.or
                     local.get $21
                     local.get $22
                     local.get $23
                     local.get $24
                     select
                     local.get $20
                     select
                     i32.or
                     i64.extend_i32_u
                     local.get $14
                     local.get $30
                     local.get $31
                     local.get $32
                     local.get $41
                     select
                     local.get $42
                     select
                     local.tee $21
                     local.get $45
                     select
                     i32.const 20
                     i32.shl
                     local.get $33
                     local.get $37
                     local.get $44
                     select
                     i32.const 15
                     i32.shl
                     i32.or
                     local.get $37
                     local.get $33
                     local.get $44
                     select
                     i32.const 10
                     i32.shl
                     i32.or
                     local.get $34
                     local.get $35
                     local.get $36
                     local.get $24
                     select
                     local.get $20
                     select
                     i32.const 5
                     i32.shl
                     i32.or
                     local.get $30
                     local.get $31
                     local.get $32
                     local.get $24
                     select
                     local.get $20
                     select
                     i32.or
                     i64.extend_i32_u
                     i64.const 30
                     i64.shl
                     i64.or
                     i64.const 9
                     i64.shl
                     i64.or
                     i64.const 4
                     i64.or
                     local.set $3
                     local.get $11
                     local.get $12
                     local.get $18
                     local.get $41
                     select
                     local.get $42
                     select
                     local.tee $22
                     local.get $19
                     local.get $38
                     local.get $39
                     local.get $41
                     select
                     local.get $42
                     select
                     local.tee $23
                     local.get $45
                     select
                     i32.const 25
                     i32.shl
                     local.get $10
                     local.get $13
                     local.get $44
                     select
                     i32.const 20
                     i32.shl
                     i32.or
                     local.get $13
                     local.get $10
                     local.get $44
                     select
                     i32.const 15
                     i32.shl
                     i32.or
                     local.get $11
                     local.get $12
                     local.get $18
                     local.get $24
                     select
                     local.get $20
                     select
                     i32.const 10
                     i32.shl
                     i32.or
                     local.get $19
                     local.get $38
                     local.get $39
                     local.get $24
                     select
                     local.get $20
                     select
                     i32.const 5
                     i32.shl
                     i32.or
                     local.get $21
                     local.get $14
                     local.get $45
                     select
                     i32.or
                     i64.extend_i32_u
                     local.get $23
                     local.get $22
                     local.get $45
                     select
                     i64.extend_i32_u
                     i64.const 30
                     i64.shl
                     i64.or
                     i32.const 1
                     local.get $45
                     local.get $44
                     select
                     if
                      local.get $0
                      local.get $17
                      i32.const 2
                      i32.shl
                      i32.load offset=472
                      local.tee $0
                      i32.const 65535
                      i32.and
                      i32.const 0
                      local.get $44
                      select
                      local.get $0
                      i32.const 16
                      i32.shr_u
                      i32.const 0
                      local.get $45
                      select
                      i32.or
                      local.tee $0
                      i32.const 8
                      i32.shl
                      local.get $0
                      i32.or
                      i32.const 16711935
                      i32.and
                      local.tee $0
                      i32.const 4
                      i32.shl
                      local.get $0
                      i32.or
                      i32.const 252645135
                      i32.and
                      local.tee $0
                      i32.const 2
                      i32.shl
                      local.get $0
                      i32.or
                      i32.const 858993459
                      i32.and
                      local.tee $0
                      i32.const 1
                      i32.shl
                      local.get $0
                      i32.or
                      i32.const 1431655765
                      i32.and
                      i32.const 3
                      i32.mul
                      i32.xor
                      local.set $0
                     end
                     local.get $0
                     i32.const 1
                     i32.and
                     i32.const -1
                     local.get $43
                     i32.shl
                     i32.const -2
                     i32.xor
                     local.get $0
                     i32.const 1
                     i32.shr_u
                     i32.and
                     i32.const -1
                     local.get $40
                     i32.const 1
                     i32.sub
                     i32.shl
                     local.tee $10
                     local.get $0
                     i32.const 3
                     i32.shr_u
                     i32.and
                     local.get $10
                     i32.const 1
                     local.get $43
                     i32.shl
                     i32.const 1
                     i32.sub
                     i32.or
                     i32.const -1
                     i32.xor
                     local.get $0
                     i32.const 2
                     i32.shr_u
                     i32.and
                     i32.or
                     i32.or
                     i32.or
                     i64.extend_i32_u
                     i64.const 35
                     i64.shl
                     i64.or
                     local.set $2
                     br $break|1
                    end
                    local.get $1
                    i64.const 20
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 31
                    i32.and
                    local.tee $10
                    i32.const 29
                    i32.gt_u
                    if
                     i64.const -9151873029083480128
                     local.set $3
                     br $break|1
                    end
                    local.get $1
                    i64.const 53
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $1
                    i64.const 25
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 127
                    i32.and
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=1248
                    local.tee $11
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=808
                    local.set $12
                    local.get $15
                    i64.const 7
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $1
                    i64.const 39
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 127
                    i32.and
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=1248
                    local.tee $13
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=808
                    local.set $14
                    local.get $15
                    i64.const 25
                    i64.shr_u
                    i64.const 1
                    i64.and
                    i32.const -1
                    i64.const 5651576228422017
                    i64.const -4286381023083155150
                    local.get $10
                    i32.const 15
                    i32.gt_u
                    local.tee $17
                    select
                    local.get $10
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
                    local.tee $0
                    i32.const 2
                    i32.add
                    i32.shl
                    i64.extend_i32_u
                    local.get $15
                    i64.const 23
                    i64.shr_u
                    i64.and
                    i32.const -1
                    local.get $0
                    i32.const 1
                    i32.or
                    i32.shl
                    i32.const -4
                    i32.xor
                    i64.extend_i32_u
                    local.get $15
                    i64.const 24
                    i64.shr_u
                    i64.and
                    i64.or
                    i64.or
                    i32.wrap_i64
                    local.set $0
                    local.get $1
                    i64.const 59
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $11
                    i32.const 8
                    i32.shr_u
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=808
                    local.tee $18
                    local.get $15
                    i64.const 13
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $13
                    i32.const 8
                    i32.shr_u
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=808
                    local.tee $19
                    i32.const 1029946068
                    local.get $10
                    i32.shr_u
                    i32.const 1
                    i32.and
                    local.tee $20
                    select
                    local.set $21
                    local.get $1
                    i64.const 62
                    i64.shr_u
                    i32.wrap_i64
                    local.get $15
                    i64.const 2
                    i64.shl
                    i32.wrap_i64
                    i32.const 4
                    i32.and
                    i32.or
                    local.get $1
                    i64.const 32
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 127
                    i32.and
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=1248
                    local.tee $22
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=808
                    local.tee $23
                    local.get $15
                    i64.const 16
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $1
                    i64.const 46
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 127
                    i32.and
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=1248
                    local.tee $24
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=808
                    local.tee $25
                    local.get $20
                    select
                    local.set $26
                    local.get $15
                    i64.const 1
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $22
                    i32.const 4
                    i32.shr_u
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=808
                    local.tee $27
                    local.get $15
                    i64.const 19
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $24
                    i32.const 4
                    i32.shr_u
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=808
                    local.tee $28
                    local.get $20
                    select
                    local.set $29
                    local.get $15
                    i64.const 4
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $22
                    i32.const 8
                    i32.shr_u
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=808
                    local.tee $22
                    local.get $15
                    i64.const 22
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $24
                    i32.const 8
                    i32.shr_u
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=808
                    local.tee $24
                    local.get $20
                    select
                    local.set $30
                    local.get $14
                    local.get $12
                    local.get $20
                    select
                    local.get $15
                    i64.const 10
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $13
                    i32.const 4
                    i32.shr_u
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=808
                    local.tee $13
                    local.get $1
                    i64.const 56
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $11
                    i32.const 4
                    i32.shr_u
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=808
                    local.tee $11
                    local.get $20
                    select
                    local.get $19
                    local.get $18
                    local.get $20
                    select
                    local.get $25
                    local.get $23
                    local.get $20
                    select
                    local.get $28
                    local.get $27
                    local.get $20
                    select
                    local.get $24
                    local.get $22
                    local.get $20
                    select
                    call $assembly/uastc/bc7/mode3
                    local.tee $1
                    i64.const 16383
                    i64.and
                    local.set $2
                    local.get $1
                    i64.const 14
                    i64.shr_u
                    i64.const 16383
                    i64.and
                    local.set $3
                    local.get $10
                    i32.const 26
                    i32.lt_u
                    if (result i32)
                     local.get $10
                     local.get $17
                     i32.add
                    else
                     i32.const 874586141
                     local.get $10
                     i32.const 26
                     i32.sub
                     i32.const 3
                     i32.shl
                     i32.shr_u
                     i32.const 255
                     i32.and
                    end
                    i32.const 4
                    i32.shl
                    i64.extend_i32_u
                    local.get $11
                    local.get $13
                    local.get $20
                    select
                    local.tee $11
                    local.get $12
                    local.get $14
                    local.get $20
                    select
                    local.tee $12
                    i32.const 1
                    local.get $10
                    i32.const 16
                    i32.lt_u
                    if (result i32)
                     i32.const 15
                    else
                     i64.const 72048970541048450
                     local.get $10
                     i32.const 15
                     i32.and
                     i32.const 2
                     i32.shl
                     i64.extend_i32_u
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                    end
                    i32.const 1
                    i32.shl
                    local.tee $13
                    i32.const 1
                    i32.add
                    i32.shl
                    local.get $0
                    i32.and
                    local.tee $14
                    select
                    local.get $12
                    local.get $11
                    local.get $14
                    select
                    local.get $26
                    local.get $21
                    local.get $14
                    select
                    local.get $21
                    local.get $26
                    local.get $14
                    select
                    local.get $30
                    local.get $29
                    local.get $14
                    select
                    local.get $29
                    local.get $30
                    local.get $14
                    select
                    call $assembly/uastc/bc7/mode3
                    local.tee $4
                    i64.const 14
                    i64.shr_u
                    i64.const 16383
                    i64.and
                    local.tee $5
                    i64.const 52
                    i64.shl
                    local.get $3
                    i64.const 38
                    i64.shl
                    i64.or
                    local.get $4
                    i64.const 16383
                    i64.and
                    i64.const 24
                    i64.shl
                    i64.or
                    local.get $2
                    i64.const 10
                    i64.shl
                    i64.or
                    i64.or
                    i64.const 8
                    i64.or
                    local.set $3
                    local.get $14
                    if
                     local.get $0
                     local.get $10
                     i32.const 1
                     i32.shl
                     i32.load16_u offset=600
                     local.tee $0
                     i32.const 8
                     i32.shl
                     local.get $0
                     i32.or
                     i32.const 16711935
                     i32.and
                     local.tee $0
                     i32.const 4
                     i32.shl
                     local.get $0
                     i32.or
                     i32.const 252645135
                     i32.and
                     local.tee $0
                     i32.const 2
                     i32.shl
                     local.get $0
                     i32.or
                     i32.const 858993459
                     i32.and
                     local.tee $0
                     i32.const 1
                     i32.shl
                     local.get $0
                     i32.or
                     i32.const 1431655765
                     i32.and
                     i32.const 3
                     i32.mul
                     i32.xor
                     local.set $0
                    end
                    local.get $0
                    i32.const 1
                    i32.and
                    i32.const -1
                    local.get $13
                    i32.const 1
                    i32.sub
                    i32.shl
                    local.get $0
                    i32.const 2
                    i32.shr_u
                    i32.and
                    i32.const -1
                    local.get $13
                    i32.shl
                    i32.const -2
                    i32.xor
                    local.get $0
                    i32.const 1
                    i32.shr_u
                    i32.and
                    i32.or
                    i32.or
                    i64.extend_i32_u
                    i64.const 34
                    i64.shl
                    local.get $4
                    i64.const 42
                    i64.shr_u
                    i64.const 3
                    i64.and
                    i64.const 32
                    i64.shl
                    i64.or
                    local.get $1
                    i64.const 42
                    i64.shr_u
                    i64.const 3
                    i64.and
                    i64.const 30
                    i64.shl
                    i64.or
                    local.get $4
                    i64.const 28
                    i64.shr_u
                    i64.const 16383
                    i64.and
                    i64.const 16
                    i64.shl
                    i64.or
                    local.get $1
                    i64.const 28
                    i64.shr_u
                    i64.const 16383
                    i64.and
                    i64.const 2
                    i64.shl
                    i64.or
                    local.get $5
                    i64.const 12
                    i64.shr_u
                    i64.or
                    local.set $2
                    br $break|1
                   end
                   local.get $1
                   i64.const 20
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 255
                   i32.and
                   local.get $1
                   i64.const 28
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 255
                   i32.and
                   local.get $1
                   i64.const 36
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 255
                   i32.and
                   local.get $1
                   i64.const 44
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 255
                   i32.and
                   local.get $1
                   i64.const 52
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 255
                   i32.and
                   local.get $1
                   i64.const 60
                   i64.shr_u
                   i32.wrap_i64
                   local.get $15
                   i64.const 4
                   i64.shl
                   i32.wrap_i64
                   i32.const 240
                   i32.and
                   i32.or
                   i32.const 255
                   i32.const 255
                   call $assembly/uastc/bc7/mode6
                   local.tee $1
                   i64.const 7
                   i64.shl
                   i64.const 64
                   i64.or
                   local.set $3
                   local.get $15
                   i64.const 3
                   i64.shr_u
                   i64.const 281474976710648
                   i64.and
                   local.get $15
                   i64.const 4
                   i64.shr_u
                   i64.const 3
                   i64.and
                   i64.or
                   local.tee $2
                   i64.const 8
                   i64.shl
                   i64.const 72057589742960640
                   i64.and
                   local.get $2
                   i64.const 16777215
                   i64.and
                   i64.or
                   local.tee $2
                   i64.const 4
                   i64.shl
                   i64.const 1152640029898506240
                   i64.and
                   local.get $2
                   i64.const 17587891081215
                   i64.and
                   i64.or
                   local.tee $2
                   i64.const 2
                   i64.shl
                   i64.const 4539697694678990592
                   i64.and
                   local.get $2
                   i64.const 17733194119839807
                   i64.and
                   i64.or
                   local.tee $2
                   i64.const 1
                   i64.shl
                   i64.const 8102099357864587376
                   i64.and
                   local.get $2
                   i64.const 506381209866536711
                   i64.and
                   i64.or
                   local.tee $2
                   i64.const 2
                   i64.shr_u
                   i64.const 1229782938247303441
                   i64.and
                   local.get $2
                   i64.const 1
                   i64.shl
                   i64.or
                   local.tee $2
                   i64.const -16
                   i64.and
                   local.get $2
                   i64.const 1
                   i64.shl
                   i64.const 14
                   i64.and
                   i64.or
                   local.get $1
                   i64.const 57
                   i64.shr_u
                   i64.or
                   local.set $2
                   br $break|1
                  end
                  local.get $15
                  i64.const 2
                  i64.shr_u
                  i64.const 1
                  i64.and
                  local.get $15
                  i64.const -16
                  i64.and
                  local.get $15
                  i64.const 1
                  i64.shr_u
                  i64.const 4
                  i64.and
                  i64.or
                  i64.or
                  local.tee $2
                  i64.const 2
                  i64.shr_u
                  local.get $2
                  i64.const 4
                  i64.shr_u
                  i64.xor
                  i64.const 217020518514230019
                  i64.and
                  local.tee $3
                  i64.const 2
                  i64.shl
                  local.get $3
                  i64.const 4
                  i64.shl
                  i64.or
                  local.get $2
                  i64.xor
                  local.tee $2
                  i64.const 4
                  i64.shr_u
                  local.get $2
                  i64.const 8
                  i64.shr_u
                  i64.xor
                  i64.const 4222189076152335
                  i64.and
                  local.tee $3
                  i64.const 4
                  i64.shl
                  local.get $3
                  i64.const 8
                  i64.shl
                  i64.or
                  local.get $2
                  i64.xor
                  local.tee $2
                  i64.const 8
                  i64.shr_u
                  local.get $2
                  i64.const 16
                  i64.shr_u
                  i64.xor
                  i64.const 1095216660735
                  i64.and
                  local.tee $3
                  i64.const 8
                  i64.shl
                  local.get $3
                  i64.const 16
                  i64.shl
                  i64.or
                  local.get $2
                  i64.xor
                  local.tee $2
                  i64.const 16
                  i64.shr_u
                  local.get $2
                  i64.const 32
                  i64.shr_u
                  i64.xor
                  i64.const 65535
                  i64.and
                  local.tee $3
                  i64.const 16
                  i64.shl
                  local.get $3
                  i64.const 32
                  i64.shl
                  i64.or
                  local.get $2
                  i64.xor
                  local.set $2
                  block $assembly/uastc/bc7/mode5|inlined.0 (result i64)
                   local.get $1
                   i64.const 36
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 31
                   i32.and
                   local.get $1
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
                   local.set $10
                   local.get $1
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
                   local.set $11
                   local.get $1
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
                   local.set $0
                   local.get $1
                   i64.const 51
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 31
                   i32.and
                   local.get $1
                   i64.const 29
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 127
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=1248
                   local.tee $12
                   i32.const 7
                   i32.and
                   i32.const 5
                   i32.shl
                   i32.or
                   i32.load8_u offset=896
                   local.set $13
                   local.get $1
                   i64.const 56
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 31
                   i32.and
                   local.get $12
                   i32.const 4
                   i32.shr_u
                   i32.const 7
                   i32.and
                   i32.const 5
                   i32.shl
                   i32.or
                   i32.load8_u offset=896
                   local.set $14
                   local.get $1
                   i64.const 61
                   i64.shr_u
                   i32.wrap_i64
                   local.get $15
                   i64.const 3
                   i64.shl
                   i32.wrap_i64
                   i32.const 24
                   i32.and
                   i32.or
                   local.get $12
                   i32.const 8
                   i32.shr_u
                   i32.const 5
                   i32.shl
                   i32.or
                   i32.load8_u offset=896
                   local.set $12
                   block $case3|2
                    block $case2|2
                     block $case1|2
                      block $case0|2
                       local.get $1
                       i64.const 20
                       i64.shr_u
                       i32.wrap_i64
                       i32.const 3
                       i32.and
                       local.tee $17
                       br_table $case0|2 $case1|2 $case2|2 $case3|2
                      end
                      local.get $13
                      i32.const 1
                      i32.add
                      i32.const 255
                      i32.mul
                      i32.const 9
                      i32.shr_u
                      i32.const 21
                      i32.shl
                      local.get $0
                      i32.const 1
                      i32.add
                      i32.const 255
                      i32.mul
                      i32.const 9
                      i32.shr_u
                      i32.const 14
                      i32.shl
                      i32.or
                      i32.const 16383
                      i32.or
                      i64.extend_i32_u
                      local.get $11
                      i32.const 22
                      i32.shl
                      local.get $10
                      i32.const 14
                      i32.shl
                      i32.or
                      local.get $12
                      i32.const 1
                      i32.add
                      i32.const 255
                      i32.mul
                      i32.const 9
                      i32.shr_u
                      i32.const 7
                      i32.shl
                      i32.or
                      local.get $14
                      i32.const 1
                      i32.add
                      i32.const 255
                      i32.mul
                      i32.const 9
                      i32.shr_u
                      i32.or
                      i64.extend_i32_u
                      i64.const 28
                      i64.shl
                      i64.or
                      br $assembly/uastc/bc7/mode5|inlined.0
                     end
                     local.get $11
                     i32.const 1
                     i32.add
                     i32.const 255
                     i32.mul
                     i32.const 9
                     i32.shr_u
                     i32.const 7
                     i32.shl
                     i32.const 268419072
                     i32.or
                     local.get $10
                     i32.const 1
                     i32.add
                     i32.const 255
                     i32.mul
                     i32.const 9
                     i32.shr_u
                     i32.or
                     i64.extend_i32_u
                     local.get $13
                     i32.const 22
                     i32.shl
                     local.get $0
                     i32.const 14
                     i32.shl
                     i32.or
                     local.get $12
                     i32.const 1
                     i32.add
                     i32.const 255
                     i32.mul
                     i32.const 9
                     i32.shr_u
                     i32.const 7
                     i32.shl
                     i32.or
                     local.get $14
                     i32.const 1
                     i32.add
                     i32.const 255
                     i32.mul
                     i32.const 9
                     i32.shr_u
                     i32.or
                     i64.extend_i32_u
                     i64.const 28
                     i64.shl
                     i64.or
                     br $assembly/uastc/bc7/mode5|inlined.0
                    end
                    local.get $13
                    i32.const 1
                    i32.add
                    i32.const 255
                    i32.mul
                    i32.const 9
                    i32.shr_u
                    i32.const 21
                    i32.shl
                    local.get $0
                    i32.const 1
                    i32.add
                    i32.const 255
                    i32.mul
                    i32.const 9
                    i32.shr_u
                    i32.const 14
                    i32.shl
                    i32.or
                    local.get $11
                    i32.const 1
                    i32.add
                    i32.const 255
                    i32.mul
                    i32.const 9
                    i32.shr_u
                    i32.const 7
                    i32.shl
                    i32.or
                    local.get $10
                    i32.const 1
                    i32.add
                    i32.const 255
                    i32.mul
                    i32.const 9
                    i32.shr_u
                    i32.or
                    i64.extend_i32_u
                    local.get $12
                    i32.const 22
                    i32.shl
                    local.get $14
                    i32.const 14
                    i32.shl
                    i32.or
                    i32.const 16383
                    i32.or
                    i64.extend_i32_u
                    i64.const 28
                    i64.shl
                    i64.or
                    br $assembly/uastc/bc7/mode5|inlined.0
                   end
                   local.get $13
                   i32.const 1
                   i32.add
                   i32.const 255
                   i32.mul
                   i32.const 9
                   i32.shr_u
                   i32.const 21
                   i32.shl
                   local.get $0
                   i32.const 1
                   i32.add
                   i32.const 255
                   i32.mul
                   i32.const 9
                   i32.shr_u
                   i32.const 14
                   i32.shl
                   i32.or
                   local.get $11
                   i32.const 1
                   i32.add
                   i32.const 255
                   i32.mul
                   i32.const 9
                   i32.shr_u
                   i32.const 7
                   i32.shl
                   i32.or
                   local.get $10
                   i32.const 1
                   i32.add
                   i32.const 255
                   i32.mul
                   i32.const 9
                   i32.shr_u
                   i32.or
                   i64.extend_i32_u
                   local.get $12
                   i32.const 1
                   i32.add
                   i32.const 255
                   i32.mul
                   i32.const 9
                   i32.shr_u
                   i32.const 7
                   i32.shl
                   i32.const 1073725440
                   i32.or
                   local.get $14
                   i32.const 1
                   i32.add
                   i32.const 255
                   i32.mul
                   i32.const 9
                   i32.shr_u
                   i32.or
                   i64.extend_i32_u
                   i64.const 28
                   i64.shl
                   i64.or
                  end
                  local.set $1
                  local.get $17
                  i32.const 1
                  i32.add
                  i32.const 3
                  i32.and
                  i32.const 6
                  i32.shl
                  i64.extend_i32_s
                  local.get $1
                  i64.const 8
                  i64.shl
                  i64.or
                  i64.const 32
                  i64.or
                  local.set $3
                  local.get $2
                  i64.const 2
                  i64.shl
                  i64.const 4
                  i64.and
                  local.get $2
                  i64.const -17179869184
                  i64.and
                  local.get $2
                  i64.const 1
                  i64.shl
                  i64.const 17179869176
                  i64.and
                  i64.or
                  i64.or
                  local.get $1
                  i64.const 56
                  i64.shr_u
                  i64.or
                  local.set $2
                  br $break|1
                 end
                 local.get $1
                 i64.const 20
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 31
                 i32.and
                 local.tee $10
                 i32.const 18
                 i32.gt_u
                 if
                  i64.const -9151873029083480128
                  local.set $3
                  br $break|1
                 end
                 local.get $1
                 i64.const 62
                 i64.shr_u
                 i32.wrap_i64
                 local.get $15
                 i64.const 2
                 i64.shl
                 i32.wrap_i64
                 i32.const 4
                 i32.and
                 i32.or
                 local.get $1
                 i64.const 32
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
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=808
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.set $11
                 local.get $15
                 i64.const 16
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $1
                 i64.const 46
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 127
                 i32.and
                 i32.const 1
                 i32.shl
                 i32.load16_u offset=1248
                 local.tee $12
                 i32.const 7
                 i32.and
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=808
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.set $13
                 local.get $15
                 i64.const 7
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $1
                 i64.const 39
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 127
                 i32.and
                 i32.const 1
                 i32.shl
                 i32.load16_u offset=1248
                 local.tee $14
                 i32.const 7
                 i32.and
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=808
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $17
                 local.get $1
                 i64.const 53
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $1
                 i64.const 25
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 127
                 i32.and
                 i32.const 1
                 i32.shl
                 i32.load16_u offset=1248
                 local.tee $18
                 i32.const 7
                 i32.and
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=808
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $19
                 i64.const 23414388175754322
                 local.get $10
                 i32.const 3
                 i32.mul
                 i64.extend_i32_u
                 i64.shr_s
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.tee $20
                 i32.const 2
                 i32.and
                 local.tee $21
                 select
                 local.set $22
                 local.get $15
                 i64.const 10
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $14
                 i32.const 4
                 i32.shr_u
                 i32.const 7
                 i32.and
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=808
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $23
                 local.get $1
                 i64.const 56
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $18
                 i32.const 4
                 i32.shr_u
                 i32.const 7
                 i32.and
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=808
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $24
                 local.get $21
                 select
                 local.set $25
                 local.get $15
                 i64.const 13
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $14
                 i32.const 8
                 i32.shr_u
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=808
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $14
                 local.get $1
                 i64.const 59
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $18
                 i32.const 8
                 i32.shr_u
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=808
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $18
                 local.get $21
                 select
                 local.set $26
                 local.get $15
                 i64.const 19
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $12
                 i32.const 4
                 i32.shr_u
                 i32.const 7
                 i32.and
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=808
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $27
                 local.get $15
                 i64.const 1
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $0
                 i32.const 4
                 i32.shr_u
                 i32.const 7
                 i32.and
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=808
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $28
                 local.get $21
                 select
                 local.set $29
                 local.get $15
                 i64.const 22
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $12
                 i32.const 8
                 i32.shr_u
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=808
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $12
                 local.get $15
                 i64.const 4
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $0
                 i32.const 8
                 i32.shr_u
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=808
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $30
                 local.get $21
                 select
                 local.set $31
                 local.get $15
                 i64.const 25
                 i64.shr_u
                 i64.const 1
                 i64.and
                 i32.const -1
                 i64.const 1065
                 i64.const 3202384868132024868
                 local.get $10
                 i32.const 15
                 i32.gt_u
                 local.tee $32
                 select
                 local.get $10
                 i32.const 15
                 i32.and
                 i32.const 2
                 i32.shl
                 i64.extend_i32_u
                 local.tee $1
                 i64.shr_u
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
                 local.get $15
                 i64.const 23
                 i64.shr_u
                 i64.and
                 i32.const -1
                 local.get $0
                 i32.const 1
                 i32.or
                 i32.shl
                 i32.const -4
                 i32.xor
                 i64.extend_i32_u
                 local.get $15
                 i64.const 24
                 i64.shr_u
                 i64.and
                 i64.or
                 i64.or
                 i32.wrap_i64
                 local.set $0
                 local.get $13
                 local.get $11
                 local.get $20
                 i32.const 4
                 i32.and
                 local.tee $33
                 select
                 local.set $34
                 i64.const 2035220
                 i64.const 2466600419146929192
                 i64.const 2378196406272789258
                 local.get $10
                 i32.const 7
                 i32.gt_u
                 select
                 local.get $32
                 select
                 local.get $10
                 i32.const 7
                 i32.and
                 i32.const 3
                 i32.shl
                 i64.extend_i32_u
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 255
                 i32.and
                 i32.const 3
                 i32.shl
                 i64.extend_i32_u
                 local.get $17
                 local.get $19
                 local.get $33
                 select
                 local.tee $35
                 local.get $23
                 local.get $24
                 local.get $33
                 select
                 local.tee $36
                 i32.const 1
                 i64.const 2303
                 i64.const -3385438295322625
                 local.get $32
                 select
                 local.get $1
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 15
                 i32.and
                 i32.const 1
                 i32.shl
                 local.tee $37
                 i32.const 1
                 i32.add
                 i32.shl
                 local.get $0
                 i32.and
                 local.tee $38
                 select
                 i32.const 25
                 i32.shl
                 local.get $36
                 local.get $35
                 local.get $38
                 select
                 i32.const 20
                 i32.shl
                 i32.or
                 local.get $22
                 local.get $25
                 local.get $0
                 i32.const 1
                 i64.const 3891
                 i64.const 4435908468672099174
                 local.get $32
                 select
                 local.get $1
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 15
                 i32.and
                 i32.const 1
                 i32.shl
                 local.tee $32
                 i32.const 1
                 i32.add
                 i32.shl
                 i32.and
                 local.tee $35
                 select
                 i32.const 15
                 i32.shl
                 i32.or
                 local.get $25
                 local.get $22
                 local.get $35
                 select
                 i32.const 10
                 i32.shl
                 i32.or
                 local.get $23
                 local.get $24
                 local.get $20
                 i32.const 1
                 i32.and
                 local.tee $20
                 select
                 i32.const 5
                 i32.shl
                 i32.or
                 local.get $17
                 local.get $19
                 local.get $20
                 select
                 i32.or
                 i64.extend_i32_u
                 local.get $34
                 local.get $14
                 local.get $18
                 local.get $33
                 select
                 local.tee $17
                 local.get $38
                 select
                 i32.const 20
                 i32.shl
                 local.get $26
                 local.get $13
                 local.get $11
                 local.get $21
                 select
                 local.tee $19
                 local.get $35
                 select
                 i32.const 15
                 i32.shl
                 i32.or
                 local.get $19
                 local.get $26
                 local.get $35
                 select
                 i32.const 10
                 i32.shl
                 i32.or
                 local.get $13
                 local.get $11
                 local.get $20
                 select
                 i32.const 5
                 i32.shl
                 i32.or
                 local.get $14
                 local.get $18
                 local.get $20
                 select
                 i32.or
                 i64.extend_i32_u
                 i64.const 30
                 i64.shl
                 i64.or
                 i64.const 9
                 i64.shl
                 i64.or
                 i64.const 4
                 i64.or
                 local.set $3
                 local.get $12
                 local.get $30
                 local.get $33
                 select
                 local.tee $11
                 local.get $27
                 local.get $28
                 local.get $33
                 select
                 local.tee $13
                 local.get $38
                 select
                 i32.const 25
                 i32.shl
                 local.get $29
                 local.get $31
                 local.get $35
                 select
                 i32.const 20
                 i32.shl
                 i32.or
                 local.get $31
                 local.get $29
                 local.get $35
                 select
                 i32.const 15
                 i32.shl
                 i32.or
                 local.get $12
                 local.get $30
                 local.get $20
                 select
                 i32.const 10
                 i32.shl
                 i32.or
                 local.get $27
                 local.get $28
                 local.get $20
                 select
                 i32.const 5
                 i32.shl
                 i32.or
                 local.get $17
                 local.get $34
                 local.get $38
                 select
                 i32.or
                 i64.extend_i32_u
                 local.get $13
                 local.get $11
                 local.get $38
                 select
                 i64.extend_i32_u
                 i64.const 30
                 i64.shl
                 i64.or
                 i32.const 1
                 local.get $38
                 local.get $35
                 select
                 if
                  local.get $0
                  local.get $10
                  i32.const 2
                  i32.shl
                  i32.load offset=520
                  local.tee $0
                  i32.const 65535
                  i32.and
                  i32.const 0
                  local.get $35
                  select
                  local.get $0
                  i32.const 16
                  i32.shr_u
                  i32.const 0
                  local.get $38
                  select
                  i32.or
                  local.tee $0
                  i32.const 8
                  i32.shl
                  local.get $0
                  i32.or
                  i32.const 16711935
                  i32.and
                  local.tee $0
                  i32.const 4
                  i32.shl
                  local.get $0
                  i32.or
                  i32.const 252645135
                  i32.and
                  local.tee $0
                  i32.const 2
                  i32.shl
                  local.get $0
                  i32.or
                  i32.const 858993459
                  i32.and
                  local.tee $0
                  i32.const 1
                  i32.shl
                  local.get $0
                  i32.or
                  i32.const 1431655765
                  i32.and
                  i32.const 3
                  i32.mul
                  i32.xor
                  local.set $0
                 end
                 local.get $0
                 i32.const 1
                 i32.and
                 i32.const -1
                 local.get $32
                 local.get $37
                 local.get $32
                 local.get $37
                 i32.lt_u
                 select
                 local.tee $10
                 i32.shl
                 i32.const -2
                 i32.xor
                 local.get $0
                 i32.const 1
                 i32.shr_u
                 i32.and
                 i32.const -1
                 local.get $32
                 local.get $37
                 local.get $32
                 local.get $37
                 i32.gt_u
                 select
                 i32.const 1
                 i32.sub
                 i32.shl
                 local.tee $11
                 local.get $0
                 i32.const 3
                 i32.shr_u
                 i32.and
                 local.get $11
                 i32.const 1
                 local.get $10
                 i32.shl
                 i32.const 1
                 i32.sub
                 i32.or
                 i32.const -1
                 i32.xor
                 local.get $0
                 i32.const 2
                 i32.shr_u
                 i32.and
                 i32.or
                 i32.or
                 i32.or
                 i64.extend_i32_u
                 i64.const 35
                 i64.shl
                 i64.or
                 local.set $2
                 br $break|1
                end
                local.get $1
                i64.const 5
                i64.shr_u
                i32.wrap_i64
                i32.const 255
                i32.and
                i32.const 1
                i32.shl
                i32.load16_s offset=2048
                local.get $1
                i64.const 13
                i64.shr_u
                i32.wrap_i64
                i32.const 255
                i32.and
                i32.const 1
                i32.shl
                i32.load16_s offset=2048
                i32.const 14
                i32.shl
                i32.or
                i64.extend_i32_s
                local.get $1
                i64.const 21
                i64.shr_u
                i32.wrap_i64
                i32.const 255
                i32.and
                i32.const 1
                i32.shl
                i32.load16_s offset=2048
                local.get $1
                i64.const 29
                i64.shr_u
                i32.wrap_i64
                i32.const 255
                i32.and
                i32.const 257
                i32.mul
                i32.const 14
                i32.shl
                i32.or
                i64.extend_i32_u
                i64.const 28
                i64.shl
                i64.or
                local.tee $1
                i64.const 8
                i64.shl
                i64.const 32
                i64.or
                local.set $3
                local.get $1
                i64.const 56
                i64.shr_u
                i64.const 2863311532
                i64.or
                local.set $2
                br $break|1
               end
               local.get $1
               i64.const 28
               i64.shr_u
               i32.wrap_i64
               i32.const 31
               i32.and
               local.tee $0
               i32.const 29
               i32.gt_u
               if
                i64.const -9151873029083480128
                local.set $3
                br $break|1
               end
               local.get $15
               i64.const 31
               i64.shl
               local.get $1
               i64.const 33
               i64.shr_u
               i64.or
               i64.const 1085102592571150095
               i64.and
               local.tee $2
               i64.const 4
               i64.shl
               local.get $2
               i64.or
               local.tee $2
               i32.wrap_i64
               i32.const 255
               i32.and
               local.set $10
               local.get $15
               i64.const 27
               i64.shl
               local.get $1
               i64.const 37
               i64.shr_u
               i64.or
               i64.const 1085102592571150095
               i64.and
               local.tee $1
               i64.const 4
               i64.shl
               local.get $1
               i64.or
               local.tee $3
               i32.wrap_i64
               i32.const 255
               i32.and
               local.set $11
               local.get $15
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
               local.tee $12
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
               local.get $15
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
               local.get $15
               i64.const 32
               i64.shr_u
               i64.and
               i64.or
               i64.or
               local.set $1
               local.get $2
               i64.const 8
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $13
               local.get $2
               i64.const 40
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $14
               i32.const 1029946068
               local.get $0
               i32.shr_u
               i32.const 1
               i32.and
               local.tee $17
               select
               local.set $18
               local.get $3
               i64.const 8
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $19
               local.get $3
               i64.const 40
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $20
               local.get $17
               select
               local.set $21
               local.get $2
               i64.const 16
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $22
               local.get $2
               i64.const 48
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $23
               local.get $17
               select
               local.set $24
               local.get $3
               i64.const 16
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $25
               local.get $3
               i64.const 48
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $26
               local.get $17
               select
               local.set $27
               local.get $2
               i64.const 24
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $28
               local.get $2
               i64.const 56
               i64.shr_u
               i32.wrap_i64
               local.tee $29
               local.get $17
               select
               local.set $30
               local.get $3
               i64.const 24
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $31
               local.get $3
               i64.const 56
               i64.shr_u
               i32.wrap_i64
               local.tee $32
               local.get $17
               select
               local.set $33
               local.get $2
               i64.const 32
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $34
               local.get $10
               local.get $17
               select
               local.get $3
               i64.const 32
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $35
               local.get $11
               local.get $17
               select
               local.get $14
               local.get $13
               local.get $17
               select
               local.get $20
               local.get $19
               local.get $17
               select
               local.get $23
               local.get $22
               local.get $17
               select
               local.get $26
               local.get $25
               local.get $17
               select
               local.get $29
               local.get $28
               local.get $17
               select
               local.get $32
               local.get $31
               local.get $17
               select
               call $assembly/uastc/bc7/mode7
               local.tee $2
               i64.const 1023
               i64.and
               local.set $3
               local.get $2
               i64.const 10
               i64.shr_u
               i64.const 1023
               i64.and
               local.set $4
               local.get $0
               local.get $12
               i32.add
               i32.const 874586141
               local.get $0
               i32.const 26
               i32.sub
               i32.const 3
               i32.shl
               i32.shr_u
               i32.const 255
               i32.and
               local.get $0
               i32.const 26
               i32.lt_u
               select
               i32.const 8
               i32.shl
               i64.extend_i32_u
               local.get $2
               i64.const 20
               i64.shr_u
               i64.const 1023
               i64.and
               i64.const 54
               i64.shl
               local.get $11
               local.get $35
               local.get $17
               select
               local.tee $11
               local.get $10
               local.get $34
               local.get $17
               select
               local.tee $10
               i64.const 1
               local.get $0
               i32.const 16
               i32.lt_u
               if (result i32)
                i32.const 15
               else
                i64.const 72048970541048450
                local.get $0
                i32.const 15
                i32.and
                i32.const 2
                i32.shl
                i64.extend_i32_u
                i64.shr_s
                i32.wrap_i64
                i32.const 15
                i32.and
               end
               i32.const 1
               i32.shl
               local.tee $12
               i32.const 1
               i32.add
               i64.extend_i32_u
               i64.shl
               local.get $1
               i64.and
               i64.const 0
               i64.ne
               local.tee $13
               select
               local.get $10
               local.get $11
               local.get $13
               select
               local.get $21
               local.get $18
               local.get $13
               select
               local.get $18
               local.get $21
               local.get $13
               select
               local.get $27
               local.get $24
               local.get $13
               select
               local.get $24
               local.get $27
               local.get $13
               select
               local.get $33
               local.get $30
               local.get $13
               select
               local.get $30
               local.get $33
               local.get $13
               select
               call $assembly/uastc/bc7/mode7
               local.tee $5
               i64.const 10
               i64.shr_u
               i64.const 1023
               i64.and
               i64.const 44
               i64.shl
               i64.or
               local.get $4
               i64.const 34
               i64.shl
               i64.or
               local.get $5
               i64.const 1023
               i64.and
               i64.const 24
               i64.shl
               i64.or
               local.get $3
               i64.const 14
               i64.shl
               i64.or
               i64.or
               i64.const 128
               i64.or
               local.set $3
               local.get $13
               if
                local.get $0
                i32.const 1
                i32.shl
                i32.load16_u offset=600
                local.tee $0
                i32.const 8
                i32.shl
                local.get $0
                i32.or
                i32.const 16711935
                i32.and
                local.tee $0
                i32.const 4
                i32.shl
                local.get $0
                i32.or
                i32.const 252645135
                i32.and
                local.tee $0
                i32.const 2
                i32.shl
                local.get $0
                i32.or
                i32.const 858993459
                i32.and
                local.tee $0
                i32.const 1
                i32.shl
                local.get $0
                i32.or
                i32.const 1431655765
                i32.and
                i32.const 3
                i32.mul
                i64.extend_i32_u
                local.get $1
                i64.xor
                local.set $1
               end
               local.get $5
               i64.const 20
               i64.shr_u
               i64.const 1023
               i64.and
               local.get $1
               i64.const 1
               i64.and
               i32.const -1
               local.get $12
               i32.const 1
               i32.sub
               i32.shl
               i64.extend_i32_u
               local.get $1
               i64.const 2
               i64.shr_u
               i64.and
               i32.const -1
               local.get $12
               i32.shl
               i32.const -2
               i32.xor
               i64.extend_i32_u
               local.get $1
               i64.const 1
               i64.shr_u
               i64.and
               i64.or
               i64.or
               i64.const 34
               i64.shl
               local.get $5
               i64.const 40
               i64.shr_u
               i64.const 3
               i64.and
               i64.const 32
               i64.shl
               i64.or
               local.get $2
               i64.const 40
               i64.shr_u
               i64.const 3
               i64.and
               i64.const 30
               i64.shl
               i64.or
               local.get $5
               i64.const 30
               i64.shr_u
               i64.const 1023
               i64.and
               i64.const 20
               i64.shl
               i64.or
               local.get $2
               i64.const 30
               i64.shr_u
               i64.const 1023
               i64.and
               i64.const 10
               i64.shl
               i64.or
               i64.or
               local.set $2
               br $break|1
              end
              local.get $1
              i64.const 33
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              local.get $1
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
              local.get $1
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
              local.get $1
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
              local.get $1
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
              local.get $1
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
              local.get $1
              i64.const 53
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              local.get $1
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
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=848
              local.get $1
              i64.const 57
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
              local.get $1
              i64.const 61
              i64.shr_u
              i32.wrap_i64
              local.get $15
              i64.const 3
              i64.shl
              i32.wrap_i64
              i32.const 8
              i32.and
              i32.or
              local.get $0
              i32.const 4
              i32.shr_u
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=848
              call $assembly/uastc/bc7/mode6
              local.tee $1
              i64.const 7
              i64.shl
              i64.const 64
              i64.or
              local.set $3
              local.get $15
              i64.const -2
              i64.and
              local.get $1
              i64.const 57
              i64.shr_u
              i64.or
              local.set $2
              br $break|1
             end
             local.get $15
             i64.const 2
             i64.shr_u
             i64.const 1
             i64.and
             local.get $15
             i64.const -16
             i64.and
             local.get $15
             i64.const 1
             i64.shr_u
             i64.const 4
             i64.and
             i64.or
             i64.or
             local.tee $2
             i64.const 2
             i64.shr_u
             local.get $2
             i64.const 4
             i64.shr_u
             i64.xor
             i64.const 217020518514230019
             i64.and
             local.tee $3
             i64.const 2
             i64.shl
             local.get $3
             i64.const 4
             i64.shl
             i64.or
             local.get $2
             i64.xor
             local.tee $2
             i64.const 4
             i64.shr_u
             local.get $2
             i64.const 8
             i64.shr_u
             i64.xor
             i64.const 4222189076152335
             i64.and
             local.tee $3
             i64.const 4
             i64.shl
             local.get $3
             i64.const 8
             i64.shl
             i64.or
             local.get $2
             i64.xor
             local.tee $2
             i64.const 8
             i64.shr_u
             local.get $2
             i64.const 16
             i64.shr_u
             i64.xor
             i64.const 1095216660735
             i64.and
             local.tee $3
             i64.const 8
             i64.shl
             local.get $3
             i64.const 16
             i64.shl
             i64.or
             local.get $2
             i64.xor
             local.tee $2
             i64.const 16
             i64.shr_u
             local.get $2
             i64.const 32
             i64.shr_u
             i64.xor
             i64.const 65535
             i64.and
             local.set $4
             block $assembly/uastc/bc7/mode5|inlined.1 (result i64)
              local.get $1
              i64.const 34
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              local.get $1
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
              local.set $10
              local.get $1
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
              local.set $11
              local.get $1
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
              local.set $12
              local.get $1
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
              local.set $13
              local.get $1
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
              local.set $0
              local.get $1
              i64.const 54
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              local.get $1
              i64.const 29
              i64.shr_u
              i32.wrap_i64
              i32.const 31
              i32.and
              i32.const 1
              i32.shl
              i32.load16_u offset=1504
              local.tee $14
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=848
              local.set $17
              local.get $1
              i64.const 58
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              local.get $14
              i32.const 2
              i32.shr_u
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=848
              local.set $18
              local.get $1
              i64.const 62
              i64.shr_u
              i32.wrap_i64
              local.get $15
              i64.const 2
              i64.shl
              i32.wrap_i64
              i32.const 12
              i32.and
              i32.or
              local.get $14
              i32.const 4
              i32.shr_u
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=848
              local.set $14
              block $case3|3
               block $case2|3
                block $case1|3
                 block $case0|3
                  local.get $1
                  i64.const 19
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 3
                  i32.and
                  local.tee $19
                  br_table $case0|3 $case1|3 $case2|3 $case3|3
                 end
                 local.get $13
                 i32.const 1
                 i32.add
                 i32.const 255
                 i32.mul
                 i32.const 9
                 i32.shr_u
                 i32.const 21
                 i32.shl
                 local.get $12
                 i32.const 1
                 i32.add
                 i32.const 255
                 i32.mul
                 i32.const 9
                 i32.shr_u
                 i32.const 14
                 i32.shl
                 i32.or
                 local.get $14
                 i32.const 1
                 i32.add
                 i32.const 255
                 i32.mul
                 i32.const 9
                 i32.shr_u
                 i32.const 7
                 i32.shl
                 i32.or
                 local.get $18
                 i32.const 1
                 i32.add
                 i32.const 255
                 i32.mul
                 i32.const 9
                 i32.shr_u
                 i32.or
                 i64.extend_i32_u
                 local.get $11
                 i32.const 22
                 i32.shl
                 local.get $10
                 i32.const 14
                 i32.shl
                 i32.or
                 local.get $17
                 i32.const 1
                 i32.add
                 i32.const 255
                 i32.mul
                 i32.const 9
                 i32.shr_u
                 i32.const 7
                 i32.shl
                 i32.or
                 local.get $0
                 i32.const 1
                 i32.add
                 i32.const 255
                 i32.mul
                 i32.const 9
                 i32.shr_u
                 i32.or
                 i64.extend_i32_u
                 i64.const 28
                 i64.shl
                 i64.or
                 br $assembly/uastc/bc7/mode5|inlined.1
                end
                local.get $14
                i32.const 1
                i32.add
                i32.const 255
                i32.mul
                i32.const 9
                i32.shr_u
                i32.const 21
                i32.shl
                local.get $18
                i32.const 1
                i32.add
                i32.const 255
                i32.mul
                i32.const 9
                i32.shr_u
                i32.const 14
                i32.shl
                i32.or
                local.get $11
                i32.const 1
                i32.add
                i32.const 255
                i32.mul
                i32.const 9
                i32.shr_u
                i32.const 7
                i32.shl
                i32.or
                local.get $10
                i32.const 1
                i32.add
                i32.const 255
                i32.mul
                i32.const 9
                i32.shr_u
                i32.or
                i64.extend_i32_u
                local.get $13
                i32.const 22
                i32.shl
                local.get $12
                i32.const 14
                i32.shl
                i32.or
                local.get $17
                i32.const 1
                i32.add
                i32.const 255
                i32.mul
                i32.const 9
                i32.shr_u
                i32.const 7
                i32.shl
                i32.or
                local.get $0
                i32.const 1
                i32.add
                i32.const 255
                i32.mul
                i32.const 9
                i32.shr_u
                i32.or
                i64.extend_i32_u
                i64.const 28
                i64.shl
                i64.or
                br $assembly/uastc/bc7/mode5|inlined.1
               end
               local.get $13
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.const 21
               i32.shl
               local.get $12
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.const 14
               i32.shl
               i32.or
               local.get $11
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.const 7
               i32.shl
               i32.or
               local.get $10
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.or
               i64.extend_i32_u
               local.get $17
               i32.const 22
               i32.shl
               local.get $0
               i32.const 14
               i32.shl
               i32.or
               local.get $14
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.const 7
               i32.shl
               i32.or
               local.get $18
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.or
               i64.extend_i32_u
               i64.const 28
               i64.shl
               i64.or
               br $assembly/uastc/bc7/mode5|inlined.1
              end
              local.get $13
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 21
              i32.shl
              local.get $12
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 14
              i32.shl
              i32.or
              local.get $11
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 7
              i32.shl
              i32.or
              local.get $10
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.or
              i64.extend_i32_u
              local.get $14
              i32.const 22
              i32.shl
              local.get $18
              i32.const 14
              i32.shl
              i32.or
              local.get $17
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 7
              i32.shl
              i32.or
              local.get $0
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.or
              i64.extend_i32_u
              i64.const 28
              i64.shl
              i64.or
             end
             local.set $1
             local.get $19
             i32.const 1
             i32.add
             i32.const 3
             i32.and
             i32.const 6
             i32.shl
             i64.extend_i32_s
             local.get $1
             i64.const 8
             i64.shl
             i64.or
             i64.const 32
             i64.or
             local.set $3
             local.get $4
             i64.const 16
             i64.shl
             local.get $4
             i64.const 32
             i64.shl
             i64.or
             local.get $2
             i64.xor
             local.tee $2
             i64.const 2
             i64.shl
             i64.const 4
             i64.and
             local.get $2
             i64.const -17179869184
             i64.and
             local.get $2
             i64.const 1
             i64.shl
             i64.const 17179869176
             i64.and
             i64.or
             i64.or
             local.get $1
             i64.const 56
             i64.shr_u
             i64.or
             local.set $2
             br $break|1
            end
            local.get $1
            i64.const 33
            i64.shr_u
            i32.wrap_i64
            i32.const 63
            i32.and
            local.get $1
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
            local.get $1
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
            local.get $1
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
            local.get $1
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
            local.get $1
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
            local.get $1
            i64.const 63
            i64.shr_u
            i32.wrap_i64
            local.get $15
            i64.const 1
            i64.shl
            i32.wrap_i64
            i32.const 62
            i32.and
            i32.or
            local.get $1
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
            local.get $15
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
            local.get $15
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
            call $assembly/uastc/bc7/mode6
            local.tee $1
            i64.const 7
            i64.shl
            i64.const 64
            i64.or
            local.set $3
            local.get $15
            i64.const 16
            i64.shr_u
            i64.const 281474976710648
            i64.and
            local.get $15
            i64.const 17
            i64.shr_u
            i64.const 3
            i64.and
            i64.or
            local.tee $2
            i64.const 8
            i64.shl
            i64.const 72057589742960640
            i64.and
            local.get $2
            i64.const 16777215
            i64.and
            i64.or
            local.tee $2
            i64.const 4
            i64.shl
            i64.const 1152640029898506240
            i64.and
            local.get $2
            i64.const 17587891081215
            i64.and
            i64.or
            local.tee $2
            i64.const 2
            i64.shl
            i64.const 4539697694678990592
            i64.and
            local.get $2
            i64.const 17733194119839807
            i64.and
            i64.or
            local.tee $2
            i64.const 1
            i64.shl
            i64.const 8102099357864587376
            i64.and
            local.get $2
            i64.const 506381209866536711
            i64.and
            i64.or
            local.tee $2
            i64.const 2
            i64.shr_u
            i64.const 1229782938247303441
            i64.and
            local.get $2
            i64.const 1
            i64.shl
            i64.or
            local.tee $2
            i64.const -16
            i64.and
            local.get $2
            i64.const 1
            i64.shl
            i64.const 14
            i64.and
            i64.or
            local.get $1
            i64.const 57
            i64.shr_u
            i64.or
            local.set $2
            br $break|1
           end
           local.get $15
           i64.const 28
           i64.shr_u
           i64.const 4294967292
           i64.and
           local.tee $2
           i64.const 16
           i64.shl
           local.get $2
           i64.or
           i64.const 281470681808895
           i64.and
           local.tee $2
           i64.const 8
           i64.shl
           local.get $2
           i64.or
           i64.const 71777214294589695
           i64.and
           local.tee $2
           i64.const 4
           i64.shl
           local.get $2
           i64.or
           i64.const 1085102592571150095
           i64.and
           local.tee $2
           i64.const 2
           i64.shl
           local.get $2
           i64.or
           i64.const 3689348814741910323
           i64.and
           local.tee $2
           i64.const 1
           i64.shl
           local.get $2
           i64.or
           i64.const 6148914691236517205
           i64.and
           i64.const 3
           i64.mul
           local.tee $2
           i64.const 2
           i64.shr_u
           local.get $2
           i64.const 4
           i64.shr_u
           i64.xor
           i64.const 217020518514230019
           i64.and
           local.tee $3
           i64.const 2
           i64.shl
           local.get $3
           i64.const 4
           i64.shl
           i64.or
           local.get $2
           i64.xor
           local.tee $2
           i64.const 4
           i64.shr_u
           local.get $2
           i64.const 8
           i64.shr_u
           i64.xor
           i64.const 4222189076152335
           i64.and
           local.tee $3
           i64.const 4
           i64.shl
           local.get $3
           i64.const 8
           i64.shl
           i64.or
           local.get $2
           i64.xor
           local.tee $2
           i64.const 8
           i64.shr_u
           local.get $2
           i64.const 16
           i64.shr_u
           i64.xor
           i64.const 1095216660735
           i64.and
           local.tee $3
           i64.const 8
           i64.shl
           local.get $3
           i64.const 16
           i64.shl
           i64.or
           local.get $2
           i64.xor
           local.tee $2
           i64.const 16
           i64.shr_u
           local.get $2
           i64.const 32
           i64.shr_u
           i64.xor
           i64.const 65535
           i64.and
           local.set $4
           block $assembly/uastc/bc7/mode5|inlined.2 (result i64)
            local.get $1
            i64.const 30
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            local.set $0
            local.get $1
            i64.const 38
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            local.set $10
            local.get $1
            i64.const 46
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            local.set $11
            local.get $1
            i64.const 54
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            local.set $12
            local.get $1
            i64.const 62
            i64.shr_u
            i32.wrap_i64
            local.get $15
            i64.const 2
            i64.shl
            i32.wrap_i64
            i32.const 252
            i32.and
            i32.or
            local.set $13
            local.get $15
            i64.const 6
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            local.set $14
            local.get $15
            i64.const 14
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            local.set $17
            local.get $15
            i64.const 22
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            local.set $18
            block $case3|4
             block $case2|4
              block $case1|4
               block $case0|4
                local.get $1
                i64.const 28
                i64.shr_u
                i32.wrap_i64
                i32.const 3
                i32.and
                local.tee $19
                br_table $case0|4 $case1|4 $case2|4 $case3|4
               end
               local.get $12
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.const 21
               i32.shl
               local.get $11
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.const 14
               i32.shl
               i32.or
               local.get $18
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.const 7
               i32.shl
               i32.or
               local.get $17
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.or
               i64.extend_i32_u
               local.get $10
               i32.const 22
               i32.shl
               local.get $0
               i32.const 14
               i32.shl
               i32.or
               local.get $14
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.const 7
               i32.shl
               i32.or
               local.get $13
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.or
               i64.extend_i32_u
               i64.const 28
               i64.shl
               i64.or
               br $assembly/uastc/bc7/mode5|inlined.2
              end
              local.get $18
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 21
              i32.shl
              local.get $17
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 14
              i32.shl
              i32.or
              local.get $10
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 7
              i32.shl
              i32.or
              local.get $0
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.or
              i64.extend_i32_u
              local.get $12
              i32.const 22
              i32.shl
              local.get $11
              i32.const 14
              i32.shl
              i32.or
              local.get $14
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 7
              i32.shl
              i32.or
              local.get $13
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.or
              i64.extend_i32_u
              i64.const 28
              i64.shl
              i64.or
              br $assembly/uastc/bc7/mode5|inlined.2
             end
             local.get $12
             i32.const 1
             i32.add
             i32.const 255
             i32.mul
             i32.const 9
             i32.shr_u
             i32.const 21
             i32.shl
             local.get $11
             i32.const 1
             i32.add
             i32.const 255
             i32.mul
             i32.const 9
             i32.shr_u
             i32.const 14
             i32.shl
             i32.or
             local.get $10
             i32.const 1
             i32.add
             i32.const 255
             i32.mul
             i32.const 9
             i32.shr_u
             i32.const 7
             i32.shl
             i32.or
             local.get $0
             i32.const 1
             i32.add
             i32.const 255
             i32.mul
             i32.const 9
             i32.shr_u
             i32.or
             i64.extend_i32_u
             local.get $14
             i32.const 22
             i32.shl
             local.get $13
             i32.const 14
             i32.shl
             i32.or
             local.get $18
             i32.const 1
             i32.add
             i32.const 255
             i32.mul
             i32.const 9
             i32.shr_u
             i32.const 7
             i32.shl
             i32.or
             local.get $17
             i32.const 1
             i32.add
             i32.const 255
             i32.mul
             i32.const 9
             i32.shr_u
             i32.or
             i64.extend_i32_u
             i64.const 28
             i64.shl
             i64.or
             br $assembly/uastc/bc7/mode5|inlined.2
            end
            local.get $12
            i32.const 1
            i32.add
            i32.const 255
            i32.mul
            i32.const 9
            i32.shr_u
            i32.const 21
            i32.shl
            local.get $11
            i32.const 1
            i32.add
            i32.const 255
            i32.mul
            i32.const 9
            i32.shr_u
            i32.const 14
            i32.shl
            i32.or
            local.get $10
            i32.const 1
            i32.add
            i32.const 255
            i32.mul
            i32.const 9
            i32.shr_u
            i32.const 7
            i32.shl
            i32.or
            local.get $0
            i32.const 1
            i32.add
            i32.const 255
            i32.mul
            i32.const 9
            i32.shr_u
            i32.or
            i64.extend_i32_u
            local.get $18
            i32.const 22
            i32.shl
            local.get $17
            i32.const 14
            i32.shl
            i32.or
            local.get $14
            i32.const 1
            i32.add
            i32.const 255
            i32.mul
            i32.const 9
            i32.shr_u
            i32.const 7
            i32.shl
            i32.or
            local.get $13
            i32.const 1
            i32.add
            i32.const 255
            i32.mul
            i32.const 9
            i32.shr_u
            i32.or
            i64.extend_i32_u
            i64.const 28
            i64.shl
            i64.or
           end
           local.set $1
           local.get $19
           i32.const 1
           i32.add
           i32.const 3
           i32.and
           i32.const 6
           i32.shl
           i64.extend_i32_s
           local.get $1
           i64.const 8
           i64.shl
           i64.or
           i64.const 32
           i64.or
           local.set $3
           local.get $4
           i64.const 16
           i64.shl
           local.get $4
           i64.const 32
           i64.shl
           i64.or
           local.get $2
           i64.xor
           local.tee $2
           i64.const 2
           i64.shl
           i64.const 4
           i64.and
           local.get $2
           i64.const -17179869184
           i64.and
           local.get $2
           i64.const 1
           i64.shl
           i64.const 17179869176
           i64.and
           i64.or
           i64.or
           local.get $1
           i64.const 56
           i64.shr_u
           i64.or
           local.set $2
           br $break|1
          end
          local.get $1
          i64.const 28
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          local.get $1
          i64.const 36
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          local.get $1
          i64.const 44
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          local.get $1
          i64.const 52
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          local.get $1
          i64.const 60
          i64.shr_u
          i32.wrap_i64
          local.get $15
          i64.const 4
          i64.shl
          i32.wrap_i64
          i32.const 240
          i32.and
          i32.or
          local.get $15
          i64.const 4
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          local.get $15
          i64.const 12
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          local.get $15
          i64.const 20
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          call $assembly/uastc/bc7/mode6
          local.tee $1
          i64.const 7
          i64.shl
          i64.const 64
          i64.or
          local.set $3
          local.get $15
          i64.const 27
          i64.shr_u
          i64.const 4294967292
          i64.and
          local.get $15
          i64.const 28
          i64.shr_u
          i64.const 1
          i64.and
          i64.or
          local.tee $2
          i64.const 16
          i64.shl
          i64.const 281470681743360
          i64.and
          local.get $2
          i64.const 65535
          i64.and
          i64.or
          local.tee $2
          i64.const 8
          i64.shl
          i64.const 71776119077928960
          i64.and
          local.get $2
          i64.const 1095216660735
          i64.and
          i64.or
          local.tee $2
          i64.const 4
          i64.shl
          i64.const 1080880403494997760
          i64.and
          local.get $2
          i64.const 4222189076152335
          i64.and
          i64.or
          local.tee $2
          i64.const 2
          i64.shl
          i64.const 3472328296227680304
          i64.and
          local.get $2
          i64.const 217020518514230019
          i64.and
          i64.or
          i64.const 5
          i64.mul
          local.tee $2
          i64.const -16
          i64.and
          local.get $2
          i64.const 1
          i64.shl
          i64.const 14
          i64.and
          i64.or
          local.get $1
          i64.const 57
          i64.shr_u
          i64.or
          local.set $2
          br $break|1
         end
         i32.const 254
         local.get $1
         i64.const 30
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         local.tee $0
         i32.const 1
         i32.add
         local.get $0
         i32.const 255
         i32.eq
         select
         i32.const 1
         i32.shr_s
         i64.extend_i32_s
         i64.const 268451841
         i64.mul
         i32.const 254
         local.get $1
         i64.const 46
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         local.tee $10
         i32.const 1
         i32.add
         local.get $10
         i32.const 255
         i32.eq
         select
         i32.const 1
         i32.shr_s
         i64.extend_i32_s
         i64.const 42
         i64.shl
         i64.or
         local.get $0
         i32.const 1
         i32.shr_u
         i64.extend_i32_u
         i64.const 268451841
         i64.mul
         local.get $10
         i32.const 1
         i32.shr_u
         i64.extend_i32_u
         i64.const 42
         i64.shl
         i64.const 72057594037927936
         i64.or
         i64.or
         local.get $0
         i32.const 1
         i32.and
         i32.const 3
         i32.mul
         local.get $10
         i32.const 1
         i32.and
         i32.add
         local.get $0
         i32.const -1
         i32.xor
         i32.const 1
         i32.and
         i32.const 3
         i32.mul
         local.get $10
         i32.const -1
         i32.xor
         i32.const 1
         i32.and
         i32.add
         i32.le_s
         select
         i32.const 254
         local.get $1
         i64.const 38
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         local.tee $0
         i32.const 1
         i32.add
         local.get $0
         i32.const 255
         i32.eq
         select
         i32.const 1
         i32.shr_s
         i64.extend_i32_s
         i64.const 34361835648
         i64.mul
         i32.const 254
         local.get $1
         i64.const 54
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         local.tee $10
         i32.const 1
         i32.add
         local.get $10
         i32.const 255
         i32.eq
         select
         i32.const 1
         i32.shr_s
         i64.extend_i32_s
         i64.const 49
         i64.shl
         i64.or
         local.get $0
         i32.const 1
         i32.shr_u
         i64.extend_i32_u
         i64.const 34361835648
         i64.mul
         local.get $10
         i32.const 1
         i32.shr_u
         i64.extend_i32_u
         i64.const 49
         i64.shl
         i64.const 144115188075855872
         i64.or
         i64.or
         local.get $0
         i32.const 1
         i32.and
         i32.const 3
         i32.mul
         local.get $10
         i32.const 1
         i32.and
         i32.add
         local.get $0
         i32.const -1
         i32.xor
         i32.const 1
         i32.and
         i32.const 3
         i32.mul
         local.get $10
         i32.const -1
         i32.xor
         i32.const 1
         i32.and
         i32.add
         i32.le_s
         select
         i64.or
         local.tee $2
         i64.const 7
         i64.shl
         i64.const 64
         i64.or
         local.set $3
         local.get $15
         i64.const 2
         i64.shl
         i64.const 9223372036854775804
         i64.and
         local.get $1
         i64.const 62
         i64.shr_u
         i64.const 3
         i64.and
         i64.or
         i64.const 1
         i64.shl
         local.get $2
         i64.const 57
         i64.shr_u
         i64.or
         local.set $2
         br $break|1
        end
        local.get $1
        i64.const 29
        i64.shr_u
        i32.wrap_i64
        i32.const 31
        i32.and
        local.tee $10
        i32.const 29
        i32.gt_u
        if
         i64.const -9151873029083480128
         local.set $3
         br $break|1
        end
        local.get $1
        i64.const 34
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.set $11
        local.get $1
        i64.const 42
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.set $12
        local.get $15
        i64.const 2
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.set $13
        local.get $15
        i64.const 10
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.set $14
        local.get $15
        i64.const 34
        i64.shr_u
        i64.const 1
        i64.and
        i32.const -1
        i64.const 5651576228422017
        i64.const -4286381023083155150
        local.get $10
        i32.const 15
        i32.gt_u
        local.tee $17
        select
        local.get $10
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
        local.tee $0
        i32.const 2
        i32.add
        i32.shl
        i64.extend_i32_u
        local.get $15
        i64.const 32
        i64.shr_u
        i64.and
        i32.const -1
        local.get $0
        i32.const 1
        i32.or
        i32.shl
        i32.const -4
        i32.xor
        i64.extend_i32_u
        local.get $15
        i64.const 33
        i64.shr_u
        i64.and
        i64.or
        i64.or
        i32.wrap_i64
        local.set $0
        local.get $1
        i64.const 50
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.tee $18
        local.get $15
        i64.const 18
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.tee $19
        i32.const 1029946068
        local.get $10
        i32.shr_u
        i32.const 1
        i32.and
        local.tee $20
        select
        local.set $21
        local.get $1
        i64.const 58
        i64.shr_u
        i32.wrap_i64
        local.get $15
        i64.const 6
        i64.shl
        i32.wrap_i64
        i32.const 192
        i32.and
        i32.or
        local.tee $22
        local.get $15
        i64.const 26
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.tee $23
        local.get $20
        select
        local.set $24
        local.get $10
        i32.const 26
        i32.lt_u
        if (result i32)
         local.get $10
         local.get $17
         i32.add
        else
         i32.const 874586141
         local.get $10
         i32.const 26
         i32.sub
         i32.const 3
         i32.shl
         i32.shr_u
         i32.const 255
         i32.and
        end
        i32.const 8
        i32.shl
        i64.extend_i32_u
        local.get $13
        local.get $11
        local.get $20
        select
        local.get $14
        local.get $12
        local.get $20
        select
        local.get $19
        local.get $18
        local.get $20
        select
        local.get $23
        local.get $22
        local.get $20
        select
        call $assembly/uastc/bc7/mode7LA
        local.tee $17
        i32.const 1023
        i32.and
        i64.extend_i32_u
        local.tee $1
        i64.const 54
        i64.shl
        local.get $12
        local.get $14
        local.get $20
        select
        local.tee $12
        local.get $11
        local.get $13
        local.get $20
        select
        local.tee $11
        i32.const 1
        local.get $10
        i32.const 16
        i32.lt_u
        if (result i32)
         i32.const 15
        else
         i64.const 72048970541048450
         local.get $10
         i32.const 15
         i32.and
         i32.const 2
         i32.shl
         i64.extend_i32_u
         i64.shr_s
         i32.wrap_i64
         i32.const 15
         i32.and
        end
        i32.const 1
        i32.shl
        local.tee $13
        i32.const 1
        i32.add
        i32.shl
        local.get $0
        i32.and
        local.tee $14
        select
        local.get $11
        local.get $12
        local.get $14
        select
        local.get $24
        local.get $21
        local.get $14
        select
        local.get $21
        local.get $24
        local.get $14
        select
        call $assembly/uastc/bc7/mode7LA
        local.tee $11
        i32.const 1023
        i32.and
        i64.extend_i32_u
        local.tee $2
        i64.const 44
        i64.shl
        i64.or
        local.get $1
        i64.const 34
        i64.shl
        i64.or
        local.get $2
        i64.const 24
        i64.shl
        i64.or
        local.get $1
        i64.const 14
        i64.shl
        i64.or
        i64.or
        i64.const 128
        i64.or
        local.set $3
        local.get $14
        if
         local.get $0
         local.get $10
         i32.const 1
         i32.shl
         i32.load16_u offset=600
         local.tee $0
         i32.const 8
         i32.shl
         local.get $0
         i32.or
         i32.const 16711935
         i32.and
         local.tee $0
         i32.const 4
         i32.shl
         local.get $0
         i32.or
         i32.const 252645135
         i32.and
         local.tee $0
         i32.const 2
         i32.shl
         local.get $0
         i32.or
         i32.const 858993459
         i32.and
         local.tee $0
         i32.const 1
         i32.shl
         local.get $0
         i32.or
         i32.const 1431655765
         i32.and
         i32.const 3
         i32.mul
         i32.xor
         local.set $0
        end
        local.get $2
        local.get $0
        i32.const 1
        i32.and
        i32.const -1
        local.get $13
        i32.const 1
        i32.sub
        i32.shl
        local.get $0
        i32.const 2
        i32.shr_u
        i32.and
        i32.const -1
        local.get $13
        i32.shl
        i32.const -2
        i32.xor
        local.get $0
        i32.const 1
        i32.shr_u
        i32.and
        i32.or
        i32.or
        i64.extend_i32_u
        i64.const 34
        i64.shl
        local.get $11
        i32.const 20
        i32.shr_u
        i32.const 3
        i32.and
        i64.extend_i32_u
        i64.const 32
        i64.shl
        i64.or
        local.get $17
        i32.const 20
        i32.shr_u
        i32.const 3
        i32.and
        i64.extend_i32_u
        i64.const 30
        i64.shl
        i64.or
        local.get $11
        i32.const 10
        i32.shr_u
        i32.const 1023
        i32.and
        i64.extend_i32_u
        i64.const 20
        i64.shl
        i64.or
        local.get $17
        i32.const 10
        i32.shr_u
        i32.const 1023
        i32.and
        i64.extend_i32_u
        i64.const 10
        i64.shl
        i64.or
        i64.or
        local.set $2
        br $break|1
       end
       local.get $1
       i64.const 29
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i32.const 1
       i32.add
       i32.const 255
       i32.mul
       i32.const 9
       i32.shr_u
       i64.extend_i32_u
       i64.const 268451841
       i64.mul
       local.get $1
       i64.const 37
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i32.const 1
       i32.add
       i32.const 255
       i32.mul
       i32.const 9
       i32.shr_u
       i64.extend_i32_u
       i64.const 34361835648
       i64.mul
       local.get $1
       i64.const 45
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       local.get $1
       i64.const 53
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i32.const 8
       i32.shl
       i32.or
       i64.extend_i32_u
       i64.const 42
       i64.shl
       i64.or
       i64.or
       local.tee $2
       i64.const 8
       i64.shl
       i64.const 32
       i64.or
       local.set $3
       local.get $1
       i64.const 61
       i64.shr_u
       i64.const 1
       i64.and
       local.get $1
       i64.const 60
       i64.shr_u
       i64.const 4
       i64.and
       local.get $1
       i64.const 59
       i64.shr_u
       i64.const 16
       i64.and
       local.get $15
       i64.const 5
       i64.shl
       i64.or
       i64.or
       i64.or
       local.tee $1
       i64.const 2
       i64.shr_u
       local.get $1
       i64.const 4
       i64.shr_u
       i64.xor
       i64.const 217020518514230019
       i64.and
       local.tee $4
       i64.const 2
       i64.shl
       local.get $4
       i64.const 4
       i64.shl
       i64.or
       local.get $1
       i64.xor
       local.tee $1
       i64.const 4
       i64.shr_u
       local.get $1
       i64.const 8
       i64.shr_u
       i64.xor
       i64.const 4222189076152335
       i64.and
       local.tee $4
       i64.const 4
       i64.shl
       local.get $4
       i64.const 8
       i64.shl
       i64.or
       local.get $1
       i64.xor
       local.tee $1
       i64.const 8
       i64.shr_u
       local.get $1
       i64.const 16
       i64.shr_u
       i64.xor
       i64.const 1095216660735
       i64.and
       local.tee $4
       i64.const 8
       i64.shl
       local.get $4
       i64.const 16
       i64.shl
       i64.or
       local.get $1
       i64.xor
       local.tee $1
       i64.const 16
       i64.shr_u
       local.get $1
       i64.const 32
       i64.shr_u
       i64.xor
       i64.const 65535
       i64.and
       local.tee $4
       i64.const 16
       i64.shl
       local.get $4
       i64.const 32
       i64.shl
       i64.or
       local.get $1
       i64.xor
       local.tee $1
       i64.const 2
       i64.shl
       i64.const 4
       i64.and
       local.get $1
       i64.const -17179869184
       i64.and
       local.get $1
       i64.const 1
       i64.shl
       i64.const 17179869176
       i64.and
       i64.or
       i64.or
       local.get $2
       i64.const 56
       i64.shr_u
       i64.or
       local.set $2
       br $break|1
      end
      local.get $1
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
      local.get $1
      i64.const 21
      i64.shr_u
      i32.wrap_i64
      i32.const 260301048
      i32.and
      local.tee $10
      i32.const 5
      i32.shr_u
      local.get $10
      i32.or
      local.tee $10
      i32.const 255
      i32.and
      local.get $0
      i32.const 10
      i32.shr_u
      i32.const 255
      i32.and
      local.get $10
      i32.const 10
      i32.shr_u
      i32.const 255
      i32.and
      local.get $0
      i32.const 20
      i32.shr_u
      i32.const 255
      i32.and
      local.get $10
      i32.const 20
      i32.shr_u
      i32.const 255
      i32.and
      i32.const 255
      i32.const 255
      call $assembly/uastc/bc7/mode6
      local.tee $2
      i64.const 7
      i64.shl
      i64.const 64
      i64.or
      local.set $3
      local.get $1
      i64.const 49
      i64.shr_u
      i64.const 15
      i64.and
      local.get $15
      i64.const 16
      i64.shl
      i64.const 1099511562240
      i64.and
      local.get $1
      i64.const 48
      i64.shr_u
      i64.const 65504
      i64.and
      i64.or
      i64.or
      local.tee $1
      i64.const 496553638350
      i64.xor
      local.tee $4
      i64.const 532021755375
      i64.and
      i64.const 532021755375
      i64.add
      local.get $4
      i64.or
      local.get $1
      i64.const 602957989425
      i64.xor
      local.tee $4
      i64.const 532021755375
      i64.and
      i64.const 532021755375
      i64.add
      local.get $4
      i64.or
      i64.and
      i64.const -1
      i64.xor
      i64.const 3
      i64.shr_u
      i64.const 70936234050
      i64.and
      local.get $1
      i64.xor
      i64.const 1
      i64.shr_u
      i64.const 532021755375
      i64.and
      local.tee $1
      i64.const 16121871375
      i64.and
      local.get $1
      i64.const 1
      i64.shr_u
      i64.const 257949942000
      i64.and
      i64.or
      local.tee $1
      i64.const 267387135
      i64.and
      local.get $1
      i64.const 2
      i64.shr_u
      i64.const 68451106560
      i64.and
      i64.or
      local.tee $1
      i64.const 65535
      i64.and
      local.get $1
      i64.const 4
      i64.shr_u
      i64.const 4294901760
      i64.and
      i64.or
      local.get $15
      i64.const 24
      i64.shr_u
      i64.const 1099511627775
      i64.and
      local.tee $1
      i64.const 496553638350
      i64.xor
      local.tee $4
      i64.const 532021755375
      i64.and
      i64.const 532021755375
      i64.add
      local.get $4
      i64.or
      local.get $1
      i64.const 602957989425
      i64.xor
      local.tee $4
      i64.const 532021755375
      i64.and
      i64.const 532021755375
      i64.add
      local.get $4
      i64.or
      i64.and
      i64.const -1
      i64.xor
      i64.const 3
      i64.shr_u
      i64.const 70936234050
      i64.and
      local.get $1
      i64.xor
      i64.const 1
      i64.shr_u
      i64.const 532021755375
      i64.and
      local.tee $1
      i64.const 16121871375
      i64.and
      local.get $1
      i64.const 1
      i64.shr_u
      i64.const 257949942000
      i64.and
      i64.or
      local.tee $1
      i64.const 267387135
      i64.and
      local.get $1
      i64.const 2
      i64.shr_u
      i64.const 68451106560
      i64.and
      i64.or
      local.tee $1
      i64.const 65535
      i64.and
      local.get $1
      i64.const 4
      i64.shr_u
      i64.const 4294901760
      i64.and
      i64.or
      i64.const 32
      i64.shl
      i64.or
      local.tee $1
      i64.const -16
      i64.and
      local.get $1
      i64.const 1
      i64.shl
      i64.const 14
      i64.and
      i64.or
      local.get $2
      i64.const 57
      i64.shr_u
      i64.or
      local.set $2
      br $break|1
     end
     i64.const -9151873029083480128
     local.set $3
    end
    local.get $6
    local.get $3
    i64.store
    local.get $6
    local.get $2
    i64.store offset=8
    local.get $6
    i32.const 16
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  i32.const 0
 )
 (func $~start
  call $start:assembly/uastc/bc7
 )
)
