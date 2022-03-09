{-# LANGUAGE OverloadedStrings #-}

module Experiment.Medium
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

kDo, kOn, kOr, kAnd, kAsm, kCls, kEnd, kFor, kOff, kXor :: B8.ByteString
kDo  = "DO"
kOn  = "ON"
kOr  = "OR"
kAnd = "AND"
kAsm = "ASM"
kCls = "CLS"
kEnd = "END"
kFor = "FOR"
kOff = "OFF"
kXor = "XOR"

kElse, kFast, kFull, kGoto, kInit, kLoop, kMode, kNone :: B8.ByteString
kElse = "ELSE"
kFast = "FAST"
kFull = "FULL"
kGoto = "GOTO"
kInit = "INIT"
kLoop = "LOOP"
kMode = "MODE"
kNone = "NONE"

kStop, kWait, kWend, kDoSp, kIfSp, kOnSp, kEndIf, kGosub :: B8.ByteString
kStop  = "STOP"
kWait  = "WAIT"
kWend  = "WEND"
kDoSp  = "DO "
kIfSp  = "IF "
kOnSp  = "ON "
kEndIf = "END IF"
kGosub = "GOSUB"

kPrint, kSound, kUntil, kWhile, kDimSp, kForSp, kNotSp :: B8.ByteString
kPrint = "PRINT"
kSound = "SOUND"
kUntil = "UNTIL"
kWhile = "WHILE"
kDimSp = "DIM "
kForSp = "FOR "
kNotSp = "NOT "

kUsrSp, kBorder, kDefine, kEnable, kNormal, kPacked, kRepeat :: B8.ByteString
kUsrSp  = "USR "
kBorder = "BORDER"
kDefine = "DEFINE"
kEnable = "ENABLE"
kNormal = "NORMAL"
kPacked = "PACKED"
kRepeat = "REPEAT"

kReturn, kScroll, kSimple, kSprite, kSpThen, kCallSp :: B8.ByteString
kReturn = "RETURN"
kScroll = "SCROLL"
kSimple = "SIMPLE"
kSprite = "SPRITE"
kSpThen = " THEN"
kCallSp = "CALL "

kDataSp, kExitSp, kGotoSp, kJumpSp, kLoopSp, kNextSp :: B8.ByteString
kDataSp = "DATA "
kExitSp = "EXIT "
kGotoSp = "GOTO "
kJumpSp = "JUMP "
kLoopSp = "LOOP "
kNextSp = "NEXT "

kPlaySp, kPokeSp, kReadSp, kSpAtSp, kSpToSp, kSpEqSp :: B8.ByteString
kPlaySp = "PLAY "
kPokeSp = "POKE "
kReadSp = "READ "
kSpAtSp = " AT "
kSpToSp = " TO "
kSpEqSp = " = "

kQuotSp, kLessEq, kMirrorX, kNoDrums, kDisable, kInverse :: B8.ByteString
kQuotSp  = "' "
kLessEq  = "<="
kMirrorX = "MIRROR_X"
kNoDrums = "NO DRUMS"
kDisable = "DISABLE"
kInverse = "INVERSE"

kConstSp, kEraseSp, kFlashSp, kGosubSp, kMusicSp, kSpeedSp :: B8.ByteString
kConstSp = "CONST "
kEraseSp = "ERASE "
kFlashSp = "FLASH "
kGosubSp = "GOSUB "
kMusicSp = "MUSIC "
kSpeedSp = "SPEED "

kVoiceSp, kWhileSp, kWriteSp, kPlusDot, kCommaSp, kLessDot :: B8.ByteString
kVoiceSp = "VOICE "
kWhileSp = "WHILE "
kWriteSp = "WRITE "
kPlusDot = "+."
kCommaSp = ", "
kLessDot = "<."

kExplicit, kWarnings, kBitmapSp, kElseifSp, kNumberSp :: B8.ByteString
kExplicit = "EXPLICIT"
kWarnings = "WARNINGS"
kBitmapSp = "BITMAP "
kElseifSp = "ELSEIF "
kNumberSp = "NUMBER "

kOptionSp, kScreenSp, kSignedSp, kVarptrSp, kVolumeSp :: B8.ByteString
kOptionSp = "OPTION "
kScreenSp = "SCREEN "
kSignedSp = "SIGNED "
kVarptrSp = "VARPTR "
kVolumeSp = "VOLUME "

kSpQuotSp, kMinusDot, kAlternate, kProcedure, kRestoreSp :: B8.ByteString
kSpQuotSp  = " ' "
kMinusDot  = "-."
kAlternate = "ALTERNATE"
kProcedure = "PROCEDURE"
kRestoreSp = "RESTORE "

kSpColorSp, kGreaterEq, kStackCheck, kInitSizeSp :: B8.ByteString
kSpColorSp  = " COLOR "
kGreaterEq  = ">="
kStackCheck = "STACK_CHECK"
kInitSizeSp = "INIT SIZE "

kUnsignedSp, kLessGreater, kQuotSpDefFnSp, kOnFrameGosubSp :: B8.ByteString
kUnsignedSp     = "UNSIGNED "
kLessGreater    = "<>"
kQuotSpDefFnSp  = "' DEF FN "
kOnFrameGosubSp = "ON FRAME GOSUB "

kCommaSpVarptrSp, kSpEqSpDotDotDot :: B8.ByteString
kCommaSpVarptrSp = ", VARPTR "
kSpEqSpDotDotDot = " = ..."
