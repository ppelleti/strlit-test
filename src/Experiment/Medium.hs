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

import Data.ByteString.Builder (Builder)
import qualified Data.ByteString.Builder as BB
import qualified Data.ByteString.Char8   as B8

kDo, kOn, kOr, kAnd, kAsm, kCls, kEnd, kFor, kOff, kXor, kElse :: Builder
kDo   = BB.byteString "DO"
kOn   = BB.byteString "ON"
kOr   = BB.byteString "OR"
kAnd  = BB.byteString "AND"
kAsm  = BB.byteString "ASM"
kCls  = BB.byteString "CLS"
kEnd  = BB.byteString "END"
kFor  = BB.byteString "FOR"
kOff  = BB.byteString "OFF"
kXor  = BB.byteString "XOR"
kElse = BB.byteString "ELSE"

kFast, kFull, kGoto, kInit, kLoop, kMode, kNone, kStop, kWait :: Builder
kFast = BB.byteString "FAST"
kFull = BB.byteString "FULL"
kGoto = BB.byteString "GOTO"
kInit = BB.byteString "INIT"
kLoop = BB.byteString "LOOP"
kMode = BB.byteString "MODE"
kNone = BB.byteString "NONE"
kStop = BB.byteString "STOP"
kWait = BB.byteString "WAIT"

kWend, kDoSp, kIfSp, kOnSp, kEndIf, kGosub, kPrint, kSound, kUntil :: Builder
kWend  = BB.byteString "WEND"
kDoSp  = BB.byteString "DO "
kIfSp  = BB.byteString "IF "
kOnSp  = BB.byteString "ON "
kEndIf = BB.byteString "END IF"
kGosub = BB.byteString "GOSUB"
kPrint = BB.byteString "PRINT"
kSound = BB.byteString "SOUND"
kUntil = BB.byteString "UNTIL"

kWhile, kDimSp, kForSp, kNotSp, kUsrSp, kBorder, kDefine, kEnable :: Builder
kWhile  = BB.byteString "WHILE"
kDimSp  = BB.byteString "DIM "
kForSp  = BB.byteString "FOR "
kNotSp  = BB.byteString "NOT "
kUsrSp  = BB.byteString "USR "
kBorder = BB.byteString "BORDER"
kDefine = BB.byteString "DEFINE"
kEnable = BB.byteString "ENABLE"

kNormal, kPacked, kRepeat, kReturn, kScroll, kSimple, kSprite :: Builder
kNormal = BB.byteString "NORMAL"
kPacked = BB.byteString "PACKED"
kRepeat = BB.byteString "REPEAT"
kReturn = BB.byteString "RETURN"
kScroll = BB.byteString "SCROLL"
kSimple = BB.byteString "SIMPLE"
kSprite = BB.byteString "SPRITE"

kSpThen, kCallSp, kDataSp, kExitSp, kGotoSp, kJumpSp, kLoopSp :: Builder
kSpThen = BB.byteString " THEN"
kCallSp = BB.byteString "CALL "
kDataSp = BB.byteString "DATA "
kExitSp = BB.byteString "EXIT "
kGotoSp = BB.byteString "GOTO "
kJumpSp = BB.byteString "JUMP "
kLoopSp = BB.byteString "LOOP "

kNextSp, kPlaySp, kPokeSp, kReadSp, kSpAtSp, kSpToSp, kSpEqSp :: Builder
kNextSp = BB.byteString "NEXT "
kPlaySp = BB.byteString "PLAY "
kPokeSp = BB.byteString "POKE "
kReadSp = BB.byteString "READ "
kSpAtSp = BB.byteString " AT "
kSpToSp = BB.byteString " TO "
kSpEqSp = BB.byteString " = "

kQuotSp, kLessEq, kMirrorX, kNoDrums, kDisable, kInverse, kConstSp :: Builder
kQuotSp  = BB.byteString "' "
kLessEq  = BB.byteString "<="
kMirrorX = BB.byteString "MIRROR_X"
kNoDrums = BB.byteString "NO DRUMS"
kDisable = BB.byteString "DISABLE"
kInverse = BB.byteString "INVERSE"
kConstSp = BB.byteString "CONST "

kEraseSp, kFlashSp, kGosubSp, kMusicSp, kSpeedSp, kVoiceSp :: Builder
kEraseSp = BB.byteString "ERASE "
kFlashSp = BB.byteString "FLASH "
kGosubSp = BB.byteString "GOSUB "
kMusicSp = BB.byteString "MUSIC "
kSpeedSp = BB.byteString "SPEED "
kVoiceSp = BB.byteString "VOICE "

kWhileSp, kWriteSp, kPlusDot, kCommaSp, kLessDot, kExplicit :: Builder
kWhileSp  = BB.byteString "WHILE "
kWriteSp  = BB.byteString "WRITE "
kPlusDot  = BB.byteString "+."
kCommaSp  = BB.byteString ", "
kLessDot  = BB.byteString "<."
kExplicit = BB.byteString "EXPLICIT"

kWarnings, kBitmapSp, kElseifSp, kNumberSp, kOptionSp, kScreenSp :: Builder
kWarnings = BB.byteString "WARNINGS"
kBitmapSp = BB.byteString "BITMAP "
kElseifSp = BB.byteString "ELSEIF "
kNumberSp = BB.byteString "NUMBER "
kOptionSp = BB.byteString "OPTION "
kScreenSp = BB.byteString "SCREEN "

kSignedSp, kVarptrSp, kVolumeSp, kSpQuotSp, kMinusDot, kAlternate :: Builder
kSignedSp  = BB.byteString "SIGNED "
kVarptrSp  = BB.byteString "VARPTR "
kVolumeSp  = BB.byteString "VOLUME "
kSpQuotSp  = BB.byteString " ' "
kMinusDot  = BB.byteString "-."
kAlternate = BB.byteString "ALTERNATE"

kProcedure, kRestoreSp, kSpColorSp, kGreaterEq, kStackCheck :: Builder
kProcedure  = BB.byteString "PROCEDURE"
kRestoreSp  = BB.byteString "RESTORE "
kSpColorSp  = BB.byteString " COLOR "
kGreaterEq  = BB.byteString ">="
kStackCheck = BB.byteString "STACK_CHECK"

kInitSizeSp, kUnsignedSp, kLessGreater, kQuotSpDefFnSp :: Builder
kInitSizeSp    = BB.byteString "INIT SIZE "
kUnsignedSp    = BB.byteString "UNSIGNED "
kLessGreater   = BB.byteString "<>"
kQuotSpDefFnSp = BB.byteString "' DEF FN "

kOnFrameGosubSp, kCommaSpVarptrSp, kSpEqSpDotDotDot :: Builder
kOnFrameGosubSp  = BB.byteString "ON FRAME GOSUB "
kCommaSpVarptrSp = BB.byteString ", VARPTR "
kSpEqSpDotDotDot = BB.byteString " = ..."
