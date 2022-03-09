{-# LANGUAGE OverloadedStrings #-}

module Experiment.Fast
  ( kSpQuotSp
  , kSpEqSp
  , kSpEqSpDotDotDot
  , kSpAtSp
  , kSpColorSp
  , kSpThen
  , kSpToSp
  , kQuotSp
  , kQuotSpDefFnSp
  , kPlusDot
  , kCommaSp
  , kCommaSpVarptrSp
  , kMinusDot
  , kLessDot
  , kLessEq
  , kLessGreater
  , kGreaterEq
  , kAlternate
  , kAnd
  , kAsm
  , kBitmapSp
  , kBorder
  , kCallSp
  , kCls
  , kConstSp
  , kDataSp
  , kDefine
  , kDimSp
  , kDisable
  , kDo
  , kDoSp
  , kElse
  , kElseifSp
  , kEnable
  , kEnd
  , kEndIf
  , kEraseSp
  , kExitSp
  , kExplicit
  , kFast
  , kFlashSp
  , kFor
  , kForSp
  , kFull
  , kGosub
  , kGosubSp
  , kGoto
  , kGotoSp
  , kIfSp
  , kInit
  , kInitSizeSp
  , kInverse
  , kJumpSp
  , kLoop
  , kLoopSp
  , kMirrorX
  , kMode
  , kMusicSp
  , kNextSp
  , kNoDrums
  , kNone
  , kNormal
  , kNotSp
  , kNumberSp
  , kOff
  , kOn
  , kOnSp
  , kOnFrameGosubSp
  , kOptionSp
  , kOr
  , kPacked
  , kPlaySp
  , kPokeSp
  , kPrint
  , kProcedure
  , kReadSp
  , kRepeat
  , kRestoreSp
  , kReturn
  , kScreenSp
  , kScroll
  , kSignedSp
  , kSimple
  , kSound
  , kSpeedSp
  , kSprite
  , kStackCheck
  , kStop
  , kUnsignedSp
  , kUntil
  , kUsrSp
  , kVarptrSp
  , kVoiceSp
  , kVolumeSp
  , kWait
  , kWarnings
  , kWend
  , kWhile
  , kWhileSp
  , kWriteSp
  , kXor
  ) where

import qualified Data.ByteString.Char8   as B8

mkKw :: Int -> B8.ByteString
mkKw n =
  let (len, idx) = n `quotRem` 0x1000
  in B8.take len $ B8.drop idx keywords

keywords :: B8.ByteString
keywords = "ON FRAME GOSUB STACK_CHECKINIT SIZE ' DEF FN , VARPTR ALTERNATEPROCEDUREUNSIGNED EXPLICITMIRROR_XNO DRUMSRESTORE WARNINGS COLOR BITMAP DISABLELSEIF INVERSENUMBER OPTION SCREEN VOLUME = ...BORDERCONST DEFINENABLEND IFERASE FLASH MUSIC NORMALPACKEDREPEATRETURNSCROLLSIMPLESPEED SPRITEVOICE WHILE WRITE THENCALL DATA EXIT GOTO JUMP LOOP NEXT PLAY POKE PRINTREAD SOUNDUNTIL AT TO DIM FASTFOR FULLMODENONENOT STOPUSR WAITWENDANDASMCLSDO OFFXOR+.-.<.<=<>="

kDo, kOn, kOr, kAnd, kAsm, kCls, kEnd, kFor, kOff, kXor :: B8.ByteString
kDo  = mkKw 0x21ad
kOn  = mkKw 0x2000
kOr  = mkKw 0x205d
kAnd = mkKw 0x31a4
kAsm = mkKw 0x31a7
kCls = mkKw 0x31aa
kEnd = mkKw 0x30d2
kFor = mkKw 0x3180
kOff = mkKw 0x31b0
kXor = mkKw 0x31b3

kElse, kFast, kFull, kGoto, kInit, kLoop, kMode, kNone :: B8.ByteString
kElse = mkKw 0x408d
kFast = mkKw 0x417c
kFull = mkKw 0x4184
kGoto = mkKw 0x413f
kInit = mkKw 0x401a
kLoop = mkKw 0x4149
kMode = mkKw 0x4188
kNone = mkKw 0x418c

kStop, kWait, kWend, kDoSp, kIfSp, kOnSp, kEndIf, kGosub :: B8.ByteString
kStop  = mkKw 0x4194
kWait  = mkKw 0x419c
kWend  = mkKw 0x41a0
kDoSp  = mkKw 0x31ad
kIfSp  = mkKw 0x3091
kOnSp  = mkKw 0x3000
kEndIf = mkKw 0x60d2
kGosub = mkKw 0x5009

kPrint, kSound, kUntil, kWhile, kDimSp, kForSp, kNotSp :: B8.ByteString
kPrint = mkKw 0x515d
kSound = mkKw 0x5167
kUntil = mkKw 0x516c
kWhile = mkKw 0x5120
kDimSp = mkKw 0x4178
kForSp = mkKw 0x4180
kNotSp = mkKw 0x4190

kUsrSp, kBorder, kDefine, kEnable, kNormal, kPacked, kRepeat :: B8.ByteString
kUsrSp  = mkKw 0x4198
kBorder = mkKw 0x60bc
kDefine = mkKw 0x60c8
kEnable = mkKw 0x60cd
kNormal = mkKw 0x60ea
kPacked = mkKw 0x60f0
kRepeat = mkKw 0x60f6

kReturn, kScroll, kSimple, kSprite, kSpThen, kCallSp :: B8.ByteString
kReturn = mkKw 0x60fc
kScroll = mkKw 0x6102
kSimple = mkKw 0x6108
kSprite = mkKw 0x6114
kSpThen = mkKw 0x512b
kCallSp = mkKw 0x5130

kDataSp, kExitSp, kGotoSp, kJumpSp, kLoopSp, kNextSp :: B8.ByteString
kDataSp = mkKw 0x5135
kExitSp = mkKw 0x513a
kGotoSp = mkKw 0x513f
kJumpSp = mkKw 0x5144
kLoopSp = mkKw 0x5149
kNextSp = mkKw 0x514e

kPlaySp, kPokeSp, kReadSp, kSpAtSp, kSpToSp, kSpEqSp :: B8.ByteString
kPlaySp = mkKw 0x5153
kPokeSp = mkKw 0x5158
kReadSp = mkKw 0x5162
kSpAtSp = mkKw 0x4171
kSpToSp = mkKw 0x4174
kSpEqSp = mkKw 0x30b6

kQuotSp, kLessEq, kMirrorX, kNoDrums, kDisable, kInverse :: B8.ByteString
kQuotSp  = mkKw 0x2024
kLessEq  = mkKw 0x21bc
kMirrorX = mkKw 0x8059
kNoDrums = mkKw 0x8061
kDisable = mkKw 0x7087
kInverse = mkKw 0x7094

kConstSp, kEraseSp, kFlashSp, kGosubSp, kMusicSp, kSpeedSp :: B8.ByteString
kConstSp = mkKw 0x60c2
kEraseSp = mkKw 0x60d8
kFlashSp = mkKw 0x60de
kGosubSp = mkKw 0x6009
kMusicSp = mkKw 0x60e4
kSpeedSp = mkKw 0x610e

kVoiceSp, kWhileSp, kWriteSp, kPlusDot, kCommaSp, kLessDot :: B8.ByteString
kVoiceSp = mkKw 0x611a
kWhileSp = mkKw 0x6120
kWriteSp = mkKw 0x6126
kPlusDot = mkKw 0x21b6
kCommaSp = mkKw 0x202d
kLessDot = mkKw 0x21ba

kExplicit, kWarnings, kBitmapSp, kElseifSp, kNumberSp :: B8.ByteString
kExplicit = mkKw 0x8051
kWarnings = mkKw 0x8071
kBitmapSp = mkKw 0x7080
kElseifSp = mkKw 0x708d
kNumberSp = mkKw 0x709b

kOptionSp, kScreenSp, kSignedSp, kVarptrSp, kVolumeSp :: B8.ByteString
kOptionSp = mkKw 0x70a2
kScreenSp = mkKw 0x70a9
kSignedSp = mkKw 0x704a
kVarptrSp = mkKw 0x702f
kVolumeSp = mkKw 0x70b0

kSpQuotSp, kMinusDot, kAlternate, kProcedure, kRestoreSp :: B8.ByteString
kSpQuotSp  = mkKw 0x3023
kMinusDot  = mkKw 0x21b8
kAlternate = mkKw 0x9036
kProcedure = mkKw 0x903f
kRestoreSp = mkKw 0x8069

kSpColorSp, kGreaterEq, kStackCheck, kInitSizeSp :: B8.ByteString
kSpColorSp  = mkKw 0x7079
kGreaterEq  = mkKw 0x21bf
kStackCheck = mkKw 0xb00f
kInitSizeSp = mkKw 0xa01a

kUnsignedSp, kLessGreater, kQuotSpDefFnSp, kOnFrameGosubSp :: B8.ByteString
kUnsignedSp     = mkKw 0x9048
kLessGreater    = mkKw 0x21be
kQuotSpDefFnSp  = mkKw 0x9024
kOnFrameGosubSp = mkKw 0xf000

kCommaSpVarptrSp, kSpEqSpDotDotDot :: B8.ByteString
kCommaSpVarptrSp = mkKw 0x902d
kSpEqSpDotDotDot = mkKw 0x60b6
