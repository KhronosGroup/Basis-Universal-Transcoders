(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_i32_i32_=>_i64 (func (param i32 i32 i32 i32 i32 i32) (result i64)))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_=>_i64 (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result i64)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i64 (func (param i32 i32 i32 i32) (result i64)))
 (import "env" "memory" (memory $0 0))
 (global $assembly/uastc-bc7/firstRun (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (export "transcode" (func $assembly/uastc-bc7/transcode))
 (func $assembly/uastc-bc7/storePatterns
  i32.const 2048
  i64.const -1152905008509865216
  i64.store
  i32.const 2056
  i64.const -72056559219240976
  i64.store
  i32.const 2064
  i64.const -8608518097155374012
  i64.store
  i32.const 2072
  i64.const -1297035667044556254
  i64.store
  i32.const 2080
  i64.const 1080864942506385954
  i64.store
  i32.const 2088
  i64.const 3222015168
  i64.store
  i32.const 2096
  i64.const -8608555624592047888
  i64.store
  i32.const 2104
  i64.const 3679665749816772812
  i64.store
  i32.const 2112
  i64.const -3689536461272510720
  i64.store
  i32.const 2120
  i64.const 634660103714278600
  i64.store
  i32.const 2128
  i64.const -1297035670417522628
  i64.store
  i32.const 2136
  i64.const -3689570488033441656
  i64.store
  i32.const 2144
  i64.const -1405102193005106176
  i64.store
  i32.const 2152
  i64.const -1405122754906136576
  i64.store
  i32.const 2160
  i64.const -1405101725169221394
  i64.store
  i32.const 2168
  i64.const 1930464256
  i64.store
  i32.const 2176
  i64.const -1384594177156133684
  i64.store
  i32.const 2184
  i64.const -1404842944515749760
  i64.store
  i32.const 2192
  i64.const -1729102426907293696
  i64.store
  i32.const 2200
  i64.const -1152640094071357464
  i64.store
  i32.const 2208
  i64.const 39416179491602574
  i64.store
  i32.const 2216
  i64.const 616022066256179984
  i64.store
  i32.const 2224
  i64.const -6149084816036450032
  i64.store
  i32.const 2232
  i64.const 3375821040
  i64.store
 )
 (func $assembly/uastc-bc7/storeMode1
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  loop $for-loop|0
   local.get $0
   i32.const 256
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.tee $3
    local.get $0
    i32.const 1
    i32.add
    local.tee $1
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.shl
    local.tee $2
    i32.const 126
    local.get $2
    i32.const 126
    i32.lt_s
    select
    local.tee $4
    i32.store8 offset=3072
    local.get $3
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
    local.tee $2
    i32.const 127
    local.get $2
    i32.const 127
    i32.lt_s
    select
    local.tee $2
    i32.store8 offset=3073
    local.get $3
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    local.get $2
    i32.const 6
    i32.shr_s
    i32.or
    i32.sub
    local.tee $2
    local.get $2
    i32.mul
    local.get $0
    local.get $4
    i32.const 1
    i32.shl
    local.get $4
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
    br $for-loop|0
   end
  end
 )
 (func $assembly/uastc-bc7/storeMode7
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  loop $for-loop|0
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
    i32.lt_s
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
    i32.lt_s
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
    br $for-loop|0
   end
  end
 )
 (func $assembly/uastc-bc7/mode6 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (result i64)
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
  i64.extend_i32_s
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
  i64.extend_i32_s
  i64.const 42
  i64.shl
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
  i64.or
  i64.or
  local.get $0
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  local.get $2
  i32.const 1
  i32.shr_u
  i32.const 14
  i32.shl
  i64.extend_i32_u
  local.get $6
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 42
  i64.shl
  i64.const 72057594037927936
  i64.or
  local.get $4
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 28
  i64.shl
  i64.or
  i64.or
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
  i32.le_s
  select
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
  i64.extend_i32_s
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
  i64.extend_i32_s
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
  i64.extend_i32_s
  i64.const 49
  i64.shl
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
  i64.or
  i64.or
  local.get $1
  i32.const 1
  i32.shr_u
  i32.const 7
  i32.shl
  i64.extend_i32_u
  local.get $3
  i32.const 1
  i32.shr_u
  i32.const 21
  i32.shl
  i64.extend_i32_u
  local.get $7
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 49
  i64.shl
  i64.const 144115188075855872
  i64.or
  local.get $5
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 35
  i64.shl
  i64.or
  i64.or
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
  i32.le_s
  select
  i64.or
 )
 (func $assembly/uastc-bc7/mode3 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i64)
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
  i64.extend_i32_s
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
  i64.or
  local.get $0
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  local.get $2
  i32.const 1
  i32.shr_u
  i32.const 14
  i32.shl
  i64.extend_i32_u
  local.get $4
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 28
  i64.shl
  i64.const 4398046511104
  i64.or
  i64.or
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
  i64.extend_i32_s
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
  i64.or
  local.get $1
  i32.const 1
  i32.shr_u
  i32.const 7
  i32.shl
  i64.extend_i32_u
  local.get $3
  i32.const 1
  i32.shr_u
  i32.const 21
  i32.shl
  i64.extend_i32_u
  local.get $5
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 35
  i64.shl
  i64.const 8796093022208
  i64.or
  i64.or
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
 (func $assembly/uastc-bc7/mode1 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i64)
  local.get $0
  i32.const 2
  i32.shl
  i32.const 3072
  i32.add
  local.tee $0
  i32.load8_u
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  local.get $1
  i32.const 2
  i32.shl
  i32.const 3072
  i32.add
  local.tee $1
  i32.load8_u
  i32.const 1
  i32.shr_u
  i32.const 6
  i32.shl
  i64.extend_i32_u
  local.get $2
  i32.const 2
  i32.shl
  i32.const 3072
  i32.add
  local.tee $2
  i32.load8_u
  i32.const 1
  i32.shr_u
  i32.const 12
  i32.shl
  i64.extend_i32_u
  local.get $3
  i32.const 2
  i32.shl
  i32.const 3072
  i32.add
  local.tee $3
  i32.load8_u
  i32.const 1
  i32.shr_u
  i32.const 18
  i32.shl
  i64.extend_i32_u
  local.get $4
  i32.const 2
  i32.shl
  i32.const 3072
  i32.add
  local.tee $4
  i32.load8_u
  i32.const 1
  i32.shr_u
  i32.const 24
  i32.shl
  i64.extend_i32_u
  local.get $5
  i32.const 2
  i32.shl
  i32.const 3072
  i32.add
  local.tee $5
  i32.load8_u
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 30
  i64.shl
  i64.or
  i64.or
  i64.or
  i64.or
  i64.or
  local.get $0
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  local.get $1
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i32.const 6
  i32.shl
  i64.extend_i32_u
  local.get $2
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i32.const 12
  i32.shl
  i64.extend_i32_u
  local.get $3
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i32.const 18
  i32.shl
  i64.extend_i32_u
  local.get $4
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i32.const 24
  i32.shl
  i64.extend_i32_u
  local.get $5
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 30
  i64.shl
  i64.const 68719476736
  i64.or
  i64.or
  i64.or
  i64.or
  i64.or
  i64.or
  local.get $5
  i32.load8_s offset=2
  local.get $3
  i32.load8_s offset=2
  local.get $1
  i32.load8_s offset=2
  local.get $4
  i32.load8_s offset=2
  local.get $0
  i32.load8_s offset=2
  local.get $2
  i32.load8_s offset=2
  i32.add
  i32.add
  i32.add
  i32.add
  i32.add
  i32.const 0
  i32.ge_s
  select
 )
 (func $assembly/uastc-bc7/mode7 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (result i64)
  local.get $0
  i32.const 2
  i32.shl
  i32.const 4096
  i32.add
  local.tee $0
  i32.load8_u
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  local.get $2
  i32.const 2
  i32.shl
  i32.const 4096
  i32.add
  local.tee $2
  i32.load8_u
  i32.const 1
  i32.shr_u
  i32.const 10
  i32.shl
  i64.extend_i32_u
  local.get $6
  i32.const 2
  i32.shl
  i32.const 4096
  i32.add
  local.tee $6
  i32.load8_u
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 30
  i64.shl
  local.get $4
  i32.const 2
  i32.shl
  i32.const 4096
  i32.add
  local.tee $4
  i32.load8_u
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 20
  i64.shl
  i64.or
  i64.or
  i64.or
  local.get $0
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  local.get $2
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i32.const 10
  i32.shl
  i64.extend_i32_u
  local.get $6
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 30
  i64.shl
  i64.const 1099511627776
  i64.or
  local.get $4
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 20
  i64.shl
  i64.or
  i64.or
  i64.or
  local.get $6
  i32.load8_s offset=2
  local.get $4
  i32.load8_s offset=2
  local.get $0
  i32.load8_s offset=2
  local.get $2
  i32.load8_s offset=2
  i32.add
  i32.add
  i32.add
  i32.const 0
  i32.ge_s
  select
  local.get $1
  i32.const 2
  i32.shl
  i32.const 4096
  i32.add
  local.tee $0
  i32.load8_u
  i32.const 1
  i32.shr_u
  i32.const 5
  i32.shl
  i64.extend_i32_u
  local.get $3
  i32.const 2
  i32.shl
  i32.const 4096
  i32.add
  local.tee $1
  i32.load8_u
  i32.const 1
  i32.shr_u
  i32.const 15
  i32.shl
  i64.extend_i32_u
  local.get $7
  i32.const 2
  i32.shl
  i32.const 4096
  i32.add
  local.tee $2
  i32.load8_u
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 35
  i64.shl
  local.get $5
  i32.const 2
  i32.shl
  i32.const 4096
  i32.add
  local.tee $3
  i32.load8_u
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 25
  i64.shl
  i64.or
  i64.or
  i64.or
  local.get $0
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i32.const 5
  i32.shl
  i64.extend_i32_u
  local.get $1
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i32.const 15
  i32.shl
  i64.extend_i32_u
  local.get $2
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 35
  i64.shl
  i64.const 2199023255552
  i64.or
  local.get $3
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 25
  i64.shl
  i64.or
  i64.or
  i64.or
  local.get $2
  i32.load8_s offset=2
  local.get $3
  i32.load8_s offset=2
  local.get $0
  i32.load8_s offset=2
  local.get $1
  i32.load8_s offset=2
  i32.add
  i32.add
  i32.add
  i32.const 0
  i32.ge_s
  select
  i64.or
 )
 (func $assembly/uastc-bc7/mode6LA (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i64)
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
  i64.extend_i32_s
  i64.const 268451841
  i64.mul
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
  local.get $2
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
  local.get $2
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
  local.get $2
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  i32.add
  i32.le_s
  select
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
  i64.extend_i32_s
  i64.const 34361835648
  i64.mul
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
  i64.extend_i32_s
  i64.const 49
  i64.shl
  i64.or
  local.get $1
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 34361835648
  i64.mul
  local.get $3
  i32.const 1
  i32.shr_u
  i64.extend_i32_u
  i64.const 49
  i64.shl
  i64.const 144115188075855872
  i64.or
  i64.or
  local.get $1
  i32.const 1
  i32.and
  i32.const 3
  i32.mul
  local.get $3
  i32.const 1
  i32.and
  i32.add
  local.get $1
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  i32.const 3
  i32.mul
  local.get $3
  i32.const -1
  i32.xor
  i32.const 1
  i32.and
  i32.add
  i32.le_s
  select
  i64.or
 )
 (func $assembly/uastc-bc7/mode7LA (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $2
  i32.const 2
  i32.shl
  i32.const 4096
  i32.add
  local.tee $2
  i32.load8_u
  i32.const 1
  i32.shr_u
  i32.const 10
  i32.shl
  local.get $0
  i32.const 2
  i32.shl
  i32.const 4096
  i32.add
  local.tee $0
  i32.load8_u
  i32.const 1
  i32.shr_u
  i32.or
  local.get $2
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i32.const 10
  i32.shl
  i32.const 1048576
  i32.or
  local.get $0
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i32.or
  local.get $2
  i32.load8_s offset=2
  local.get $0
  i32.load8_s offset=2
  i32.const 3
  i32.mul
  i32.add
  i32.const 0
  i32.ge_s
  select
  local.get $3
  i32.const 2
  i32.shl
  i32.const 4096
  i32.add
  local.tee $0
  i32.load8_u
  i32.const 1
  i32.shr_u
  i32.const 15
  i32.shl
  local.get $1
  i32.const 2
  i32.shl
  i32.const 4096
  i32.add
  local.tee $1
  i32.load8_u
  i32.const 1
  i32.shr_u
  i32.const 5
  i32.shl
  i32.or
  local.get $0
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i32.const 15
  i32.shl
  i32.const 2097152
  i32.or
  local.get $1
  i32.load8_u offset=1
  i32.const 1
  i32.shr_u
  i32.const 5
  i32.shl
  i32.or
  local.get $0
  i32.load8_s offset=2
  local.get $1
  i32.load8_s offset=2
  i32.const 3
  i32.mul
  i32.add
  i32.const 0
  i32.ge_s
  select
  i32.or
 )
 (func $assembly/uastc-bc7/transcode (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i64)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i64)
  (local $24 i32)
  (local $25 i64)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i64)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i64)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
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
  global.get $assembly/uastc-bc7/firstRun
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
    i32.lt_s
    if
     i32.const 511
     i32.const 0
     local.get $0
     i32.const 1
     i32.and
     select
     local.set $4
     i32.const 278
     i32.const 0
     local.get $0
     i32.const 2
     i32.and
     select
     local.set $8
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 3
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 2
       i32.shl
       i32.or
       local.get $4
       i32.const 128
       i32.and
       local.get $4
       local.get $8
       local.get $2
       i32.const 93
       i32.mul
       i32.add
       i32.xor
       i32.const 2
       i32.shr_u
       i32.or
       i32.store8 offset=1024
       local.get $2
       i32.const 1
       i32.add
       local.set $2
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
    i32.lt_s
    if
     i32.const 511
     i32.const 0
     local.get $0
     i32.const 1
     i32.and
     select
     local.set $4
     local.get $0
     i32.const 6
     i32.and
     i32.const 65
     i32.mul
     local.get $0
     i32.const 2
     i32.shr_u
     i32.or
     local.set $8
     i32.const 0
     local.set $2
     loop $for-loop|13
      local.get $2
      i32.const 5
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 3
       i32.shl
       i32.or
       local.get $4
       i32.const 128
       i32.and
       local.get $4
       local.get $8
       local.get $2
       i32.const 26
       i32.mul
       i32.add
       i32.xor
       i32.const 2
       i32.shr_u
       i32.or
       i32.store8 offset=1036
       local.get $2
       i32.const 1
       i32.add
       local.set $2
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
    i32.lt_s
    if
     i32.const 511
     i32.const 0
     local.get $0
     i32.const 1
     i32.and
     select
     local.set $4
     local.get $0
     i32.const 1
     i32.shr_s
     i32.const 65
     i32.mul
     local.set $8
     i32.const 0
     local.set $2
     loop $for-loop|15
      local.get $2
      i32.const 3
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 4
       i32.shl
       i32.or
       local.get $4
       i32.const 128
       i32.and
       local.get $4
       local.get $8
       local.get $2
       i32.const 22
       i32.mul
       i32.add
       i32.xor
       i32.const 2
       i32.shr_u
       i32.or
       i32.store8 offset=1076
       local.get $2
       i32.const 1
       i32.add
       local.set $2
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
    i32.lt_s
    if
     i32.const 511
     i32.const 0
     local.get $0
     i32.const 1
     i32.and
     select
     local.set $4
     local.get $0
     i32.const 30
     i32.and
     i32.const 4
     i32.shl
     local.get $0
     i32.const 4
     i32.shr_u
     i32.or
     local.set $8
     i32.const 0
     local.set $2
     loop $for-loop|17
      local.get $2
      i32.const 5
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 5
       i32.shl
       i32.or
       local.get $4
       i32.const 128
       i32.and
       local.get $4
       local.get $8
       local.get $2
       i32.const 6
       i32.mul
       i32.add
       i32.xor
       i32.const 2
       i32.shr_u
       i32.or
       i32.store8 offset=1124
       local.get $2
       i32.const 1
       i32.add
       local.set $2
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
    i32.lt_s
    if
     i32.const 511
     i32.const 0
     local.get $0
     i32.const 1
     i32.and
     select
     local.set $4
     local.get $0
     i32.const 62
     i32.and
     i32.const 3
     i32.shl
     local.get $0
     i32.const 5
     i32.shr_u
     i32.or
     local.set $8
     i32.const 0
     local.set $2
     loop $for-loop|19
      local.get $2
      i32.const 3
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 6
       i32.shl
       i32.or
       local.get $4
       i32.const 128
       i32.and
       local.get $4
       local.get $8
       local.get $2
       i32.const 5
       i32.mul
       i32.add
       i32.xor
       i32.const 2
       i32.shr_u
       i32.or
       i32.store8 offset=1284
       local.get $2
       i32.const 1
       i32.add
       local.set $2
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
   loop $for-loop|010
    local.get $21
    i32.const 256
    i32.lt_u
    if
     local.get $21
     i32.const 1
     i32.shl
     local.get $21
     i32.const 1
     i32.shr_u
     local.tee $0
     local.get $0
     local.get $21
     i32.const 1
     i32.and
     i32.add
     local.get $21
     i32.const 7
     i32.shr_u
     i32.sub
     i32.const 7
     i32.shl
     i32.or
     i32.store16 offset=1536
     local.get $21
     i32.const 1
     i32.add
     local.set $21
     br $for-loop|010
    end
   end
   call $assembly/uastc-bc7/storePatterns
   call $assembly/uastc-bc7/storeMode1
   call $assembly/uastc-bc7/storeMode7
   i32.const 0
   global.set $assembly/uastc-bc7/firstRun
  end
  i32.const 65536
  local.set $21
  local.get $6
  i32.const 65536
  i32.add
  local.set $35
  loop $for-loop|111
   local.get $21
   local.get $35
   i32.lt_s
   if
    local.get $21
    i64.load offset=8
    local.set $3
    i64.const 0
    local.set $5
    block $break|2
     block $case19|2
      block $case18|2
       block $case17|2
        block $case16|2
         block $case15|2
          block $case14|2
           block $case13|2
            block $case12|2
             block $case11|2
              block $case10|2
               block $case9|2
                block $case8|2
                 block $case7|2
                  block $case6|2
                   block $case5|2
                    block $case4|2
                     block $case3|2
                      block $case2|2
                       block $case1|2
                        block $case0|2
                         local.get $21
                         i64.load
                         local.tee $1
                         i32.wrap_i64
                         i32.const 127
                         i32.and
                         i32.load8_u
                         br_table $case0|2 $case1|2 $case2|2 $case3|2 $case4|2 $case5|2 $case6|2 $case7|2 $case8|2 $case9|2 $case10|2 $case11|2 $case12|2 $case13|2 $case14|2 $case15|2 $case16|2 $case17|2 $case18|2 $case19|2
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
                        i32.load16_u offset=512
                        local.tee $0
                        i32.const 3
                        i32.and
                        i32.const 6
                        i32.shl
                        i32.or
                        i32.load8_u offset=1284
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
                        i32.load8_u offset=1284
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
                        i32.load8_u offset=1284
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
                        i32.load8_u offset=1284
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
                        i32.load8_u offset=1284
                        local.get $1
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
                        local.get $1
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
                        i32.const 255
                        i32.const 255
                        call $assembly/uastc-bc7/mode6
                        local.tee $1
                        i64.const 7
                        i64.shl
                        i64.const 64
                        i64.or
                        local.set $7
                        local.get $3
                        i64.const -2
                        i64.and
                        local.get $1
                        i64.const 57
                        i64.shr_u
                        i64.or
                        local.set $5
                        br $break|2
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
                       local.get $3
                       i64.const 3
                       i64.shl
                       i32.wrap_i64
                       i32.const 248
                       i32.and
                       i32.or
                       call $assembly/uastc-bc7/mode3
                       local.tee $17
                       i64.const 16383
                       i64.and
                       local.tee $23
                       local.set $7
                       local.get $17
                       i64.const 14
                       i64.shr_u
                       i64.const 16383
                       i64.and
                       local.tee $25
                       local.set $1
                       local.get $17
                       i64.const 28
                       i64.shr_u
                       i64.const 16383
                       i64.and
                       local.tee $31
                       local.set $5
                       local.get $17
                       i64.const 42
                       i64.shr_u
                       i64.const 3
                       i64.and
                       local.tee $36
                       local.set $17
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
                       i32.wrap_i64
                       local.tee $0
                       i32.const -2147483648
                       i32.and
                       if
                        local.get $7
                        i64.const 7
                        i64.shr_u
                        i64.const 127
                        i64.and
                        local.get $7
                        i64.const 127
                        i64.and
                        i64.const 7
                        i64.shl
                        i64.or
                        local.set $7
                        local.get $1
                        i64.const 7
                        i64.shr_u
                        i64.const 127
                        i64.and
                        local.get $1
                        i64.const 127
                        i64.and
                        i64.const 7
                        i64.shl
                        i64.or
                        local.set $1
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
                        local.get $17
                        i64.const 1
                        i64.shr_u
                        i64.const 1
                        i64.and
                        local.get $17
                        i64.const 1
                        i64.and
                        i64.const 1
                        i64.shl
                        i64.or
                        local.set $17
                        local.get $0
                        i32.const -252645136
                        i32.xor
                        local.set $0
                       end
                       local.get $1
                       i64.const 52
                       i64.shl
                       local.get $25
                       i64.const 38
                       i64.shl
                       i64.or
                       local.get $7
                       i64.const 24
                       i64.shl
                       i64.or
                       local.get $23
                       i64.const 10
                       i64.shl
                       i64.or
                       i64.const 8
                       i64.or
                       local.set $7
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
                       local.get $17
                       i64.const 32
                       i64.shl
                       i64.or
                       local.get $36
                       i64.const 30
                       i64.shl
                       i64.or
                       local.get $5
                       i64.const 16
                       i64.shl
                       i64.or
                       local.get $31
                       i64.const 2
                       i64.shl
                       i64.or
                       local.get $1
                       i64.const 12
                       i64.shr_u
                       i64.or
                       local.set $5
                       br $break|2
                      end
                      local.get $1
                      i64.const 20
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 31
                      i32.and
                      local.tee $2
                      i32.const 29
                      i32.gt_u
                      if
                       i64.const -9151873029083480128
                       local.set $7
                       br $break|2
                      end
                      local.get $3
                      i64.const 39
                      i64.shl
                      local.get $1
                      i64.const 25
                      i64.shr_u
                      i64.or
                      i64.const 1085102592571150095
                      i64.and
                      local.tee $7
                      local.get $7
                      i64.const 4
                      i64.shl
                      i64.or
                      local.tee $7
                      i64.const 24
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $4
                      local.get $7
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $6
                      i32.const 1029946068
                      local.get $2
                      i32.shr_u
                      i32.const 1
                      i32.and
                      local.tee $0
                      select
                      local.get $3
                      i64.const 35
                      i64.shl
                      local.get $1
                      i64.const 29
                      i64.shr_u
                      i64.or
                      i64.const 1085102592571150095
                      i64.and
                      local.tee $1
                      local.get $1
                      i64.const 4
                      i64.shl
                      i64.or
                      local.tee $1
                      i64.const 24
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $8
                      local.get $1
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $9
                      local.get $0
                      select
                      local.get $7
                      i64.const 32
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $10
                      local.get $7
                      i64.const 8
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $11
                      local.get $0
                      select
                      local.get $1
                      i64.const 32
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $12
                      local.get $1
                      i64.const 8
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $15
                      local.get $0
                      select
                      local.get $7
                      i64.const 40
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $13
                      local.get $7
                      i64.const 16
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $16
                      local.get $0
                      select
                      local.get $1
                      i64.const 40
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $14
                      local.get $1
                      i64.const 16
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $18
                      local.get $0
                      select
                      call $assembly/uastc-bc7/mode1
                      local.tee $7
                      i64.const 36
                      i64.shr_u
                      i64.const 1
                      i64.and
                      local.set $5
                      local.get $9
                      local.get $8
                      local.get $0
                      select
                      local.tee $8
                      local.get $6
                      local.get $4
                      local.get $0
                      select
                      local.tee $6
                      local.get $3
                      i64.const 9
                      i64.shr_u
                      i64.const 3
                      i64.and
                      i64.const -1
                      i64.const 5651576228422017
                      i64.const -4286381023083155150
                      local.get $2
                      i32.const 15
                      i32.gt_u
                      local.tee $9
                      select
                      local.get $2
                      i32.const 15
                      i32.and
                      i32.const 2
                      i32.shl
                      local.tee $4
                      i64.extend_i32_u
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 15
                      i32.and
                      i32.const 3
                      i32.mul
                      local.tee $19
                      i32.const 3
                      i32.add
                      i64.extend_i32_u
                      i64.shl
                      local.get $3
                      i64.const 7
                      i64.shr_u
                      i64.and
                      i64.const -1
                      local.get $19
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
                      local.tee $1
                      i64.const 1
                      i32.const 15
                      i64.const 72048970541048450
                      local.get $4
                      i64.extend_i32_u
                      i64.shr_s
                      i32.wrap_i64
                      i32.const 15
                      i32.and
                      local.get $2
                      i32.const 16
                      i32.lt_u
                      select
                      i32.const 3
                      i32.mul
                      local.tee $19
                      i32.const 2
                      i32.add
                      i64.extend_i32_u
                      i64.shl
                      i64.and
                      i64.const 0
                      i64.ne
                      local.tee $4
                      select
                      local.get $6
                      local.get $8
                      local.get $4
                      select
                      local.get $15
                      local.get $12
                      local.get $0
                      select
                      local.tee $6
                      local.get $11
                      local.get $10
                      local.get $0
                      select
                      local.tee $8
                      local.get $4
                      select
                      local.get $8
                      local.get $6
                      local.get $4
                      select
                      local.get $18
                      local.get $14
                      local.get $0
                      select
                      local.tee $6
                      local.get $16
                      local.get $13
                      local.get $0
                      select
                      local.tee $0
                      local.get $4
                      select
                      local.get $0
                      local.get $6
                      local.get $4
                      select
                      call $assembly/uastc-bc7/mode1
                      local.tee $3
                      i64.const 24
                      i64.shr_u
                      i64.const 4095
                      i64.and
                      local.set $17
                      local.get $3
                      i64.const 36
                      i64.shr_u
                      i64.const 1
                      i64.and
                      local.set $23
                      local.get $2
                      local.get $9
                      i32.add
                      i32.const 874586141
                      local.get $2
                      i32.const 26
                      i32.sub
                      i32.const 3
                      i32.shl
                      i32.shr_u
                      i32.const 255
                      i32.and
                      local.get $2
                      i32.const 26
                      i32.lt_u
                      select
                      i32.const 2
                      i32.shl
                      i64.extend_i32_u
                      local.get $7
                      i64.const 24
                      i64.shr_u
                      i64.const 4095
                      i64.and
                      local.tee $25
                      i64.const 56
                      i64.shl
                      local.get $3
                      i64.const 12
                      i64.shr_u
                      i64.const 4095
                      i64.and
                      i64.const 44
                      i64.shl
                      i64.or
                      local.get $7
                      i64.const 12
                      i64.shr_u
                      i64.const 4095
                      i64.and
                      i64.const 32
                      i64.shl
                      i64.or
                      local.get $3
                      i64.const 4095
                      i64.and
                      i64.const 20
                      i64.shl
                      i64.or
                      local.get $7
                      i64.const 4095
                      i64.and
                      i64.const 8
                      i64.shl
                      i64.or
                      i64.or
                      i64.const 2
                      i64.or
                      local.set $7
                      local.get $4
                      if
                       local.get $1
                       local.get $2
                       i32.const 1
                       i32.shl
                       i32.load16_u offset=2176
                       i64.extend_i32_u
                       local.tee $1
                       local.get $1
                       i64.const 16
                       i64.shl
                       i64.or
                       i64.const 4278190335
                       i64.and
                       local.tee $1
                       local.get $1
                       i64.const 8
                       i64.shl
                       i64.or
                       i64.const 1031043870735
                       i64.and
                       local.tee $1
                       local.get $1
                       i64.const 4
                       i64.shl
                       i64.or
                       i64.const 13403570319555
                       i64.and
                       local.tee $1
                       local.get $1
                       i64.const 2
                       i64.shl
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
                      local.get $19
                      i32.const 1
                      i32.add
                      local.tee $0
                      i64.extend_i32_u
                      i64.shl
                      local.get $1
                      i64.const 2
                      i64.shr_u
                      i64.and
                      i64.const 281474976710655
                      local.get $0
                      i64.extend_i32_u
                      i64.shl
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
                      local.get $23
                      i64.const 17
                      i64.shl
                      i64.or
                      local.get $5
                      i64.const 16
                      i64.shl
                      i64.or
                      local.get $17
                      i64.const 4
                      i64.shl
                      i64.or
                      local.get $25
                      i64.const 8
                      i64.shr_u
                      i64.or
                      local.set $5
                      br $break|2
                     end
                     local.get $1
                     i64.const 20
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $2
                     i32.const 10
                     i32.gt_u
                     if
                      i64.const -9151873029083480128
                      local.set $7
                      br $break|2
                     end
                     local.get $3
                     i64.const 5
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $1
                     i64.const 32
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i32.const 1
                     i32.shl
                     i32.load16_u offset=512
                     local.tee $13
                     i32.const 6
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $18
                     local.get $3
                     i64.const 17
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
                     i32.load16_u offset=512
                     local.tee $16
                     i32.const 8
                     i32.shr_u
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $19
                     local.get $1
                     i64.const 57
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
                     i32.load16_u offset=512
                     local.tee $14
                     i32.const 4
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $20
                     i32.const 3939711
                     local.get $2
                     i32.const 1
                     i32.shl
                     local.tee $0
                     i32.shr_s
                     i32.const 3
                     i32.and
                     i32.const 1
                     i32.add
                     local.tee $12
                     i32.const 4
                     i32.and
                     local.tee $8
                     select
                     i32.const 1307649
                     local.get $0
                     i32.shr_s
                     i32.const 3
                     i32.and
                     i32.const 1
                     i32.add
                     local.tee $15
                     i32.const 4
                     i32.and
                     local.tee $9
                     select
                     local.tee $37
                     local.get $3
                     i64.const 7
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $13
                     i32.const 8
                     i32.shr_u
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $22
                     local.get $3
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
                     i32.load16_u offset=512
                     local.tee $6
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $24
                     local.get $1
                     i64.const 59
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $14
                     i32.const 6
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $26
                     local.get $8
                     select
                     local.get $9
                     select
                     local.tee $38
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
                     local.get $2
                     i32.const 2
                     i32.shl
                     local.tee $29
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
                     i32.and
                     local.get $3
                     i64.const 23
                     i64.shr_u
                     local.tee $7
                     i32.wrap_i64
                     i32.const 1
                     i32.const 1476400895
                     local.get $2
                     i32.const 3
                     i32.mul
                     i32.shr_u
                     i32.const 7
                     i32.and
                     i32.const 1
                     i32.add
                     i32.const 1
                     i32.shl
                     local.tee $4
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
                     local.get $3
                     i64.const 24
                     i64.shr_u
                     i32.wrap_i64
                     i32.const -1
                     local.get $4
                     i32.const 1
                     i32.or
                     i32.shl
                     i32.const -4
                     i32.xor
                     i32.and
                     i32.or
                     i32.or
                     local.tee $0
                     i32.const 1
                     i32.const 10
                     i32.const 15
                     local.get $2
                     i32.const 14
                     i32.and
                     i32.const 8
                     i32.eq
                     select
                     i32.const 1
                     i32.shl
                     local.tee $39
                     i32.const 1
                     i32.add
                     i32.shl
                     i32.and
                     local.tee $4
                     select
                     i64.extend_i32_u
                     local.get $3
                     i64.const 9
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $16
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $27
                     local.get $3
                     i64.const 21
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
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $28
                     local.get $1
                     i64.const 61
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $14
                     i32.const 8
                     i32.shr_u
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $30
                     local.get $8
                     select
                     local.get $9
                     select
                     local.tee $10
                     local.get $3
                     i64.const 11
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $16
                     i32.const 2
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $32
                     local.get $7
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $6
                     i32.const 4
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $33
                     local.get $1
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
                     local.get $13
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $34
                     local.get $8
                     select
                     local.get $9
                     select
                     local.tee $6
                     local.get $4
                     select
                     i64.extend_i32_u
                     i64.const 30
                     i64.shl
                     local.get $6
                     local.get $10
                     local.get $4
                     select
                     i32.const 25
                     i32.shl
                     i64.extend_i32_u
                     i64.or
                     local.get $27
                     local.get $28
                     local.get $30
                     local.get $12
                     i32.const 2
                     i32.and
                     local.tee $10
                     select
                     local.get $15
                     i32.const 2
                     i32.and
                     local.tee $11
                     select
                     local.tee $40
                     local.get $32
                     local.get $33
                     local.get $34
                     local.get $10
                     select
                     local.get $11
                     select
                     local.tee $41
                     local.get $0
                     i32.const 1
                     i64.const 11429803878536
                     local.get $29
                     i64.extend_i32_u
                     i64.shr_s
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     i32.const 1
                     i32.shl
                     local.tee $29
                     i32.const 1
                     i32.add
                     i32.shl
                     i32.and
                     local.tee $6
                     select
                     i32.const 20
                     i32.shl
                     i64.extend_i32_u
                     i64.or
                     local.get $41
                     local.get $40
                     local.get $6
                     select
                     i32.const 15
                     i32.shl
                     i64.extend_i32_u
                     i64.or
                     local.get $32
                     local.get $33
                     local.get $34
                     local.get $12
                     i32.const 1
                     i32.and
                     local.tee $12
                     select
                     local.get $15
                     i32.const 1
                     i32.and
                     local.tee $15
                     select
                     i32.const 10
                     i32.shl
                     i64.extend_i32_u
                     i64.or
                     local.get $27
                     local.get $28
                     local.get $30
                     local.get $12
                     select
                     local.get $15
                     select
                     i32.const 5
                     i32.shl
                     i64.extend_i32_u
                     i64.or
                     i64.or
                     i64.const 3744803
                     i64.const 1444824297008334852
                     local.get $2
                     i32.const 7
                     i32.gt_s
                     select
                     local.get $2
                     i32.const 7
                     i32.and
                     i32.const 3
                     i32.shl
                     i64.extend_i32_s
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 255
                     i32.and
                     i32.const 3
                     i32.shl
                     i64.extend_i32_s
                     local.get $38
                     local.get $37
                     local.get $4
                     select
                     i64.extend_i32_u
                     i64.const 50
                     i64.shl
                     local.get $18
                     local.get $19
                     local.get $20
                     local.get $10
                     select
                     local.get $11
                     select
                     local.tee $27
                     local.get $22
                     local.get $24
                     local.get $26
                     local.get $10
                     select
                     local.get $11
                     select
                     local.tee $28
                     local.get $6
                     select
                     i64.extend_i32_u
                     i64.const 45
                     i64.shl
                     i64.or
                     local.get $28
                     local.get $27
                     local.get $6
                     select
                     i64.extend_i32_u
                     i64.const 40
                     i64.shl
                     i64.or
                     local.get $22
                     local.get $24
                     local.get $26
                     local.get $12
                     select
                     local.get $15
                     select
                     i64.extend_i32_u
                     i64.const 35
                     i64.shl
                     i64.or
                     local.get $18
                     local.get $19
                     local.get $20
                     local.get $12
                     select
                     local.get $15
                     select
                     i64.extend_i32_u
                     i64.const 30
                     i64.shl
                     i64.or
                     local.get $3
                     i64.const 1
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $13
                     i32.const 2
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $18
                     local.get $3
                     i64.const 13
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
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $19
                     local.get $1
                     i64.const 53
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $14
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $20
                     local.get $8
                     select
                     local.get $9
                     select
                     local.tee $22
                     local.get $3
                     i64.const 3
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $13
                     i32.const 4
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $13
                     local.get $3
                     i64.const 15
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
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $16
                     local.get $1
                     i64.const 55
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 3
                     i32.and
                     local.get $14
                     i32.const 2
                     i32.shr_u
                     i32.const 3
                     i32.and
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.load8_u offset=1024
                     i32.const 249
                     i32.mul
                     i32.const 1023
                     i32.add
                     i32.const 11
                     i32.shr_u
                     local.tee $14
                     local.get $8
                     select
                     local.get $9
                     select
                     local.tee $8
                     local.get $4
                     select
                     i32.const 25
                     i32.shl
                     i64.extend_i32_u
                     i64.or
                     local.get $8
                     local.get $22
                     local.get $4
                     select
                     i32.const 20
                     i32.shl
                     i64.extend_i32_u
                     i64.or
                     local.get $18
                     local.get $19
                     local.get $20
                     local.get $10
                     select
                     local.get $11
                     select
                     local.tee $8
                     local.get $13
                     local.get $16
                     local.get $14
                     local.get $10
                     select
                     local.get $11
                     select
                     local.tee $9
                     local.get $6
                     select
                     i32.const 15
                     i32.shl
                     i64.extend_i32_u
                     i64.or
                     local.get $9
                     local.get $8
                     local.get $6
                     select
                     i32.const 10
                     i32.shl
                     i64.extend_i32_u
                     i64.or
                     local.get $13
                     local.get $16
                     local.get $14
                     local.get $12
                     select
                     local.get $15
                     select
                     i32.const 5
                     i32.shl
                     i64.extend_i32_u
                     i64.or
                     local.get $18
                     local.get $19
                     local.get $20
                     local.get $12
                     select
                     local.get $15
                     select
                     i64.extend_i32_u
                     i64.or
                     i64.const 9
                     i64.shl
                     i64.or
                     i64.const 4
                     i64.or
                     local.set $7
                     i32.const 1
                     local.get $4
                     local.get $6
                     select
                     if
                      local.get $0
                      local.get $2
                      i32.const 2
                      i32.shl
                      i32.load offset=2048
                      local.tee $0
                      i32.const 65535
                      i32.and
                      i32.const 0
                      local.get $6
                      select
                      local.get $0
                      i32.const 16
                      i32.shr_u
                      i32.const 0
                      local.get $4
                      select
                      i32.or
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
                      i32.xor
                      local.set $0
                     end
                     local.get $0
                     i32.const 1
                     i32.and
                     i32.const -1
                     local.get $29
                     i32.shl
                     i32.const -2
                     i32.xor
                     local.get $0
                     i32.const 1
                     i32.shr_u
                     i32.and
                     i32.const -1
                     local.get $39
                     i32.const 1
                     i32.sub
                     i32.shl
                     local.tee $2
                     local.get $0
                     i32.const 3
                     i32.shr_u
                     i32.and
                     local.get $2
                     i32.const 1
                     local.get $29
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
                     local.set $5
                     br $break|2
                    end
                    local.get $1
                    i64.const 20
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 31
                    i32.and
                    local.tee $4
                    i32.const 29
                    i32.gt_u
                    if
                     i64.const -9151873029083480128
                     local.set $7
                     br $break|2
                    end
                    local.get $3
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
                    i32.load16_u offset=256
                    local.tee $2
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=1036
                    local.tee $8
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
                    i32.load16_u offset=256
                    local.tee $6
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=1036
                    local.tee $9
                    i32.const 1029946068
                    local.get $4
                    i32.shr_u
                    i32.const 1
                    i32.and
                    local.tee $0
                    select
                    local.get $3
                    i64.const 10
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $2
                    i32.const 4
                    i32.shr_u
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=1036
                    local.tee $10
                    local.get $1
                    i64.const 56
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $6
                    i32.const 4
                    i32.shr_u
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=1036
                    local.tee $11
                    local.get $0
                    select
                    local.get $3
                    i64.const 13
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $2
                    i32.const 8
                    i32.shr_u
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=1036
                    local.tee $12
                    local.get $1
                    i64.const 59
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $6
                    i32.const 8
                    i32.shr_u
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=1036
                    local.tee $15
                    local.get $0
                    select
                    local.get $3
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
                    i32.load16_u offset=256
                    local.tee $2
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=1036
                    local.tee $13
                    local.get $1
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
                    local.get $1
                    i64.const 32
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 127
                    i32.and
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=256
                    local.tee $6
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=1036
                    local.tee $16
                    local.get $0
                    select
                    local.get $3
                    i64.const 19
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $2
                    i32.const 4
                    i32.shr_u
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=1036
                    local.tee $14
                    local.get $3
                    i64.const 1
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $6
                    i32.const 4
                    i32.shr_u
                    i32.const 7
                    i32.and
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=1036
                    local.tee $18
                    local.get $0
                    select
                    local.get $3
                    i64.const 22
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $2
                    i32.const 8
                    i32.shr_u
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=1036
                    local.tee $19
                    local.get $3
                    i64.const 4
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 7
                    i32.and
                    local.get $6
                    i32.const 8
                    i32.shr_u
                    i32.const 3
                    i32.shl
                    i32.or
                    i32.load8_u offset=1036
                    local.tee $20
                    local.get $0
                    select
                    call $assembly/uastc-bc7/mode3
                    local.tee $1
                    i64.const 28
                    i64.shr_u
                    i64.const 16383
                    i64.and
                    local.set $5
                    local.get $1
                    i64.const 42
                    i64.shr_u
                    i64.const 3
                    i64.and
                    local.set $17
                    local.get $11
                    local.get $10
                    local.get $0
                    select
                    local.tee $10
                    local.get $9
                    local.get $8
                    local.get $0
                    select
                    local.tee $9
                    local.get $3
                    i64.const 25
                    i64.shr_u
                    i64.const 1
                    i64.and
                    i32.const -1
                    i64.const 5651576228422017
                    i64.const -4286381023083155150
                    local.get $4
                    i32.const 15
                    i32.gt_u
                    local.tee $11
                    select
                    local.get $4
                    i32.const 15
                    i32.and
                    i32.const 2
                    i32.shl
                    local.tee $6
                    i64.extend_i32_u
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 15
                    i32.and
                    i32.const 1
                    i32.shl
                    local.tee $2
                    i32.const 2
                    i32.add
                    i32.shl
                    i64.extend_i32_u
                    local.get $3
                    i64.const 23
                    i64.shr_u
                    i64.and
                    i32.const -1
                    local.get $2
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
                    i32.wrap_i64
                    local.tee $2
                    i32.const 1
                    i32.const 15
                    i64.const 72048970541048450
                    local.get $6
                    i64.extend_i32_u
                    i64.shr_s
                    i32.wrap_i64
                    i32.const 15
                    i32.and
                    local.get $4
                    i32.const 16
                    i32.lt_u
                    select
                    i32.const 1
                    i32.shl
                    local.tee $8
                    i32.const 1
                    i32.add
                    i32.shl
                    i32.and
                    local.tee $6
                    select
                    local.get $9
                    local.get $10
                    local.get $6
                    select
                    local.get $16
                    local.get $13
                    local.get $0
                    select
                    local.tee $9
                    local.get $15
                    local.get $12
                    local.get $0
                    select
                    local.tee $10
                    local.get $6
                    select
                    local.get $10
                    local.get $9
                    local.get $6
                    select
                    local.get $20
                    local.get $19
                    local.get $0
                    select
                    local.tee $9
                    local.get $18
                    local.get $14
                    local.get $0
                    select
                    local.tee $0
                    local.get $6
                    select
                    local.get $0
                    local.get $9
                    local.get $6
                    select
                    call $assembly/uastc-bc7/mode3
                    local.tee $3
                    i64.const 28
                    i64.shr_u
                    i64.const 16383
                    i64.and
                    local.set $23
                    local.get $3
                    i64.const 42
                    i64.shr_u
                    i64.const 3
                    i64.and
                    local.set $25
                    local.get $4
                    local.get $11
                    i32.add
                    i32.const 874586141
                    local.get $4
                    i32.const 26
                    i32.sub
                    i32.const 3
                    i32.shl
                    i32.shr_u
                    i32.const 255
                    i32.and
                    local.get $4
                    i32.const 26
                    i32.lt_u
                    select
                    i32.const 4
                    i32.shl
                    i64.extend_i32_u
                    local.get $3
                    i64.const 14
                    i64.shr_u
                    i64.const 16383
                    i64.and
                    local.tee $31
                    i64.const 52
                    i64.shl
                    local.get $1
                    i64.const 14
                    i64.shr_u
                    i64.const 16383
                    i64.and
                    i64.const 38
                    i64.shl
                    i64.or
                    local.get $3
                    i64.const 16383
                    i64.and
                    i64.const 24
                    i64.shl
                    i64.or
                    local.get $1
                    i64.const 16383
                    i64.and
                    i64.const 10
                    i64.shl
                    i64.or
                    i64.or
                    i64.const 8
                    i64.or
                    local.set $7
                    local.get $6
                    if
                     local.get $2
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
                     i32.xor
                     local.set $2
                    end
                    local.get $2
                    i32.const 1
                    i32.and
                    i32.const -1
                    local.get $8
                    i32.const 1
                    i32.sub
                    i32.shl
                    local.get $2
                    i32.const 2
                    i32.shr_u
                    i32.and
                    i32.const -1
                    local.get $8
                    i32.shl
                    i32.const -2
                    i32.xor
                    local.get $2
                    i32.const 1
                    i32.shr_u
                    i32.and
                    i32.or
                    i32.or
                    i64.extend_i32_u
                    i64.const 34
                    i64.shl
                    local.get $25
                    i64.const 32
                    i64.shl
                    i64.or
                    local.get $17
                    i64.const 30
                    i64.shl
                    i64.or
                    local.get $23
                    i64.const 16
                    i64.shl
                    i64.or
                    local.get $5
                    i64.const 2
                    i64.shl
                    i64.or
                    local.get $31
                    i64.const 12
                    i64.shr_u
                    i64.or
                    local.set $5
                    br $break|2
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
                   local.get $3
                   i64.const 4
                   i64.shl
                   i32.wrap_i64
                   i32.const 240
                   i32.and
                   i32.or
                   i32.const 255
                   i32.const 255
                   call $assembly/uastc-bc7/mode6
                   local.tee $1
                   i64.const 7
                   i64.shl
                   i64.const 64
                   i64.or
                   local.set $7
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
                   local.tee $3
                   i64.const 8
                   i64.shl
                   i64.const 72057589742960640
                   i64.and
                   local.get $3
                   i64.const 16777215
                   i64.and
                   i64.or
                   local.tee $3
                   i64.const 4
                   i64.shl
                   i64.const 1152640029898506240
                   i64.and
                   local.get $3
                   i64.const 17587891081215
                   i64.and
                   i64.or
                   local.tee $3
                   i64.const 2
                   i64.shl
                   i64.const 4539697694678990592
                   i64.and
                   local.get $3
                   i64.const 17733194119839807
                   i64.and
                   i64.or
                   local.tee $3
                   i64.const 1
                   i64.shl
                   i64.const 8102099357864587376
                   i64.and
                   local.get $3
                   i64.const 506381209866536711
                   i64.and
                   i64.or
                   local.tee $3
                   i64.const 1
                   i64.shl
                   local.get $3
                   i64.const 2
                   i64.shr_u
                   i64.const 1229782938247303441
                   i64.and
                   i64.or
                   local.tee $3
                   i64.const -16
                   i64.and
                   local.get $3
                   i64.const 1
                   i64.shl
                   i64.const 14
                   i64.and
                   i64.or
                   local.get $1
                   i64.const 57
                   i64.shr_u
                   i64.or
                   local.set $5
                   br $break|2
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
                  local.tee $7
                  i64.const 2
                  i64.shr_u
                  local.get $7
                  i64.const 4
                  i64.shr_u
                  i64.xor
                  i64.const 217020518514230019
                  i64.and
                  local.tee $5
                  i64.const 2
                  i64.shl
                  local.get $5
                  i64.const 4
                  i64.shl
                  i64.or
                  local.get $7
                  i64.xor
                  local.tee $7
                  i64.const 4
                  i64.shr_u
                  local.get $7
                  i64.const 8
                  i64.shr_u
                  i64.xor
                  i64.const 4222189076152335
                  i64.and
                  local.tee $5
                  i64.const 4
                  i64.shl
                  local.get $5
                  i64.const 8
                  i64.shl
                  i64.or
                  local.get $7
                  i64.xor
                  local.tee $7
                  i64.const 8
                  i64.shr_u
                  local.get $7
                  i64.const 16
                  i64.shr_u
                  i64.xor
                  i64.const 1095216660735
                  i64.and
                  local.tee $5
                  i64.const 8
                  i64.shl
                  local.get $5
                  i64.const 16
                  i64.shl
                  i64.or
                  local.get $7
                  i64.xor
                  local.tee $7
                  i64.const 16
                  i64.shr_u
                  local.get $7
                  i64.const 32
                  i64.shr_u
                  i64.xor
                  i64.const 65535
                  i64.and
                  local.tee $5
                  i64.const 16
                  i64.shl
                  local.get $5
                  i64.const 32
                  i64.shl
                  i64.or
                  local.get $7
                  i64.xor
                  local.set $5
                  block $assembly/uastc-bc7/mode5|inlined.0 (result i64)
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
                   i32.load16_u offset=256
                   local.tee $4
                   i32.const 7
                   i32.and
                   i32.const 5
                   i32.shl
                   i32.or
                   i32.load8_u offset=1124
                   local.set $0
                   local.get $1
                   i64.const 41
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 31
                   i32.and
                   local.get $4
                   i32.const 4
                   i32.shr_u
                   i32.const 7
                   i32.and
                   i32.const 5
                   i32.shl
                   i32.or
                   i32.load8_u offset=1124
                   local.set $2
                   local.get $1
                   i64.const 46
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 31
                   i32.and
                   local.get $4
                   i32.const 8
                   i32.shr_u
                   i32.const 5
                   i32.shl
                   i32.or
                   i32.load8_u offset=1124
                   local.set $4
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
                   i32.load16_u offset=256
                   local.tee $9
                   i32.const 7
                   i32.and
                   i32.const 5
                   i32.shl
                   i32.or
                   i32.load8_u offset=1124
                   local.set $6
                   local.get $1
                   i64.const 56
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 31
                   i32.and
                   local.get $9
                   i32.const 4
                   i32.shr_u
                   i32.const 7
                   i32.and
                   i32.const 5
                   i32.shl
                   i32.or
                   i32.load8_u offset=1124
                   local.set $8
                   local.get $1
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
                   local.get $9
                   i32.const 8
                   i32.shr_u
                   i32.const 5
                   i32.shl
                   i32.or
                   i32.load8_u offset=1124
                   local.set $9
                   block $case3|3
                    block $case2|3
                     block $case1|3
                      block $case0|3
                       local.get $1
                       i64.const 20
                       i64.shr_u
                       i32.wrap_i64
                       i32.const 3
                       i32.and
                       local.tee $10
                       br_table $case0|3 $case1|3 $case2|3 $case3|3
                      end
                      local.get $6
                      i32.const 1
                      i32.add
                      i32.const 255
                      i32.mul
                      i32.const 9
                      i32.shr_u
                      i32.const 21
                      i32.shl
                      local.get $4
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
                      local.get $2
                      i32.const 22
                      i32.shl
                      local.get $0
                      i32.const 14
                      i32.shl
                      i32.or
                      local.get $9
                      i32.const 1
                      i32.add
                      i32.const 255
                      i32.mul
                      i32.const 9
                      i32.shr_u
                      i32.const 7
                      i32.shl
                      i32.or
                      local.get $8
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
                      br $assembly/uastc-bc7/mode5|inlined.0
                     end
                     local.get $2
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
                     local.get $0
                     i32.const 1
                     i32.add
                     i32.const 255
                     i32.mul
                     i32.const 9
                     i32.shr_u
                     i32.or
                     i64.extend_i32_u
                     local.get $6
                     i32.const 22
                     i32.shl
                     local.get $4
                     i32.const 14
                     i32.shl
                     i32.or
                     local.get $9
                     i32.const 1
                     i32.add
                     i32.const 255
                     i32.mul
                     i32.const 9
                     i32.shr_u
                     i32.const 7
                     i32.shl
                     i32.or
                     local.get $8
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
                     br $assembly/uastc-bc7/mode5|inlined.0
                    end
                    local.get $6
                    i32.const 1
                    i32.add
                    i32.const 255
                    i32.mul
                    i32.const 9
                    i32.shr_u
                    i32.const 21
                    i32.shl
                    local.get $4
                    i32.const 1
                    i32.add
                    i32.const 255
                    i32.mul
                    i32.const 9
                    i32.shr_u
                    i32.const 14
                    i32.shl
                    i32.or
                    local.get $2
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
                    local.get $9
                    i32.const 22
                    i32.shl
                    local.get $8
                    i32.const 14
                    i32.shl
                    i32.or
                    i32.const 16383
                    i32.or
                    i64.extend_i32_u
                    i64.const 28
                    i64.shl
                    i64.or
                    br $assembly/uastc-bc7/mode5|inlined.0
                   end
                   local.get $6
                   i32.const 1
                   i32.add
                   i32.const 255
                   i32.mul
                   i32.const 9
                   i32.shr_u
                   i32.const 21
                   i32.shl
                   local.get $4
                   i32.const 1
                   i32.add
                   i32.const 255
                   i32.mul
                   i32.const 9
                   i32.shr_u
                   i32.const 14
                   i32.shl
                   i32.or
                   local.get $2
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
                   local.get $9
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
                   local.get $8
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
                  local.tee $1
                  i64.const 8
                  i64.shl
                  local.get $10
                  i32.const 1
                  i32.add
                  i32.const 3
                  i32.and
                  i32.const 6
                  i32.shl
                  i64.extend_i32_s
                  i64.or
                  i64.const 32
                  i64.or
                  local.set $7
                  local.get $5
                  i64.const 2
                  i64.shl
                  i64.const 4
                  i64.and
                  local.get $5
                  i64.const -17179869184
                  i64.and
                  local.get $5
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
                  local.set $5
                  br $break|2
                 end
                 local.get $1
                 i64.const 20
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 31
                 i32.and
                 local.tee $6
                 i32.const 18
                 i32.gt_u
                 if
                  i64.const -9151873029083480128
                  local.set $7
                  br $break|2
                 end
                 local.get $3
                 i64.const 25
                 i64.shr_u
                 i64.const 1
                 i64.and
                 i32.const -1
                 i64.const 1065
                 i64.const 3202384868132024868
                 local.get $6
                 i32.const 15
                 i32.gt_u
                 local.tee $4
                 select
                 local.get $6
                 i32.const 15
                 i32.and
                 i32.const 2
                 i32.shl
                 local.tee $10
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
                 local.get $3
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
                 local.get $3
                 i64.const 24
                 i64.shr_u
                 i64.and
                 i64.or
                 i64.or
                 i32.wrap_i64
                 local.set $0
                 local.get $3
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
                 i32.load16_u offset=256
                 local.tee $15
                 i32.const 7
                 i32.and
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=1036
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $13
                 local.get $1
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
                 local.get $1
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
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $14
                 i64.const 23414388175754322
                 local.get $6
                 i32.const 3
                 i32.mul
                 i64.extend_i32_u
                 i64.shr_s
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.tee $18
                 i32.const 4
                 i32.and
                 local.tee $8
                 select
                 local.set $19
                 local.get $3
                 i64.const 13
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
                 i32.load16_u offset=256
                 local.tee $20
                 i32.const 8
                 i32.shr_u
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=1036
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $22
                 local.get $1
                 i64.const 59
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
                 i32.load16_u offset=256
                 local.tee $24
                 i32.const 8
                 i32.shr_u
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=1036
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $26
                 local.get $18
                 i32.const 2
                 i32.and
                 local.tee $9
                 select
                 local.set $27
                 i64.const 2035220
                 i64.const 2466600419146929192
                 i64.const 2378196406272789258
                 local.get $6
                 i32.const 7
                 i32.gt_u
                 select
                 local.get $4
                 select
                 local.get $6
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
                 local.get $19
                 local.get $22
                 local.get $26
                 local.get $8
                 select
                 local.tee $28
                 local.get $0
                 i32.const 1
                 i64.const 2303
                 i64.const -3385438295322625
                 local.get $4
                 select
                 local.get $10
                 i64.extend_i32_u
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 15
                 i32.and
                 i32.const 1
                 i32.shl
                 local.tee $11
                 i32.const 1
                 i32.add
                 i32.shl
                 i32.and
                 local.tee $2
                 select
                 i64.extend_i32_u
                 i64.const 50
                 i64.shl
                 local.get $27
                 local.get $13
                 local.get $14
                 local.get $9
                 select
                 local.tee $30
                 local.get $0
                 i32.const 1
                 i64.const 3891
                 i64.const 4435908468672099174
                 local.get $4
                 select
                 local.get $10
                 i64.extend_i32_u
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 15
                 i32.and
                 i32.const 1
                 i32.shl
                 local.tee $12
                 i32.const 1
                 i32.add
                 i32.shl
                 i32.and
                 local.tee $4
                 select
                 i64.extend_i32_u
                 i64.const 45
                 i64.shl
                 i64.or
                 local.get $30
                 local.get $27
                 local.get $4
                 select
                 i64.extend_i32_u
                 i64.const 40
                 i64.shl
                 i64.or
                 local.get $13
                 local.get $14
                 local.get $18
                 i32.const 1
                 i32.and
                 local.tee $10
                 select
                 i64.extend_i32_u
                 i64.const 35
                 i64.shl
                 i64.or
                 local.get $22
                 local.get $26
                 local.get $10
                 select
                 i64.extend_i32_u
                 i64.const 30
                 i64.shl
                 i64.or
                 local.get $3
                 i64.const 7
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $20
                 i32.const 7
                 i32.and
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=1036
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $13
                 local.get $1
                 i64.const 53
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $24
                 i32.const 7
                 i32.and
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=1036
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $14
                 local.get $8
                 select
                 local.tee $22
                 local.get $3
                 i64.const 10
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $20
                 i32.const 4
                 i32.shr_u
                 i32.const 7
                 i32.and
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=1036
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $18
                 local.get $1
                 i64.const 56
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
                 i32.load8_u offset=1036
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $20
                 local.get $8
                 select
                 local.tee $24
                 local.get $2
                 select
                 i32.const 25
                 i32.shl
                 i64.extend_i32_u
                 i64.or
                 local.get $24
                 local.get $22
                 local.get $2
                 select
                 i32.const 20
                 i32.shl
                 i64.extend_i32_u
                 i64.or
                 local.get $13
                 local.get $14
                 local.get $9
                 select
                 local.tee $22
                 local.get $18
                 local.get $20
                 local.get $9
                 select
                 local.tee $24
                 local.get $4
                 select
                 i32.const 15
                 i32.shl
                 i64.extend_i32_u
                 i64.or
                 local.get $24
                 local.get $22
                 local.get $4
                 select
                 i32.const 10
                 i32.shl
                 i64.extend_i32_u
                 i64.or
                 local.get $18
                 local.get $20
                 local.get $10
                 select
                 i32.const 5
                 i32.shl
                 i64.extend_i32_u
                 i64.or
                 local.get $13
                 local.get $14
                 local.get $10
                 select
                 i64.extend_i32_u
                 i64.or
                 i64.const 9
                 i64.shl
                 i64.or
                 i64.const 4
                 i64.or
                 local.set $7
                 i32.const 1
                 local.get $2
                 local.get $4
                 select
                 if
                  local.get $0
                  local.get $6
                  i32.const 2
                  i32.shl
                  i32.load offset=2096
                  local.tee $0
                  i32.const 65535
                  i32.and
                  i32.const 0
                  local.get $4
                  select
                  local.get $0
                  i32.const 16
                  i32.shr_u
                  i32.const 0
                  local.get $2
                  select
                  i32.or
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
                  i32.xor
                  local.set $0
                 end
                 local.get $28
                 local.get $19
                 local.get $2
                 select
                 i64.extend_i32_u
                 local.get $3
                 i64.const 19
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $15
                 i32.const 4
                 i32.shr_u
                 i32.const 7
                 i32.and
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=1036
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $6
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
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $13
                 local.get $8
                 select
                 local.tee $14
                 local.get $3
                 i64.const 22
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 7
                 i32.and
                 local.get $15
                 i32.const 8
                 i32.shr_u
                 i32.const 3
                 i32.shl
                 i32.or
                 i32.load8_u offset=1036
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $15
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
                 i32.const 249
                 i32.mul
                 i32.const 1023
                 i32.add
                 i32.const 11
                 i32.shr_u
                 local.tee $16
                 local.get $8
                 select
                 local.tee $8
                 local.get $2
                 select
                 i64.extend_i32_u
                 i64.const 30
                 i64.shl
                 local.get $8
                 local.get $14
                 local.get $2
                 select
                 i32.const 25
                 i32.shl
                 i64.extend_i32_u
                 i64.or
                 local.get $6
                 local.get $13
                 local.get $9
                 select
                 local.tee $2
                 local.get $15
                 local.get $16
                 local.get $9
                 select
                 local.tee $8
                 local.get $4
                 select
                 i32.const 20
                 i32.shl
                 i64.extend_i32_u
                 i64.or
                 local.get $8
                 local.get $2
                 local.get $4
                 select
                 i32.const 15
                 i32.shl
                 i64.extend_i32_u
                 i64.or
                 local.get $15
                 local.get $16
                 local.get $10
                 select
                 i32.const 10
                 i32.shl
                 i64.extend_i32_u
                 i64.or
                 local.get $6
                 local.get $13
                 local.get $10
                 select
                 i32.const 5
                 i32.shl
                 i64.extend_i32_u
                 i64.or
                 i64.or
                 local.get $0
                 i32.const 1
                 i32.and
                 i32.const -1
                 local.get $12
                 local.get $11
                 local.get $12
                 local.get $11
                 i32.gt_u
                 select
                 i32.const 1
                 i32.sub
                 i32.shl
                 local.tee $2
                 local.get $0
                 i32.const 3
                 i32.shr_u
                 i32.and
                 local.get $2
                 i32.const 1
                 local.get $12
                 local.get $11
                 local.get $12
                 local.get $11
                 i32.lt_u
                 select
                 local.tee $2
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
                 i32.const -1
                 local.get $2
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
                 i64.const 35
                 i64.shl
                 i64.or
                 local.set $5
                 br $break|2
                end
                local.get $1
                i64.const 5
                i64.shr_u
                i32.wrap_i64
                i32.const 255
                i32.and
                i32.const 1
                i32.shl
                i32.load16_s offset=1536
                i64.extend_i32_s
                local.get $1
                i64.const 13
                i64.shr_u
                i32.wrap_i64
                i32.const 255
                i32.and
                i32.const 1
                i32.shl
                i32.load16_s offset=1536
                i32.const 14
                i32.shl
                i64.extend_i32_s
                local.get $1
                i64.const 29
                i64.shr_u
                i32.wrap_i64
                i32.const 255
                i32.and
                i32.const 257
                i32.mul
                i64.extend_i32_u
                i64.const 42
                i64.shl
                local.get $1
                i64.const 21
                i64.shr_u
                i32.wrap_i64
                i32.const 255
                i32.and
                i32.const 1
                i32.shl
                i32.load16_s offset=1536
                i64.extend_i32_s
                i64.const 28
                i64.shl
                i64.or
                i64.or
                i64.or
                local.tee $1
                i64.const 8
                i64.shl
                i64.const 32
                i64.or
                local.set $7
                local.get $1
                i64.const 56
                i64.shr_u
                i64.const 2863311532
                i64.or
                local.set $5
                br $break|2
               end
               local.get $1
               i64.const 28
               i64.shr_u
               i32.wrap_i64
               i32.const 31
               i32.and
               local.tee $2
               i32.const 29
               i32.gt_u
               if
                i64.const -9151873029083480128
                local.set $7
                br $break|2
               end
               local.get $3
               i64.const 31
               i64.shl
               local.get $1
               i64.const 33
               i64.shr_u
               i64.or
               i64.const 1085102592571150095
               i64.and
               local.tee $7
               local.get $7
               i64.const 4
               i64.shl
               i64.or
               local.tee $7
               i64.const 32
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $4
               local.get $7
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $6
               i32.const 1029946068
               local.get $2
               i32.shr_u
               i32.const 1
               i32.and
               local.tee $0
               select
               local.get $3
               i64.const 27
               i64.shl
               local.get $1
               i64.const 37
               i64.shr_u
               i64.or
               i64.const 1085102592571150095
               i64.and
               local.tee $1
               local.get $1
               i64.const 4
               i64.shl
               i64.or
               local.tee $1
               i64.const 32
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $8
               local.get $1
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $9
               local.get $0
               select
               local.get $7
               i64.const 40
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $10
               local.get $7
               i64.const 8
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $11
               local.get $0
               select
               local.get $1
               i64.const 40
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $12
               local.get $1
               i64.const 8
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $15
               local.get $0
               select
               local.get $7
               i64.const 48
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $13
               local.get $7
               i64.const 16
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $16
               local.get $0
               select
               local.get $1
               i64.const 48
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $14
               local.get $1
               i64.const 16
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $18
               local.get $0
               select
               local.get $7
               i64.const 56
               i64.shr_u
               i32.wrap_i64
               local.tee $19
               local.get $7
               i64.const 24
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $20
               local.get $0
               select
               local.get $1
               i64.const 56
               i64.shr_u
               i32.wrap_i64
               local.tee $22
               local.get $1
               i64.const 24
               i64.shr_u
               i32.wrap_i64
               i32.const 255
               i32.and
               local.tee $24
               local.get $0
               select
               call $assembly/uastc-bc7/mode7
               local.tee $7
               i64.const 30
               i64.shr_s
               i64.const 1023
               i64.and
               local.set $5
               local.get $7
               i64.const 40
               i64.shr_s
               i64.const 3
               i64.and
               local.set $17
               local.get $9
               local.get $8
               local.get $0
               select
               local.tee $8
               local.get $6
               local.get $4
               local.get $0
               select
               local.tee $9
               local.get $3
               i64.const 33
               i64.shr_u
               i64.const 1
               i64.and
               i32.const -1
               i64.const 5651576228422017
               i64.const -4286381023083155150
               local.get $2
               i32.const 15
               i32.gt_u
               local.tee $26
               select
               local.get $2
               i32.const 15
               i32.and
               i32.const 2
               i32.shl
               local.tee $4
               i64.extend_i32_u
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               i32.const 1
               i32.shl
               local.tee $6
               i32.const 2
               i32.add
               i32.shl
               i64.extend_i32_u
               local.get $3
               i64.const 31
               i64.shr_u
               i64.and
               i32.const -1
               local.get $6
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
               local.tee $1
               i64.const 1
               i32.const 15
               i64.const 72048970541048450
               local.get $4
               i64.extend_i32_u
               i64.shr_s
               i32.wrap_i64
               i32.const 15
               i32.and
               local.get $2
               i32.const 16
               i32.lt_u
               select
               i32.const 1
               i32.shl
               local.tee $6
               i32.const 1
               i32.add
               i64.extend_i32_u
               i64.shl
               i64.and
               i64.const 0
               i64.ne
               local.tee $4
               select
               local.get $9
               local.get $8
               local.get $4
               select
               local.get $15
               local.get $12
               local.get $0
               select
               local.tee $8
               local.get $11
               local.get $10
               local.get $0
               select
               local.tee $9
               local.get $4
               select
               local.get $9
               local.get $8
               local.get $4
               select
               local.get $18
               local.get $14
               local.get $0
               select
               local.tee $8
               local.get $16
               local.get $13
               local.get $0
               select
               local.tee $9
               local.get $4
               select
               local.get $9
               local.get $8
               local.get $4
               select
               local.get $24
               local.get $22
               local.get $0
               select
               local.tee $8
               local.get $20
               local.get $19
               local.get $0
               select
               local.tee $0
               local.get $4
               select
               local.get $0
               local.get $8
               local.get $4
               select
               call $assembly/uastc-bc7/mode7
               local.tee $3
               i64.const 20
               i64.shr_s
               i64.const 1023
               i64.and
               local.get $3
               i64.const 30
               i64.shr_s
               i64.const 1023
               i64.and
               local.set $25
               local.get $2
               local.get $26
               i32.add
               i32.const 874586141
               local.get $2
               i32.const 26
               i32.sub
               i32.const 3
               i32.shl
               i32.shr_u
               i32.const 255
               i32.and
               local.get $2
               i32.const 26
               i32.lt_u
               select
               i32.const 8
               i32.shl
               i64.extend_i32_u
               local.get $7
               i64.const 20
               i64.shr_s
               i64.const 1023
               i64.and
               i64.const 54
               i64.shl
               local.get $3
               i64.const 10
               i64.shr_s
               i64.const 1023
               i64.and
               i64.const 44
               i64.shl
               i64.or
               local.get $7
               i64.const 10
               i64.shr_s
               i64.const 1023
               i64.and
               i64.const 34
               i64.shl
               i64.or
               local.get $3
               i64.const 1023
               i64.and
               i64.const 24
               i64.shl
               i64.or
               local.get $7
               i64.const 1023
               i64.and
               i64.const 14
               i64.shl
               i64.or
               i64.or
               i64.const 128
               i64.or
               local.set $7
               local.get $4
               if
                local.get $1
                local.get $2
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
                i64.extend_i32_u
                i64.xor
                local.set $1
               end
               local.get $1
               i64.const 1
               i64.and
               i32.const -1
               local.get $6
               i32.const 1
               i32.sub
               i32.shl
               i64.extend_i32_u
               local.get $1
               i64.const 2
               i64.shr_u
               i64.and
               i32.const -1
               local.get $6
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
               local.get $3
               i64.const 40
               i64.shr_s
               i64.const 3
               i64.and
               i64.const 32
               i64.shl
               i64.or
               local.get $17
               i64.const 30
               i64.shl
               i64.or
               local.get $25
               i64.const 20
               i64.shl
               i64.or
               local.get $5
               i64.const 10
               i64.shl
               i64.or
               i64.or
               local.set $5
               br $break|2
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
              i32.load16_u offset=512
              local.tee $0
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=1076
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
              i32.load8_u offset=1076
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
              i32.load8_u offset=1076
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
              i32.load8_u offset=1076
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
              i32.load8_u offset=1076
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
              i32.load16_u offset=512
              local.tee $0
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=1076
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
              i32.load8_u offset=1076
              local.get $1
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
              local.get $0
              i32.const 4
              i32.shr_u
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=1076
              call $assembly/uastc-bc7/mode6
              local.tee $1
              i64.const 7
              i64.shl
              i64.const 64
              i64.or
              local.set $7
              local.get $3
              i64.const -2
              i64.and
              local.get $1
              i64.const 57
              i64.shr_u
              i64.or
              local.set $5
              br $break|2
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
             local.set $5
             block $assembly/uastc-bc7/mode5|inlined.1 (result i64)
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
              i32.load16_u offset=512
              local.tee $0
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=1076
              local.set $2
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
              i32.load8_u offset=1076
              local.set $4
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
              i32.load8_u offset=1076
              local.set $6
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
              i32.load8_u offset=1076
              local.set $8
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
              i32.load8_u offset=1076
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
              i32.load16_u offset=512
              local.tee $11
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=1076
              local.set $9
              local.get $1
              i64.const 58
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              local.get $11
              i32.const 2
              i32.shr_u
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=1076
              local.set $10
              local.get $1
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
              local.get $11
              i32.const 4
              i32.shr_u
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=1076
              local.set $11
              block $case3|4
               block $case2|4
                block $case1|4
                 block $case0|4
                  local.get $1
                  i64.const 19
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 3
                  i32.and
                  local.tee $12
                  br_table $case0|4 $case1|4 $case2|4 $case3|4
                 end
                 local.get $8
                 i32.const 1
                 i32.add
                 i32.const 255
                 i32.mul
                 i32.const 9
                 i32.shr_u
                 i32.const 21
                 i32.shl
                 local.get $6
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
                 local.get $4
                 i32.const 22
                 i32.shl
                 local.get $2
                 i32.const 14
                 i32.shl
                 i32.or
                 local.get $9
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
                 br $assembly/uastc-bc7/mode5|inlined.1
                end
                local.get $11
                i32.const 1
                i32.add
                i32.const 255
                i32.mul
                i32.const 9
                i32.shr_u
                i32.const 21
                i32.shl
                local.get $10
                i32.const 1
                i32.add
                i32.const 255
                i32.mul
                i32.const 9
                i32.shr_u
                i32.const 14
                i32.shl
                i32.or
                local.get $4
                i32.const 1
                i32.add
                i32.const 255
                i32.mul
                i32.const 9
                i32.shr_u
                i32.const 7
                i32.shl
                i32.or
                local.get $2
                i32.const 1
                i32.add
                i32.const 255
                i32.mul
                i32.const 9
                i32.shr_u
                i32.or
                i64.extend_i32_u
                local.get $8
                i32.const 22
                i32.shl
                local.get $6
                i32.const 14
                i32.shl
                i32.or
                local.get $9
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
                br $assembly/uastc-bc7/mode5|inlined.1
               end
               local.get $8
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.const 21
               i32.shl
               local.get $6
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.const 14
               i32.shl
               i32.or
               local.get $4
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.const 7
               i32.shl
               i32.or
               local.get $2
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.or
               i64.extend_i32_u
               local.get $9
               i32.const 22
               i32.shl
               local.get $0
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
               i64.const 28
               i64.shl
               i64.or
               br $assembly/uastc-bc7/mode5|inlined.1
              end
              local.get $8
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 21
              i32.shl
              local.get $6
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 14
              i32.shl
              i32.or
              local.get $4
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 7
              i32.shl
              i32.or
              local.get $2
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
              local.get $9
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
             local.get $12
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
             local.set $7
             local.get $5
             local.get $5
             i64.const 2
             i64.shr_u
             local.get $5
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
             i64.xor
             local.tee $3
             i64.const 4
             i64.shr_u
             local.get $3
             i64.const 8
             i64.shr_u
             i64.xor
             i64.const 4222189076152335
             i64.and
             local.tee $5
             i64.const 4
             i64.shl
             local.get $5
             i64.const 8
             i64.shl
             i64.or
             local.get $3
             i64.xor
             local.tee $3
             i64.const 8
             i64.shr_u
             local.get $3
             i64.const 16
             i64.shr_u
             i64.xor
             i64.const 1095216660735
             i64.and
             local.tee $5
             i64.const 8
             i64.shl
             local.get $5
             i64.const 16
             i64.shl
             i64.or
             local.get $3
             i64.xor
             local.tee $3
             i64.const 16
             i64.shr_u
             local.get $3
             i64.const 32
             i64.shr_u
             i64.xor
             i64.const 65535
             i64.and
             local.tee $5
             i64.const 16
             i64.shl
             local.get $5
             i64.const 32
             i64.shl
             i64.or
             local.get $3
             i64.xor
             local.tee $3
             i64.const -17179869184
             i64.and
             local.get $3
             i64.const 1
             i64.shl
             i64.const 17179869176
             i64.and
             i64.or
             local.get $3
             i64.const 2
             i64.shl
             i64.const 4
             i64.and
             i64.or
             local.get $1
             i64.const 56
             i64.shr_u
             i64.or
             local.set $5
             br $break|2
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
            i32.load16_u offset=512
            local.tee $0
            i32.const 3
            i32.and
            i32.const 6
            i32.shl
            i32.or
            i32.load8_u offset=1284
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
            i32.load8_u offset=1284
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
            i32.load8_u offset=1284
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
            i32.load8_u offset=1284
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
            i32.load8_u offset=1284
            local.get $1
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
            local.get $1
            i64.const 28
            i64.shr_u
            i32.wrap_i64
            i32.const 31
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
            local.get $3
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
            i32.load8_u offset=1284
            local.get $3
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
            i32.load8_u offset=1284
            call $assembly/uastc-bc7/mode6
            local.tee $1
            i64.const 7
            i64.shl
            i64.const 64
            i64.or
            local.set $7
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
            local.tee $3
            i64.const 8
            i64.shl
            i64.const 72057589742960640
            i64.and
            local.get $3
            i64.const 16777215
            i64.and
            i64.or
            local.tee $3
            i64.const 4
            i64.shl
            i64.const 1152640029898506240
            i64.and
            local.get $3
            i64.const 17587891081215
            i64.and
            i64.or
            local.tee $3
            i64.const 2
            i64.shl
            i64.const 4539697694678990592
            i64.and
            local.get $3
            i64.const 17733194119839807
            i64.and
            i64.or
            local.tee $3
            i64.const 1
            i64.shl
            i64.const 8102099357864587376
            i64.and
            local.get $3
            i64.const 506381209866536711
            i64.and
            i64.or
            local.tee $3
            i64.const 1
            i64.shl
            local.get $3
            i64.const 2
            i64.shr_u
            i64.const 1229782938247303441
            i64.and
            i64.or
            local.tee $3
            i64.const -16
            i64.and
            local.get $3
            i64.const 1
            i64.shl
            i64.const 14
            i64.and
            i64.or
            local.get $1
            i64.const 57
            i64.shr_u
            i64.or
            local.set $5
            br $break|2
           end
           local.get $3
           i64.const 28
           i64.shr_u
           i64.const 4294967292
           i64.and
           local.set $5
           block $assembly/uastc-bc7/mode5|inlined.2 (result i64)
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
            local.set $2
            local.get $1
            i64.const 46
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            local.set $4
            local.get $1
            i64.const 54
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            local.set $6
            local.get $1
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
            local.set $8
            local.get $3
            i64.const 6
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            local.set $9
            local.get $3
            i64.const 14
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            local.set $10
            local.get $3
            i64.const 22
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            local.set $11
            block $case3|5
             block $case2|5
              block $case1|5
               block $case0|5
                local.get $1
                i64.const 28
                i64.shr_u
                i32.wrap_i64
                i32.const 3
                i32.and
                local.tee $12
                br_table $case0|5 $case1|5 $case2|5 $case3|5
               end
               local.get $6
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.const 21
               i32.shl
               local.get $4
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
               local.get $2
               i32.const 22
               i32.shl
               local.get $0
               i32.const 14
               i32.shl
               i32.or
               local.get $9
               i32.const 1
               i32.add
               i32.const 255
               i32.mul
               i32.const 9
               i32.shr_u
               i32.const 7
               i32.shl
               i32.or
               local.get $8
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
               br $assembly/uastc-bc7/mode5|inlined.2
              end
              local.get $11
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 21
              i32.shl
              local.get $10
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 14
              i32.shl
              i32.or
              local.get $2
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
              local.get $6
              i32.const 22
              i32.shl
              local.get $4
              i32.const 14
              i32.shl
              i32.or
              local.get $9
              i32.const 1
              i32.add
              i32.const 255
              i32.mul
              i32.const 9
              i32.shr_u
              i32.const 7
              i32.shl
              i32.or
              local.get $8
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
              br $assembly/uastc-bc7/mode5|inlined.2
             end
             local.get $6
             i32.const 1
             i32.add
             i32.const 255
             i32.mul
             i32.const 9
             i32.shr_u
             i32.const 21
             i32.shl
             local.get $4
             i32.const 1
             i32.add
             i32.const 255
             i32.mul
             i32.const 9
             i32.shr_u
             i32.const 14
             i32.shl
             i32.or
             local.get $2
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
             local.get $9
             i32.const 22
             i32.shl
             local.get $8
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
             i64.const 28
             i64.shl
             i64.or
             br $assembly/uastc-bc7/mode5|inlined.2
            end
            local.get $6
            i32.const 1
            i32.add
            i32.const 255
            i32.mul
            i32.const 9
            i32.shr_u
            i32.const 21
            i32.shl
            local.get $4
            i32.const 1
            i32.add
            i32.const 255
            i32.mul
            i32.const 9
            i32.shr_u
            i32.const 14
            i32.shl
            i32.or
            local.get $2
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
            local.get $11
            i32.const 22
            i32.shl
            local.get $10
            i32.const 14
            i32.shl
            i32.or
            local.get $9
            i32.const 1
            i32.add
            i32.const 255
            i32.mul
            i32.const 9
            i32.shr_u
            i32.const 7
            i32.shl
            i32.or
            local.get $8
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
           local.get $12
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
           local.set $7
           local.get $5
           local.get $5
           i64.const 16
           i64.shl
           i64.or
           i64.const 281470681808895
           i64.and
           local.tee $3
           local.get $3
           i64.const 8
           i64.shl
           i64.or
           i64.const 71777214294589695
           i64.and
           local.tee $3
           local.get $3
           i64.const 4
           i64.shl
           i64.or
           i64.const 1085102592571150095
           i64.and
           local.tee $3
           local.get $3
           i64.const 2
           i64.shl
           i64.or
           i64.const 3689348814741910323
           i64.and
           local.tee $3
           local.get $3
           i64.const 1
           i64.shl
           i64.or
           i64.const 6148914691236517205
           i64.and
           i64.const 3
           i64.mul
           local.tee $3
           i64.const 2
           i64.shr_u
           local.get $3
           i64.const 4
           i64.shr_u
           i64.xor
           i64.const 217020518514230019
           i64.and
           local.tee $5
           i64.const 2
           i64.shl
           local.get $5
           i64.const 4
           i64.shl
           i64.or
           local.get $3
           i64.xor
           local.tee $3
           i64.const 4
           i64.shr_u
           local.get $3
           i64.const 8
           i64.shr_u
           i64.xor
           i64.const 4222189076152335
           i64.and
           local.tee $5
           i64.const 4
           i64.shl
           local.get $5
           i64.const 8
           i64.shl
           i64.or
           local.get $3
           i64.xor
           local.tee $3
           i64.const 8
           i64.shr_u
           local.get $3
           i64.const 16
           i64.shr_u
           i64.xor
           i64.const 1095216660735
           i64.and
           local.tee $5
           i64.const 8
           i64.shl
           local.get $5
           i64.const 16
           i64.shl
           i64.or
           local.get $3
           i64.xor
           local.tee $3
           i64.const 16
           i64.shr_u
           local.get $3
           i64.const 32
           i64.shr_u
           i64.xor
           i64.const 65535
           i64.and
           local.tee $5
           i64.const 16
           i64.shl
           local.get $5
           i64.const 32
           i64.shl
           i64.or
           local.get $3
           i64.xor
           local.tee $3
           i64.const -17179869184
           i64.and
           local.get $3
           i64.const 1
           i64.shl
           i64.const 17179869176
           i64.and
           i64.or
           local.get $3
           i64.const 2
           i64.shl
           i64.const 4
           i64.and
           i64.or
           local.get $1
           i64.const 56
           i64.shr_u
           i64.or
           local.set $5
           br $break|2
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
          local.get $3
          i64.const 4
          i64.shl
          i32.wrap_i64
          i32.const 240
          i32.and
          i32.or
          local.get $3
          i64.const 4
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          local.get $3
          i64.const 12
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          local.get $3
          i64.const 20
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          call $assembly/uastc-bc7/mode6
          local.tee $1
          i64.const 7
          i64.shl
          i64.const 64
          i64.or
          local.set $7
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
          local.tee $3
          i64.const 16
          i64.shl
          i64.const 281470681743360
          i64.and
          local.get $3
          i64.const 65535
          i64.and
          i64.or
          local.tee $3
          i64.const 8
          i64.shl
          i64.const 71776119077928960
          i64.and
          local.get $3
          i64.const 1095216660735
          i64.and
          i64.or
          local.tee $3
          i64.const 4
          i64.shl
          i64.const 1080880403494997760
          i64.and
          local.get $3
          i64.const 4222189076152335
          i64.and
          i64.or
          local.tee $3
          i64.const 2
          i64.shl
          i64.const 3472328296227680304
          i64.and
          local.get $3
          i64.const 217020518514230019
          i64.and
          i64.or
          i64.const 5
          i64.mul
          local.tee $3
          i64.const -16
          i64.and
          local.get $3
          i64.const 1
          i64.shl
          i64.const 14
          i64.and
          i64.or
          local.get $1
          i64.const 57
          i64.shr_u
          i64.or
          local.set $5
          br $break|2
         end
         local.get $1
         i64.const 30
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         local.get $1
         i64.const 38
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         local.get $1
         i64.const 46
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         local.get $1
         i64.const 54
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         call $assembly/uastc-bc7/mode6LA
         local.tee $5
         i64.const 7
         i64.shl
         i64.const 64
         i64.or
         local.set $7
         local.get $3
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
         local.get $5
         i64.const 57
         i64.shr_u
         i64.or
         local.set $5
         br $break|2
        end
        local.get $1
        i64.const 29
        i64.shr_u
        i32.wrap_i64
        i32.const 31
        i32.and
        local.tee $0
        i32.const 29
        i32.gt_u
        if
         i64.const -9151873029083480128
         local.set $7
         br $break|2
        end
        local.get $3
        i64.const 2
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.tee $2
        local.get $1
        i64.const 34
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.tee $6
        i32.const 1029946068
        local.get $0
        i32.shr_u
        i32.const 1
        i32.and
        local.tee $4
        select
        local.get $3
        i64.const 10
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.tee $9
        local.get $1
        i64.const 42
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.tee $10
        local.get $4
        select
        local.get $3
        i64.const 18
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.tee $11
        local.get $1
        i64.const 50
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.tee $12
        local.get $4
        select
        local.get $3
        i64.const 26
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.tee $15
        local.get $1
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
        local.tee $13
        local.get $4
        select
        call $assembly/uastc-bc7/mode7LA
        local.tee $8
        i32.const 10
        i32.shr_u
        i32.const 1023
        i32.and
        i64.extend_i32_u
        local.set $5
        local.get $8
        i32.const 20
        i32.shr_u
        i32.const 3
        i32.and
        i64.extend_i32_u
        local.set $17
        local.get $10
        local.get $9
        local.get $4
        select
        local.tee $10
        local.get $6
        local.get $2
        local.get $4
        select
        local.tee $16
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
        local.tee $14
        select
        local.get $0
        i32.const 15
        i32.and
        i32.const 2
        i32.shl
        local.tee $6
        i64.extend_i32_u
        i64.shr_u
        i32.wrap_i64
        i32.const 15
        i32.and
        i32.const 1
        i32.shl
        local.tee $2
        i32.const 2
        i32.add
        i32.shl
        i64.extend_i32_u
        local.get $3
        i64.const 32
        i64.shr_u
        i64.and
        i32.const -1
        local.get $2
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
        i32.wrap_i64
        local.tee $2
        i32.const 1
        i32.const 15
        i64.const 72048970541048450
        local.get $6
        i64.extend_i32_u
        i64.shr_s
        i32.wrap_i64
        i32.const 15
        i32.and
        local.get $0
        i32.const 16
        i32.lt_u
        select
        i32.const 1
        i32.shl
        local.tee $9
        i32.const 1
        i32.add
        i32.shl
        i32.and
        local.tee $6
        select
        local.get $16
        local.get $10
        local.get $6
        select
        local.get $13
        local.get $15
        local.get $4
        select
        local.tee $10
        local.get $12
        local.get $11
        local.get $4
        select
        local.tee $4
        local.get $6
        select
        local.get $4
        local.get $10
        local.get $6
        select
        call $assembly/uastc-bc7/mode7LA
        local.tee $4
        i32.const 10
        i32.shr_u
        i32.const 1023
        i32.and
        i64.extend_i32_u
        local.set $23
        local.get $4
        i32.const 20
        i32.shr_u
        i32.const 3
        i32.and
        i64.extend_i32_u
        local.set $25
        local.get $0
        local.get $14
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
        local.get $8
        i32.const 1023
        i32.and
        i64.extend_i32_u
        local.tee $1
        i64.const 54
        i64.shl
        local.get $4
        i32.const 1023
        i32.and
        i64.extend_i32_u
        local.tee $3
        i64.const 44
        i64.shl
        i64.or
        local.get $1
        i64.const 34
        i64.shl
        i64.or
        local.get $3
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
        local.set $7
        local.get $3
        local.get $6
        if
         local.get $2
         local.get $0
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
         i32.xor
         local.set $2
        end
        local.get $2
        i32.const 1
        i32.and
        i32.const -1
        local.get $9
        i32.const 1
        i32.sub
        i32.shl
        local.get $2
        i32.const 2
        i32.shr_u
        i32.and
        i32.const -1
        local.get $9
        i32.shl
        i32.const -2
        i32.xor
        local.get $2
        i32.const 1
        i32.shr_u
        i32.and
        i32.or
        i32.or
        i64.extend_i32_u
        i64.const 34
        i64.shl
        local.get $25
        i64.const 32
        i64.shl
        i64.or
        local.get $17
        i64.const 30
        i64.shl
        i64.or
        local.get $23
        i64.const 20
        i64.shl
        i64.or
        local.get $5
        i64.const 10
        i64.shl
        i64.or
        i64.or
        local.set $5
        br $break|2
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
       i64.const 53
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       i64.const 50
       i64.shl
       local.get $1
       i64.const 45
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i64.extend_i32_u
       i64.const 42
       i64.shl
       i64.or
       i64.or
       i64.or
       local.tee $5
       i64.const 8
       i64.shl
       i64.const 32
       i64.or
       local.set $7
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
       local.get $3
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
       local.tee $3
       i64.const 2
       i64.shl
       local.get $3
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
       local.tee $3
       i64.const 4
       i64.shl
       local.get $3
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
       local.tee $3
       i64.const 8
       i64.shl
       local.get $3
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
       local.tee $3
       i64.const 16
       i64.shl
       local.get $3
       i64.const 32
       i64.shl
       i64.or
       local.get $1
       i64.xor
       local.tee $1
       i64.const -17179869184
       i64.and
       local.get $1
       i64.const 1
       i64.shl
       i64.const 17179869176
       i64.and
       i64.or
       local.get $1
       i64.const 2
       i64.shl
       i64.const 4
       i64.and
       i64.or
       local.get $5
       i64.const 56
       i64.shr_u
       i64.or
       local.set $5
       br $break|2
      end
      local.get $1
      i64.const 16
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
      local.get $1
      i64.const 21
      i64.shr_u
      i32.wrap_i64
      i32.const 260301048
      i32.and
      local.tee $2
      local.get $2
      i32.const 5
      i32.shr_u
      i32.or
      local.tee $2
      i32.const 255
      i32.and
      local.get $0
      i32.const 10
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 10
      i32.shr_u
      i32.const 255
      i32.and
      local.get $0
      i32.const 20
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 20
      i32.shr_u
      i32.const 255
      i32.and
      i32.const 255
      i32.const 255
      call $assembly/uastc-bc7/mode6
      local.tee $23
      i64.const 7
      i64.shl
      i64.const 64
      i64.or
      local.set $7
      local.get $1
      i64.const 49
      i64.shr_u
      i64.const 15
      i64.and
      local.get $3
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
      local.set $5
      local.get $1
      local.get $5
      local.get $5
      i64.const 532021755375
      i64.and
      i64.const 532021755375
      i64.add
      i64.or
      local.get $1
      i64.const 602957989425
      i64.xor
      local.tee $1
      local.get $1
      i64.const 532021755375
      i64.and
      i64.const 532021755375
      i64.add
      i64.or
      i64.and
      i64.const -1
      i64.xor
      i64.const 3
      i64.shr_u
      i64.const 70936234050
      i64.and
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
      local.get $3
      i64.const 24
      i64.shr_u
      i64.const 1099511627775
      i64.and
      local.tee $3
      i64.const 496553638350
      i64.xor
      local.tee $17
      i64.const 532021755375
      i64.and
      i64.const 532021755375
      i64.add
      local.get $17
      i64.or
      local.get $3
      i64.const 602957989425
      i64.xor
      local.tee $1
      local.get $1
      i64.const 532021755375
      i64.and
      i64.const 532021755375
      i64.add
      i64.or
      i64.and
      i64.const -1
      i64.xor
      i64.const 3
      i64.shr_u
      i64.const 70936234050
      i64.and
      local.get $3
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
      local.get $23
      i64.const 57
      i64.shr_u
      i64.or
      local.set $5
      br $break|2
     end
     i64.const -9151873029083480128
     local.set $7
    end
    local.get $21
    local.get $7
    i64.store
    local.get $21
    local.get $5
    i64.store offset=8
    local.get $21
    i32.const 16
    i32.add
    local.set $21
    br $for-loop|111
   end
  end
  i32.const 0
 )
)
