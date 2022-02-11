(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 8) "\00\01\02\04\05\06\08\t\n\10\11\12\14\15\16\18\19\1a\03\07\0b\13\17\1b\0c\0d\0e !\"$%&()*01245689:#\'+37;,-.@ABDEFHIJPQRTUVXYZCGKSW[LMN\80\81\82\84\85\86\88\89\8a\90\91\92\94\95\96\98\99\9a\83\87\8b\93\97\9b\8c\8d\8e\a0\a1\a2\a4\a5\a6\a8\a9\aa\b0\b1\b2\b4\b5\b6\b8\b9\ba\a3\a7\ab\b3\b7\bb\ac\ad\ae\c0\c1\c2\c4\c5\c6\c8\c9\ca\d0\d1\d2\d4\d5\d6\d8\d9\da\c3\c7\cb\d3\d7\db\cc\cd\ce`abdefhijpqrtuvxyzcgksw{lmn\e0\e1\e2\e4\e5\e6\e8\e9\ea\f0\f1\f2\f4\f5\f6\f8\f9\fa\e3\e7\eb\f3\f7\fb\ec\ed\ee\1c\1d\1e<=>\\]^\9c\9d\9e\bc\bd\be\dc\dd\de\1f?_\9f\bf\df|}~\00\00\00\00\00")
 (data (i32.const 256) "\00\01\02\03\04\08\t\n\0b\0c\10\11\12\13\14\18\19\1a\1b\1c\05\0d\15\1d\06 !\"#$()*+,0123489:;<%-5=\0e@ABCDHIJKLPQRSTXYZ[\\EMU]\16`abcdhijklpqrstxyz{|emu}\1efgFG&noNO.vwVW6~\7f^_>\'/7?\1f\00\00\00")
 (data (i32.const 384) "\04\01J\00 \00\9c\00\b7\00\0f\00\e9\02\00\00O\01\86\03\fe\00\00\00")
 (data (i32.const 408) "$\000\00=\00\89\00\a1\00\b7\00\e2\00\19\01.\013\01\df\01\ef\01Q\02R\02]\02\1f\03,\03\dc\03\e1\03\00\00")
 (data (i32.const 448) "\1c\00\14\00\10\00\1d\00[\00\t\00k\00H\00\95\00\cc\002\00r\00\f0\01\11\00N\00\'\00\fc\00<\03+\00\9c\00t\00\d2\00\dc\01\11\01\ac\02g\01\f6\00\c3\00\b6\02\0c\02\00\00\00\00")
 (data (i32.const 512) "\003\00\cc\ff\00\00\f0\0f\00\00\f0\0f\00\f0\0033DDff\88\88\cc\cc\"\"\00\ee\11\11DD\99\99\0f\f0\00\0f\c0\0c\0c\c0\00\00\00\00")
 (data (i32.const 560) "\f0\00DD3\01\80\cc\ff\f0\"\"\c8\ff\ce\cc\03<\ee\00\00w\030\ce\00\80\ff\ffo3\13\ff\11l\13\ef\00\00\00")
 (data (i32.const 600) "\cc\cc\88\88\11\11\c8\ec\7f7\ec\fe7\01\7f\13\00\c8\13\00\80\fe\ff\17\17\00\ff\00\f0\ff\ff\0fq\ff\ff\8e\ce\08\8c\00\10s\ff\ce1s\8c\08\ef\ceff\0f\f0UU\0f\0f\c96\00\00\00\00")
 (data (i32.const 664) "\0b\00\n\03\0b\0f\0c\07\0b\12\n\05\0b\0e\0c\t\0b\00\n\04\0b\10\0c\08\0b\12\n\06\0b\02\0c\0d\0b\00\n\03\0b\11\0c\07\0b\12\n\05\0b\0e\0c\t\0b\00\n\04\0b\01\0c\08\0b\12\n\06\0b\02\0c\0d\0b\00\n\03\0b\13\0c\07\0b\12\n\05\0b\0e\0c\t\0b\00\n\04\0b\10\0c\08\0b\12\n\06\0b\02\0c\0d\0b\00\n\03\0b\11\0c\07\0b\12\n\05\0b\0e\0c\t\0b\00\n\04\0b\01\0c\08\0b\12\n\06\0b\02\0c\0d")
 (data (i32.const 792) "\00\ffE\ba\17\e8\\\a3.\d1t\8b")
 (data (i32.const 808) "\00\ff \dfA\bea\9e\06\f9\'\d8G\b8h\97\0d\f2-\d2N\b1n\91\13\ec4\cbT\abu\8a\1a\e5:\c5[\a4{\84")
 (data (i32.const 848) "\00\ff\10\ef \df0\cfA\beQ\aea\9eq\8e\05\fa\15\ea&\d96\c9F\b9V\a9g\98w\88\0b\f4\1b\e4+\d4;\c4L\b3\\\a3l\93|\83")
 (export "transcode" (func $assembly/uastc/astc/transcode))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:assembly/uastc/astc
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
 (func $assembly/uastc/astc/transcode (param $0 i32) (result i32)
  (local $1 i64)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i64)
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
  (local $46 i32)
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
  local.tee $2
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
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $2
   i32.const 65536
   i32.add
   i32.lt_s
   if
    local.get $0
    i64.load offset=8
    local.set $15
    local.get $0
    i64.load
    local.tee $16
    i32.wrap_i64
    i32.const 127
    i32.and
    i32.load8_u offset=664
    local.tee $3
    i32.const 4
    i32.eq
    local.set $4
    block $break|1 (result i64)
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
                        local.get $3
                        local.get $4
                        select
                        br_table $case0|1 $case1|1 $case2|1 $case3|1 $case18|1 $case5|1 $case6|1 $case4|1 $case7|1 $case8|1 $case9|1 $case10|1 $case11|1 $case12|1 $case13|1 $case14|1 $case15|1 $case16|1 $case17|1 $case18|1
                       end
                       local.get $16
                       i64.const 19
                       i64.shr_u
                       i32.wrap_i64
                       i32.const 255
                       i32.and
                       i32.const 1
                       i32.shl
                       i32.load16_u offset=1504
                       local.tee $3
                       i32.const 3
                       i32.and
                       local.set $4
                       local.get $16
                       i64.const 53
                       i64.shr_u
                       i32.wrap_i64
                       i32.const 63
                       i32.and
                       local.tee $5
                       local.get $3
                       i32.const 8
                       i32.shr_u
                       local.tee $6
                       i32.const 6
                       i32.shl
                       i32.or
                       i32.load8_u offset=1056
                       local.get $16
                       i64.const 29
                       i64.shr_u
                       i32.wrap_i64
                       i32.const 63
                       i32.and
                       local.tee $7
                       local.get $4
                       i32.const 6
                       i32.shl
                       i32.or
                       i32.load8_u offset=1056
                       local.get $16
                       i64.const 41
                       i64.shr_u
                       i32.wrap_i64
                       i32.const 63
                       i32.and
                       local.tee $8
                       local.get $3
                       i32.const 4
                       i32.shr_u
                       i32.const 3
                       i32.and
                       local.tee $9
                       i32.const 6
                       i32.shl
                       i32.or
                       i32.load8_u offset=1056
                       i32.add
                       i32.add
                       local.get $16
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
                       local.tee $10
                       local.get $16
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
                       local.tee $11
                       i32.const 6
                       i32.shl
                       i32.or
                       i32.load8_u offset=1056
                       local.get $16
                       i64.const 35
                       i64.shr_u
                       i32.wrap_i64
                       i32.const 63
                       i32.and
                       local.tee $12
                       local.get $3
                       i32.const 2
                       i32.shr_u
                       i32.const 3
                       i32.and
                       local.tee $13
                       i32.const 6
                       i32.shl
                       i32.or
                       i32.load8_u offset=1056
                       local.get $16
                       i64.const 47
                       i64.shr_u
                       i32.wrap_i64
                       i32.const 63
                       i32.and
                       local.tee $17
                       local.get $3
                       i32.const 6
                       i32.shr_u
                       i32.const 3
                       i32.and
                       local.tee $3
                       i32.const 6
                       i32.shl
                       i32.or
                       i32.load8_u offset=1056
                       i32.add
                       i32.add
                       i32.gt_u
                       local.set $18
                       local.get $12
                       local.get $7
                       local.get $18
                       select
                       i64.extend_i32_u
                       local.get $5
                       local.get $10
                       local.get $18
                       select
                       i64.extend_i32_u
                       i64.const 38
                       i64.shl
                       local.get $10
                       local.get $5
                       local.get $18
                       select
                       i64.extend_i32_u
                       i64.const 31
                       i64.shl
                       i64.or
                       local.get $8
                       local.get $17
                       local.get $18
                       select
                       i64.extend_i32_u
                       i64.const 23
                       i64.shl
                       i64.or
                       local.get $17
                       local.get $8
                       local.get $18
                       select
                       i64.extend_i32_u
                       i64.const 16
                       i64.shl
                       i64.or
                       local.get $7
                       local.get $12
                       local.get $18
                       select
                       i64.extend_i32_u
                       i64.const 8
                       i64.shl
                       i64.or
                       i64.or
                       local.get $11
                       local.get $6
                       local.get $18
                       select
                       i32.const 3
                       i32.mul
                       local.get $9
                       local.get $3
                       local.get $18
                       select
                       i32.add
                       i32.const 3
                       i32.mul
                       local.get $3
                       local.get $9
                       local.get $18
                       select
                       i32.add
                       i32.const 3
                       i32.mul
                       local.get $4
                       local.get $13
                       local.get $18
                       select
                       i32.add
                       i32.const 3
                       i32.mul
                       local.get $13
                       local.get $4
                       local.get $18
                       select
                       i32.add
                       i32.load8_u offset=8
                       i64.extend_i32_u
                       local.tee $1
                       i64.const 128
                       i64.and
                       i64.const 30
                       i64.shl
                       local.get $1
                       i64.const 96
                       i64.and
                       i64.const 24
                       i64.shl
                       i64.or
                       local.get $1
                       i64.const 16
                       i64.and
                       i64.const 18
                       i64.shl
                       i64.or
                       local.get $1
                       i64.const 12
                       i64.and
                       i64.const 12
                       i64.shl
                       i64.or
                       local.get $1
                       i64.const 3
                       i64.and
                       i64.const 6
                       i64.shl
                       i64.or
                       local.get $6
                       local.get $11
                       local.get $18
                       select
                       i32.load8_u offset=8
                       i64.extend_i32_u
                       local.tee $1
                       i64.const 128
                       i64.and
                       i64.const 30
                       i64.shl
                       local.get $1
                       i64.const 96
                       i64.and
                       i64.const 24
                       i64.shl
                       i64.or
                       local.get $1
                       i64.const 16
                       i64.and
                       i64.const 18
                       i64.shl
                       i64.or
                       local.get $1
                       i64.const 12
                       i64.and
                       i64.const 12
                       i64.shl
                       i64.or
                       local.get $1
                       i64.const 3
                       i64.and
                       i64.const 6
                       i64.shl
                       i64.or
                       i64.const 38
                       i64.shl
                       i64.or
                       i64.or
                       i64.const 17
                       i64.shl
                       i64.const 66114
                       i64.or
                       local.set $1
                       local.get $15
                       i64.const -16
                       i64.and
                       local.get $15
                       i64.const 1
                       i64.shr_u
                       i64.const 7
                       i64.and
                       i64.or
                       local.tee $14
                       i64.const -1
                       i64.xor
                       local.get $14
                       local.get $18
                       select
                       local.tee $14
                       i64.const 1
                       i64.shr_u
                       i64.const 6148914691236517205
                       i64.and
                       local.get $14
                       i64.const 6148914691236517205
                       i64.and
                       i64.const 1
                       i64.shl
                       i64.or
                       local.tee $14
                       i64.const 2
                       i64.shr_u
                       i64.const 3689348814741910323
                       i64.and
                       local.get $14
                       i64.const 3689348814741910323
                       i64.and
                       i64.const 2
                       i64.shl
                       i64.or
                       local.tee $14
                       i64.const 4
                       i64.shr_u
                       i64.const 1085102592571150095
                       i64.and
                       local.get $14
                       i64.const 1085102592571150095
                       i64.and
                       i64.const 4
                       i64.shl
                       i64.or
                       local.tee $14
                       i64.const 8
                       i64.shr_u
                       i64.const 71777214294589695
                       i64.and
                       local.get $14
                       i64.const 71777214294589695
                       i64.and
                       i64.const 8
                       i64.shl
                       i64.or
                       local.tee $14
                       i64.const 16
                       i64.shr_u
                       i64.const 281470681808895
                       i64.and
                       local.get $14
                       i64.const 281470681808895
                       i64.and
                       i64.const 16
                       i64.shl
                       i64.or
                       i64.const 32
                       i64.rotr
                       br $break|1
                      end
                      local.get $16
                      i64.const 53
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $3
                      local.get $16
                      i64.const 21
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $4
                      local.get $16
                      i64.const 37
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $5
                      i32.add
                      i32.add
                      local.get $16
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
                      local.tee $6
                      local.get $16
                      i64.const 29
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $7
                      local.get $16
                      i64.const 45
                      i64.shr_u
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee $8
                      i32.add
                      i32.add
                      i32.gt_u
                      local.set $9
                      local.get $8
                      i32.const 16
                      i32.shl
                      local.get $7
                      i32.or
                      i64.extend_i32_u
                      local.get $6
                      i64.extend_i32_u
                      i64.const 32
                      i64.shl
                      i64.or
                      i64.const 0
                      i64.const 8
                      local.get $9
                      select
                      i64.shl
                      local.get $5
                      i32.const 16
                      i32.shl
                      local.get $4
                      i32.or
                      i64.extend_i32_u
                      local.get $3
                      i64.extend_i32_u
                      i64.const 32
                      i64.shl
                      i64.or
                      i64.const 8
                      i64.const 0
                      local.get $9
                      select
                      i64.shl
                      i64.or
                      local.tee $14
                      i64.const 17
                      i64.shl
                      i64.const 65602
                      i64.or
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
                      local.tee $3
                      i32.const -1
                      i32.xor
                      local.get $3
                      local.get $9
                      select
                      local.tee $3
                      i32.const 1
                      i32.shr_u
                      i32.const 1431655765
                      i32.and
                      local.get $3
                      i32.const 1431655765
                      i32.and
                      i32.const 1
                      i32.shl
                      i32.or
                      local.tee $3
                      i32.const 2
                      i32.shr_u
                      i32.const 858993459
                      i32.and
                      local.get $3
                      i32.const 858993459
                      i32.and
                      i32.const 2
                      i32.shl
                      i32.or
                      local.tee $3
                      i32.const 4
                      i32.shr_u
                      i32.const 252645135
                      i32.and
                      local.get $3
                      i32.const 252645135
                      i32.and
                      i32.const 4
                      i32.shl
                      i32.or
                      local.tee $3
                      i32.const 8
                      i32.shr_u
                      i32.const 16711935
                      i32.and
                      local.get $3
                      i32.const 16711935
                      i32.and
                      i32.const 8
                      i32.shl
                      i32.or
                      i32.const 16
                      i32.rotr
                      i64.extend_i32_u
                      i64.const 32
                      i64.shl
                      local.get $14
                      i64.const 47
                      i64.shr_u
                      i64.or
                      br $break|1
                     end
                     local.get $16
                     i64.const 20
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 31
                     i32.and
                     local.tee $3
                     i32.const 29
                     i32.gt_u
                     if
                      i64.const -516
                      local.set $1
                      i64.const -4294901761
                      br $break|1
                     end
                     local.get $16
                     i64.const 41
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $4
                     local.get $16
                     i64.const 25
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $5
                     local.get $16
                     i64.const 33
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $6
                     i32.add
                     i32.add
                     local.get $16
                     i64.const 45
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $7
                     local.get $16
                     i64.const 29
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $8
                     local.get $16
                     i64.const 37
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $9
                     i32.add
                     i32.add
                     i32.gt_u
                     local.set $10
                     local.get $15
                     i64.const 1
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $11
                     local.get $16
                     i64.const 49
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $12
                     local.get $16
                     i64.const 57
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $13
                     i32.add
                     i32.add
                     local.get $15
                     i64.const 5
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $17
                     local.get $16
                     i64.const 53
                     i64.shr_u
                     i32.wrap_i64
                     i32.const 15
                     i32.and
                     local.tee $18
                     local.get $16
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
                     local.tee $19
                     i32.add
                     i32.add
                     i32.gt_u
                     local.set $20
                     local.get $15
                     i64.const 9
                     i64.shr_u
                     i64.const 3
                     i64.and
                     i64.const -1
                     i64.const 5651576228422017
                     i64.const -4286381023083155150
                     local.get $3
                     i32.const 15
                     i32.gt_u
                     select
                     local.get $3
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
                     local.tee $21
                     i32.const 3
                     i32.add
                     i64.extend_i32_u
                     i64.shl
                     i64.const 281474976710655
                     i64.and
                     local.get $15
                     i64.const 7
                     i64.shr_u
                     i64.and
                     i64.const -1
                     local.get $21
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
                     local.set $14
                     local.get $3
                     i32.const 1
                     i32.shl
                     i32.load16_u offset=448
                     i32.const 13
                     i32.shl
                     i64.extend_i32_u
                     local.get $7
                     i32.const 16
                     i32.shl
                     local.get $9
                     i32.const 8
                     i32.shl
                     i32.or
                     local.get $8
                     i32.or
                     i32.const 0
                     i32.const 4
                     local.get $10
                     select
                     i32.shl
                     local.get $4
                     i32.const 16
                     i32.shl
                     local.get $6
                     i32.const 8
                     i32.shl
                     i32.or
                     local.get $5
                     i32.or
                     i32.const 4
                     i32.const 0
                     local.get $10
                     select
                     i32.shl
                     i32.or
                     i64.extend_i32_u
                     local.get $17
                     i32.const 16
                     i32.shl
                     local.get $19
                     i32.const 8
                     i32.shl
                     i32.or
                     local.get $18
                     i32.or
                     i32.const 0
                     i32.const 4
                     local.get $20
                     select
                     i32.shl
                     local.get $11
                     i32.const 16
                     i32.shl
                     local.get $13
                     i32.const 8
                     i32.shl
                     i32.or
                     local.get $12
                     i32.or
                     i32.const 4
                     i32.const 0
                     local.get $20
                     select
                     i32.shl
                     i32.or
                     i64.extend_i32_u
                     i64.const 24
                     i64.shl
                     i64.or
                     local.tee $15
                     i64.const 29
                     i64.shl
                     i64.or
                     i64.const 268437587
                     i64.or
                     local.set $1
                     local.get $15
                     i64.const 35
                     i64.shr_u
                     local.get $10
                     local.get $20
                     i32.and
                     if (result i64)
                      local.get $14
                      i64.const 281474976710655
                      i64.xor
                     else
                      local.get $10
                      local.get $20
                      i32.ne
                      if (result i64)
                       local.get $14
                       local.get $3
                       i32.const 1
                       i32.shl
                       i32.load16_u offset=600
                       i64.extend_i32_u
                       local.tee $14
                       local.get $14
                       i64.const 16
                       i64.shl
                       i64.or
                       i64.const 4278190335
                       i64.and
                       local.tee $14
                       local.get $14
                       i64.const 8
                       i64.shl
                       i64.or
                       i64.const 1031043870735
                       i64.and
                       local.tee $14
                       local.get $14
                       i64.const 4
                       i64.shl
                       i64.or
                       i64.const 13403570319555
                       i64.and
                       local.tee $14
                       local.get $14
                       i64.const 2
                       i64.shl
                       i64.or
                       i64.const 40210710958665
                       i64.and
                       i64.const 7
                       i64.mul
                       local.tee $14
                       local.get $14
                       i64.const 281474976710655
                       i64.xor
                       local.get $20
                       select
                       i64.xor
                      else
                       local.get $14
                      end
                     end
                     local.tee $14
                     i64.const 1
                     i64.shr_u
                     i64.const 6148914691236517205
                     i64.and
                     local.get $14
                     i64.const 6148914691236517205
                     i64.and
                     i64.const 1
                     i64.shl
                     i64.or
                     local.tee $14
                     i64.const 2
                     i64.shr_u
                     i64.const 3689348814741910323
                     i64.and
                     local.get $14
                     i64.const 3689348814741910323
                     i64.and
                     i64.const 2
                     i64.shl
                     i64.or
                     local.tee $14
                     i64.const 4
                     i64.shr_u
                     i64.const 1085102592571150095
                     i64.and
                     local.get $14
                     i64.const 1085102592571150095
                     i64.and
                     i64.const 4
                     i64.shl
                     i64.or
                     local.tee $14
                     i64.const 8
                     i64.shr_u
                     i64.const 71777214294589695
                     i64.and
                     local.get $14
                     i64.const 71777214294589695
                     i64.and
                     i64.const 8
                     i64.shl
                     i64.or
                     local.tee $14
                     i64.const 16
                     i64.shr_u
                     i64.const 281470681808895
                     i64.and
                     local.get $14
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
                    local.get $16
                    i64.const 20
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 15
                    i32.and
                    local.tee $17
                    i32.const 10
                    i32.gt_u
                    if
                     i64.const -516
                     local.set $1
                     i64.const -4294901761
                     br $break|1
                    end
                    local.get $16
                    i64.const 24
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 255
                    i32.and
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=1504
                    local.tee $3
                    i32.const 3
                    i32.and
                    local.set $18
                    local.get $16
                    i64.const 61
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $19
                    local.get $3
                    i32.const 8
                    i32.shr_u
                    local.tee $20
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    local.get $16
                    i64.const 53
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $21
                    local.get $18
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    local.get $16
                    i64.const 57
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $22
                    local.get $3
                    i32.const 4
                    i32.shr_u
                    i32.const 3
                    i32.and
                    local.tee $23
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    i32.add
                    i32.add
                    local.get $16
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
                    local.tee $24
                    local.get $16
                    i64.const 32
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
                    local.tee $25
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    local.get $16
                    i64.const 55
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $26
                    local.get $3
                    i32.const 2
                    i32.shr_u
                    i32.const 3
                    i32.and
                    local.tee $27
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    local.get $16
                    i64.const 59
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $28
                    local.get $3
                    i32.const 6
                    i32.shr_u
                    i32.const 3
                    i32.and
                    local.tee $29
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    i32.add
                    i32.add
                    i32.gt_u
                    local.set $30
                    local.get $15
                    i64.const 9
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $31
                    local.get $16
                    i64.const 40
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
                    local.tee $32
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    local.get $15
                    i64.const 1
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $3
                    local.get $11
                    i32.const 2
                    i32.shr_u
                    i32.const 3
                    i32.and
                    local.tee $4
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    local.get $15
                    i64.const 5
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $5
                    local.get $11
                    i32.const 6
                    i32.shr_u
                    i32.const 3
                    i32.and
                    local.tee $6
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    i32.add
                    i32.add
                    local.get $15
                    i64.const 11
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $7
                    local.get $12
                    i32.const 2
                    i32.shr_u
                    i32.const 3
                    i32.and
                    local.tee $33
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    local.get $15
                    i64.const 3
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $8
                    local.get $11
                    i32.const 4
                    i32.shr_u
                    i32.const 3
                    i32.and
                    local.tee $9
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    local.get $15
                    i64.const 7
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $10
                    local.get $11
                    i32.const 8
                    i32.shr_u
                    local.tee $34
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    i32.add
                    i32.add
                    i32.gt_u
                    local.set $11
                    local.get $16
                    i64.const 48
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 31
                    i32.and
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=1504
                    local.tee $13
                    i32.const 3
                    i32.and
                    local.tee $35
                    local.get $12
                    i32.const 8
                    i32.shr_u
                    local.tee $36
                    local.get $15
                    i64.const 21
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $37
                    local.get $13
                    i32.const 2
                    i32.shr_u
                    i32.const 3
                    i32.and
                    local.tee $38
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    local.get $15
                    i64.const 13
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $39
                    local.get $12
                    i32.const 4
                    i32.shr_u
                    i32.const 3
                    i32.and
                    local.tee $40
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    local.get $15
                    i64.const 17
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $41
                    local.get $36
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    i32.add
                    i32.add
                    local.get $15
                    i64.const 23
                    i64.shr_u
                    i32.wrap_i64
                    local.tee $42
                    i32.const 3
                    i32.and
                    local.tee $43
                    local.get $13
                    i32.const 4
                    i32.shr_u
                    i32.const 3
                    i32.and
                    local.tee $44
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    local.get $15
                    i64.const 15
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $45
                    local.get $12
                    i32.const 6
                    i32.shr_u
                    i32.const 3
                    i32.and
                    local.tee $12
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    local.get $15
                    i64.const 19
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 3
                    i32.and
                    local.tee $46
                    local.get $35
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.load8_u offset=792
                    i32.add
                    i32.add
                    i32.gt_u
                    local.tee $13
                    select
                    i32.const 3
                    i32.mul
                    local.get $40
                    local.get $12
                    local.get $13
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $12
                    local.get $40
                    local.get $13
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $32
                    local.get $33
                    local.get $11
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $33
                    local.get $32
                    local.get $11
                    select
                    i32.add
                    i32.load8_u offset=8
                    local.set $12
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
                    local.tee $32
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
                    i64.shr_u
                    i32.wrap_i64
                    i32.const 15
                    i32.and
                    i32.const 1
                    i32.shl
                    local.tee $33
                    i32.const 2
                    i32.add
                    i32.shl
                    i32.and
                    i32.const 1
                    local.get $32
                    i32.const 2
                    i32.add
                    i32.shl
                    i32.const 1
                    i32.sub
                    i32.const -1
                    local.get $33
                    i32.const 1
                    i32.add
                    i32.shl
                    i32.or
                    i32.const -1
                    i32.xor
                    local.get $42
                    i32.and
                    i32.or
                    i32.or
                    i32.or
                    local.set $32
                    local.get $17
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=384
                    i32.const 13
                    i32.shl
                    i64.extend_i32_u
                    local.get $24
                    local.get $19
                    local.get $30
                    select
                    i32.const 15
                    i32.shl
                    local.get $22
                    local.get $28
                    local.get $30
                    select
                    i32.const 11
                    i32.shl
                    i32.or
                    local.get $28
                    local.get $22
                    local.get $30
                    select
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $21
                    local.get $26
                    local.get $30
                    select
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $26
                    local.get $21
                    local.get $30
                    select
                    i32.or
                    i64.extend_i32_u
                    local.get $5
                    local.get $10
                    local.get $11
                    select
                    i32.const 15
                    i32.shl
                    local.get $10
                    local.get $5
                    local.get $11
                    select
                    i32.const 11
                    i32.shl
                    i32.or
                    local.get $3
                    local.get $8
                    local.get $11
                    select
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $8
                    local.get $3
                    local.get $11
                    select
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $19
                    local.get $24
                    local.get $30
                    select
                    i32.or
                    i64.extend_i32_u
                    i64.const 18
                    i64.shl
                    i64.or
                    local.get $46
                    local.get $41
                    local.get $13
                    select
                    i32.const 15
                    i32.shl
                    local.get $39
                    local.get $45
                    local.get $13
                    select
                    i32.const 11
                    i32.shl
                    i32.or
                    local.get $45
                    local.get $39
                    local.get $13
                    select
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $31
                    local.get $7
                    local.get $11
                    select
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $7
                    local.get $31
                    local.get $11
                    select
                    i32.or
                    i64.extend_i32_u
                    i64.const 36
                    i64.shl
                    i64.or
                    local.get $25
                    local.get $20
                    local.get $30
                    select
                    i32.const 3
                    i32.mul
                    local.get $23
                    local.get $29
                    local.get $30
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $29
                    local.get $23
                    local.get $30
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $18
                    local.get $27
                    local.get $30
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $27
                    local.get $18
                    local.get $30
                    select
                    i32.add
                    i32.load8_u offset=8
                    local.tee $3
                    i32.const 128
                    i32.and
                    i32.const 10
                    i32.shl
                    local.get $3
                    i32.const 96
                    i32.and
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $3
                    i32.const 16
                    i32.and
                    i32.const 6
                    i32.shl
                    i32.or
                    local.get $3
                    i32.const 12
                    i32.and
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $3
                    i32.const 3
                    i32.and
                    i32.const 2
                    i32.shl
                    i32.or
                    i64.extend_i32_u
                    local.get $12
                    i32.const 128
                    i32.and
                    i32.const 10
                    i32.shl
                    local.get $12
                    i32.const 96
                    i32.and
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $12
                    i32.const 16
                    i32.and
                    i32.const 6
                    i32.shl
                    i32.or
                    local.get $12
                    i32.const 12
                    i32.and
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $12
                    i32.const 3
                    i32.and
                    i32.const 2
                    i32.shl
                    i32.or
                    i64.extend_i32_u
                    i64.const 36
                    i64.shl
                    local.get $6
                    local.get $34
                    local.get $11
                    select
                    i32.const 3
                    i32.mul
                    local.get $34
                    local.get $6
                    local.get $11
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $4
                    local.get $9
                    local.get $11
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $9
                    local.get $4
                    local.get $11
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $20
                    local.get $25
                    local.get $30
                    select
                    i32.add
                    i32.load8_u offset=8
                    local.tee $3
                    i32.const 128
                    i32.and
                    i32.const 10
                    i32.shl
                    local.get $3
                    i32.const 96
                    i32.and
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $3
                    i32.const 16
                    i32.and
                    i32.const 6
                    i32.shl
                    i32.or
                    local.get $3
                    i32.const 12
                    i32.and
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $3
                    i32.const 3
                    i32.and
                    i32.const 2
                    i32.shl
                    i32.or
                    i64.extend_i32_u
                    i64.const 18
                    i64.shl
                    i64.or
                    i64.or
                    i64.or
                    local.tee $14
                    i64.const 29
                    i64.shl
                    i64.or
                    i64.const 268439618
                    i64.or
                    local.set $1
                    local.get $37
                    local.get $43
                    local.get $13
                    select
                    i32.const 8
                    i32.shl
                    local.get $43
                    local.get $37
                    local.get $13
                    select
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $41
                    local.get $46
                    local.get $13
                    select
                    i32.or
                    local.get $38
                    local.get $44
                    local.get $13
                    select
                    i32.const 3
                    i32.mul
                    local.get $44
                    local.get $38
                    local.get $13
                    select
                    i32.add
                    i32.const 3
                    i32.mul
                    local.get $36
                    local.get $35
                    local.get $13
                    select
                    i32.add
                    i32.load8_u offset=8
                    local.tee $3
                    i32.const 128
                    i32.and
                    i32.const 10
                    i32.shl
                    local.get $3
                    i32.const 96
                    i32.and
                    i32.const 8
                    i32.shl
                    i32.or
                    local.get $3
                    i32.const 16
                    i32.and
                    i32.const 6
                    i32.shl
                    i32.or
                    local.get $3
                    i32.const 12
                    i32.and
                    i32.const 4
                    i32.shl
                    i32.or
                    local.get $3
                    i32.const 3
                    i32.and
                    i32.const 2
                    i32.shl
                    i32.or
                    i32.or
                    i32.const 19
                    i32.shl
                    i64.extend_i32_u
                    local.get $13
                    local.get $11
                    local.get $30
                    i32.and
                    i32.and
                    if (result i32)
                     local.get $32
                     i32.const -1
                     i32.xor
                    else
                     local.get $13
                     local.get $11
                     local.get $30
                     i32.or
                     i32.or
                     if (result i32)
                      local.get $32
                      local.get $17
                      i32.const 2
                      i32.shl
                      i32.load offset=512
                      local.tee $3
                      i32.const 65535
                      i32.and
                      local.tee $4
                      local.get $4
                      i32.const 8
                      i32.shl
                      i32.or
                      i32.const 16711935
                      i32.and
                      local.tee $4
                      local.get $4
                      i32.const 4
                      i32.shl
                      i32.or
                      i32.const 252645135
                      i32.and
                      local.tee $4
                      local.get $4
                      i32.const 2
                      i32.shl
                      i32.or
                      i32.const 858993459
                      i32.and
                      local.tee $4
                      local.get $4
                      i32.const 1
                      i32.shl
                      i32.or
                      i32.const 1431655765
                      i32.and
                      i32.const 3
                      i32.mul
                      local.tee $4
                      local.get $3
                      i32.const 16
                      i32.shr_u
                      local.tee $3
                      local.get $3
                      i32.const 8
                      i32.shl
                      i32.or
                      i32.const 16711935
                      i32.and
                      local.tee $3
                      local.get $3
                      i32.const 4
                      i32.shl
                      i32.or
                      i32.const 252645135
                      i32.and
                      local.tee $3
                      local.get $3
                      i32.const 2
                      i32.shl
                      i32.or
                      i32.const 858993459
                      i32.and
                      local.tee $3
                      local.get $3
                      i32.const 1
                      i32.shl
                      i32.or
                      i32.const 1431655765
                      i32.and
                      i32.const 3
                      i32.mul
                      local.tee $3
                      i32.or
                      i32.const -1
                      i32.xor
                      i32.const 0
                      local.get $30
                      select
                      local.get $4
                      i32.const 0
                      local.get $11
                      select
                      i32.or
                      local.get $3
                      i32.const 0
                      local.get $13
                      select
                      i32.or
                      i32.xor
                     else
                      local.get $32
                     end
                    end
                    local.tee $3
                    i32.const 1
                    i32.shr_u
                    i32.const 1431655765
                    i32.and
                    local.get $3
                    i32.const 1431655765
                    i32.and
                    i32.const 1
                    i32.shl
                    i32.or
                    local.tee $3
                    i32.const 2
                    i32.shr_u
                    i32.const 858993459
                    i32.and
                    local.get $3
                    i32.const 858993459
                    i32.and
                    i32.const 2
                    i32.shl
                    i32.or
                    local.tee $3
                    i32.const 4
                    i32.shr_u
                    i32.const 252645135
                    i32.and
                    local.get $3
                    i32.const 252645135
                    i32.and
                    i32.const 4
                    i32.shl
                    i32.or
                    local.tee $3
                    i32.const 8
                    i32.shr_u
                    i32.const 16711935
                    i32.and
                    local.get $3
                    i32.const 16711935
                    i32.and
                    i32.const 8
                    i32.shl
                    i32.or
                    i32.const 16
                    i32.rotr
                    i64.extend_i32_u
                    i64.const 32
                    i64.shl
                    i64.or
                    local.get $14
                    i64.const 35
                    i64.shr_u
                    i64.or
                    br $break|1
                   end
                   local.get $16
                   i64.const 20
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 31
                   i32.and
                   local.tee $3
                   i32.const 29
                   i32.const 18
                   local.get $4
                   select
                   i32.gt_u
                   if
                    i64.const -516
                    local.set $1
                    i64.const -4294901761
                    br $break|1
                   end
                   local.get $15
                   i64.const 1
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $5
                   local.get $16
                   i64.const 32
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 127
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=1248
                   local.tee $6
                   i32.const 4
                   i32.shr_u
                   i32.const 7
                   i32.and
                   local.tee $7
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=808
                   local.get $16
                   i64.const 53
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $8
                   local.get $16
                   i64.const 25
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 127
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=1248
                   local.tee $9
                   i32.const 7
                   i32.and
                   local.tee $10
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=808
                   local.get $16
                   i64.const 59
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $11
                   local.get $9
                   i32.const 8
                   i32.shr_u
                   local.tee $12
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=808
                   i32.add
                   i32.add
                   local.get $15
                   i64.const 4
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $13
                   local.get $6
                   i32.const 8
                   i32.shr_u
                   local.tee $17
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=808
                   local.get $16
                   i64.const 56
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $18
                   local.get $9
                   i32.const 4
                   i32.shr_u
                   i32.const 7
                   i32.and
                   local.tee $9
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=808
                   local.get $16
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
                   local.tee $19
                   local.get $6
                   i32.const 7
                   i32.and
                   local.tee $6
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=808
                   i32.add
                   i32.add
                   i32.gt_u
                   local.set $20
                   local.get $15
                   i64.const 19
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $21
                   local.get $16
                   i64.const 46
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 127
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=1248
                   local.tee $22
                   i32.const 4
                   i32.shr_u
                   i32.const 7
                   i32.and
                   local.tee $23
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=808
                   local.get $15
                   i64.const 7
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $24
                   local.get $16
                   i64.const 39
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 127
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.load16_u offset=1248
                   local.tee $25
                   i32.const 7
                   i32.and
                   local.tee $26
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=808
                   local.get $15
                   i64.const 13
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $27
                   local.get $25
                   i32.const 8
                   i32.shr_u
                   local.tee $28
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=808
                   i32.add
                   i32.add
                   local.get $15
                   i64.const 22
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $29
                   local.get $22
                   i32.const 8
                   i32.shr_u
                   local.tee $30
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=808
                   local.get $15
                   i64.const 10
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $31
                   local.get $25
                   i32.const 4
                   i32.shr_u
                   i32.const 7
                   i32.and
                   local.tee $25
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=808
                   local.get $15
                   i64.const 16
                   i64.shr_u
                   i32.wrap_i64
                   i32.const 7
                   i32.and
                   local.tee $32
                   local.get $22
                   i32.const 7
                   i32.and
                   local.tee $22
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.load8_u offset=808
                   i32.add
                   i32.add
                   i32.gt_u
                   local.set $33
                   local.get $6
                   local.get $12
                   local.get $20
                   select
                   i32.const 5
                   i32.mul
                   local.get $10
                   local.get $9
                   local.get $20
                   select
                   i32.add
                   i32.const 5
                   i32.mul
                   local.get $9
                   local.get $10
                   local.get $20
                   select
                   i32.add
                   i32.load8_u offset=256
                   local.tee $9
                   i32.const 96
                   i32.and
                   i32.const 9
                   i32.shl
                   local.get $9
                   i32.const 24
                   i32.and
                   i32.const 6
                   i32.shl
                   i32.or
                   local.get $9
                   i32.const 7
                   i32.and
                   i32.const 3
                   i32.shl
                   i32.or
                   local.get $7
                   local.get $17
                   local.get $20
                   select
                   i32.const 5
                   i32.mul
                   local.get $17
                   local.get $7
                   local.get $20
                   select
                   i32.add
                   i32.const 5
                   i32.mul
                   local.get $12
                   local.get $6
                   local.get $20
                   select
                   i32.add
                   i32.load8_u offset=256
                   local.tee $6
                   i32.const 96
                   i32.and
                   i32.const 9
                   i32.shl
                   local.get $6
                   i32.const 24
                   i32.and
                   i32.const 6
                   i32.shl
                   i32.or
                   local.get $6
                   i32.const 7
                   i32.and
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.const 16
                   i32.shl
                   i32.or
                   i64.extend_i32_u
                   local.get $22
                   local.get $28
                   local.get $33
                   select
                   i32.const 5
                   i32.mul
                   local.get $26
                   local.get $25
                   local.get $33
                   select
                   i32.add
                   i32.const 5
                   i32.mul
                   local.get $25
                   local.get $26
                   local.get $33
                   select
                   i32.add
                   i32.load8_u offset=256
                   local.tee $6
                   i32.const 96
                   i32.and
                   i32.const 9
                   i32.shl
                   local.get $6
                   i32.const 24
                   i32.and
                   i32.const 6
                   i32.shl
                   i32.or
                   local.get $6
                   i32.const 7
                   i32.and
                   i32.const 3
                   i32.shl
                   i32.or
                   local.get $23
                   local.get $30
                   local.get $33
                   select
                   i32.const 5
                   i32.mul
                   local.get $30
                   local.get $23
                   local.get $33
                   select
                   i32.add
                   i32.const 5
                   i32.mul
                   local.get $28
                   local.get $22
                   local.get $33
                   select
                   i32.add
                   i32.load8_u offset=256
                   local.tee $6
                   i32.const 96
                   i32.and
                   i32.const 9
                   i32.shl
                   local.get $6
                   i32.const 24
                   i32.and
                   i32.const 6
                   i32.shl
                   i32.or
                   local.get $6
                   i32.const 7
                   i32.and
                   i32.const 3
                   i32.shl
                   i32.or
                   i32.const 16
                   i32.shl
                   i32.or
                   i64.extend_i32_u
                   i64.const 32
                   i64.shl
                   i64.or
                   local.get $5
                   local.get $13
                   local.get $20
                   select
                   i32.const 27
                   i32.shl
                   local.get $13
                   local.get $5
                   local.get $20
                   select
                   i32.const 22
                   i32.shl
                   i32.or
                   local.get $11
                   local.get $19
                   local.get $20
                   select
                   i32.const 16
                   i32.shl
                   i32.or
                   local.get $19
                   local.get $11
                   local.get $20
                   select
                   i32.const 11
                   i32.shl
                   i32.or
                   local.get $8
                   local.get $18
                   local.get $20
                   select
                   i32.const 6
                   i32.shl
                   i32.or
                   local.get $18
                   local.get $8
                   local.get $20
                   select
                   i32.or
                   i64.extend_i32_u
                   local.get $21
                   local.get $29
                   local.get $33
                   select
                   i32.const 27
                   i32.shl
                   local.get $29
                   local.get $21
                   local.get $33
                   select
                   i32.const 22
                   i32.shl
                   i32.or
                   local.get $27
                   local.get $32
                   local.get $33
                   select
                   i32.const 16
                   i32.shl
                   i32.or
                   local.get $32
                   local.get $27
                   local.get $33
                   select
                   i32.const 11
                   i32.shl
                   i32.or
                   local.get $24
                   local.get $31
                   local.get $33
                   select
                   i32.const 6
                   i32.shl
                   i32.or
                   local.get $31
                   local.get $24
                   local.get $33
                   select
                   i32.or
                   i64.extend_i32_u
                   i64.const 32
                   i64.shl
                   i64.or
                   i64.or
                   local.set $14
                   local.get $15
                   i64.const 25
                   i64.shr_u
                   i64.const 1
                   i64.and
                   i32.const -1
                   local.get $4
                   if (result i32)
                    i64.const 5651576228422017
                    i64.const -4286381023083155150
                    local.get $3
                    i32.const 15
                    i32.gt_u
                    select
                    local.get $3
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
                    local.get $3
                    i32.const 15
                    i32.gt_u
                    select
                    local.get $3
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
                   local.tee $5
                   i32.const 2
                   i32.add
                   i32.shl
                   i64.extend_i32_u
                   local.get $15
                   i64.const 23
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
                   local.get $15
                   i64.const 24
                   i64.shr_u
                   i64.and
                   i64.or
                   i64.or
                   i32.wrap_i64
                   local.set $5
                   local.get $20
                   local.get $33
                   i32.and
                   if (result i32)
                    local.get $5
                    i32.const -1
                    i32.xor
                   else
                    local.get $20
                    local.get $33
                    i32.ne
                    if (result i32)
                     local.get $5
                     local.get $4
                     if (result i32)
                      local.get $3
                      i32.const 1
                      i32.shl
                      i32.load16_u offset=600
                     else
                      local.get $3
                      i32.const 1
                      i32.shl
                      i32.load16_u offset=560
                     end
                     local.tee $5
                     local.get $5
                     i32.const 8
                     i32.shl
                     i32.or
                     i32.const 16711935
                     i32.and
                     local.tee $5
                     local.get $5
                     i32.const 4
                     i32.shl
                     i32.or
                     i32.const 252645135
                     i32.and
                     local.tee $5
                     local.get $5
                     i32.const 2
                     i32.shl
                     i32.or
                     i32.const 858993459
                     i32.and
                     local.tee $5
                     local.get $5
                     i32.const 1
                     i32.shl
                     i32.or
                     i32.const 1431655765
                     i32.and
                     i32.const 3
                     i32.mul
                     local.tee $5
                     local.get $5
                     i32.const -1
                     i32.xor
                     local.get $33
                     select
                     i32.xor
                    else
                     local.get $5
                    end
                   end
                   local.tee $5
                   i32.const 1
                   i32.shr_u
                   i32.const 1431655765
                   i32.and
                   local.get $5
                   i32.const 1431655765
                   i32.and
                   i32.const 1
                   i32.shl
                   i32.or
                   local.tee $5
                   i32.const 2
                   i32.shr_u
                   i32.const 858993459
                   i32.and
                   local.get $5
                   i32.const 858993459
                   i32.and
                   i32.const 2
                   i32.shl
                   i32.or
                   local.tee $5
                   i32.const 4
                   i32.shr_u
                   i32.const 252645135
                   i32.and
                   local.get $5
                   i32.const 252645135
                   i32.and
                   i32.const 4
                   i32.shl
                   i32.or
                   local.tee $5
                   i32.const 8
                   i32.shr_u
                   i32.const 16711935
                   i32.and
                   local.get $5
                   i32.const 16711935
                   i32.and
                   i32.const 8
                   i32.shl
                   i32.or
                   i32.const 16
                   i32.rotr
                   local.get $4
                   if (result i32)
                    local.get $3
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=448
                   else
                    local.get $3
                    i32.const 1
                    i32.shl
                    i32.load16_u offset=408
                   end
                   i32.const 13
                   i32.shl
                   i64.extend_i32_u
                   local.get $14
                   i64.const 29
                   i64.shl
                   i64.or
                   i64.const 268437570
                   i64.or
                   local.set $1
                   i64.extend_i32_u
                   i64.const 32
                   i64.shl
                   local.get $14
                   i64.const 35
                   i64.shr_u
                   i64.or
                   br $break|1
                  end
                  local.get $16
                  i64.const 52
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 255
                  i32.and
                  local.tee $3
                  local.get $16
                  i64.const 20
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 255
                  i32.and
                  local.tee $4
                  local.get $16
                  i64.const 36
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 255
                  i32.and
                  local.tee $5
                  i32.add
                  i32.add
                  local.get $16
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
                  local.tee $6
                  local.get $16
                  i64.const 28
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 255
                  i32.and
                  local.tee $7
                  local.get $16
                  i64.const 44
                  i64.shr_u
                  i32.wrap_i64
                  i32.const 255
                  i32.and
                  local.tee $8
                  i32.add
                  i32.add
                  i32.gt_u
                  local.set $9
                  local.get $8
                  i32.const 16
                  i32.shl
                  local.get $7
                  i32.or
                  i64.extend_i32_u
                  local.get $6
                  i64.extend_i32_u
                  i64.const 32
                  i64.shl
                  i64.or
                  i64.const 0
                  i64.const 8
                  local.get $9
                  select
                  i64.shl
                  local.get $5
                  i32.const 16
                  i32.shl
                  local.get $4
                  i32.or
                  i64.extend_i32_u
                  local.get $3
                  i64.extend_i32_u
                  i64.const 32
                  i64.shl
                  i64.or
                  i64.const 8
                  i64.const 0
                  local.get $9
                  select
                  i64.shl
                  i64.or
                  local.tee $14
                  i64.const 17
                  i64.shl
                  i64.const 65619
                  i64.or
                  local.set $1
                  local.get $14
                  i64.const 47
                  i64.shr_u
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
                  local.tee $14
                  i64.const -1
                  i64.xor
                  i64.const 281474976710655
                  i64.and
                  local.get $14
                  local.get $9
                  select
                  local.tee $14
                  i64.const 1
                  i64.shr_u
                  i64.const 6148914691236517205
                  i64.and
                  local.get $14
                  i64.const 6148914691236517205
                  i64.and
                  i64.const 1
                  i64.shl
                  i64.or
                  local.tee $14
                  i64.const 2
                  i64.shr_u
                  i64.const 3689348814741910323
                  i64.and
                  local.get $14
                  i64.const 3689348814741910323
                  i64.and
                  i64.const 2
                  i64.shl
                  i64.or
                  local.tee $14
                  i64.const 4
                  i64.shr_u
                  i64.const 1085102592571150095
                  i64.and
                  local.get $14
                  i64.const 1085102592571150095
                  i64.and
                  i64.const 4
                  i64.shl
                  i64.or
                  local.tee $14
                  i64.const 8
                  i64.shr_u
                  i64.const 71777214294589695
                  i64.and
                  local.get $14
                  i64.const 71777214294589695
                  i64.and
                  i64.const 8
                  i64.shl
                  i64.or
                  local.tee $14
                  i64.const 16
                  i64.shr_u
                  i64.const 281470681808895
                  i64.and
                  local.get $14
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
                 local.get $16
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
                 local.set $4
                 local.get $3
                 i32.const 4
                 i32.shr_u
                 i32.const 7
                 i32.and
                 local.tee $5
                 local.get $3
                 i32.const 8
                 i32.shr_u
                 local.tee $3
                 local.get $16
                 i64.const 56
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 31
                 i32.and
                 local.tee $6
                 local.get $5
                 i32.const 5
                 i32.shl
                 i32.or
                 i32.load8_u offset=896
                 local.get $16
                 i64.const 36
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 31
                 i32.and
                 local.tee $7
                 local.get $16
                 i64.const 22
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 127
                 i32.and
                 i32.const 1
                 i32.shl
                 i32.load16_u offset=1248
                 local.tee $8
                 i32.const 7
                 i32.and
                 local.tee $9
                 i32.const 5
                 i32.shl
                 i32.or
                 i32.load8_u offset=896
                 local.get $16
                 i64.const 46
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 31
                 i32.and
                 local.tee $10
                 local.get $8
                 i32.const 8
                 i32.shr_u
                 local.tee $11
                 i32.const 5
                 i32.shl
                 i32.or
                 i32.load8_u offset=896
                 i32.add
                 i32.add
                 local.get $16
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
                 local.tee $12
                 local.get $3
                 i32.const 5
                 i32.shl
                 i32.or
                 i32.load8_u offset=896
                 local.get $16
                 i64.const 41
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 31
                 i32.and
                 local.tee $13
                 local.get $8
                 i32.const 4
                 i32.shr_u
                 i32.const 7
                 i32.and
                 local.tee $8
                 i32.const 5
                 i32.shl
                 i32.or
                 i32.load8_u offset=896
                 local.get $16
                 i64.const 51
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 31
                 i32.and
                 local.tee $17
                 local.get $4
                 i32.const 5
                 i32.shl
                 i32.or
                 i32.load8_u offset=896
                 i32.add
                 i32.add
                 i32.gt_u
                 local.tee $18
                 select
                 i32.const 5
                 i32.mul
                 local.get $3
                 local.get $5
                 local.get $18
                 select
                 i32.add
                 i32.const 5
                 i32.mul
                 local.get $11
                 local.get $4
                 local.get $18
                 select
                 i32.add
                 i32.load8_u offset=256
                 local.set $3
                 local.get $16
                 i64.const 20
                 i64.shr_u
                 i32.wrap_i64
                 i32.const 3
                 i32.and
                 i64.extend_i32_u
                 i64.const 62
                 i64.shl
                 local.get $13
                 local.get $7
                 local.get $18
                 select
                 i64.extend_i32_u
                 local.get $6
                 local.get $12
                 local.get $18
                 select
                 i64.extend_i32_u
                 i64.const 37
                 i64.shl
                 local.get $12
                 local.get $6
                 local.get $18
                 select
                 i64.extend_i32_u
                 i64.const 30
                 i64.shl
                 i64.or
                 local.get $10
                 local.get $17
                 local.get $18
                 select
                 i64.extend_i32_u
                 i64.const 22
                 i64.shl
                 i64.or
                 local.get $17
                 local.get $10
                 local.get $18
                 select
                 i64.extend_i32_u
                 i64.const 15
                 i64.shl
                 i64.or
                 local.get $7
                 local.get $13
                 local.get $18
                 select
                 i64.extend_i32_u
                 i64.const 8
                 i64.shl
                 i64.or
                 i64.or
                 local.get $4
                 local.get $11
                 local.get $18
                 select
                 i32.const 5
                 i32.mul
                 local.get $9
                 local.get $8
                 local.get $18
                 select
                 i32.add
                 i32.const 5
                 i32.mul
                 local.get $8
                 local.get $9
                 local.get $18
                 select
                 i32.add
                 i32.load8_u offset=256
                 local.tee $4
                 i32.const 96
                 i32.and
                 i32.const 15
                 i32.shl
                 local.get $4
                 i32.const 24
                 i32.and
                 i32.const 10
                 i32.shl
                 i32.or
                 local.get $4
                 i32.const 7
                 i32.and
                 i32.const 5
                 i32.shl
                 i32.or
                 i64.extend_i32_u
                 local.get $3
                 i32.const 96
                 i32.and
                 i32.const 15
                 i32.shl
                 local.get $3
                 i32.const 24
                 i32.and
                 i32.const 10
                 i32.shl
                 i32.or
                 local.get $3
                 i32.const 7
                 i32.and
                 i32.const 5
                 i32.shl
                 i32.or
                 i64.extend_i32_u
                 i64.const 22
                 i64.shl
                 i64.or
                 i64.or
                 i64.const 17
                 i64.shl
                 i64.or
                 i64.const 66626
                 i64.or
                 local.set $1
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
                 local.tee $14
                 i64.const -1
                 i64.xor
                 local.get $14
                 local.get $18
                 select
                 local.tee $14
                 i64.const 1
                 i64.shr_u
                 i64.const 6148914691236517205
                 i64.and
                 local.get $14
                 i64.const 6148914691236517205
                 i64.and
                 i64.const 1
                 i64.shl
                 i64.or
                 local.tee $14
                 i64.const 2
                 i64.shr_u
                 i64.const 3689348814741910323
                 i64.and
                 local.get $14
                 i64.const 3689348814741910323
                 i64.and
                 i64.const 2
                 i64.shl
                 i64.or
                 local.tee $14
                 i64.const 4
                 i64.shr_u
                 i64.const 1085102592571150095
                 i64.and
                 local.get $14
                 i64.const 1085102592571150095
                 i64.and
                 i64.const 4
                 i64.shl
                 i64.or
                 local.tee $14
                 i64.const 8
                 i64.shr_u
                 i64.const 71777214294589695
                 i64.and
                 local.get $14
                 i64.const 71777214294589695
                 i64.and
                 i64.const 8
                 i64.shl
                 i64.or
                 local.tee $14
                 i64.const 16
                 i64.shr_u
                 i64.const 281470681808895
                 i64.and
                 local.get $14
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
                local.set $1
                local.get $16
                i64.const 5
                i64.shr_u
                i32.wrap_i64
                i32.const 255
                i32.and
                i64.extend_i32_u
                i64.const 257
                i64.mul
                local.get $16
                i64.const 13
                i64.shr_u
                i32.wrap_i64
                i32.const 255
                i32.and
                i64.extend_i32_u
                i64.const 16842752
                i64.mul
                local.get $16
                i64.const 29
                i64.shr_u
                i32.wrap_i64
                i32.const 255
                i32.and
                i64.extend_i32_u
                i64.const 72339069014638592
                i64.mul
                local.get $16
                i64.const 21
                i64.shr_u
                i32.wrap_i64
                i32.const 255
                i32.and
                i64.extend_i32_u
                i64.const 1103806595072
                i64.mul
                i64.or
                i64.or
                i64.or
                br $break|1
               end
               local.get $16
               i64.const 28
               i64.shr_u
               i32.wrap_i64
               i32.const 31
               i32.and
               local.tee $3
               i32.const 29
               i32.gt_u
               if
                i64.const -516
                local.set $1
                i64.const -4294901761
                br $break|1
               end
               local.get $16
               i64.const 49
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $4
               local.get $16
               i64.const 33
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $5
               local.get $16
               i64.const 41
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $6
               i32.add
               i32.add
               local.get $16
               i64.const 53
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $7
               local.get $16
               i64.const 37
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $8
               local.get $16
               i64.const 45
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $9
               i32.add
               i32.add
               i32.gt_u
               local.set $10
               local.get $15
               i64.const 17
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $11
               local.get $15
               i64.const 1
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $12
               local.get $15
               i64.const 9
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $13
               i32.add
               i32.add
               local.get $15
               i64.const 21
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $17
               local.get $15
               i64.const 5
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $18
               local.get $15
               i64.const 13
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               local.tee $19
               i32.add
               i32.add
               i32.gt_u
               local.set $20
               local.get $15
               i64.const 33
               i64.shr_u
               i64.const 1
               i64.and
               i32.const -1
               i64.const 5651576228422017
               i64.const -4286381023083155150
               local.get $3
               i32.const 15
               i32.gt_u
               select
               local.get $3
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
               local.tee $21
               i32.const 2
               i32.add
               i32.shl
               i64.extend_i32_u
               local.get $15
               i64.const 31
               i64.shr_u
               i64.and
               i32.const -1
               local.get $21
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
               i32.wrap_i64
               local.set $21
               local.get $3
               i32.const 1
               i32.shl
               i32.load16_u offset=448
               i32.const 13
               i32.shl
               i64.extend_i32_u
               local.get $16
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
               local.get $8
               i32.or
               i32.const 0
               i32.const 4
               local.get $10
               select
               i32.shl
               local.get $16
               i64.const 57
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               i32.const 24
               i32.shl
               local.get $4
               i32.const 16
               i32.shl
               i32.or
               local.get $6
               i32.const 8
               i32.shl
               i32.or
               local.get $5
               i32.or
               i32.const 4
               i32.const 0
               local.get $10
               select
               i32.shl
               i32.or
               i64.extend_i32_u
               local.get $15
               i64.const 29
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               i32.const 24
               i32.shl
               local.get $17
               i32.const 16
               i32.shl
               i32.or
               local.get $19
               i32.const 8
               i32.shl
               i32.or
               local.get $18
               i32.or
               i32.const 0
               i32.const 4
               local.get $20
               select
               i32.shl
               local.get $15
               i64.const 25
               i64.shr_u
               i32.wrap_i64
               i32.const 15
               i32.and
               i32.const 24
               i32.shl
               local.get $11
               i32.const 16
               i32.shl
               i32.or
               local.get $13
               i32.const 8
               i32.shl
               i32.or
               local.get $12
               i32.or
               i32.const 4
               i32.const 0
               local.get $20
               select
               i32.shl
               i32.or
               i64.extend_i32_u
               i64.const 32
               i64.shl
               i64.or
               local.tee $14
               i64.const 29
               i64.shl
               i64.or
               i64.const 402655298
               i64.or
               local.set $1
               local.get $10
               local.get $20
               i32.and
               if (result i32)
                local.get $21
                i32.const -1
                i32.xor
               else
                local.get $10
                local.get $20
                i32.ne
                if (result i32)
                 local.get $21
                 local.get $3
                 i32.const 1
                 i32.shl
                 i32.load16_u offset=600
                 local.tee $3
                 local.get $3
                 i32.const 8
                 i32.shl
                 i32.or
                 i32.const 16711935
                 i32.and
                 local.tee $3
                 local.get $3
                 i32.const 4
                 i32.shl
                 i32.or
                 i32.const 252645135
                 i32.and
                 local.tee $3
                 local.get $3
                 i32.const 2
                 i32.shl
                 i32.or
                 i32.const 858993459
                 i32.and
                 local.tee $3
                 local.get $3
                 i32.const 1
                 i32.shl
                 i32.or
                 i32.const 1431655765
                 i32.and
                 i32.const 3
                 i32.mul
                 local.tee $3
                 local.get $3
                 i32.const -1
                 i32.xor
                 local.get $20
                 select
                 i32.xor
                else
                 local.get $21
                end
               end
               local.tee $3
               i32.const 1
               i32.shr_u
               i32.const 1431655765
               i32.and
               local.get $3
               i32.const 1431655765
               i32.and
               i32.const 1
               i32.shl
               i32.or
               local.tee $3
               i32.const 2
               i32.shr_u
               i32.const 858993459
               i32.and
               local.get $3
               i32.const 858993459
               i32.and
               i32.const 2
               i32.shl
               i32.or
               local.tee $3
               i32.const 4
               i32.shr_u
               i32.const 252645135
               i32.and
               local.get $3
               i32.const 252645135
               i32.and
               i32.const 4
               i32.shl
               i32.or
               local.tee $3
               i32.const 8
               i32.shr_u
               i32.const 16711935
               i32.and
               local.get $3
               i32.const 16711935
               i32.and
               i32.const 8
               i32.shl
               i32.or
               i32.const 16
               i32.rotr
               i64.extend_i32_u
               i64.const 32
               i64.shl
               local.get $14
               i64.const 35
               i64.shr_u
               i64.or
               br $break|1
              end
              local.get $16
              i64.const 20
              i64.shr_u
              i32.wrap_i64
              i32.const 255
              i32.and
              i32.const 1
              i32.shl
              i32.load16_u offset=1504
              local.tee $3
              i32.const 3
              i32.and
              local.set $4
              local.get $16
              i64.const 49
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $5
              local.get $3
              i32.const 8
              i32.shr_u
              local.tee $6
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=848
              local.get $16
              i64.const 33
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $7
              local.get $4
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=848
              local.get $16
              i64.const 41
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $8
              local.get $3
              i32.const 4
              i32.shr_u
              i32.const 3
              i32.and
              local.tee $9
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=848
              i32.add
              i32.add
              local.get $16
              i64.const 53
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $10
              local.get $16
              i64.const 28
              i64.shr_u
              i32.wrap_i64
              i32.const 31
              i32.and
              i32.const 1
              i32.shl
              i32.load16_u offset=1504
              local.tee $11
              i32.const 3
              i32.and
              local.tee $12
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=848
              local.get $16
              i64.const 37
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $13
              local.get $3
              i32.const 2
              i32.shr_u
              i32.const 3
              i32.and
              local.tee $17
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=848
              local.get $16
              i64.const 45
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $18
              local.get $3
              i32.const 6
              i32.shr_u
              i32.const 3
              i32.and
              local.tee $3
              i32.const 4
              i32.shl
              i32.or
              i32.load8_u offset=848
              i32.add
              i32.add
              i32.gt_u
              local.set $19
              local.get $13
              local.get $7
              local.get $19
              select
              i64.extend_i32_u
              local.get $16
              i64.const 57
              i64.shr_u
              i32.wrap_i64
              i32.const 15
              i32.and
              local.tee $20
              local.get $16
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
              local.tee $21
              local.get $19
              select
              i64.extend_i32_u
              i64.const 40
              i64.shl
              local.get $21
              local.get $20
              local.get $19
              select
              i64.extend_i32_u
              i64.const 34
              i64.shl
              i64.or
              local.get $5
              local.get $10
              local.get $19
              select
              i64.extend_i32_u
              i64.const 28
              i64.shl
              i64.or
              local.get $10
              local.get $5
              local.get $19
              select
              i64.extend_i32_u
              i64.const 23
              i64.shl
              i64.or
              local.get $8
              local.get $18
              local.get $19
              select
              i64.extend_i32_u
              i64.const 17
              i64.shl
              i64.or
              local.get $18
              local.get $8
              local.get $19
              select
              i64.extend_i32_u
              i64.const 12
              i64.shl
              i64.or
              local.get $7
              local.get $13
              local.get $19
              select
              i64.extend_i32_u
              i64.const 6
              i64.shl
              i64.or
              i64.or
              local.get $12
              local.get $6
              local.get $19
              select
              i32.const 3
              i32.mul
              local.get $9
              local.get $3
              local.get $19
              select
              i32.add
              i32.const 3
              i32.mul
              local.get $3
              local.get $9
              local.get $19
              select
              i32.add
              i32.const 3
              i32.mul
              local.get $4
              local.get $17
              local.get $19
              select
              i32.add
              i32.const 3
              i32.mul
              local.get $17
              local.get $4
              local.get $19
              select
              i32.add
              i32.load8_u offset=8
              local.tee $3
              i32.const 128
              i32.and
              i32.const 20
              i32.shl
              local.get $3
              i32.const 96
              i32.and
              i32.const 16
              i32.shl
              i32.or
              local.get $3
              i32.const 16
              i32.and
              i32.const 12
              i32.shl
              i32.or
              local.get $3
              i32.const 12
              i32.and
              i32.const 8
              i32.shl
              i32.or
              local.get $3
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i64.extend_i32_u
              local.get $11
              i32.const 2
              i32.shr_u
              i32.const 3
              i32.and
              local.tee $3
              local.get $11
              i32.const 4
              i32.shr_u
              i32.const 3
              i32.and
              local.tee $4
              local.get $19
              select
              i32.const 3
              i32.mul
              local.get $4
              local.get $3
              local.get $19
              select
              i32.add
              i32.const 3
              i32.mul
              local.get $6
              local.get $12
              local.get $19
              select
              i32.add
              i32.load8_u offset=8
              local.tee $3
              i32.const 128
              i32.and
              i32.const 20
              i32.shl
              local.get $3
              i32.const 96
              i32.and
              i32.const 16
              i32.shl
              i32.or
              local.get $3
              i32.const 16
              i32.and
              i32.const 12
              i32.shl
              i32.or
              local.get $3
              i32.const 12
              i32.and
              i32.const 8
              i32.shl
              i32.or
              local.get $3
              i32.const 3
              i32.and
              i32.const 4
              i32.shl
              i32.or
              i64.extend_i32_u
              i64.const 28
              i64.shl
              i64.or
              i64.or
              i64.const 17
              i64.shl
              i64.const 98882
              i64.or
              local.set $1
              local.get $15
              i64.const -16
              i64.and
              local.get $15
              i64.const 1
              i64.shr_u
              i64.const 7
              i64.and
              i64.or
              local.tee $14
              i64.const -1
              i64.xor
              local.get $14
              local.get $19
              select
              local.tee $14
              i64.const 1
              i64.shr_u
              i64.const 6148914691236517205
              i64.and
              local.get $14
              i64.const 6148914691236517205
              i64.and
              i64.const 1
              i64.shl
              i64.or
              local.tee $14
              i64.const 2
              i64.shr_u
              i64.const 3689348814741910323
              i64.and
              local.get $14
              i64.const 3689348814741910323
              i64.and
              i64.const 2
              i64.shl
              i64.or
              local.tee $14
              i64.const 4
              i64.shr_u
              i64.const 1085102592571150095
              i64.and
              local.get $14
              i64.const 1085102592571150095
              i64.and
              i64.const 4
              i64.shl
              i64.or
              local.tee $14
              i64.const 8
              i64.shr_u
              i64.const 71777214294589695
              i64.and
              local.get $14
              i64.const 71777214294589695
              i64.and
              i64.const 8
              i64.shl
              i64.or
              local.tee $14
              i64.const 16
              i64.shr_u
              i64.const 281470681808895
              i64.and
              local.get $14
              i64.const 281470681808895
              i64.and
              i64.const 16
              i64.shl
              i64.or
              i64.const 32
              i64.rotr
              br $break|1
             end
             local.get $16
             i64.const 21
             i64.shr_u
             i32.wrap_i64
             i32.const 255
             i32.and
             i32.const 1
             i32.shl
             i32.load16_u offset=1504
             local.tee $3
             i32.const 3
             i32.and
             local.set $4
             local.get $16
             i64.const 50
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $5
             local.get $3
             i32.const 8
             i32.shr_u
             local.tee $6
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             local.get $16
             i64.const 34
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $7
             local.get $4
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             local.get $16
             i64.const 42
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $8
             local.get $3
             i32.const 4
             i32.shr_u
             i32.const 3
             i32.and
             local.tee $9
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             i32.add
             i32.add
             local.get $16
             i64.const 54
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $10
             local.get $16
             i64.const 29
             i64.shr_u
             i32.wrap_i64
             i32.const 31
             i32.and
             i32.const 1
             i32.shl
             i32.load16_u offset=1504
             local.tee $11
             i32.const 3
             i32.and
             local.tee $12
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             local.get $16
             i64.const 38
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $13
             local.get $3
             i32.const 2
             i32.shr_u
             i32.const 3
             i32.and
             local.tee $17
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             local.get $16
             i64.const 46
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $18
             local.get $3
             i32.const 6
             i32.shr_u
             i32.const 3
             i32.and
             local.tee $3
             i32.const 4
             i32.shl
             i32.or
             i32.load8_u offset=848
             i32.add
             i32.add
             i32.gt_u
             local.set $19
             local.get $16
             i64.const 19
             i64.shr_u
             i32.wrap_i64
             i32.const 3
             i32.and
             i64.extend_i32_u
             i64.const 62
             i64.shl
             local.get $13
             local.get $7
             local.get $19
             select
             i64.extend_i32_u
             local.get $16
             i64.const 58
             i64.shr_u
             i32.wrap_i64
             i32.const 15
             i32.and
             local.tee $20
             local.get $16
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
             local.tee $21
             local.get $19
             select
             i64.extend_i32_u
             i64.const 40
             i64.shl
             local.get $21
             local.get $20
             local.get $19
             select
             i64.extend_i32_u
             i64.const 34
             i64.shl
             i64.or
             local.get $5
             local.get $10
             local.get $19
             select
             i64.extend_i32_u
             i64.const 28
             i64.shl
             i64.or
             local.get $10
             local.get $5
             local.get $19
             select
             i64.extend_i32_u
             i64.const 23
             i64.shl
             i64.or
             local.get $8
             local.get $18
             local.get $19
             select
             i64.extend_i32_u
             i64.const 17
             i64.shl
             i64.or
             local.get $18
             local.get $8
             local.get $19
             select
             i64.extend_i32_u
             i64.const 12
             i64.shl
             i64.or
             local.get $7
             local.get $13
             local.get $19
             select
             i64.extend_i32_u
             i64.const 6
             i64.shl
             i64.or
             i64.or
             local.get $12
             local.get $6
             local.get $19
             select
             i32.const 3
             i32.mul
             local.get $9
             local.get $3
             local.get $19
             select
             i32.add
             i32.const 3
             i32.mul
             local.get $3
             local.get $9
             local.get $19
             select
             i32.add
             i32.const 3
             i32.mul
             local.get $4
             local.get $17
             local.get $19
             select
             i32.add
             i32.const 3
             i32.mul
             local.get $17
             local.get $4
             local.get $19
             select
             i32.add
             i32.load8_u offset=8
             local.tee $3
             i32.const 128
             i32.and
             i32.const 20
             i32.shl
             local.get $3
             i32.const 96
             i32.and
             i32.const 16
             i32.shl
             i32.or
             local.get $3
             i32.const 16
             i32.and
             i32.const 12
             i32.shl
             i32.or
             local.get $3
             i32.const 12
             i32.and
             i32.const 8
             i32.shl
             i32.or
             local.get $3
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i64.extend_i32_u
             local.get $11
             i32.const 2
             i32.shr_u
             i32.const 3
             i32.and
             local.tee $3
             local.get $11
             i32.const 4
             i32.shr_u
             i32.const 3
             i32.and
             local.tee $4
             local.get $19
             select
             i32.const 3
             i32.mul
             local.get $4
             local.get $3
             local.get $19
             select
             i32.add
             i32.const 3
             i32.mul
             local.get $6
             local.get $12
             local.get $19
             select
             i32.add
             i32.load8_u offset=8
             local.tee $3
             i32.const 128
             i32.and
             i32.const 20
             i32.shl
             local.get $3
             i32.const 96
             i32.and
             i32.const 16
             i32.shl
             i32.or
             local.get $3
             i32.const 16
             i32.and
             i32.const 12
             i32.shl
             i32.or
             local.get $3
             i32.const 12
             i32.and
             i32.const 8
             i32.shl
             i32.or
             local.get $3
             i32.const 3
             i32.and
             i32.const 4
             i32.shl
             i32.or
             i64.extend_i32_u
             i64.const 28
             i64.shl
             i64.or
             i64.or
             i64.const 17
             i64.shl
             i64.or
             i64.const 99394
             i64.or
             local.set $1
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
             local.tee $14
             i64.const -1
             i64.xor
             local.get $14
             local.get $19
             select
             local.tee $14
             i64.const 1
             i64.shr_u
             i64.const 6148914691236517205
             i64.and
             local.get $14
             i64.const 6148914691236517205
             i64.and
             i64.const 1
             i64.shl
             i64.or
             local.tee $14
             i64.const 2
             i64.shr_u
             i64.const 3689348814741910323
             i64.and
             local.get $14
             i64.const 3689348814741910323
             i64.and
             i64.const 2
             i64.shl
             i64.or
             local.tee $14
             i64.const 4
             i64.shr_u
             i64.const 1085102592571150095
             i64.and
             local.get $14
             i64.const 1085102592571150095
             i64.and
             i64.const 4
             i64.shl
             i64.or
             local.tee $14
             i64.const 8
             i64.shr_u
             i64.const 71777214294589695
             i64.and
             local.get $14
             i64.const 71777214294589695
             i64.and
             i64.const 8
             i64.shl
             i64.or
             local.tee $14
             i64.const 16
             i64.shr_u
             i64.const 281470681808895
             i64.and
             local.get $14
             i64.const 281470681808895
             i64.and
             i64.const 16
             i64.shl
             i64.or
             i64.const 32
             i64.rotr
             br $break|1
            end
            local.get $16
            i64.const 20
            i64.shr_u
            i32.wrap_i64
            i32.const 255
            i32.and
            i32.const 1
            i32.shl
            i32.load16_u offset=1504
            local.tee $3
            i32.const 3
            i32.and
            local.set $4
            local.get $16
            i64.const 57
            i64.shr_u
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $5
            local.get $3
            i32.const 8
            i32.shr_u
            local.tee $6
            i32.const 6
            i32.shl
            i32.or
            i32.load8_u offset=1056
            local.get $16
            i64.const 33
            i64.shr_u
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $7
            local.get $4
            i32.const 6
            i32.shl
            i32.or
            i32.load8_u offset=1056
            local.get $16
            i64.const 45
            i64.shr_u
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $8
            local.get $3
            i32.const 4
            i32.shr_u
            i32.const 3
            i32.and
            local.tee $9
            i32.const 6
            i32.shl
            i32.or
            i32.load8_u offset=1056
            i32.add
            i32.add
            local.get $16
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
            local.tee $10
            local.get $16
            i64.const 28
            i64.shr_u
            i32.wrap_i64
            i32.const 31
            i32.and
            i32.const 1
            i32.shl
            i32.load16_u offset=1504
            local.tee $11
            i32.const 3
            i32.and
            local.tee $12
            i32.const 6
            i32.shl
            i32.or
            i32.load8_u offset=1056
            local.get $16
            i64.const 39
            i64.shr_u
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $13
            local.get $3
            i32.const 2
            i32.shr_u
            i32.const 3
            i32.and
            local.tee $17
            i32.const 6
            i32.shl
            i32.or
            i32.load8_u offset=1056
            local.get $16
            i64.const 51
            i64.shr_u
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $18
            local.get $3
            i32.const 6
            i32.shr_u
            i32.const 3
            i32.and
            local.tee $3
            i32.const 6
            i32.shl
            i32.or
            i32.load8_u offset=1056
            i32.add
            i32.add
            i32.gt_u
            local.set $19
            local.get $13
            local.get $7
            local.get $19
            select
            i64.extend_i32_u
            local.get $15
            i64.const 5
            i64.shr_u
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $20
            local.get $15
            i64.const 11
            i64.shr_u
            i32.wrap_i64
            i32.const 63
            i32.and
            local.tee $21
            local.get $19
            select
            i64.extend_i32_u
            i64.const 54
            i64.shl
            local.get $21
            local.get $20
            local.get $19
            select
            i64.extend_i32_u
            i64.const 46
            i64.shl
            i64.or
            local.get $5
            local.get $10
            local.get $19
            select
            i64.extend_i32_u
            i64.const 38
            i64.shl
            i64.or
            local.get $10
            local.get $5
            local.get $19
            select
            i64.extend_i32_u
            i64.const 31
            i64.shl
            i64.or
            local.get $8
            local.get $18
            local.get $19
            select
            i64.extend_i32_u
            i64.const 23
            i64.shl
            i64.or
            local.get $18
            local.get $8
            local.get $19
            select
            i64.extend_i32_u
            i64.const 16
            i64.shl
            i64.or
            local.get $7
            local.get $13
            local.get $19
            select
            i64.extend_i32_u
            i64.const 8
            i64.shl
            i64.or
            i64.or
            local.get $12
            local.get $6
            local.get $19
            select
            i32.const 3
            i32.mul
            local.get $9
            local.get $3
            local.get $19
            select
            i32.add
            i32.const 3
            i32.mul
            local.get $3
            local.get $9
            local.get $19
            select
            i32.add
            i32.const 3
            i32.mul
            local.get $4
            local.get $17
            local.get $19
            select
            i32.add
            i32.const 3
            i32.mul
            local.get $17
            local.get $4
            local.get $19
            select
            i32.add
            i32.load8_u offset=8
            i64.extend_i32_u
            local.tee $1
            i64.const 128
            i64.and
            i64.const 30
            i64.shl
            local.get $1
            i64.const 96
            i64.and
            i64.const 24
            i64.shl
            i64.or
            local.get $1
            i64.const 16
            i64.and
            i64.const 18
            i64.shl
            i64.or
            local.get $1
            i64.const 12
            i64.and
            i64.const 12
            i64.shl
            i64.or
            local.get $1
            i64.const 3
            i64.and
            i64.const 6
            i64.shl
            i64.or
            local.get $11
            i32.const 2
            i32.shr_u
            i32.const 3
            i32.and
            local.tee $3
            local.get $11
            i32.const 4
            i32.shr_u
            i32.const 3
            i32.and
            local.tee $4
            local.get $19
            select
            i32.const 3
            i32.mul
            local.get $4
            local.get $3
            local.get $19
            select
            i32.add
            i32.const 3
            i32.mul
            local.get $6
            local.get $12
            local.get $19
            select
            i32.add
            i32.load8_u offset=8
            i64.extend_i32_u
            local.tee $1
            i64.const 128
            i64.and
            i64.const 30
            i64.shl
            local.get $1
            i64.const 96
            i64.and
            i64.const 24
            i64.shl
            i64.or
            local.get $1
            i64.const 16
            i64.and
            i64.const 18
            i64.shl
            i64.or
            local.get $1
            i64.const 12
            i64.and
            i64.const 12
            i64.shl
            i64.or
            local.get $1
            i64.const 3
            i64.and
            i64.const 6
            i64.shl
            i64.or
            i64.const 38
            i64.shl
            i64.or
            i64.or
            local.tee $14
            i64.const 17
            i64.shl
            i64.const 98387
            i64.or
            local.set $1
            local.get $14
            i64.const 47
            i64.shr_u
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
            local.tee $14
            i64.const 281474976710655
            i64.xor
            local.get $14
            local.get $19
            select
            local.tee $14
            i64.const 1
            i64.shr_u
            i64.const 6148914691236517205
            i64.and
            local.get $14
            i64.const 6148914691236517205
            i64.and
            i64.const 1
            i64.shl
            i64.or
            local.tee $14
            i64.const 2
            i64.shr_u
            i64.const 3689348814741910323
            i64.and
            local.get $14
            i64.const 3689348814741910323
            i64.and
            i64.const 2
            i64.shl
            i64.or
            local.tee $14
            i64.const 4
            i64.shr_u
            i64.const 1085102592571150095
            i64.and
            local.get $14
            i64.const 1085102592571150095
            i64.and
            i64.const 4
            i64.shl
            i64.or
            local.tee $14
            i64.const 8
            i64.shr_u
            i64.const 71777214294589695
            i64.and
            local.get $14
            i64.const 71777214294589695
            i64.and
            i64.const 8
            i64.shl
            i64.or
            local.tee $14
            i64.const 16
            i64.shr_u
            i64.const 281470681808895
            i64.and
            local.get $14
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
           local.get $16
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
           local.tee $3
           local.get $16
           i64.const 30
           i64.shr_u
           i32.wrap_i64
           i32.const 255
           i32.and
           local.tee $4
           local.get $16
           i64.const 46
           i64.shr_u
           i32.wrap_i64
           i32.const 255
           i32.and
           local.tee $5
           i32.add
           i32.add
           local.get $15
           i64.const 6
           i64.shr_u
           i32.wrap_i64
           i32.const 255
           i32.and
           local.tee $6
           local.get $16
           i64.const 38
           i64.shr_u
           i32.wrap_i64
           i32.const 255
           i32.and
           local.tee $7
           local.get $16
           i64.const 54
           i64.shr_u
           i32.wrap_i64
           i32.const 255
           i32.and
           local.tee $8
           i32.add
           i32.add
           i32.gt_u
           local.set $9
           local.get $8
           i32.const 16
           i32.shl
           local.get $7
           i32.or
           i64.extend_i32_u
           local.get $15
           i64.const 22
           i64.shr_u
           i32.wrap_i64
           i32.const 255
           i32.and
           i32.const 16
           i32.shl
           local.get $6
           i32.or
           i64.extend_i32_u
           i64.const 32
           i64.shl
           i64.or
           i64.const 0
           i64.const 8
           local.get $9
           select
           i64.shl
           local.get $5
           i32.const 16
           i32.shl
           local.get $4
           i32.or
           i64.extend_i32_u
           local.get $15
           i64.const 14
           i64.shr_u
           i32.wrap_i64
           i32.const 255
           i32.and
           i32.const 16
           i32.shl
           local.get $3
           i32.or
           i64.extend_i32_u
           i64.const 32
           i64.shl
           i64.or
           i64.const 8
           i64.const 0
           local.get $9
           select
           i64.shl
           i64.or
           local.tee $14
           i64.const 17
           i64.shl
           i64.const 99393
           i64.or
           local.set $1
           local.get $15
           i64.const 28
           i64.shr_u
           i64.const 4294967292
           i64.and
           i32.wrap_i64
           local.tee $3
           i32.const -1
           i32.xor
           local.get $3
           local.get $9
           select
           local.tee $3
           i32.const 1
           i32.shr_u
           i32.const 1431655765
           i32.and
           local.get $3
           i32.const 1431655765
           i32.and
           i32.const 1
           i32.shl
           i32.or
           local.tee $3
           i32.const 2
           i32.shr_u
           i32.const 858993459
           i32.and
           local.get $3
           i32.const 858993459
           i32.and
           i32.const 2
           i32.shl
           i32.or
           local.tee $3
           i32.const 4
           i32.shr_u
           i32.const 252645135
           i32.and
           local.get $3
           i32.const 252645135
           i32.and
           i32.const 4
           i32.shl
           i32.or
           local.tee $3
           i32.const 8
           i32.shr_u
           i32.const 16711935
           i32.and
           local.get $3
           i32.const 16711935
           i32.and
           i32.const 8
           i32.shl
           i32.or
           i32.const 16
           i32.rotr
           i64.extend_i32_u
           i64.const 32
           i64.shl
           local.get $16
           i64.const 28
           i64.shr_u
           i32.wrap_i64
           i32.const 3
           i32.and
           i64.extend_i32_u
           i64.const 30
           i64.shl
           i64.or
           local.get $14
           i64.const 47
           i64.shr_u
           i64.or
           br $break|1
          end
          local.get $16
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
          local.tee $3
          local.get $16
          i64.const 28
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          local.tee $4
          local.get $16
          i64.const 44
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          local.tee $5
          i32.add
          i32.add
          local.get $15
          i64.const 4
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          local.tee $6
          local.get $16
          i64.const 36
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          local.tee $7
          local.get $16
          i64.const 52
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          local.tee $8
          i32.add
          i32.add
          i32.gt_u
          local.set $9
          local.get $8
          i32.const 16
          i32.shl
          local.get $7
          i32.or
          i64.extend_i32_u
          local.get $15
          i64.const 20
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i32.const 16
          i32.shl
          local.get $6
          i32.or
          i64.extend_i32_u
          i64.const 32
          i64.shl
          i64.or
          i64.const 0
          i64.const 8
          local.get $9
          select
          i64.shl
          local.get $5
          i32.const 16
          i32.shl
          local.get $4
          i32.or
          i64.extend_i32_u
          local.get $15
          i64.const 12
          i64.shr_u
          i32.wrap_i64
          i32.const 255
          i32.and
          i32.const 16
          i32.shl
          local.get $3
          i32.or
          i64.extend_i32_u
          i64.const 32
          i64.shl
          i64.or
          i64.const 8
          i64.const 0
          local.get $9
          select
          i64.shl
          i64.or
          local.tee $14
          i64.const 17
          i64.shl
          i64.const 98370
          i64.or
          local.set $1
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
          i32.wrap_i64
          local.tee $3
          i32.const -1
          i32.xor
          local.get $3
          local.get $9
          select
          local.tee $3
          i32.const 1
          i32.shr_u
          i32.const 1431655765
          i32.and
          local.get $3
          i32.const 1431655765
          i32.and
          i32.const 1
          i32.shl
          i32.or
          local.tee $3
          i32.const 2
          i32.shr_u
          i32.const 858993459
          i32.and
          local.get $3
          i32.const 858993459
          i32.and
          i32.const 2
          i32.shl
          i32.or
          local.tee $3
          i32.const 4
          i32.shr_u
          i32.const 252645135
          i32.and
          local.get $3
          i32.const 252645135
          i32.and
          i32.const 4
          i32.shl
          i32.or
          local.tee $3
          i32.const 8
          i32.shr_u
          i32.const 16711935
          i32.and
          local.get $3
          i32.const 16711935
          i32.and
          i32.const 8
          i32.shl
          i32.or
          i32.const 16
          i32.rotr
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get $14
          i64.const 47
          i64.shr_u
          i64.or
          br $break|1
         end
         local.get $16
         i64.const 30
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         local.get $16
         i64.const 46
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i32.const 16
         i32.shl
         i32.or
         i64.extend_i32_u
         local.get $16
         i64.const 38
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         local.get $16
         i64.const 54
         i64.shr_u
         i32.wrap_i64
         i32.const 255
         i32.and
         i32.const 16
         i32.shl
         i32.or
         i64.extend_i32_u
         i64.const 8
         i64.shl
         i64.or
         i64.const 17
         i64.shl
         i64.const 33346
         i64.or
         local.set $1
         local.get $16
         i64.const 62
         i64.shr_u
         i64.const 3
         i64.and
         local.get $15
         i64.const 3
         i64.shl
         i64.const -16
         i64.and
         local.get $15
         i64.const 2
         i64.shl
         i64.const 4
         i64.and
         i64.or
         i64.or
         local.tee $14
         i64.const 1
         i64.shr_u
         i64.const 6148914691236517205
         i64.and
         local.get $14
         i64.const 6148914691236517205
         i64.and
         i64.const 1
         i64.shl
         i64.or
         local.tee $14
         i64.const 2
         i64.shr_u
         i64.const 3689348814741910323
         i64.and
         local.get $14
         i64.const 3689348814741910323
         i64.and
         i64.const 2
         i64.shl
         i64.or
         local.tee $14
         i64.const 4
         i64.shr_u
         i64.const 1085102592571150095
         i64.and
         local.get $14
         i64.const 1085102592571150095
         i64.and
         i64.const 4
         i64.shl
         i64.or
         local.tee $14
         i64.const 8
         i64.shr_u
         i64.const 71777214294589695
         i64.and
         local.get $14
         i64.const 71777214294589695
         i64.and
         i64.const 8
         i64.shl
         i64.or
         local.tee $14
         i64.const 16
         i64.shr_u
         i64.const 281470681808895
         i64.and
         local.get $14
         i64.const 281470681808895
         i64.and
         i64.const 16
         i64.shl
         i64.or
         i64.const 32
         i64.rotr
         br $break|1
        end
        local.get $16
        i64.const 29
        i64.shr_u
        i32.wrap_i64
        i32.const 31
        i32.and
        local.tee $3
        i32.const 29
        i32.gt_u
        if
         i64.const -516
         local.set $1
         i64.const -4294901761
         br $break|1
        end
        local.get $3
        i32.const 1
        i32.shl
        i32.load16_u offset=448
        i32.const 13
        i32.shl
        i64.extend_i32_u
        local.get $16
        i64.const 34
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.get $16
        i64.const 50
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        i32.const 16
        i32.shl
        i32.or
        i64.extend_i32_u
        local.get $15
        i64.const 2
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.get $15
        i64.const 18
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        i32.const 16
        i32.shl
        i32.or
        i64.extend_i32_u
        i64.const 32
        i64.shl
        i64.or
        local.get $16
        i64.const 42
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.get $16
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
        i32.const 16
        i32.shl
        i32.or
        i64.extend_i32_u
        local.get $15
        i64.const 10
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        local.get $15
        i64.const 26
        i64.shr_u
        i32.wrap_i64
        i32.const 255
        i32.and
        i32.const 16
        i32.shl
        i32.or
        i64.extend_i32_u
        i64.const 32
        i64.shl
        i64.or
        i64.const 8
        i64.shl
        i64.or
        local.tee $14
        i64.const 29
        i64.shl
        i64.or
        i64.const 134219842
        i64.or
        local.set $1
        local.get $15
        i64.const 34
        i64.shr_u
        i64.const 1
        i64.and
        i32.const -1
        i64.const 5651576228422017
        i64.const -4286381023083155150
        local.get $3
        i32.const 15
        i32.gt_u
        select
        local.get $3
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
        local.get $15
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
        local.get $15
        i64.const 33
        i64.shr_u
        i64.and
        i64.or
        i64.or
        i32.wrap_i64
        local.tee $3
        i32.const 1
        i32.shr_u
        i32.const 1431655765
        i32.and
        local.get $3
        i32.const 1431655765
        i32.and
        i32.const 1
        i32.shl
        i32.or
        local.tee $3
        i32.const 2
        i32.shr_u
        i32.const 858993459
        i32.and
        local.get $3
        i32.const 858993459
        i32.and
        i32.const 2
        i32.shl
        i32.or
        local.tee $3
        i32.const 4
        i32.shr_u
        i32.const 252645135
        i32.and
        local.get $3
        i32.const 252645135
        i32.and
        i32.const 4
        i32.shl
        i32.or
        local.tee $3
        i32.const 8
        i32.shr_u
        i32.const 16711935
        i32.and
        local.get $3
        i32.const 16711935
        i32.and
        i32.const 8
        i32.shl
        i32.or
        i32.const 16
        i32.rotr
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.get $14
        i64.const 35
        i64.shr_u
        i64.or
        br $break|1
       end
       local.get $16
       i64.const 29
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       local.get $16
       i64.const 45
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i32.const 16
       i32.shl
       i32.or
       i64.extend_i32_u
       local.get $16
       i64.const 37
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       local.get $16
       i64.const 53
       i64.shr_u
       i32.wrap_i64
       i32.const 255
       i32.and
       i32.const 16
       i32.shl
       i32.or
       i64.extend_i32_u
       i64.const 8
       i64.shl
       i64.or
       i64.const 17
       i64.shl
       i64.const -4611686018427354046
       i64.or
       local.set $1
       local.get $16
       i64.const 61
       i64.shr_u
       i64.const 1
       i64.and
       local.get $16
       i64.const 60
       i64.shr_u
       i64.const 4
       i64.and
       local.get $16
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
       local.tee $14
       i64.const 1
       i64.shr_u
       i64.const 6148914691236517205
       i64.and
       local.get $14
       i64.const 6148914691236517205
       i64.and
       i64.const 1
       i64.shl
       i64.or
       local.tee $14
       i64.const 2
       i64.shr_u
       i64.const 3689348814741910323
       i64.and
       local.get $14
       i64.const 3689348814741910323
       i64.and
       i64.const 2
       i64.shl
       i64.or
       local.tee $14
       i64.const 4
       i64.shr_u
       i64.const 1085102592571150095
       i64.and
       local.get $14
       i64.const 1085102592571150095
       i64.and
       i64.const 4
       i64.shl
       i64.or
       local.tee $14
       i64.const 8
       i64.shr_u
       i64.const 71777214294589695
       i64.and
       local.get $14
       i64.const 71777214294589695
       i64.and
       i64.const 8
       i64.shl
       i64.or
       local.tee $14
       i64.const 16
       i64.shr_u
       i64.const 281470681808895
       i64.and
       local.get $14
       i64.const 281470681808895
       i64.and
       i64.const 16
       i64.shl
       i64.or
       i64.const 32
       i64.rotr
       br $break|1
      end
      local.get $16
      i64.const 49
      i64.shr_u
      i64.const 15
      i64.and
      local.get $16
      i64.const 48
      i64.shr_u
      i64.const 65504
      i64.and
      local.get $15
      i64.const 16
      i64.shl
      i64.or
      i64.or
      local.tee $1
      i64.const -1
      i64.xor
      local.get $1
      local.get $16
      i64.const 39
      i64.shr_u
      i32.wrap_i64
      i32.const 31
      i32.and
      local.tee $3
      local.get $16
      i64.const 19
      i64.shr_u
      i32.wrap_i64
      i32.const 31
      i32.and
      local.tee $4
      local.get $16
      i64.const 29
      i64.shr_u
      i32.wrap_i64
      i32.const 31
      i32.and
      local.tee $5
      i32.add
      i32.add
      i32.const 3
      i32.shl
      local.get $4
      i32.const 2
      i32.shr_u
      i32.add
      local.get $5
      i32.const 2
      i32.shr_u
      i32.add
      local.get $3
      i32.const 2
      i32.shr_u
      i32.add
      local.get $16
      i64.const 44
      i64.shr_u
      i32.wrap_i64
      i32.const 31
      i32.and
      local.tee $6
      local.get $16
      i64.const 24
      i64.shr_u
      i32.wrap_i64
      i32.const 31
      i32.and
      local.tee $7
      local.get $16
      i64.const 34
      i64.shr_u
      i32.wrap_i64
      i32.const 31
      i32.and
      local.tee $8
      i32.add
      i32.add
      i32.const 3
      i32.shl
      local.get $7
      i32.const 2
      i32.shr_u
      i32.add
      local.get $8
      i32.const 2
      i32.shr_u
      i32.add
      local.get $6
      i32.const 2
      i32.shr_u
      i32.add
      i32.gt_u
      local.tee $9
      select
      local.tee $1
      i64.const 1
      i64.shr_u
      i64.const 6148914691236517205
      i64.and
      local.get $1
      i64.const 6148914691236517205
      i64.and
      i64.const 1
      i64.shl
      i64.or
      local.tee $1
      i64.const 2
      i64.shr_u
      i64.const 3689348814741910323
      i64.and
      local.get $1
      i64.const 3689348814741910323
      i64.and
      i64.const 2
      i64.shl
      i64.or
      local.tee $1
      i64.const 4
      i64.shr_u
      i64.const 1085102592571150095
      i64.and
      local.get $1
      i64.const 1085102592571150095
      i64.and
      i64.const 4
      i64.shl
      i64.or
      local.tee $1
      i64.const 8
      i64.shr_u
      i64.const 71777214294589695
      i64.and
      local.get $1
      i64.const 71777214294589695
      i64.and
      i64.const 8
      i64.shl
      i64.or
      local.set $14
      local.get $15
      i64.const 48
      i64.shr_u
      i32.wrap_i64
      local.tee $10
      i32.const -1
      i32.xor
      i32.const 65535
      i32.and
      local.get $10
      local.get $9
      select
      local.tee $10
      i32.const 1
      i32.shr_u
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
      i32.shr_u
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
      i32.shr_u
      i32.const 3855
      i32.and
      local.get $10
      i32.const 3855
      i32.and
      i32.const 4
      i32.shl
      i32.or
      local.tee $10
      i32.const 255
      i32.and
      i32.const 8
      i32.shl
      local.get $10
      i32.const 8
      i32.shr_u
      i32.or
      i64.extend_i32_u
      i64.const 48
      i64.shl
      local.get $6
      i32.const 20
      i32.shl
      local.get $8
      i32.const 10
      i32.shl
      i32.or
      local.get $7
      i32.or
      i32.const 0
      i32.const 5
      local.get $9
      select
      i32.shl
      local.get $3
      i32.const 20
      i32.shl
      local.get $5
      i32.const 10
      i32.shl
      i32.or
      local.get $4
      i32.or
      i32.const 5
      i32.const 0
      local.get $9
      select
      i32.shl
      i32.or
      i64.extend_i32_u
      i64.const 17
      i64.shl
      i64.or
      i64.const 66131
      i64.or
      local.set $1
      local.get $14
      i64.const 16
      i64.shr_u
      i64.const 281470681808895
      i64.and
      local.get $14
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
     local.set $1
     i64.const -4294901761
    end
    local.set $14
    local.get $0
    local.get $1
    i64.store
    local.get $0
    local.get $14
    i64.store offset=8
    local.get $0
    i32.const 16
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 0
 )
 (func $~start
  call $start:assembly/uastc/astc
 )
)
