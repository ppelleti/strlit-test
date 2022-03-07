{-# LANGUAGE OverloadedStrings #-}

module Experiment.Slow
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

import Data.ByteString.Builder (Builder)
import qualified Data.ByteString.Builder as BB
import qualified Data.ByteString.Char8   as B8

kDo, kOn, kOr, kAnd, kAsm, kCls, kEnd, kFor, kOff, kXor, kElse :: Builder
kDo   = "DO"
kOn   = "ON"
kOr   = "OR"
kAnd  = "AND"
kAsm  = "ASM"
kCls  = "CLS"
kEnd  = "END"
kFor  = "FOR"
kOff  = "OFF"
kXor  = "XOR"
kElse = "ELSE"

kFast, kFull, kGoto, kInit, kLoop, kMode, kNone, kStop, kWait :: Builder
kFast = "FAST"
kFull = "FULL"
kGoto = "GOTO"
kInit = "INIT"
kLoop = "LOOP"
kMode = "MODE"
kNone = "NONE"
kStop = "STOP"
kWait = "WAIT"

kWend, kDoSp, kIfSp, kOnSp, kEndIf, kGosub, kPrint, kSound, kUntil :: Builder
kWend  = "WEND"
kDoSp  = "DO "
kIfSp  = "IF "
kOnSp  = "ON "
kEndIf = "END IF"
kGosub = "GOSUB"
kPrint = "PRINT"
kSound = "SOUND"
kUntil = "UNTIL"

kWhile, kDimSp, kForSp, kNotSp, kUsrSp, kBorder, kDefine, kEnable :: Builder
kWhile  = "WHILE"
kDimSp  = "DIM "
kForSp  = "FOR "
kNotSp  = "NOT "
kUsrSp  = "USR "
kBorder = "BORDER"
kDefine = "DEFINE"
kEnable = "ENABLE"

kNormal, kPacked, kRepeat, kReturn, kScroll, kSimple, kSprite :: Builder
kNormal = "NORMAL"
kPacked = "PACKED"
kRepeat = "REPEAT"
kReturn = "RETURN"
kScroll = "SCROLL"
kSimple = "SIMPLE"
kSprite = "SPRITE"

kSpThen, kCallSp, kDataSp, kExitSp, kGotoSp, kJumpSp, kLoopSp :: Builder
kSpThen = " THEN"
kCallSp = "CALL "
kDataSp = "DATA "
kExitSp = "EXIT "
kGotoSp = "GOTO "
kJumpSp = "JUMP "
kLoopSp = "LOOP "

kNextSp, kPlaySp, kPokeSp, kReadSp, kSpAtSp, kSpToSp, kSpEqSp :: Builder
kNextSp = "NEXT "
kPlaySp = "PLAY "
kPokeSp = "POKE "
kReadSp = "READ "
kSpAtSp = " AT "
kSpToSp = " TO "
kSpEqSp = " = "

kQuotSp, kLessEq, kMirrorX, kNoDrums, kDisable, kInverse, kConstSp :: Builder
kQuotSp  = "' "
kLessEq  = "<="
kMirrorX = "MIRROR_X"
kNoDrums = "NO DRUMS"
kDisable = "DISABLE"
kInverse = "INVERSE"
kConstSp = "CONST "

kEraseSp, kFlashSp, kGosubSp, kMusicSp, kSpeedSp, kVoiceSp :: Builder
kEraseSp = "ERASE "
kFlashSp = "FLASH "
kGosubSp = "GOSUB "
kMusicSp = "MUSIC "
kSpeedSp = "SPEED "
kVoiceSp = "VOICE "

kWhileSp, kWriteSp, kPlusDot, kCommaSp, kLessDot, kExplicit :: Builder
kWhileSp  = "WHILE "
kWriteSp  = "WRITE "
kPlusDot  = "+."
kCommaSp  = ", "
kLessDot  = "<."
kExplicit = "EXPLICIT"

kWarnings, kBitmapSp, kElseifSp, kNumberSp, kOptionSp, kScreenSp :: Builder
kWarnings = "WARNINGS"
kBitmapSp = "BITMAP "
kElseifSp = "ELSEIF "
kNumberSp = "NUMBER "
kOptionSp = "OPTION "
kScreenSp = "SCREEN "

kSignedSp, kVarptrSp, kVolumeSp, kSpQuotSp, kMinusDot, kAlternate :: Builder
kSignedSp  = "SIGNED "
kVarptrSp  = "VARPTR "
kVolumeSp  = "VOLUME "
kSpQuotSp  = " ' "
kMinusDot  = "-."
kAlternate = "ALTERNATE"

kProcedure, kRestoreSp, kSpColorSp, kGreaterEq, kStackCheck :: Builder
kProcedure  = "PROCEDURE"
kRestoreSp  = "RESTORE "
kSpColorSp  = " COLOR "
kGreaterEq  = ">="
kStackCheck = "STACK_CHECK"

kInitSizeSp, kUnsignedSp, kLessGreater, kQuotSpDefFnSp :: Builder
kInitSizeSp    = "INIT SIZE "
kUnsignedSp    = "UNSIGNED "
kLessGreater   = "<>"
kQuotSpDefFnSp = "' DEF FN "

kOnFrameGosubSp, kCommaSpVarptrSp, kSpEqSpDotDotDot :: Builder
kOnFrameGosubSp  = "ON FRAME GOSUB "
kCommaSpVarptrSp = ", VARPTR "
kSpEqSpDotDotDot = " = ..."
