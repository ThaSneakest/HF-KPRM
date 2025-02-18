#RequireAdmin
Local Const $0 = "KpRm"
Local Const $1 = 183
Local Const $2 = 5
If ( _0 ( ) ) Then
	If @OSLang = "040C" Then
		MsgBox ( "" , "" , $0 & " déjà lancé" )
		Exit
	Else
		MsgBox ( "" , "" , $0 & " Already Running !" )
		Exit
	EndIf
EndIf
Func _0 ( )
	Local $3 = 0
	_YC ( $0 & "_MUTEX" , True , 0 )
	$3 = _1M ( )
	Return $3 == $1 Or $3 == $2
EndFunc
Global Const $4 = + 4294967293
Global Const $5 = + 4294967289
Global Const $6 = 1
Global Const $7 = 4
Global Const $8 = 16
Global Const $9 = 32
Global Const $A = 64
Global Const $B = 128
Global Const $C = 1
Global Const $D = 512
Global Const $E = 4096
Global Const $F = 2
Global Const $G = 1
Global Const $H = 2
Global Const $I = 4
Global Const $J = 1
Global Const $K = 2
Global Const $L = 1
Global Const $M = 262144
Global Const $N = 8388608
Global Const $O = 2147483648
Global Const $P = 512
Global Const $Q = 274
Global Const $R = 4
Global Const $S = 4
Global Const $T = 48
Global Const $U = 64
Global Const $V = 2
Global Const $W = 0
Global Const $X = 1
Global Const $Y = 2
Global Const $0Z = 1
Global Const $10 = 3
Global Const $11 = 268435456
Global Const $12 = 0
Global Const $13 = 1
Global Const $14 = 2
Global Const $15 = 0
Global Const $16 = 4
Global Const $17 = 8
Global Const $18 = 16
Global Const $19 = 0
Global Const $1A = 1
Global Const $1B = 0
Global Const $1C = 1
Global Const $1D = 2
Global Const $1E = 0
Global Const $1F = 1
Global Const $1G = 2
Global Const $1H = 3
Global Const $1I = 4
Global Enum $1J , $1K , $1L , $1M , $1N , $1O , $1P , $1Q
Func _D ( ByRef $1R , $1S , $1T = 0 , $1U = "|" , $1V = @CRLF , $1W = $1J )
	If $1T = Default Then $1T = 0
	If $1U = Default Then $1U = "|"
	If $1V = Default Then $1V = @CRLF
	If $1W = Default Then $1W = $1J
	If Not IsArray ( $1R ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $1X = UBound ( $1R , $X )
	Local $1Y = 0
	Switch $1W
	Case $1L
		$1Y = Int
	Case $1M
		$1Y = Number
	Case $1N
		$1Y = Ptr
	Case $1O
		$1Y = HWnd
	Case $1P
		$1Y = String
	Case $1Q
		$1Y = "Boolean"
	EndSwitch
	Switch UBound ( $1R , $W )
	Case 1
		If $1W = $1K Then
			ReDim $1R [ $1X + 1 ]
			$1R [ $1X ] = $1S
			Return $1X
		EndIf
		If IsArray ( $1S ) Then
			If UBound ( $1S , $W ) <> 1 Then Return SetError ( 5 , 0 , + 4294967295 )
			$1Y = 0
		Else
			Local $1Z = StringSplit ( $1S , $1U , $K + $J )
			If UBound ( $1Z , $X ) = 1 Then
				$1Z [ 0 ] = $1S
			EndIf
			$1S = $1Z
		EndIf
		Local $20 = UBound ( $1S , $X )
		ReDim $1R [ $1X + $20 ]
		For $21 = 0 To $20 + 4294967295
			If String ( $1Y ) = "Boolean" Then
				Switch $1S [ $21 ]
				Case "True" , "1"
					$1R [ $1X + $21 ] = True
				Case "False" , "0" , ""
					$1R [ $1X + $21 ] = False
				EndSwitch
			ElseIf IsFunc ( $1Y ) Then
				$1R [ $1X + $21 ] = $1Y ( $1S [ $21 ] )
			Else
				$1R [ $1X + $21 ] = $1S [ $21 ]
			EndIf
		Next
		Return $1X + $20 + 4294967295
	Case 2
		Local $22 = UBound ( $1R , $Y )
		If $1T < 0 Or $1T > $22 + 4294967295 Then Return SetError ( 4 , 0 , + 4294967295 )
		Local $23 , $24 = 0 , $25
		If IsArray ( $1S ) Then
			If UBound ( $1S , $W ) <> 2 Then Return SetError ( 5 , 0 , + 4294967295 )
			$23 = UBound ( $1S , $X )
			$24 = UBound ( $1S , $Y )
			$1Y = 0
		Else
			Local $26 = StringSplit ( $1S , $1V , $K + $J )
			$23 = UBound ( $26 , $X )
			Local $1Z [ $23 ] [ 0 ] , $27
			For $21 = 0 To $23 + 4294967295
				$27 = StringSplit ( $26 [ $21 ] , $1U , $K + $J )
				$25 = UBound ( $27 )
				If $25 > $24 Then
					$24 = $25
					ReDim $1Z [ $23 ] [ $24 ]
				EndIf
				For $28 = 0 To $25 + 4294967295
					$1Z [ $21 ] [ $28 ] = $27 [ $28 ]
				Next
			Next
			$1S = $1Z
		EndIf
		If UBound ( $1S , $Y ) + $1T > UBound ( $1R , $Y ) Then Return SetError ( 3 , 0 , + 4294967295 )
		ReDim $1R [ $1X + $23 ] [ $22 ]
		For $29 = 0 To $23 + 4294967295
			For $28 = 0 To $22 + 4294967295
				If $28 < $1T Then
					$1R [ $29 + $1X ] [ $28 ] = ""
				ElseIf $28 - $1T > $24 + 4294967295 Then
					$1R [ $29 + $1X ] [ $28 ] = ""
				Else
					If String ( $1Y ) = "Boolean" Then
						Switch $1S [ $29 ] [ $28 - $1T ]
						Case "True" , "1"
							$1R [ $29 + $1X ] [ $28 ] = True
						Case "False" , "0" , ""
							$1R [ $29 + $1X ] [ $28 ] = False
						EndSwitch
					ElseIf IsFunc ( $1Y ) Then
						$1R [ $29 + $1X ] [ $28 ] = $1Y ( $1S [ $29 ] [ $28 - $1T ] )
					Else
						$1R [ $29 + $1X ] [ $28 ] = $1S [ $29 ] [ $28 - $1T ]
					EndIf
				EndIf
			Next
		Next
Case Else
		Return SetError ( 2 , 0 , + 4294967295 )
	EndSwitch
	Return UBound ( $1R , $X ) + 4294967295
EndFunc
Func _I ( ByRef $2A , Const ByRef $2B , $1T = 0 )
	If $1T = Default Then $1T = 0
	If Not IsArray ( $2A ) Then Return SetError ( 1 , 0 , + 4294967295 )
	If Not IsArray ( $2B ) Then Return SetError ( 2 , 0 , + 4294967295 )
	Local $2C = UBound ( $2A , $W )
	Local $2D = UBound ( $2B , $W )
	Local $2E = UBound ( $2A , $X )
	Local $2F = UBound ( $2B , $X )
	If $1T < 0 Or $1T > $2F + 4294967295 Then Return SetError ( 6 , 0 , + 4294967295 )
	Switch $2C
	Case 1
		If $2D <> 1 Then Return SetError ( 4 , 0 , + 4294967295 )
		ReDim $2A [ $2E + $2F - $1T ]
		For $21 = $1T To $2F + 4294967295
			$2A [ $2E + $21 - $1T ] = $2B [ $21 ]
		Next
	Case 2
		If $2D <> 2 Then Return SetError ( 4 , 0 , + 4294967295 )
		Local $2G = UBound ( $2A , $Y )
		If UBound ( $2B , $Y ) <> $2G Then Return SetError ( 5 , 0 , + 4294967295 )
		ReDim $2A [ $2E + $2F - $1T ] [ $2G ]
		For $21 = $1T To $2F + 4294967295
			For $28 = 0 To $2G + 4294967295
				$2A [ $2E + $21 - $1T ] [ $28 ] = $2B [ $21 ] [ $28 ]
			Next
		Next
Case Else
		Return SetError ( 3 , 0 , + 4294967295 )
	EndSwitch
	Return UBound ( $2A , $X )
EndFunc
Func _J ( ByRef $1R , $2H )
	If Not IsArray ( $1R ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $1X = UBound ( $1R , $X ) + 4294967295
	If IsArray ( $2H ) Then
		If UBound ( $2H , $W ) <> 1 Or UBound ( $2H , $X ) < 2 Then Return SetError ( 4 , 0 , + 4294967295 )
	Else
		Local $2I , $26 , $27
		$2H = StringStripWS ( $2H , 8 )
		$26 = StringSplit ( $2H , ";" )
		$2H = ""
		For $21 = 1 To $26 [ 0 ]
			If Not StringRegExp ( $26 [ $21 ] , "^\d+(-\d+)?$" ) Then Return SetError ( 3 , 0 , + 4294967295 )
			$27 = StringSplit ( $26 [ $21 ] , "-" )
			Switch $27 [ 0 ]
			Case 1
				$2H &= $27 [ 1 ] & ";"
			Case 2
				If Number ( $27 [ 2 ] ) >= Number ( $27 [ 1 ] ) Then
					$2I = $27 [ 1 ] + 4294967295
					Do
						$2I += 1
						$2H &= $2I & ";"
					Until $2I = $27 [ 2 ]
				EndIf
			EndSwitch
		Next
		$2H = StringSplit ( StringTrimRight ( $2H , 1 ) , ";" )
	EndIf
	For $21 = 1 To $2H [ 0 ]
		$2H [ $21 ] = Number ( $2H [ $21 ] )
	Next
	If $2H [ 1 ] < 0 Or $2H [ $2H [ 0 ] ] > $1X Then Return SetError ( 5 , 0 , + 4294967295 )
	Local $2J = 0
	Switch UBound ( $1R , $W )
	Case 1
		For $21 = 1 To $2H [ 0 ]
			$1R [ $2H [ $21 ] ] = ChrW ( 64177 )
		Next
		For $2K = 0 To $1X
			If $1R [ $2K ] == ChrW ( 64177 ) Then
				ContinueLoop
			Else
				If $2K <> $2J Then
					$1R [ $2J ] = $1R [ $2K ]
				EndIf
				$2J += 1
			EndIf
		Next
		ReDim $1R [ $1X - $2H [ 0 ] + 1 ]
	Case 2
		Local $22 = UBound ( $1R , $Y ) + 4294967295
		For $21 = 1 To $2H [ 0 ]
			$1R [ $2H [ $21 ] ] [ 0 ] = ChrW ( 64177 )
		Next
		For $2K = 0 To $1X
			If $1R [ $2K ] [ 0 ] == ChrW ( 64177 ) Then
				ContinueLoop
			Else
				If $2K <> $2J Then
					For $28 = 0 To $22
						$1R [ $2J ] [ $28 ] = $1R [ $2K ] [ $28 ]
					Next
				EndIf
				$2J += 1
			EndIf
		Next
		ReDim $1R [ $1X - $2H [ 0 ] + 1 ] [ $22 + 1 ]
Case Else
		Return SetError ( 2 , 0 , False )
	EndSwitch
	Return UBound ( $1R , $X )
EndFunc
Func _U ( ByRef $1R )
	If ( Not IsArray ( $1R ) ) Then Return SetError ( 1 , 0 , "" )
	If UBound ( $1R , $W ) <> 1 Then Return SetError ( 2 , 0 , "" )
	Local $2L = UBound ( $1R ) + 4294967295
	If $2L = + 4294967295 Then Return SetError ( 3 , 0 , "" )
	Local $2M = $1R [ $2L ]
	If $2L > + 4294967295 Then
		ReDim $1R [ $2L ]
	EndIf
	Return $2M
EndFunc
Func _W ( ByRef $1R , $1T = 0 , $2N = 0 )
	If $1T = Default Then $1T = 0
	If $2N = Default Then $2N = 0
	If Not IsArray ( $1R ) Then Return SetError ( 1 , 0 , 0 )
	If UBound ( $1R , $W ) <> 1 Then Return SetError ( 3 , 0 , 0 )
	If Not UBound ( $1R ) Then Return SetError ( 4 , 0 , 0 )
	Local $2O , $2L = UBound ( $1R ) + 4294967295
	If $2N < 1 Or $2N > $2L Then $2N = $2L
	If $1T < 0 Then $1T = 0
	If $1T > $2N Then Return SetError ( 2 , 0 , 0 )
	For $21 = $1T To Int ( ( $1T + $2N + 4294967295 ) / 2 )
		$2O = $1R [ $21 ]
		$1R [ $21 ] = $1R [ $2N ]
		$1R [ $2N ] = $2O
		$2N -= 1
	Next
	Return 1
EndFunc
Func _X ( Const ByRef $1R , $1S , $1T = 0 , $2N = 0 , $2P = 0 , $2Q = 0 , $2R = 1 , $2S = + 4294967295 , $2T = False )
	If $1T = Default Then $1T = 0
	If $2N = Default Then $2N = 0
	If $2P = Default Then $2P = 0
	If $2Q = Default Then $2Q = 0
	If $2R = Default Then $2R = 1
	If $2S = Default Then $2S = + 4294967295
	If $2T = Default Then $2T = False
	If Not IsArray ( $1R ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $1X = UBound ( $1R ) + 4294967295
	If $1X = + 4294967295 Then Return SetError ( 3 , 0 , + 4294967295 )
	Local $22 = UBound ( $1R , $Y ) + 4294967295
	Local $2U = False
	If $2Q = 2 Then
		$2Q = 0
		$2U = True
	EndIf
	If $2T Then
		If UBound ( $1R , $W ) = 1 Then Return SetError ( 5 , 0 , + 4294967295 )
		If $2N < 1 Or $2N > $22 Then $2N = $22
		If $1T < 0 Then $1T = 0
		If $1T > $2N Then Return SetError ( 4 , 0 , + 4294967295 )
	Else
		If $2N < 1 Or $2N > $1X Then $2N = $1X
		If $1T < 0 Then $1T = 0
		If $1T > $2N Then Return SetError ( 4 , 0 , + 4294967295 )
	EndIf
	Local $2V = 1
	If Not $2R Then
		Local $2W = $1T
		$1T = $2N
		$2N = $2W
		$2V = + 4294967295
	EndIf
	Switch UBound ( $1R , $W )
	Case 1
		If Not $2Q Then
			If Not $2P Then
				For $21 = $1T To $2N Step $2V
					If $2U And VarGetType ( $1R [ $21 ] ) <> VarGetType ( $1S ) Then ContinueLoop
					If $1R [ $21 ] = $1S Then Return $21
				Next
			Else
				For $21 = $1T To $2N Step $2V
					If $2U And VarGetType ( $1R [ $21 ] ) <> VarGetType ( $1S ) Then ContinueLoop
					If $1R [ $21 ] == $1S Then Return $21
				Next
			EndIf
		Else
			For $21 = $1T To $2N Step $2V
				If $2Q = 3 Then
					If StringRegExp ( $1R [ $21 ] , $1S ) Then Return $21
				Else
					If StringInStr ( $1R [ $21 ] , $1S , $2P ) > 0 Then Return $21
				EndIf
			Next
		EndIf
	Case 2
		Local $2X
		If $2T Then
			$2X = $1X
			If $2S > $2X Then $2S = $2X
			If $2S < 0 Then
				$2S = 0
			Else
				$2X = $2S
			EndIf
		Else
			$2X = $22
			If $2S > $2X Then $2S = $2X
			If $2S < 0 Then
				$2S = 0
			Else
				$2X = $2S
			EndIf
		EndIf
		For $28 = $2S To $2X
			If Not $2Q Then
				If Not $2P Then
					For $21 = $1T To $2N Step $2V
						If $2T Then
							If $2U And VarGetType ( $1R [ $28 ] [ $21 ] ) <> VarGetType ( $1S ) Then ContinueLoop
							If $1R [ $28 ] [ $21 ] = $1S Then Return $21
						Else
							If $2U And VarGetType ( $1R [ $21 ] [ $28 ] ) <> VarGetType ( $1S ) Then ContinueLoop
							If $1R [ $21 ] [ $28 ] = $1S Then Return $21
						EndIf
					Next
				Else
					For $21 = $1T To $2N Step $2V
						If $2T Then
							If $2U And VarGetType ( $1R [ $28 ] [ $21 ] ) <> VarGetType ( $1S ) Then ContinueLoop
							If $1R [ $28 ] [ $21 ] == $1S Then Return $21
						Else
							If $2U And VarGetType ( $1R [ $21 ] [ $28 ] ) <> VarGetType ( $1S ) Then ContinueLoop
							If $1R [ $21 ] [ $28 ] == $1S Then Return $21
						EndIf
					Next
				EndIf
			Else
				For $21 = $1T To $2N Step $2V
					If $2Q = 3 Then
						If $2T Then
							If StringRegExp ( $1R [ $28 ] [ $21 ] , $1S ) Then Return $21
						Else
							If StringRegExp ( $1R [ $21 ] [ $28 ] , $1S ) Then Return $21
						EndIf
					Else
						If $2T Then
							If StringInStr ( $1R [ $28 ] [ $21 ] , $1S , $2P ) > 0 Then Return $21
						Else
							If StringInStr ( $1R [ $21 ] [ $28 ] , $1S , $2P ) > 0 Then Return $21
						EndIf
					EndIf
				Next
			EndIf
		Next
Case Else
		Return SetError ( 2 , 0 , + 4294967295 )
	EndSwitch
	Return SetError ( 6 , 0 , + 4294967295 )
EndFunc
Func _0Z ( ByRef $1R , $2Y = 0 , $1T = 0 , $2N = 0 , $2S = 0 , $2Z = 0 )
	If $2Y = Default Then $2Y = 0
	If $1T = Default Then $1T = 0
	If $2N = Default Then $2N = 0
	If $2S = Default Then $2S = 0
	If $2Z = Default Then $2Z = 0
	If Not IsArray ( $1R ) Then Return SetError ( 1 , 0 , 0 )
	Local $2L = UBound ( $1R ) + 4294967295
	If $2L = + 4294967295 Then Return SetError ( 5 , 0 , 0 )
	If $2N = Default Then $2N = 0
	If $2N < 1 Or $2N > $2L Or $2N = Default Then $2N = $2L
	If $1T < 0 Or $1T = Default Then $1T = 0
	If $1T > $2N Then Return SetError ( 2 , 0 , 0 )
	Switch UBound ( $1R , $W )
	Case 1
		If $2Z Then
			_12 ( $1R , $1T , $2N )
		Else
			_10 ( $1R , $1T , $2N )
		EndIf
		If $2Y Then _W ( $1R , $1T , $2N )
	Case 2
		If $2Z Then Return SetError ( 6 , 0 , 0 )
		Local $30 = UBound ( $1R , $Y ) + 4294967295
		If $2S > $30 Then Return SetError ( 3 , 0 , 0 )
		If $2Y Then
			$2Y = + 4294967295
		Else
			$2Y = 1
		EndIf
		_11 ( $1R , $2Y , $1T , $2N , $2S , $30 )
Case Else
		Return SetError ( 4 , 0 , 0 )
	EndSwitch
	Return 1
EndFunc
Func _10 ( ByRef $1R , Const ByRef $1T , Const ByRef $2N )
	If $2N <= $1T Then Return
	Local $2O
	If ( $2N - $1T ) < 15 Then
		Local $31
		For $21 = $1T + 1 To $2N
			$2O = $1R [ $21 ]
			If IsNumber ( $2O ) Then
				For $28 = $21 + 4294967295 To $1T Step + 4294967295
					$31 = $1R [ $28 ]
					If ( $2O >= $31 And IsNumber ( $31 ) ) Or ( Not IsNumber ( $31 ) And StringCompare ( $2O , $31 ) >= 0 ) Then ExitLoop
					$1R [ $28 + 1 ] = $31
				Next
			Else
				For $28 = $21 + 4294967295 To $1T Step + 4294967295
					If ( StringCompare ( $2O , $1R [ $28 ] ) >= 0 ) Then ExitLoop
					$1R [ $28 + 1 ] = $1R [ $28 ]
				Next
			EndIf
			$1R [ $28 + 1 ] = $2O
		Next
		Return
	EndIf
	Local $32 = $1T , $33 = $2N , $34 = $1R [ Int ( ( $1T + $2N ) / 2 ) ] , $35 = IsNumber ( $34 )
	Do
		If $35 Then
			While ( $1R [ $32 ] < $34 And IsNumber ( $1R [ $32 ] ) ) Or ( Not IsNumber ( $1R [ $32 ] ) And StringCompare ( $1R [ $32 ] , $34 ) < 0 )
				$32 += 1
			WEnd
			While ( $1R [ $33 ] > $34 And IsNumber ( $1R [ $33 ] ) ) Or ( Not IsNumber ( $1R [ $33 ] ) And StringCompare ( $1R [ $33 ] , $34 ) > 0 )
				$33 -= 1
			WEnd
		Else
			While ( StringCompare ( $1R [ $32 ] , $34 ) < 0 )
				$32 += 1
			WEnd
			While ( StringCompare ( $1R [ $33 ] , $34 ) > 0 )
				$33 -= 1
			WEnd
		EndIf
		If $32 <= $33 Then
			$2O = $1R [ $32 ]
			$1R [ $32 ] = $1R [ $33 ]
			$1R [ $33 ] = $2O
			$32 += 1
			$33 -= 1
		EndIf
	Until $32 > $33
	_10 ( $1R , $1T , $33 )
	_10 ( $1R , $32 , $2N )
EndFunc
Func _11 ( ByRef $1R , Const ByRef $2V , Const ByRef $1T , Const ByRef $2N , Const ByRef $2S , Const ByRef $30 )
	If $2N <= $1T Then Return
	Local $2O , $32 = $1T , $33 = $2N , $34 = $1R [ Int ( ( $1T + $2N ) / 2 ) ] [ $2S ] , $35 = IsNumber ( $34 )
	Do
		If $35 Then
			While ( $2V * ( $1R [ $32 ] [ $2S ] - $34 ) < 0 And IsNumber ( $1R [ $32 ] [ $2S ] ) ) Or ( Not IsNumber ( $1R [ $32 ] [ $2S ] ) And $2V * StringCompare ( $1R [ $32 ] [ $2S ] , $34 ) < 0 )
				$32 += 1
			WEnd
			While ( $2V * ( $1R [ $33 ] [ $2S ] - $34 ) > 0 And IsNumber ( $1R [ $33 ] [ $2S ] ) ) Or ( Not IsNumber ( $1R [ $33 ] [ $2S ] ) And $2V * StringCompare ( $1R [ $33 ] [ $2S ] , $34 ) > 0 )
				$33 -= 1
			WEnd
		Else
			While ( $2V * StringCompare ( $1R [ $32 ] [ $2S ] , $34 ) < 0 )
				$32 += 1
			WEnd
			While ( $2V * StringCompare ( $1R [ $33 ] [ $2S ] , $34 ) > 0 )
				$33 -= 1
			WEnd
		EndIf
		If $32 <= $33 Then
			For $21 = 0 To $30
				$2O = $1R [ $32 ] [ $21 ]
				$1R [ $32 ] [ $21 ] = $1R [ $33 ] [ $21 ]
				$1R [ $33 ] [ $21 ] = $2O
			Next
			$32 += 1
			$33 -= 1
		EndIf
	Until $32 > $33
	_11 ( $1R , $2V , $1T , $33 , $2S , $30 )
	_11 ( $1R , $2V , $32 , $2N , $2S , $30 )
EndFunc
Func _12 ( ByRef $1R , $36 , $37 , $38 = True )
	If $36 > $37 Then Return
	Local $39 = $37 - $36 + 1
	Local $21 , $28 , $3A , $3B , $3C , $3D , $3E , $3F
	If $39 < 45 Then
		If $38 Then
			$21 = $36
			While $21 < $37
				$28 = $21
				$3B = $1R [ $21 + 1 ]
				While $3B < $1R [ $28 ]
					$1R [ $28 + 1 ] = $1R [ $28 ]
					$28 -= 1
					If $28 + 1 = $36 Then ExitLoop
				WEnd
				$1R [ $28 + 1 ] = $3B
				$21 += 1
			WEnd
		Else
			While 1
				If $36 >= $37 Then Return 1
				$36 += 1
				If $1R [ $36 ] < $1R [ $36 + 4294967295 ] Then ExitLoop
			WEnd
			While 1
				$3A = $36
				$36 += 1
				If $36 > $37 Then ExitLoop
				$3D = $1R [ $3A ]
				$3E = $1R [ $36 ]
				If $3D < $3E Then
					$3E = $3D
					$3D = $1R [ $36 ]
				EndIf
				$3A -= 1
				While $3D < $1R [ $3A ]
					$1R [ $3A + 2 ] = $1R [ $3A ]
					$3A -= 1
				WEnd
				$1R [ $3A + 2 ] = $3D
				While $3E < $1R [ $3A ]
					$1R [ $3A + 1 ] = $1R [ $3A ]
					$3A -= 1
				WEnd
				$1R [ $3A + 1 ] = $3E
				$36 += 1
			WEnd
			$3F = $1R [ $37 ]
			$37 -= 1
			While $3F < $1R [ $37 ]
				$1R [ $37 + 1 ] = $1R [ $37 ]
				$37 -= 1
			WEnd
			$1R [ $37 + 1 ] = $3F
		EndIf
		Return 1
	EndIf
	Local $3G = BitShift ( $39 , 3 ) + BitShift ( $39 , 6 ) + 1
	Local $3H , $3I , $3J , $3K , $3L , $3M
	$3J = Ceiling ( ( $36 + $37 ) / 2 )
	$3I = $3J - $3G
	$3H = $3I - $3G
	$3K = $3J + $3G
	$3L = $3K + $3G
	If $1R [ $3I ] < $1R [ $3H ] Then
		$3M = $1R [ $3I ]
		$1R [ $3I ] = $1R [ $3H ]
		$1R [ $3H ] = $3M
	EndIf
	If $1R [ $3J ] < $1R [ $3I ] Then
		$3M = $1R [ $3J ]
		$1R [ $3J ] = $1R [ $3I ]
		$1R [ $3I ] = $3M
		If $3M < $1R [ $3H ] Then
			$1R [ $3I ] = $1R [ $3H ]
			$1R [ $3H ] = $3M
		EndIf
	EndIf
	If $1R [ $3K ] < $1R [ $3J ] Then
		$3M = $1R [ $3K ]
		$1R [ $3K ] = $1R [ $3J ]
		$1R [ $3J ] = $3M
		If $3M < $1R [ $3I ] Then
			$1R [ $3J ] = $1R [ $3I ]
			$1R [ $3I ] = $3M
			If $3M < $1R [ $3H ] Then
				$1R [ $3I ] = $1R [ $3H ]
				$1R [ $3H ] = $3M
			EndIf
		EndIf
	EndIf
	If $1R [ $3L ] < $1R [ $3K ] Then
		$3M = $1R [ $3L ]
		$1R [ $3L ] = $1R [ $3K ]
		$1R [ $3K ] = $3M
		If $3M < $1R [ $3J ] Then
			$1R [ $3K ] = $1R [ $3J ]
			$1R [ $3J ] = $3M
			If $3M < $1R [ $3I ] Then
				$1R [ $3J ] = $1R [ $3I ]
				$1R [ $3I ] = $3M
				If $3M < $1R [ $3H ] Then
					$1R [ $3I ] = $1R [ $3H ]
					$1R [ $3H ] = $3M
				EndIf
			EndIf
		EndIf
	EndIf
	Local $3N = $36
	Local $3O = $37
	If ( ( $1R [ $3H ] <> $1R [ $3I ] ) And ( $1R [ $3I ] <> $1R [ $3J ] ) And ( $1R [ $3J ] <> $1R [ $3K ] ) And ( $1R [ $3K ] <> $1R [ $3L ] ) ) Then
		Local $3P = $1R [ $3I ]
		Local $3Q = $1R [ $3K ]
		$1R [ $3I ] = $1R [ $36 ]
		$1R [ $3K ] = $1R [ $37 ]
		Do
			$3N += 1
		Until $1R [ $3N ] >= $3P
		Do
			$3O -= 1
		Until $1R [ $3O ] <= $3Q
		$3A = $3N
		While $3A <= $3O
			$3C = $1R [ $3A ]
			If $3C < $3P Then
				$1R [ $3A ] = $1R [ $3N ]
				$1R [ $3N ] = $3C
				$3N += 1
			ElseIf $3C > $3Q Then
				While $1R [ $3O ] > $3Q
					$3O -= 1
					If $3O + 1 = $3A Then ExitLoop 2
				WEnd
				If $1R [ $3O ] < $3P Then
					$1R [ $3A ] = $1R [ $3N ]
					$1R [ $3N ] = $1R [ $3O ]
					$3N += 1
				Else
					$1R [ $3A ] = $1R [ $3O ]
				EndIf
				$1R [ $3O ] = $3C
				$3O -= 1
			EndIf
			$3A += 1
		WEnd
		$1R [ $36 ] = $1R [ $3N + 4294967295 ]
		$1R [ $3N + 4294967295 ] = $3P
		$1R [ $37 ] = $1R [ $3O + 1 ]
		$1R [ $3O + 1 ] = $3Q
		_12 ( $1R , $36 , $3N + 4294967294 , True )
		_12 ( $1R , $3O + 2 , $37 , False )
		If ( $3N < $3H ) And ( $3L < $3O ) Then
			While $1R [ $3N ] = $3P
				$3N += 1
			WEnd
			While $1R [ $3O ] = $3Q
				$3O -= 1
			WEnd
			$3A = $3N
			While $3A <= $3O
				$3C = $1R [ $3A ]
				If $3C = $3P Then
					$1R [ $3A ] = $1R [ $3N ]
					$1R [ $3N ] = $3C
					$3N += 1
				ElseIf $3C = $3Q Then
					While $1R [ $3O ] = $3Q
						$3O -= 1
						If $3O + 1 = $3A Then ExitLoop 2
					WEnd
					If $1R [ $3O ] = $3P Then
						$1R [ $3A ] = $1R [ $3N ]
						$1R [ $3N ] = $3P
						$3N += 1
					Else
						$1R [ $3A ] = $1R [ $3O ]
					EndIf
					$1R [ $3O ] = $3C
					$3O -= 1
				EndIf
				$3A += 1
			WEnd
		EndIf
		_12 ( $1R , $3N , $3O , False )
	Else
		Local $2Z = $1R [ $3J ]
		$3A = $3N
		While $3A <= $3O
			If $1R [ $3A ] = $2Z Then
				$3A += 1
				ContinueLoop
			EndIf
			$3C = $1R [ $3A ]
			If $3C < $2Z Then
				$1R [ $3A ] = $1R [ $3N ]
				$1R [ $3N ] = $3C
				$3N += 1
			Else
				While $1R [ $3O ] > $2Z
					$3O -= 1
				WEnd
				If $1R [ $3O ] < $2Z Then
					$1R [ $3A ] = $1R [ $3N ]
					$1R [ $3N ] = $1R [ $3O ]
					$3N += 1
				Else
					$1R [ $3A ] = $2Z
				EndIf
				$1R [ $3O ] = $3C
				$3O -= 1
			EndIf
			$3A += 1
		WEnd
		_12 ( $1R , $36 , $3N + 4294967295 , True )
		_12 ( $1R , $3O + 1 , $37 , False )
	EndIf
EndFunc
Func _15 ( Const ByRef $1R , $3R = "|" , $3S = Default , $3T = Default , $1V = @CRLF , $3U = Default , $3V = Default )
	If $3R = Default Then $3R = "|"
	If $1V = Default Then $1V = @CRLF
	If $3S = Default Then $3S = + 4294967295
	If $3T = Default Then $3T = + 4294967295
	If $3U = Default Then $3U = + 4294967295
	If $3V = Default Then $3V = + 4294967295
	If Not IsArray ( $1R ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $1X = UBound ( $1R , $X ) + 4294967295
	If $1X = + 4294967295 Then Return ""
	If $3S = + 4294967295 Then $3S = 0
	If $3T = + 4294967295 Then $3T = $1X
	If $3S < + 4294967295 Or $3T < + 4294967295 Then Return SetError ( 3 , 0 , + 4294967295 )
	If $3S > $1X Or $3T > $1X Then Return SetError ( 3 , 0 , "" )
	If $3S > $3T Then Return SetError ( 4 , 0 , + 4294967295 )
	Local $3W = ""
	Switch UBound ( $1R , $W )
	Case 1
		For $21 = $3S To $3T
			$3W &= $1R [ $21 ] & $3R
		Next
		Return StringTrimRight ( $3W , StringLen ( $3R ) )
	Case 2
		Local $22 = UBound ( $1R , $Y ) + 4294967295
		If $22 = + 4294967295 Then Return ""
		If $3U = + 4294967295 Then $3U = 0
		If $3V = + 4294967295 Then $3V = $22
		If $3U < + 4294967295 Or $3V < + 4294967295 Then Return SetError ( 5 , 0 , + 4294967295 )
		If $3U > $22 Or $3V > $22 Then Return SetError ( 5 , 0 , + 4294967295 )
		If $3U > $3V Then Return SetError ( 6 , 0 , + 4294967295 )
		Local $3X = StringLen ( $3R )
		For $21 = $3S To $3T
			For $28 = $3U To $3V
				$3W &= $1R [ $21 ] [ $28 ] & $3R
			Next
			$3W = StringTrimRight ( $3W , $3X ) & $1V
		Next
		Return StringTrimRight ( $3W , StringLen ( $1V ) )
Case Else
		Return SetError ( 2 , 0 , + 4294967295 )
	EndSwitch
	Return 1
EndFunc
Global Const $3Y = 4096
Global Const $3Z = 8192
Global Const $40 = 4
Global Const $41 = 32768
Global Const $42 = 8
Global Const $43 = 16
Global Const $44 = 32
Global Const $45 = "SeDebugPrivilege"
Global Const $46 = 2
Global Enum $47 = 0 , $48 , $49 , $4A
Global Const $4B = 8
Global Const $4C = 32
Global Const $4D = 131072
Global Const $4E = 262144
Global Const $4F = 524288
Global Const $4G = 16777216
Global Enum $4H = 0 , $4I , $4J , $4K , $4L , $4M , $4N
Func _1M ( Const $4O = @error , Const $4P = @extended )
	Local $4Q = DllCall ( "kernel32.dll" , "dword" , "GetLastError" )
	Return SetError ( $4O , $4P , $4Q [ 0 ] )
EndFunc
Func _1V ( $4R , $4S , $4T , $4U , $4V = 0 , $4W = 0 )
	Local $4Q = DllCall ( "advapi32.dll" , "bool" , "AdjustTokenPrivileges" , "handle" , $4R , "bool" , $4S , "struct*" , $4T , "dword" , $4U , "struct*" , $4V , "struct*" , $4W )
	If @error Then Return SetError ( @error , @extended , False )
	Return Not ( $4Q [ 0 ] = 0 )
EndFunc
Func _21 ( $4X = $49 )
	Local $4Q = DllCall ( "advapi32.dll" , "bool" , "ImpersonateSelf" , "int" , $4X )
	If @error Then Return SetError ( @error , @extended , False )
	Return Not ( $4Q [ 0 ] = 0 )
EndFunc
Func _25 ( $4Y , $4Z )
	Local $4Q = DllCall ( "advapi32.dll" , "bool" , "LookupPrivilegeValueW" , "wstr" , $4Y , "wstr" , $4Z , "int64*" , 0 )
	If @error Or Not $4Q [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Return $4Q [ 3 ]
EndFunc
Func _27 ( $50 , $51 = 0 , $52 = False )
	Local $4Q
	If $51 = 0 Then
		$4Q = DllCall ( "kernel32.dll" , "handle" , "GetCurrentThread" )
		If @error Then Return SetError ( @error + 20 , @extended , 0 )
		$51 = $4Q [ 0 ]
	EndIf
	$4Q = DllCall ( "advapi32.dll" , "bool" , "OpenThreadToken" , "handle" , $51 , "dword" , $50 , "bool" , $52 , "handle*" , 0 )
	If @error Or Not $4Q [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Return $4Q [ 4 ]
EndFunc
Func _28 ( $50 , $51 = 0 , $52 = False )
	Local $4R = _27 ( $50 , $51 , $52 )
	If $4R = 0 Then
		Local Const $53 = 1008
		If _1M ( ) <> $53 Then Return SetError ( 20 , _1M ( ) , 0 )
		If Not _21 ( ) Then Return SetError ( @error + 10 , _1M ( ) , 0 )
		$4R = _27 ( $50 , $51 , $52 )
		If $4R = 0 Then Return SetError ( @error , _1M ( ) , 0 )
	EndIf
	Return $4R
EndFunc
Func _29 ( $4R , $54 , $55 )
	Local $56 = _25 ( "" , $54 )
	If $56 = 0 Then Return SetError ( @error + 10 , @extended , False )
	Local Const $57 = "dword Count;align 4;int64 LUID;dword Attributes"
	Local $58 = DllStructCreate ( $57 )
	Local $59 = DllStructGetSize ( $58 )
	Local $4V = DllStructCreate ( $57 )
	Local $5A = DllStructGetSize ( $4V )
	Local $5B = DllStructCreate ( "int Data" )
	DllStructSetData ( $58 , "Count" , 1 )
	DllStructSetData ( $58 , "LUID" , $56 )
	If Not _1V ( $4R , False , $58 , $59 , $4V , $5B ) Then Return SetError ( 2 , @error , False )
	DllStructSetData ( $4V , "Count" , 1 )
	DllStructSetData ( $4V , "LUID" , $56 )
	Local $5C = DllStructGetData ( $4V , "Attributes" )
	If $55 Then
		$5C = BitOR ( $5C , $46 )
	Else
		$5C = BitAND ( $5C , BitNOT ( $46 ) )
	EndIf
	DllStructSetData ( $4V , "Attributes" , $5C )
	If Not _1V ( $4R , False , $4V , $5A , $58 , $5B ) Then Return SetError ( 3 , @error , False )
	Return True
EndFunc
Global Const $5D = "struct;long Left;long Top;long Right;long Bottom;endstruct"
Global Const $5E = "struct;word Year;word Month;word Dow;word Day;word Hour;word Minute;word Second;word MSeconds;endstruct"
Global Const $5F = "uint Width;uint Height;int Stride;int Format;ptr Scan0;uint_ptr Reserved"
Global Const $5G = "uint Version;ptr Callback;bool NoThread;bool NoCodecs"
Global Const $5H = "struct;uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" & "int Indent;int GroupID;uint Columns;ptr pColumns;ptr piColFmt;int iGroup;endstruct"
Global Const $5I = "handle hProc;ulong_ptr Size;ptr Mem"
Func _2E ( ByRef $5J )
	Local $5K = DllStructGetData ( $5J , "Mem" )
	Local $5L = DllStructGetData ( $5J , "hProc" )
	Local $5M = _2S ( $5L , $5K , 0 , $41 )
	DllCall ( "kernel32.dll" , "bool" , "CloseHandle" , "handle" , $5L )
	If @error Then Return SetError ( @error , @extended , False )
	Return $5M
EndFunc
Func _2L ( $5N , $5O , ByRef $5J )
	Local $4Q = DllCall ( "user32.dll" , "dword" , "GetWindowThreadProcessId" , "hwnd" , $5N , "dword*" , 0 )
	If @error Then Return SetError ( @error + 10 , @extended , 0 )
	Local $5P = $4Q [ 2 ]
	If $5P = 0 Then Return SetError ( 1 , 0 , 0 )
	Local $50 = BitOR ( $42 , $43 , $44 )
	Local $5L = _2T ( $50 , False , $5P , True )
	Local $5Q = BitOR ( $3Z , $3Y )
	Local $5K = _2Q ( $5L , 0 , $5O , $5Q , $40 )
	If $5K = 0 Then Return SetError ( 2 , 0 , 0 )
	$5J = DllStructCreate ( $5I )
	DllStructSetData ( $5J , "hProc" , $5L )
	DllStructSetData ( $5J , "Size" , $5O )
	DllStructSetData ( $5J , "Mem" , $5K )
	Return $5K
EndFunc
Func _2N ( ByRef $5J , $5R , $5S , $5O )
	Local $4Q = DllCall ( "kernel32.dll" , "bool" , "ReadProcessMemory" , "handle" , DllStructGetData ( $5J , "hProc" ) , "ptr" , $5R , "struct*" , $5S , "ulong_ptr" , $5O , "ulong_ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	Return $4Q [ 0 ]
EndFunc
Func _2O ( ByRef $5J , $5R , $5S = 0 , $5O = 0 , $5T = "struct*" )
	If $5S = 0 Then $5S = DllStructGetData ( $5J , "Mem" )
	If $5O = 0 Then $5O = DllStructGetData ( $5J , "Size" )
	Local $4Q = DllCall ( "kernel32.dll" , "bool" , "WriteProcessMemory" , "handle" , DllStructGetData ( $5J , "hProc" ) , "ptr" , $5S , $5T , $5R , "ulong_ptr" , $5O , "ulong_ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	Return $4Q [ 0 ]
EndFunc
Func _2Q ( $5L , $5U , $5O , $5V , $5W )
	Local $4Q = DllCall ( "kernel32.dll" , "ptr" , "VirtualAllocEx" , "handle" , $5L , "ptr" , $5U , "ulong_ptr" , $5O , "dword" , $5V , "dword" , $5W )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $4Q [ 0 ]
EndFunc
Func _2S ( $5L , $5U , $5O , $5X )
	Local $4Q = DllCall ( "kernel32.dll" , "bool" , "VirtualFreeEx" , "handle" , $5L , "ptr" , $5U , "ulong_ptr" , $5O , "dword" , $5X )
	If @error Then Return SetError ( @error , @extended , False )
	Return $4Q [ 0 ]
EndFunc
Func _2T ( $50 , $5Y , $5Z , $60 = False )
	Local $4Q = DllCall ( "kernel32.dll" , "handle" , "OpenProcess" , "dword" , $50 , "bool" , $5Y , "dword" , $5Z )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $4Q [ 0 ] Then Return $4Q [ 0 ]
	If Not $60 Then Return SetError ( 100 , 0 , 0 )
	Local $4R = _28 ( BitOR ( $4C , $4B ) )
	If @error Then Return SetError ( @error + 10 , @extended , 0 )
	_29 ( $4R , $45 , True )
	Local $61 = @error
	Local $62 = @extended
	Local $63 = 0
	If Not @error Then
		$4Q = DllCall ( "kernel32.dll" , "handle" , "OpenProcess" , "dword" , $50 , "bool" , $5Y , "dword" , $5Z )
		$61 = @error
		$62 = @extended
		If $4Q [ 0 ] Then $63 = $4Q [ 0 ]
		_29 ( $4R , $45 , False )
		If @error Then
			$61 = @error + 20
			$62 = @extended
		EndIf
	Else
		$61 = @error + 30
	EndIf
	DllCall ( "kernel32.dll" , "bool" , "CloseHandle" , "handle" , $4R )
	Return SetError ( $61 , $62 , $63 )
EndFunc
Func _2U ( $5N , $64 , $65 = 0 , $66 = 0 , $67 = 0 , $68 = "wparam" , $69 = "lparam" , $6A = "lresult" )
	Local $4Q = DllCall ( "user32.dll" , $6A , "SendMessageW" , "hwnd" , $5N , "uint" , $64 , $68 , $65 , $69 , $66 )
	If @error Then Return SetError ( @error , @extended , "" )
	If $67 >= 0 And $67 <= 4 Then Return $4Q [ $67 ]
	Return $4Q
EndFunc
Global Const $6B = "struct;dword OSVersionInfoSize;dword MajorVersion;dword MinorVersion;dword BuildNumber;dword PlatformId;wchar CSDVersion[128];endstruct"
Func _2Z ( $5N )
	Local $4Q = DllCall ( "user32.dll" , "int" , "GetDlgCtrlID" , "hwnd" , $5N )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $4Q [ 0 ]
EndFunc
Func _32 ( )
	Local $6C = DllStructCreate ( $6B )
	DllStructSetData ( $6C , 1 , DllStructGetSize ( $6C ) )
	Local $4Q = DllCall ( "kernel32.dll" , "bool" , "GetVersionExW" , "struct*" , $6C )
	If @error Or Not $4Q [ 0 ] Then Return SetError ( @error , @extended , 0 )
	Return Number ( DllStructGetData ( $6C , 2 ) & "." & DllStructGetData ( $6C , 3 ) , $10 )
EndFunc
Global $6D [ 64 ] [ 2 ] = [ [ 0 , 0 ] ]
Func _40 ( $5N , ByRef $5Z )
	Local $4Q = DllCall ( "user32.dll" , "dword" , "GetWindowThreadProcessId" , "hwnd" , $5N , "dword*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	$5Z = $4Q [ 2 ]
	Return $4Q [ 0 ]
EndFunc
Func _42 ( $5N , ByRef $6E )
	If $5N = $6E Then Return True
	For $6F = $6D [ 0 ] [ 0 ] To 1 Step + 4294967295
		If $5N = $6D [ $6F ] [ 0 ] Then
			If $6D [ $6F ] [ 1 ] Then
				$6E = $5N
				Return True
			Else
				Return False
			EndIf
		EndIf
	Next
	Local $5Z
	_40 ( $5N , $5Z )
	Local $6G = $6D [ 0 ] [ 0 ] + 1
	If $6G >= 64 Then $6G = 1
	$6D [ 0 ] [ 0 ] = $6G
	$6D [ $6G ] [ 0 ] = $5N
	$6D [ $6G ] [ 1 ] = ( $5Z = @AutoItPID )
	Return $6D [ $6G ] [ 1 ]
EndFunc
Global $6H
Func _4I ( $5N , $64 , $6I , ByRef $6J , $6K = 0 , $6L = False , $6M = + 4294967295 , $6N = False , $6O = $6M )
	If $6M > 0 Then
		DllStructSetData ( $6J , $6M , DllStructGetPtr ( $6K ) )
		If $6M = $6O Then DllStructSetData ( $6J , $6M + 1 , DllStructGetSize ( $6K ) )
	EndIf
	Local $63
	If IsHWnd ( $5N ) Then
		If _42 ( $5N , $6H ) Then
			$63 = DllCall ( "user32.dll" , "lresult" , "SendMessageW" , "hwnd" , $5N , "uint" , $64 , "wparam" , $6I , "struct*" , $6J ) [ 0 ]
		Else
			Local $6P = DllStructGetSize ( $6J )
			Local $5J , $6Q
			Local $6R = 0
			If ( $6M > 0 ) Or ( $6O = 0 ) Then $6R = DllStructGetSize ( $6K )
			Local $5K = _2L ( $5N , $6P + $6R , $5J )
			If $6R Then
				$6Q = $5K + $6P
				If $6O Then
					DllStructSetData ( $6J , $6M , $6Q )
				Else
					$6I = $6Q
				EndIf
				_2O ( $5J , $6K , $6Q , $6R )
			EndIf
			_2O ( $5J , $6J , $5K , $6P )
			$63 = DllCall ( "user32.dll" , "lresult" , "SendMessageW" , "hwnd" , $5N , "uint" , $64 , "wparam" , $6I , "ptr" , $5K ) [ 0 ]
			If $6R And $6N Then _2N ( $5J , $6Q , $6K , $6R )
			If $6L Then _2N ( $5J , $5K , $6J , $6P )
			_2E ( $5J )
		EndIf
	Else
		$63 = GUICtrlSendMsg ( $5N , $64 , $6I , DllStructGetPtr ( $6J ) )
	EndIf
	Return $63
EndFunc
Global Const $6S = 10000
Func _5X ( $6T )
	Local $4Q = DllCall ( "gdi32.dll" , "bool" , "DeleteObject" , "handle" , $6T )
	If @error Then Return SetError ( @error , @extended , False )
	Return $4Q [ 0 ]
EndFunc
Global Const $6U = + 4294967295
Global Const $6V = 4
Global Const $6W = 8
Global Const $6X = 1
Global Const $6Y = 16384
Global Const $6Z = 4
Global Const $70 = 32
Global Const $71 = 4096
Global Const $72 = ( $71 + 9 )
Global Const $73 = ( $71 + 5 )
Global Const $74 = ( $71 + 75 )
Global Const $75 = ( $71 + 4 )
Global Const $76 = ( $71 + 45 )
Global Const $77 = ( $71 + 115 )
Global Const $78 = 8192 + 6
Global Const $79 = ( $71 + 30 )
Global Const $7A = ( $71 + 6 )
Global Const $7B = ( $71 + 76 )
Global Const $7C = 29
Global Const $7D = 30
Global Const $7E = 31
Global Const $7F = 32
Global Const $7G = 4099
Global Const $7H = 40
Global Const $7I = 41
Global Const $7J = 127
Global Const $7K = 1024
Global Const $7L = 11
Global $7M [ 1 ] [ $7L ]
Global $7N , $7O
Global $7P = DllStructCreate ( $5H )
Func _IV ( $5N )
	If _K6 ( $5N ) = 0 Then Return True
	Local $7Q = 0
	If IsHWnd ( $5N ) Then
		$7Q = _2Z ( $5N )
	Else
		$7Q = $5N
		$5N = GUICtrlGetHandle ( $5N )
	EndIf
	If $7Q < $6S Then
		Local $7R = 0
		For $6I = _K6 ( $5N ) + 4294967295 To 0 Step + 4294967295
			$7R = _KF ( $5N , $6I )
			If GUICtrlGetState ( $7R ) > 0 And GUICtrlGetHandle ( $7R ) = 0 Then
				GUICtrlDelete ( $7R )
			EndIf
		Next
		If _K6 ( $5N ) = 0 Then Return True
	EndIf
	Return _2U ( $5N , $72 ) <> 0
EndFunc
Func _K5 ( $5N , $6I )
	Local $64
	If _LB ( $5N ) Then
		$64 = $74
	Else
		$64 = $73
	EndIf
	Local $6J = $7P
	DllStructSetData ( $6J , "Mask" , $6W )
	DllStructSetData ( $6J , "Item" , $6I )
	DllStructSetData ( $6J , "SubItem" , 0 )
	DllStructSetData ( $6J , "StateMask" , 65535 )
	Local $63 = _4I ( $5N , $64 , 0 , $6J , 0 , True , + 4294967295 )
	If Not $63 Then Return SetError ( $6U , $6U , False )
	Return BitAND ( DllStructGetData ( $6J , "State" ) , 8192 ) <> 0
EndFunc
Func _K6 ( $5N )
	If IsHWnd ( $5N ) Then
		Return _2U ( $5N , $75 )
	Else
		Return GUICtrlSendMsg ( $5N , $75 , 0 , 0 )
	EndIf
EndFunc
Func _K9 ( $5N , ByRef $6J )
	Local $64
	If _LB ( $5N ) Then
		$64 = $74
	Else
		$64 = $73
	EndIf
	Local $63 = _4I ( $5N , $64 , 0 , $6J , 0 , True , + 4294967295 )
	Return $63 <> 0
EndFunc
Func _KF ( $5N , $6I )
	Local $6J = $7P
	DllStructSetData ( $6J , "Mask" , $6V )
	DllStructSetData ( $6J , "Item" , $6I )
	DllStructSetData ( $6J , "SubItem" , 0 )
	_K9 ( $5N , $6J )
	Return DllStructGetData ( $6J , "Param" )
EndFunc
Func _LB ( $5N )
	If Not IsDllStruct ( $7N ) Then
		$7N = DllStructCreate ( "wchar Text[4096]" )
		$7O = DllStructCreate ( "char Text[4096]" , DllStructGetPtr ( $7N ) )
	EndIf
	If IsHWnd ( $5N ) Then
		Return _2U ( $5N , $78 ) <> 0
	Else
		Return GUICtrlSendMsg ( $5N , $78 , 0 , 0 ) <> 0
	EndIf
EndFunc
Func _MA ( $5N , $7S , $7T )
	If IsHWnd ( $5N ) Then
		Return _2U ( $5N , $79 , $7S , $7T )
	Else
		Return GUICtrlSendMsg ( $5N , $79 , $7S , $7T )
	EndIf
EndFunc
Func _MM ( $5N , $6I , $7U = True )
	Local $64
	If _LB ( $5N ) Then
		$64 = $7B
	Else
		$64 = $7A
	EndIf
	Local $6J = $7P
	If ( $7U ) Then
		DllStructSetData ( $6J , "State" , 8192 )
	Else
		DllStructSetData ( $6J , "State" , 4096 )
	EndIf
	DllStructSetData ( $6J , "StateMask" , 61440 )
	DllStructSetData ( $6J , "Mask" , $6W )
	DllStructSetData ( $6J , "SubItem" , 0 )
	Local $7V = $6I
	If $6I = + 4294967295 Then
		$6I = 0
		$7V = _K6 ( $5N ) + 4294967295
	EndIf
	Local $63
	For $7W = $6I To $7V
		DllStructSetData ( $6J , "Item" , $7W )
		$63 = _4I ( $5N , $64 , 0 , $6J , 0 , False , + 4294967295 )
		If $63 = 0 Then ExitLoop
	Next
	Return $63 <> 0
EndFunc
#Au3Stripper_Ignore_Funcs=__GUICtrlListView_Sort
Func __GUICTRLLISTVIEW_SORT ( $7X , $7Y , $5N )
	Local $6I , $7Z , $80 , $81
	Local $6K , $64
	If $7M [ $6I ] [ 0 ] Then
		$6K = $7N
		$64 = $77
	Else
		$6K = $7O
		$64 = $76
	EndIf
	Local $6J = $7P
	For $7W = 1 To $7M [ 0 ] [ 0 ]
		If $5N = $7M [ $7W ] [ 1 ] Then
			$6I = $7W
			ExitLoop
		EndIf
	Next
	If $7M [ $6I ] [ 3 ] = $7M [ $6I ] [ 4 ] Then
		If Not $7M [ $6I ] [ 7 ] Then
			$7M [ $6I ] [ 5 ] *= + 4294967295
			$7M [ $6I ] [ 7 ] = 1
		EndIf
	Else
		$7M [ $6I ] [ 7 ] = 1
	EndIf
	$7M [ $6I ] [ 6 ] = $7M [ $6I ] [ 3 ]
	DllStructSetData ( $6J , "Mask" , $6X )
	DllStructSetData ( $6J , "SubItem" , $7M [ $6I ] [ 3 ] )
	_4I ( $5N , $64 , $7X , $6J , $6K , False , 6 , True )
	$7Z = DllStructGetData ( $6K , 1 )
	_4I ( $5N , $64 , $7Y , $6J , $6K , False , 6 , True )
	$80 = DllStructGetData ( $6K , 1 )
	If $7M [ $6I ] [ 8 ] = 1 Then
		If ( StringIsFloat ( $7Z ) Or StringIsInt ( $7Z ) ) Then $7Z = Number ( $7Z )
		If ( StringIsFloat ( $80 ) Or StringIsInt ( $80 ) ) Then $80 = Number ( $80 )
	EndIf
	If $7M [ $6I ] [ 8 ] < 2 Then
		$81 = 0
		If $7Z < $80 Then
			$81 = + 4294967295
		ElseIf $7Z > $80 Then
			$81 = 1
		EndIf
	Else
		$81 = DllCall ( "shlwapi.dll" , "int" , "StrCmpLogicalW" , "wstr" , $7Z , "wstr" , $80 ) [ 0 ]
	EndIf
	$81 = $81 * $7M [ $6I ] [ 5 ]
	Return $81
EndFunc
Global Const $82 = 1
Global Const $83 = 2
Func _OU ( $84 = 0 , $85 = 0 , $86 = 0 , $87 = "" )
	If Not $84 Then $84 = 1024
	If Not StringStripWS ( $87 , $G + $H ) Then $87 = Null
	Local $4Q = DllCall ( "kernel32.dll" , "int" , "GetDateFormatW" , "dword" , $84 , "dword" , $86 , "struct*" , $85 , "wstr" , $87 , "wstr" , "" , "int" , 2048 )
	If @error Or Not $4Q [ 0 ] Then Return SetError ( @error , @extended , "" )
	Return $4Q [ 5 ]
EndFunc
Func _OX ( $84 , $88 )
	Local $4Q = DllCall ( "kernel32.dll" , "int" , "GetLocaleInfoW" , "dword" , $84 , "dword" , $88 , "wstr" , "" , "int" , 2048 )
	If @error Or Not $4Q [ 0 ] Then Return SetError ( @error + 10 , @extended , "" )
	Return $4Q [ 3 ]
EndFunc
Func _PH ( $89 , $2I , $8A )
	Local $8B [ 4 ]
	Local $8C [ 4 ]
	Local $8D
	$89 = StringLeft ( $89 , 1 )
	If StringInStr ( "D,M,Y,w,h,n,s" , $89 ) = 0 Or $89 = "" Then
		Return SetError ( 1 , 0 , 0 )
	EndIf
	If Not StringIsInt ( $2I ) Then
		Return SetError ( 2 , 0 , 0 )
	EndIf
	If Not _PN ( $8A ) Then
		Return SetError ( 3 , 0 , 0 )
	EndIf
	_PW ( $8A , $8C , $8B )
	If $89 = "d" Or $89 = "w" Then
		If $89 = "w" Then $2I = $2I * 7
		$8D = _PZ ( $8C [ 1 ] , $8C [ 2 ] , $8C [ 3 ] ) + $2I
		_Q1 ( $8D , $8C [ 1 ] , $8C [ 2 ] , $8C [ 3 ] )
	EndIf
	If $89 = "m" Then
		$8C [ 2 ] = $8C [ 2 ] + $2I
		While $8C [ 2 ] > 12
			$8C [ 2 ] = $8C [ 2 ] + 4294967284
			$8C [ 1 ] = $8C [ 1 ] + 1
		WEnd
		While $8C [ 2 ] < 1
			$8C [ 2 ] = $8C [ 2 ] + 12
			$8C [ 1 ] = $8C [ 1 ] + 4294967295
		WEnd
	EndIf
	If $89 = "y" Then
		$8C [ 1 ] = $8C [ 1 ] + $2I
	EndIf
	If $89 = "h" Or $89 = "n" Or $89 = "s" Then
		Local $8E = _QC ( $8B [ 1 ] , $8B [ 2 ] , $8B [ 3 ] ) / 1000
		If $89 = "h" Then $8E = $8E + $2I * 3600
		If $89 = "n" Then $8E = $8E + $2I * 60
		If $89 = "s" Then $8E = $8E + $2I
		Local $8F = Int ( $8E / ( 24 * 60 * 60 ) )
		$8E = $8E - $8F * 24 * 60 * 60
		If $8E < 0 Then
			$8F = $8F + 4294967295
			$8E = $8E + 24 * 60 * 60
		EndIf
		$8D = _PZ ( $8C [ 1 ] , $8C [ 2 ] , $8C [ 3 ] ) + $8F
		_Q1 ( $8D , $8C [ 1 ] , $8C [ 2 ] , $8C [ 3 ] )
		_QB ( $8E * 1000 , $8B [ 1 ] , $8B [ 2 ] , $8B [ 3 ] )
	EndIf
	Local $8G = _QF ( $8C [ 1 ] )
	If $8G [ $8C [ 2 ] ] < $8C [ 3 ] Then $8C [ 3 ] = $8G [ $8C [ 2 ] ]
	$8A = $8C [ 1 ] & "/" & StringRight ( "0" & $8C [ 2 ] , 2 ) & "/" & StringRight ( "0" & $8C [ 3 ] , 2 )
	If $8B [ 0 ] > 0 Then
		If $8B [ 0 ] > 2 Then
			$8A = $8A & " " & StringRight ( "0" & $8B [ 1 ] , 2 ) & ":" & StringRight ( "0" & $8B [ 2 ] , 2 ) & ":" & StringRight ( "0" & $8B [ 3 ] , 2 )
		Else
			$8A = $8A & " " & StringRight ( "0" & $8B [ 1 ] , 2 ) & ":" & StringRight ( "0" & $8B [ 2 ] , 2 )
		EndIf
	EndIf
	Return $8A
EndFunc
Func _PI ( $8H , $8I = Default )
	Local Const $8J = 128
	If $8I = Default Then $8I = 0
	$8H = Int ( $8H )
	If $8H < 1 Or $8H > 7 Then Return SetError ( 1 , 0 , "" )
	Local $85 = DllStructCreate ( $5E )
	DllStructSetData ( $85 , "Year" , BitAND ( $8I , $8J ) ? 2007 : 2006 )
	DllStructSetData ( $85 , "Month" , 1 )
	DllStructSetData ( $85 , "Day" , $8H )
	Return _OU ( BitAND ( $8I , $83 ) ? $7K : $7J , $85 , 0 , BitAND ( $8I , $82 ) ? "ddd" : "dddd" )
EndFunc
Func _PL ( $8K )
	If StringIsInt ( $8K ) Then
		Select
		Case Mod ( $8K , 4 ) = 0 And Mod ( $8K , 100 ) <> 0
			Return 1
		Case Mod ( $8K , 400 ) = 0
			Return 1
	Case Else
			Return 0
		EndSelect
	EndIf
	Return SetError ( 1 , 0 , 0 )
EndFunc
Func _PM ( $2I )
	$2I = Int ( $2I )
	Return $2I >= 1 And $2I <= 12
EndFunc
Func _PN ( $8A )
	Local $8C [ 4 ] , $8B [ 4 ]
	_PW ( $8A , $8C , $8B )
	If @error Then Return 0
	If Not StringIsInt ( $8C [ 1 ] ) Then Return 0
	If Not StringIsInt ( $8C [ 2 ] ) Then Return 0
	If Not StringIsInt ( $8C [ 3 ] ) Then Return 0
	$8C [ 1 ] = Int ( $8C [ 1 ] )
	$8C [ 2 ] = Int ( $8C [ 2 ] )
	$8C [ 3 ] = Int ( $8C [ 3 ] )
	Local $8G = _QF ( $8C [ 1 ] )
	If $8C [ 1 ] < 1000 Or $8C [ 1 ] > 2999 Then Return 0
	If $8C [ 2 ] < 1 Or $8C [ 2 ] > 12 Then Return 0
	If $8C [ 3 ] < 1 Or $8C [ 3 ] > $8G [ $8C [ 2 ] ] Then Return 0
	If $8B [ 0 ] < 1 Then Return 1
	If $8B [ 0 ] < 2 Then Return 0
	If $8B [ 0 ] = 2 Then $8B [ 3 ] = "00"
	If Not StringIsInt ( $8B [ 1 ] ) Then Return 0
	If Not StringIsInt ( $8B [ 2 ] ) Then Return 0
	If Not StringIsInt ( $8B [ 3 ] ) Then Return 0
	$8B [ 1 ] = Int ( $8B [ 1 ] )
	$8B [ 2 ] = Int ( $8B [ 2 ] )
	$8B [ 3 ] = Int ( $8B [ 3 ] )
	If $8B [ 1 ] < 0 Or $8B [ 1 ] > 23 Then Return 0
	If $8B [ 2 ] < 0 Or $8B [ 2 ] > 59 Then Return 0
	If $8B [ 3 ] < 0 Or $8B [ 3 ] > 59 Then Return 0
	Return 1
EndFunc
Func _PV ( $8A , $89 )
	Local $8C [ 4 ] , $8B [ 4 ]
	Local $8L = "" , $8M = ""
	Local $8N , $8O , $8P = ""
	If Not _PN ( $8A ) Then
		Return SetError ( 1 , 0 , "" )
	EndIf
	If $89 < 0 Or $89 > 5 Or Not IsInt ( $89 ) Then
		Return SetError ( 2 , 0 , "" )
	EndIf
	_PW ( $8A , $8C , $8B )
	Switch $89
	Case 0
		$8P = _OX ( $7K , $7E )
		If Not @error And Not ( $8P = "" ) Then
			$8L = $8P
		Else
			$8L = "M/d/yyyy"
		EndIf
		If $8B [ 0 ] > 1 Then
			$8P = _OX ( $7K , $7G )
			If Not @error And Not ( $8P = "" ) Then
				$8M = $8P
			Else
				$8M = "h:mm:ss tt"
			EndIf
		EndIf
	Case 1
		$8P = _OX ( $7K , $7F )
		If Not @error And Not ( $8P = "" ) Then
			$8L = $8P
		Else
			$8L = "dddd, MMMM dd, yyyy"
		EndIf
	Case 2
		$8P = _OX ( $7K , $7E )
		If Not @error And Not ( $8P = "" ) Then
			$8L = $8P
		Else
			$8L = "M/d/yyyy"
		EndIf
	Case 3
		If $8B [ 0 ] > 1 Then
			$8P = _OX ( $7K , $7G )
			If Not @error And Not ( $8P = "" ) Then
				$8M = $8P
			Else
				$8M = "h:mm:ss tt"
			EndIf
		EndIf
	Case 4
		If $8B [ 0 ] > 1 Then
			$8M = "hh:mm"
		EndIf
	Case 5
		If $8B [ 0 ] > 1 Then
			$8M = "hh:mm:ss"
		EndIf
	EndSwitch
	If $8L <> "" Then
		$8P = _OX ( $7K , $7C )
		If Not @error And Not ( $8P = "" ) Then
			$8L = StringReplace ( $8L , "/" , $8P )
		EndIf
		Local $8Q = _PX ( $8C [ 1 ] , $8C [ 2 ] , $8C [ 3 ] )
		$8C [ 3 ] = StringRight ( "0" & $8C [ 3 ] , 2 )
		$8C [ 2 ] = StringRight ( "0" & $8C [ 2 ] , 2 )
		$8L = StringReplace ( $8L , "d" , "@" )
		$8L = StringReplace ( $8L , "m" , "#" )
		$8L = StringReplace ( $8L , "y" , "&" )
		$8L = StringReplace ( $8L , "@@@@" , _PI ( $8Q , 0 ) )
		$8L = StringReplace ( $8L , "@@@" , _PI ( $8Q , 1 ) )
		$8L = StringReplace ( $8L , "@@" , $8C [ 3 ] )
		$8L = StringReplace ( $8L , "@" , StringReplace ( StringLeft ( $8C [ 3 ] , 1 ) , "0" , "" ) & StringRight ( $8C [ 3 ] , 1 ) )
		$8L = StringReplace ( $8L , "####" , _Q0 ( $8C [ 2 ] , 0 ) )
		$8L = StringReplace ( $8L , "###" , _Q0 ( $8C [ 2 ] , 1 ) )
		$8L = StringReplace ( $8L , "##" , $8C [ 2 ] )
		$8L = StringReplace ( $8L , "#" , StringReplace ( StringLeft ( $8C [ 2 ] , 1 ) , "0" , "" ) & StringRight ( $8C [ 2 ] , 1 ) )
		$8L = StringReplace ( $8L , "&&&&" , $8C [ 1 ] )
		$8L = StringReplace ( $8L , "&&" , StringRight ( $8C [ 1 ] , 2 ) )
	EndIf
	If $8M <> "" Then
		$8P = _OX ( $7K , $7H )
		If Not @error And Not ( $8P = "" ) Then
			$8N = $8P
		Else
			$8N = "AM"
		EndIf
		$8P = _OX ( $7K , $7I )
		If Not @error And Not ( $8P = "" ) Then
			$8O = $8P
		Else
			$8O = "PM"
		EndIf
		$8P = _OX ( $7K , $7D )
		If Not @error And Not ( $8P = "" ) Then
			$8M = StringReplace ( $8M , ":" , $8P )
		EndIf
		If StringInStr ( $8M , "tt" ) Then
			If $8B [ 1 ] < 12 Then
				$8M = StringReplace ( $8M , "tt" , $8N )
				If $8B [ 1 ] = 0 Then $8B [ 1 ] = 12
			Else
				$8M = StringReplace ( $8M , "tt" , $8O )
				If $8B [ 1 ] > 12 Then $8B [ 1 ] = $8B [ 1 ] + 4294967284
			EndIf
		EndIf
		$8B [ 1 ] = StringRight ( "0" & $8B [ 1 ] , 2 )
		$8B [ 2 ] = StringRight ( "0" & $8B [ 2 ] , 2 )
		$8B [ 3 ] = StringRight ( "0" & $8B [ 3 ] , 2 )
		$8M = StringReplace ( $8M , "hh" , StringFormat ( "%02d" , $8B [ 1 ] ) )
		$8M = StringReplace ( $8M , "h" , StringReplace ( StringLeft ( $8B [ 1 ] , 1 ) , "0" , "" ) & StringRight ( $8B [ 1 ] , 1 ) )
		$8M = StringReplace ( $8M , "mm" , StringFormat ( "%02d" , $8B [ 2 ] ) )
		$8M = StringReplace ( $8M , "ss" , StringFormat ( "%02d" , $8B [ 3 ] ) )
		$8L = StringStripWS ( $8L & " " & $8M , $G + $H )
	EndIf
	Return $8L
EndFunc
Func _PW ( $8A , ByRef $8R , ByRef $8S )
	Local $8T = StringSplit ( $8A , " T" )
	If $8T [ 0 ] > 0 Then $8R = StringSplit ( $8T [ 1 ] , "/-." )
	Local $8U = UBound ( $8R )
	If $8U <> 4 Then Return SetError ( 1 , 0 , 0 )
	If $8T [ 0 ] > 1 Then
		$8S = StringSplit ( $8T [ 2 ] , ":" )
		$8U = UBound ( $8S )
		If ( $8U < 3 ) Or ( $8U > 4 ) Then Return SetError ( 2 , 0 , 0 )
		If $8U < 4 Then
			ReDim $8S [ 4 ]
			$8S [ 3 ] = 0
		EndIf
	Else
		Dim $8S [ 4 ]
	EndIf
	For $7W = 1 To 3
		$8R [ $7W ] = Int ( $8R [ $7W ] )
		$8S [ $7W ] = Int ( $8S [ $7W ] )
	Next
	Return 1
EndFunc
Func _PX ( $8K , $8V , $8W )
	If Not _PN ( $8K & "/" & $8V & "/" & $8W ) Then
		Return SetError ( 1 , 0 , "" )
	EndIf
	Local $8X = Int ( ( 14 - $8V ) / 12 )
	Local $8Y = $8K - $8X
	Local $8Z = $8V + ( 12 * $8X ) + 4294967294
	Local $90 = Mod ( $8W + $8Y + Int ( $8Y / 4 ) - Int ( $8Y / 100 ) + Int ( $8Y / 400 ) + Int ( ( 31 * $8Z ) / 12 ) , 7 )
	Return $90 + 1
EndFunc
Func _PZ ( $8K , $8V , $8W )
	If Not _PN ( StringFormat ( "%04d/%02d/%02d" , $8K , $8V , $8W ) ) Then
		Return SetError ( 1 , 0 , "" )
	EndIf
	If $8V < 3 Then
		$8V = $8V + 12
		$8K = $8K + 4294967295
	EndIf
	Local $8X = Int ( $8K / 100 )
	Local $91 = Int ( $8X / 4 )
	Local $92 = 2 - $8X + $91
	Local $93 = Int ( 1461 * ( $8K + 4716 ) / 4 )
	Local $94 = Int ( 153 * ( $8V + 1 ) / 5 )
	Local $8D = $92 + $8W + $93 + $94 - 1524.5
	Return $8D
EndFunc
Func _Q0 ( $95 , $8I = Default )
	If $8I = Default Then $8I = 0
	$95 = Int ( $95 )
	If Not _PM ( $95 ) Then Return SetError ( 1 , 0 , "" )
	Local $85 = DllStructCreate ( $5E )
	DllStructSetData ( $85 , "Year" , @YEAR )
	DllStructSetData ( $85 , "Month" , $95 )
	DllStructSetData ( $85 , "Day" , 1 )
	Return _OU ( BitAND ( $8I , $83 ) ? $7K : $7J , $85 , 0 , BitAND ( $8I , $82 ) ? "MMM" : "MMMM" )
EndFunc
Func _Q1 ( $8D , ByRef $8K , ByRef $8V , ByRef $8W )
	If $8D < 0 Or Not IsNumber ( $8D ) Then
		Return SetError ( 1 , 0 , 0 )
	EndIf
	Local $96 = Int ( $8D + 0.5 )
	Local $97 = Int ( ( $96 - 1867216.25 ) / 36524.25 )
	Local $98 = Int ( $97 / 4 )
	Local $8X = $96 + 1 + $97 - $98
	Local $91 = $8X + 1524
	Local $92 = Int ( ( $91 - 122.1 ) / 365.25 )
	Local $90 = Int ( 365.25 * $92 )
	Local $93 = Int ( ( $91 - $90 ) / 30.6001 )
	Local $94 = Int ( 30.6001 * $93 )
	$8W = $91 - $90 - $94
	If $93 + 4294967295 < 13 Then
		$8V = $93 + 4294967295
	Else
		$8V = $93 + 4294967283
	EndIf
	If $8V < 3 Then
		$8K = $92 + 4294962581
	Else
		$8K = $92 + 4294962580
	EndIf
	$8K = StringFormat ( "%04d" , $8K )
	$8V = StringFormat ( "%02d" , $8V )
	$8W = StringFormat ( "%02d" , $8W )
	Return $8K & "/" & $8V & "/" & $8W
EndFunc
Func _Q4 ( )
	Local $99 = _QX ( )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return _PV ( $99 .Year & "/" & $99 .Month & "/" & $99 .Day & " " & $99 .Hour & ":" & $99 .Minute & ":" & $99 .Second , 0 )
EndFunc
Func _Q5 ( )
	Local $99 = _QX ( )
	If @error Then Return SetError ( @error , @extended , "" )
	Return $99 .Year & "/" & StringRight ( "00" & $99 .Month , 2 ) & "/" & StringRight ( "00" & $99 .Day , 2 ) & " " & StringRight ( "00" & $99 .Hour , 2 ) & ":" & StringRight ( "00" & $99 .Minute , 2 ) & ":" & StringRight ( "00" & $99 .Second , 2 )
EndFunc
Func _Q6 ( )
	Local $99 = _QX ( )
	If @error Then Return SetError ( @error , @extended , "" )
	Return $99 .Year & "/" & StringRight ( "00" & $99 .Month , 2 ) & "/" & StringRight ( "00" & $99 .Day , 2 )
EndFunc
Func _QB ( $9A , ByRef $9B , ByRef $9C , ByRef $9D )
	If Number ( $9A ) > 0 Then
		$9A = Int ( $9A / 1000 )
		$9B = Int ( $9A / 3600 )
		$9A = Mod ( $9A , 3600 )
		$9C = Int ( $9A / 60 )
		$9D = Mod ( $9A , 60 )
		Return 1
	ElseIf Number ( $9A ) = 0 Then
		$9B = 0
		$9A = 0
		$9C = 0
		$9D = 0
		Return 1
	Else
		Return SetError ( 1 , 0 , 0 )
	EndIf
EndFunc
Func _QC ( $9B = Default , $9C = Default , $9D = Default )
	If $9B = Default Or $9C = Default Or $9D = Default Then
		Local $99 = _QX ( )
		If @error Then Return SetError ( @error , @extended , 0 )
		If $9B = Default Then $9B = $99 .Hour
		If $9C = Default Then $9C = $99 .Minute
		If $9D = Default Then $9D = $99 .Second
	EndIf
	If StringIsInt ( $9B ) And StringIsInt ( $9C ) And StringIsInt ( $9D ) Then
		Local $9A = 1000 * ( ( 3600 * $9B ) + ( 60 * $9C ) + $9D )
		Return $9A
	Else
		Return SetError ( 1 , 0 , 0 )
	EndIf
EndFunc
Func _QF ( $8K )
	Local $9E = [ 12 , 31 , ( _PL ( $8K ) ? 29 : 28 ) , 31 , 30 , 31 , 30 , 31 , 31 , 30 , 31 , 30 , 31 ]
	Return $9E
EndFunc
Func _QX ( )
	Local $99 = DllStructCreate ( $5E )
	DllCall ( "kernel32.dll" , "none" , "GetLocalTime" , "struct*" , $99 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $99
EndFunc
Global Const $9F = Ptr ( + 4294967295 )
Global Const $9G = Ptr ( + 4294967295 )
Global Const $9H = 256
Global Const $9I = 8192
Global Const $9J = 32768
Global Const $9K = BitShift ( $9H , 8 )
Global Const $9L = BitShift ( $9I , 8 )
Global Const $9M = BitShift ( $9J , 8 )
Global Const $9N = 134217728
Func _TF ( $9O , $86 , $9P = 0 , $9Q = 0 )
	Local $9R = "dword_ptr" , $9S = "dword_ptr"
	If IsString ( $9P ) Then
		$9R = "wstr"
	EndIf
	If IsString ( $9Q ) Then
		$9S = "wstr"
	EndIf
	DllCall ( "shell32.dll" , "none" , "SHChangeNotify" , "long" , $9O , "uint" , $86 , $9R , $9P , $9S , $9Q )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return 1
EndFunc
Func _Y4 ( $55 )
	Local $4Q = DllCall ( "kernel32.dll" , "boolean" , "Wow64EnableWow64FsRedirection" , "boolean" , $55 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $4Q [ 0 ]
EndFunc
Func _YC ( $9T , $9U = True , $9V = 0 )
	Local $4Q = DllCall ( "kernel32.dll" , "handle" , "CreateMutexW" , "struct*" , $9V , "bool" , $9U , "wstr" , $9T )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $4Q [ 0 ]
EndFunc
Func _YX ( $5L , $9W = 0 )
	Local $4Q = DllCall ( @SystemDir & "\psapi.dll" , "dword" , "GetModuleFileNameExW" , "handle" , $5L , "handle" , $9W , "wstr" , "" , "int" , 4096 )
	If @error Or Not $4Q [ 0 ] Then Return SetError ( @error + 10 , @extended , "" )
	Return $4Q [ 3 ]
EndFunc
Func _Z3 ( $5Z = 0 )
	If Not $5Z Then $5Z = @AutoItPID
	Local $5L = DllCall ( "kernel32.dll" , "handle" , "OpenProcess" , "dword" , ( ( _32 ( ) < 6.0 ) ? 1040 : 4112 ) , "bool" , 0 , "dword" , $5Z )
	If @error Or Not $5L [ 0 ] Then Return SetError ( @error + 20 , @extended , "" )
	Local $9X = _YX ( $5L [ 0 ] )
	Local $61 = @error
	DllCall ( "kernel32.dll" , "bool" , "CloseHandle" , "handle" , $5L [ 0 ] )
	If $61 Then Return SetError ( @error , 0 , "" )
	Return $9X
EndFunc
Func _10P ( $9Y , $9Z )
	Local $4Q = DllCall ( "user32.dll" , "hwnd" , "FindWindowW" , "wstr" , $9Y , "wstr" , $9Z )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $4Q [ 0 ]
EndFunc
Func _182 ( $A0 , $A1 = "*" , $A2 = $12 , $A3 = False )
	Local $A4 = "|" , $A5 = "" , $A6 = "" , $A7 = ""
	$A0 = StringRegExpReplace ( $A0 , "[\\/]+$" , "" ) & "\"
	If $A2 = Default Then $A2 = $12
	If $A3 Then $A7 = $A0
	If $A1 = Default Then $A1 = "*"
	If Not FileExists ( $A0 ) Then Return SetError ( 1 , 0 , 0 )
	If StringRegExp ( $A1 , "[\\/:><\|]|(?s)^\s*$" ) Then Return SetError ( 2 , 0 , 0 )
	If Not ( $A2 = 0 Or $A2 = 1 Or $A2 = 2 ) Then Return SetError ( 3 , 0 , 0 )
	Local $A8 = FileFindFirstFile ( $A0 & $A1 )
	If @error Then Return SetError ( 4 , 0 , 0 )
	While 1
		$A6 = FileFindNextFile ( $A8 )
		If @error Then ExitLoop
		If ( $A2 + @extended = 2 ) Then ContinueLoop
		$A5 &= $A4 & $A7 & $A6
	WEnd
	FileClose ( $A8 )
	If $A5 = "" Then Return SetError ( 4 , 0 , 0 )
	Return StringSplit ( StringTrimLeft ( $A5 , 1 ) , $A4 )
EndFunc
Func _183 ( $A0 , $A9 = "*" , $67 = $15 , $AA = $19 , $AB = $1B , $AC = $1C )
	If Not FileExists ( $A0 ) Then Return SetError ( 1 , 1 , "" )
	If $A9 = Default Then $A9 = "*"
	If $67 = Default Then $67 = $15
	If $AA = Default Then $AA = $19
	If $AB = Default Then $AB = $1B
	If $AC = Default Then $AC = $1C
	If $AA > 1 Or Not IsInt ( $AA ) Then Return SetError ( 1 , 6 , "" )
	Local $AD = False
	If StringLeft ( $A0 , 4 ) == "\\?\" Then
		$AD = True
	EndIf
	Local $AE = ""
	If StringRight ( $A0 , 1 ) = "\" Then
		$AE = "\"
	Else
		$A0 = $A0 & "\"
	EndIf
	Local $AF [ 100 ] = [ 1 ]
	$AF [ 1 ] = $A0
	Local $AG = 0 , $AH = ""
	If BitAND ( $67 , $16 ) Then
		$AG += 2
		$AH &= "H"
		$67 -= $16
	EndIf
	If BitAND ( $67 , $17 ) Then
		$AG += 4
		$AH &= "S"
		$67 -= $17
	EndIf
	Local $AI = 0
	If BitAND ( $67 , $18 ) Then
		$AI = 1024
		$67 -= $18
	EndIf
	Local $AJ = 0
	If $AA < 0 Then
		StringReplace ( $A0 , "\" , "" , 0 , $F )
		$AJ = @extended - $AA
	EndIf
	Local $AK = "" , $AL = "" , $AM = "*"
	Local $AN = StringSplit ( $A9 , "|" )
	Switch $AN [ 0 ]
	Case 3
		$AL = $AN [ 3 ]
		ContinueCase
	Case 2
		$AK = $AN [ 2 ]
		ContinueCase
	Case 1
		$AM = $AN [ 1 ]
	EndSwitch
	Local $AO = ".+"
	If $AM <> "*" Then
		If Not _186 ( $AO , $AM ) Then Return SetError ( 1 , 2 , "" )
	EndIf
	Local $AP = ".+"
	Switch $67
	Case 0
		Switch $AA
		Case 0
			$AP = $AO
		EndSwitch
	Case 2
		$AP = $AO
	EndSwitch
	Local $AQ = ":"
	If $AK <> "" Then
		If Not _186 ( $AQ , $AK ) Then Return SetError ( 1 , 3 , "" )
	EndIf
	Local $AR = ":"
	If $AA Then
		If $AL Then
			If Not _186 ( $AR , $AL ) Then Return SetError ( 1 , 4 , "" )
		EndIf
		If $67 = 2 Then
			$AR = $AQ
		EndIf
	Else
		$AR = $AQ
	EndIf
	If Not ( $67 = 0 Or $67 = 1 Or $67 = 2 ) Then Return SetError ( 1 , 5 , "" )
	If Not ( $AB = 0 Or $AB = 1 Or $AB = 2 ) Then Return SetError ( 1 , 7 , "" )
	If Not ( $AC = 0 Or $AC = 1 Or $AC = 2 ) Then Return SetError ( 1 , 8 , "" )
	If $AI Then
		Local $AS = DllStructCreate ( "struct;align 4;dword FileAttributes;uint64 CreationTime;uint64 LastAccessTime;uint64 LastWriteTime;" & "dword FileSizeHigh;dword FileSizeLow;dword Reserved0;dword Reserved1;wchar FileName[260];wchar AlternateFileName[14];endstruct" )
		Local $AT = DllOpen ( "kernel32.dll" ) , $AU
	EndIf
	Local $AV [ 100 ] = [ 0 ]
	Local $AW = $AV , $AX = $AV , $AY = $AV
	Local $AZ = False , $A8 = 0 , $B0 = "" , $4Z = "" , $B1 = ""
	Local $B2 = 0 , $B3 = ""
	Local $B4 [ 100 ] [ 2 ] = [ [ 0 , 0 ] ]
	While $AF [ 0 ] > 0
		$B0 = $AF [ $AF [ 0 ] ]
		$AF [ 0 ] -= 1
		Switch $AC
		Case 1
			$B1 = StringReplace ( $B0 , $A0 , "" )
		Case 2
			If $AD Then
				$B1 = StringTrimLeft ( $B0 , 4 )
			Else
				$B1 = $B0
			EndIf
		EndSwitch
		If $AI Then
			$AU = DllCall ( $AT , "handle" , "FindFirstFileW" , "wstr" , $B0 & "*" , "struct*" , $AS )
			If @error Or Not $AU [ 0 ] Then
				ContinueLoop
			EndIf
			$A8 = $AU [ 0 ]
		Else
			$A8 = FileFindFirstFile ( $B0 & "*" )
			If $A8 = + 4294967295 Then
				ContinueLoop
			EndIf
		EndIf
		If $67 = 0 And $AB And $AC Then
			_185 ( $B4 , $B1 , $AW [ 0 ] + 1 )
		EndIf
		$B3 = ""
		While 1
			If $AI Then
				$AU = DllCall ( $AT , "int" , "FindNextFileW" , "handle" , $A8 , "struct*" , $AS )
				If @error Or Not $AU [ 0 ] Then
					ExitLoop
				EndIf
				$4Z = DllStructGetData ( $AS , "FileName" )
				If $4Z = ".." Or $4Z = "." Then
					ContinueLoop
				EndIf
				$B2 = DllStructGetData ( $AS , "FileAttributes" )
				If $AG And BitAND ( $B2 , $AG ) Then
					ContinueLoop
				EndIf
				If BitAND ( $B2 , $AI ) Then
					ContinueLoop
				EndIf
				$AZ = False
				If BitAND ( $B2 , 16 ) Then
					$AZ = True
				EndIf
			Else
				$AZ = False
				$4Z = FileFindNextFile ( $A8 , 1 )
				If @error Then
					ExitLoop
				EndIf
				If $4Z = ".." Or $4Z = "." Then
					ContinueLoop
				EndIf
				$B3 = @extended
				If StringInStr ( $B3 , "D" ) Then
					$AZ = True
				EndIf
				If StringRegExp ( $B3 , "[" & $AH & "]" ) Then
					ContinueLoop
				EndIf
			EndIf
			If $AZ Then
				Select
				Case $AA < 0
					StringReplace ( $B0 , "\" , "" , 0 , $F )
					If @extended < $AJ Then
						ContinueCase
					EndIf
				Case $AA = 1
					If Not StringRegExp ( $4Z , $AR ) Then
						_185 ( $AF , $B0 & $4Z & "\" )
					EndIf
				EndSelect
			EndIf
			If $AB Then
				If $AZ Then
					If StringRegExp ( $4Z , $AP ) And Not StringRegExp ( $4Z , $AR ) Then
						_185 ( $AY , $B1 & $4Z & $AE )
					EndIf
				Else
					If StringRegExp ( $4Z , $AO ) And Not StringRegExp ( $4Z , $AQ ) Then
						If $B0 = $A0 Then
							_185 ( $AX , $B1 & $4Z )
						Else
							_185 ( $AW , $B1 & $4Z )
						EndIf
					EndIf
				EndIf
			Else
				If $AZ Then
					If $67 <> 1 And StringRegExp ( $4Z , $AP ) And Not StringRegExp ( $4Z , $AR ) Then
						_185 ( $AV , $B1 & $4Z & $AE )
					EndIf
				Else
					If $67 <> 2 And StringRegExp ( $4Z , $AO ) And Not StringRegExp ( $4Z , $AQ ) Then
						_185 ( $AV , $B1 & $4Z )
					EndIf
				EndIf
			EndIf
		WEnd
		If $AI Then
			DllCall ( $AT , "int" , "FindClose" , "ptr" , $A8 )
		Else
			FileClose ( $A8 )
		EndIf
	WEnd
	If $AI Then
		DllClose ( $AT )
	EndIf
	If $AB Then
		Switch $67
		Case 2
			If $AY [ 0 ] = 0 Then Return SetError ( 1 , 9 , "" )
			ReDim $AY [ $AY [ 0 ] + 1 ]
			$AV = $AY
			_12 ( $AV , 1 , $AV [ 0 ] )
		Case 1
			If $AX [ 0 ] = 0 And $AW [ 0 ] = 0 Then Return SetError ( 1 , 9 , "" )
			If $AC = 0 Then
				_184 ( $AV , $AX , $AW )
				_12 ( $AV , 1 , $AV [ 0 ] )
			Else
				_184 ( $AV , $AX , $AW , 1 )
			EndIf
		Case 0
			If $AX [ 0 ] = 0 And $AY [ 0 ] = 0 Then Return SetError ( 1 , 9 , "" )
			If $AC = 0 Then
				_184 ( $AV , $AX , $AW )
				$AV [ 0 ] += $AY [ 0 ]
				ReDim $AY [ $AY [ 0 ] + 1 ]
				_I ( $AV , $AY , 1 )
				_12 ( $AV , 1 , $AV [ 0 ] )
			Else
				Local $AV [ $AW [ 0 ] + $AX [ 0 ] + $AY [ 0 ] + 1 ]
				$AV [ 0 ] = $AW [ 0 ] + $AX [ 0 ] + $AY [ 0 ]
				_12 ( $AX , 1 , $AX [ 0 ] )
				For $21 = 1 To $AX [ 0 ]
					$AV [ $21 ] = $AX [ $21 ]
				Next
				Local $B5 = $AX [ 0 ] + 1
				_12 ( $AY , 1 , $AY [ 0 ] )
				Local $B6 = ""
				For $21 = 1 To $AY [ 0 ]
					$AV [ $B5 ] = $AY [ $21 ]
					$B5 += 1
					If $AE Then
						$B6 = $AY [ $21 ]
					Else
						$B6 = $AY [ $21 ] & "\"
					EndIf
					Local $B7 = 0 , $B8 = 0
					For $28 = 1 To $B4 [ 0 ] [ 0 ]
						If $B6 = $B4 [ $28 ] [ 0 ] Then
							$B8 = $B4 [ $28 ] [ 1 ]
							If $28 = $B4 [ 0 ] [ 0 ] Then
								$B7 = $AW [ 0 ]
							Else
								$B7 = $B4 [ $28 + 1 ] [ 1 ] + 4294967295
							EndIf
							If $AB = 1 Then
								_12 ( $AW , $B8 , $B7 )
							EndIf
							For $3A = $B8 To $B7
								$AV [ $B5 ] = $AW [ $3A ]
								$B5 += 1
							Next
							ExitLoop
						EndIf
					Next
				Next
			EndIf
		EndSwitch
	Else
		If $AV [ 0 ] = 0 Then Return SetError ( 1 , 9 , "" )
		ReDim $AV [ $AV [ 0 ] + 1 ]
	EndIf
	Return $AV
EndFunc
Func _184 ( ByRef $B9 , $BA , $BB , $AB = 0 )
	ReDim $BA [ $BA [ 0 ] + 1 ]
	If $AB = 1 Then _12 ( $BA , 1 , $BA [ 0 ] )
	$B9 = $BA
	$B9 [ 0 ] += $BB [ 0 ]
	ReDim $BB [ $BB [ 0 ] + 1 ]
	If $AB = 1 Then _12 ( $BB , 1 , $BB [ 0 ] )
	_I ( $B9 , $BB , 1 )
EndFunc
Func _185 ( ByRef $BC , $BD , $BE = + 4294967295 )
	If $BE = + 4294967295 Then
		$BC [ 0 ] += 1
		If UBound ( $BC ) <= $BC [ 0 ] Then ReDim $BC [ UBound ( $BC ) * 2 ]
		$BC [ $BC [ 0 ] ] = $BD
	Else
		$BC [ 0 ] [ 0 ] += 1
		If UBound ( $BC ) <= $BC [ 0 ] [ 0 ] Then ReDim $BC [ UBound ( $BC ) * 2 ] [ 2 ]
		$BC [ $BC [ 0 ] [ 0 ] ] [ 0 ] = $BD
		$BC [ $BC [ 0 ] [ 0 ] ] [ 1 ] = $BE
	EndIf
EndFunc
Func _186 ( ByRef $A9 , $BF )
	If StringRegExp ( $BF , "\\|/|:|\<|\>|\|" ) Then Return 0
	$BF = StringReplace ( StringStripWS ( StringRegExpReplace ( $BF , "\s*;\s*" , ";" ) , BitOR ( $G , $H ) ) , ";" , "|" )
	$BF = StringReplace ( StringReplace ( StringRegExpReplace ( $BF , "[][$^.{}()+\-]" , "\\$0" ) , "?" , "." ) , "*" , ".*?" )
	$A9 = "(?i)^(" & $BF & ")\z"
	Return 1
EndFunc
Func _18F ( $A0 , ByRef $BG , ByRef $BH , ByRef $A6 , ByRef $BI )
	Local $1R = StringRegExp ( $A0 , "^\h*((?:\\\\\?\\)*(\\\\[^\?\/\\]+|[A-Za-z]:)?(.*[\/\\]\h*)?((?:[^\.\/\\]|(?(?=\.[^\/\\]*\.)\.))*)?([^\/\\]*))$" , $L )
	If @error Then
		ReDim $1R [ 5 ]
		$1R [ $1E ] = $A0
	EndIf
	$BG = $1R [ $1F ]
	If StringLeft ( $1R [ $1G ] , 1 ) == "/" Then
		$BH = StringRegExpReplace ( $1R [ $1G ] , "\h*[\/\\]+\h*" , "\/" )
	Else
		$BH = StringRegExpReplace ( $1R [ $1G ] , "\h*[\/\\]+\h*" , "\\" )
	EndIf
	$1R [ $1G ] = $BH
	$A6 = $1R [ $1H ]
	$BI = $1R [ $1I ]
	Return $1R
EndFunc
Func _18H ( $BJ = @TempDir , $BK = "~" , $BL = ".tmp" , $BM = 7 )
	If $BM = Default Or $BM <= 0 Then $BM = 7
	If $BJ = Default Or ( Not FileExists ( $BJ ) ) Then $BJ = @TempDir
	If $BL = Default Then $BL = ".tmp"
	If $BK = Default Then $BK = "~"
	If Not FileExists ( $BJ ) Then $BJ = @ScriptDir
	$BJ = StringRegExpReplace ( $BJ , "[\\/]+$" , "" )
	$BL = StringRegExpReplace ( $BL , "^\.+" , "" )
	$BK = StringRegExpReplace ( $BK , "[\\/:*?""<>|]" , "" )
	Local $BN = ""
	Do
		$BN = ""
		While StringLen ( $BN ) < $BM
			$BN &= Chr ( Random ( 97 , 122 , 1 ) )
		WEnd
		$BN = $BJ & "\" & $BK & $BN & "." & $BL
	Until Not FileExists ( $BN )
	Return $BN
EndFunc
Global Enum $BO = 0 , $BP , $BQ , $BR , $BS , $BT , $BU , $BV , $BW , $BX , $BY , $BZ , $C0
Global Const $C1 = 2
Global $C2 = @SystemDir & "\Advapi32.dll"
Global $C3 = @SystemDir & "\Kernel32.dll"
Global $C4 [ 5 ] [ 2 ] , $C5 [ 5 ] [ 2 ]
Global $C6 = 0
Func _18I ( )
	$C2 = DllOpen ( @SystemDir & "\Advapi32.dll" )
	$C3 = DllOpen ( @SystemDir & "\Kernel32.dll" )
	$C4 [ 0 ] [ 0 ] = "SeRestorePrivilege"
	$C4 [ 0 ] [ 1 ] = 2
	$C4 [ 1 ] [ 0 ] = "SeTakeOwnershipPrivilege"
	$C4 [ 1 ] [ 1 ] = 2
	$C4 [ 2 ] [ 0 ] = "SeDebugPrivilege"
	$C4 [ 2 ] [ 1 ] = 2
	$C4 [ 3 ] [ 0 ] = "SeSecurityPrivilege"
	$C4 [ 3 ] [ 1 ] = 2
	$C4 [ 4 ] [ 0 ] = "SeShutdownPrivilege"
	$C4 [ 4 ] [ 1 ] = 2
	$C5 = _19Q ( $C4 )
	$C6 = 1
EndFunc
Func _18J ( )
	_19Q ( $C5 )
	DllClose ( $C2 )
	DllClose ( $C3 )
	$C2 = @SystemDir & "\Advapi32.dll"
	$C3 = @SystemDir & "\Kernel32.dll"
	$C6 = 0
EndFunc
Func _18O ( $C7 , $C8 = $BP , $C9 = "Administrators" , $CA = 1 )
	Local $CB [ 1 ] [ 3 ]
	$CB [ 0 ] [ 0 ] = "Everyone"
	$CB [ 0 ] [ 1 ] = 1
	$CB [ 0 ] [ 2 ] = $11
	Return _18R ( $C7 , $CB , $C8 , $C9 , 1 , $CA )
EndFunc
Func _18R ( $C7 , $CC , $C8 = $BP , $C9 = "" , $CD = 0 , $CA = 0 , $CE = 3 )
	If $C6 = 0 Then _18I ( )
	If Not IsArray ( $CC ) Or UBound ( $CC , 2 ) < 3 Then Return SetError ( 1 , 0 , 0 )
	Local $CF = _18W ( $CC , $CE )
	Local $CG = @extended
	Local $CH = 4 , $CI = 0
	If $C9 <> "" Then
		If Not IsDllStruct ( $C9 ) Then $C9 = _19J ( $C9 )
		$CI = DllStructGetPtr ( $C9 )
		If $CI And _19P ( $CI ) Then
			$CH = 5
		Else
			$CI = 0
		EndIf
	EndIf
	If Not IsPtr ( $C7 ) And $C8 = $BP Then
		Return _194 ( $C7 , $CF , $CI , $CD , $CA , $CG , $CH )
	ElseIf Not IsPtr ( $C7 ) And $C8 = $BS Then
		Return _195 ( $C7 , $CF , $CI , $CD , $CA , $CG , $CH )
	Else
		If $CD Then _196 ( $C7 , $C8 )
		Return _18X ( $C7 , $C8 , $CH , $CI , 0 , $CF , 0 )
	EndIf
EndFunc
Func _18W ( ByRef $CC , ByRef $CE )
	Local $CJ = UBound ( $CC , 2 )
	If Not IsArray ( $CC ) Or $CJ < 3 Then Return SetError ( 1 , 0 , 0 )
	Local $CK = UBound ( $CC ) , $CL [ $CK ] , $32 = 0 , $CM = 1
	Local $CN , $CG = 0 , $4Q
	Local $CO , $CP = "DWORD;DWORD;DWORD;ptr;DWORD;DWORD;DWORD;ptr"
	For $21 = 1 To $CK + 4294967295
		$CP &= ";DWORD;DWORD;DWORD;ptr;DWORD;DWORD;DWORD;ptr"
	Next
	$CO = DllStructCreate ( $CP )
	For $21 = 0 To $CK + 4294967295
		If Not IsDllStruct ( $CC [ $21 ] [ 0 ] ) Then $CC [ $21 ] [ 0 ] = _19J ( $CC [ $21 ] [ 0 ] )
		$CL [ $21 ] = DllStructGetPtr ( $CC [ $21 ] [ 0 ] )
		If Not _19P ( $CL [ $21 ] ) Then ContinueLoop
		DllStructSetData ( $CO , $32 + 1 , $CC [ $21 ] [ 2 ] )
		If $CC [ $21 ] [ 1 ] = 0 Then
			$CG = 1
			$CN = $4K
		Else
			$CN = $4J
		EndIf
		If $CJ > 3 Then $CE = $CC [ $21 ] [ 3 ]
		DllStructSetData ( $CO , $32 + 2 , $CN )
		DllStructSetData ( $CO , $32 + 3 , $CE )
		DllStructSetData ( $CO , $32 + 6 , 0 )
		$4Q = DllCall ( $C2 , "BOOL" , "LookupAccountSid" , "ptr" , 0 , "ptr" , $CL [ $21 ] , "ptr*" , 0 , "dword*" , 32 , "ptr*" , 0 , "dword*" , 32 , "dword*" , 0 )
		If Not @error Then $CM = $4Q [ 7 ]
		DllStructSetData ( $CO , $32 + 7 , $CM )
		DllStructSetData ( $CO , $32 + 8 , $CL [ $21 ] )
		$32 += 8
	Next
	Local $CQ = DllStructGetPtr ( $CO )
	$4Q = DllCall ( $C2 , "DWORD" , "SetEntriesInAcl" , "ULONG" , $CK , "ptr" , $CQ , "ptr" , 0 , "ptr*" , 0 )
	If @error Or $4Q [ 0 ] Then Return SetError ( 1 , 0 , 0 )
	Return SetExtended ( $CG , $4Q [ 4 ] )
EndFunc
Func _18X ( $C7 , $C8 , $CH , $CI = 0 , $CR = 0 , $CF = 0 , $CS = 0 )
	Local $4Q
	If $C6 = 0 Then _18I ( )
	If $CF And Not _18Y ( $CF ) Then Return 0
	If $CS And Not _18Y ( $CS ) Then Return 0
	If IsPtr ( $C7 ) Then
		$4Q = DllCall ( $C2 , "dword" , "SetSecurityInfo" , "handle" , $C7 , "dword" , $C8 , "dword" , $CH , "ptr" , $CI , "ptr" , $CR , "ptr" , $CF , "ptr" , $CS )
	Else
		If $C8 = $BS Then $C7 = _19K ( $C7 )
		$4Q = DllCall ( $C2 , "dword" , "SetNamedSecurityInfo" , "str" , $C7 , "dword" , $C8 , "dword" , $CH , "ptr" , $CI , "ptr" , $CR , "ptr" , $CF , "ptr" , $CS )
	EndIf
	If @error Then Return SetError ( 1 , 0 , 0 )
	If $4Q [ 0 ] And $CI Then
		If _199 ( $C7 , $C8 , _19O ( $CI ) ) Then Return _18X ( $C7 , $C8 , $CH + 4294967295 , 0 , $CR , $CF , $CS )
	EndIf
	Return SetError ( $4Q [ 0 ] , 0 , Number ( $4Q [ 0 ] = 0 ) )
EndFunc
Func _18Y ( $CT )
	If $CT = 0 Then Return SetError ( 1 , 0 , 0 )
	Local $4Q = DllCall ( $C2 , "bool" , "IsValidAcl" , "ptr" , $CT )
	If @error Or Not $4Q [ 0 ] Then Return 0
	Return 1
EndFunc
Func _191 ( $CU , $CV = + 4294967295 )
	If $C6 = 0 Then _18I ( )
	If $CV = + 4294967295 Then $CV = BitOR ( $4D , $4E , $4F , $4G )
	$CU = ProcessExists ( $CU )
	If $CU = 0 Then Return SetError ( 1 , 0 , 0 )
	Local $4Q = DllCall ( $C3 , "handle" , "OpenProcess" , "dword" , $CV , "bool" , False , "dword" , $CU )
	If @error Or $4Q [ 0 ] = 0 Then Return SetError ( 2 , 0 , 0 )
	Return $4Q [ 0 ]
EndFunc
Func _192 ( $CU )
	Local $5L = _191 ( $CU , BitOR ( 1 , $4D , $4E , $4F , $4G ) )
	If $5L = 0 Then Return SetError ( 1 , 0 , 0 )
	Local $CW = 0
	_18O ( $5L , $BU )
	For $21 = 1 To 10
		DllCall ( $C3 , "bool" , "TerminateProcess" , "handle" , $5L , "uint" , 0 )
		If @error Then $CW = 0
		Sleep ( 30 )
		If Not ProcessExists ( $CU ) Then
			$CW = 1
			ExitLoop
		EndIf
	Next
	_193 ( $5L )
	Return $CW
EndFunc
Func _193 ( $CX )
	Local $4Q = DllCall ( $C3 , "bool" , "CloseHandle" , "handle" , $CX )
	If @error Then Return SetError ( @error , 0 , 0 )
	Return $4Q [ 0 ]
EndFunc
Func _194 ( $C7 , ByRef $CF , ByRef $CI , ByRef $CD , ByRef $CA , ByRef $CG , ByRef $CH )
	Local $CW , $CY
	If Not $CG Then
		If $CD Then _196 ( $C7 , $BP )
		$CW = _18X ( $C7 , $BP , $CH , $CI , 0 , $CF , 0 )
	EndIf
	If $CA Then
		Local $CZ = FileFindFirstFile ( $C7 & "\*" )
		While 1
			$CY = FileFindNextFile ( $CZ )
			If $CA = 1 Or $CA = 2 And @extended = 1 Then
				_194 ( $C7 & "\" & $CY , $CF , $CI , $CD , $CA , $CG , $CH )
			ElseIf @error Then
				ExitLoop
			ElseIf $CA = 1 Or $CA = 3 Then
				If $CD Then _196 ( $C7 & "\" & $CY , $BP )
				_18X ( $C7 & "\" & $CY , $BP , $CH , $CI , 0 , $CF , 0 )
			EndIf
		WEnd
		FileClose ( $CZ )
	EndIf
	If $CG Then
		If $CD Then _196 ( $C7 , $BP )
		$CW = _18X ( $C7 , $BP , $CH , $CI , 0 , $CF , 0 )
	EndIf
	Return $CW
EndFunc
Func _195 ( $C7 , ByRef $CF , ByRef $CI , ByRef $CD , ByRef $CA , ByRef $CG , ByRef $CH )
	If $C6 = 0 Then _18I ( )
	Local $CW , $21 = 0 , $CY
	If Not $CG Then
		If $CD Then _196 ( $C7 , $BS )
		$CW = _18X ( $C7 , $BS , $CH , $CI , 0 , $CF , 0 )
	EndIf
	If $CA Then
		While 1
			$21 += 1
			$CY = RegEnumKey ( $C7 , $21 )
			If @error Then ExitLoop
			_195 ( $C7 & "\" & $CY , $CF , $CI , $CD , $CA , $CG , $CH )
		WEnd
	EndIf
	If $CG Then
		If $CD Then _196 ( $C7 , $BS )
		$CW = _18X ( $C7 , $BS , $CH , $CI , 0 , $CF , 0 )
	EndIf
	Return $CW
EndFunc
Func _196 ( $C7 , $C8 = $BP )
	If $C6 = 0 Then _18I ( )
	Local $D0 = DllStructCreate ( "byte[32]" ) , $D1
	Local $CF = DllStructGetPtr ( $D0 , 1 )
	DllCall ( $C2 , "bool" , "InitializeAcl" , "Ptr" , $CF , "dword" , DllStructGetSize ( $D0 ) , "dword" , $C1 )
	If IsPtr ( $C7 ) Then
		$D1 = DllCall ( $C2 , "dword" , "SetSecurityInfo" , "handle" , $C7 , "dword" , $C8 , "dword" , 4 , "ptr" , 0 , "ptr" , 0 , "ptr" , $CF , "ptr" , 0 )
	Else
		If $C8 = $BS Then $C7 = _19K ( $C7 )
		DllCall ( $C2 , "DWORD" , "SetNamedSecurityInfo" , "str" , $C7 , "dword" , $C8 , "DWORD" , 4 , "ptr" , 0 , "ptr" , 0 , "ptr" , 0 , "ptr" , 0 )
		$D1 = DllCall ( $C2 , "DWORD" , "SetNamedSecurityInfo" , "str" , $C7 , "dword" , $C8 , "DWORD" , 4 , "ptr" , 0 , "ptr" , 0 , "ptr" , $CF , "ptr" , 0 )
	EndIf
	If @error Then Return SetError ( @error , 0 , 0 )
	Return SetError ( $D1 [ 0 ] , 0 , Number ( $D1 [ 0 ] = 0 ) )
EndFunc
Func _199 ( $C7 , $C8 = $BP , $D2 = "Administrators" )
	If $C6 = 0 Then _18I ( )
	Local $D3 = _19J ( $D2 ) , $D1
	Local $CL = DllStructGetPtr ( $D3 )
	If IsPtr ( $C7 ) Then
		$D1 = DllCall ( $C2 , "dword" , "SetSecurityInfo" , "handle" , $C7 , "dword" , $C8 , "dword" , 1 , "ptr" , $CL , "ptr" , 0 , "ptr" , 0 , "ptr" , 0 )
	Else
		If $C8 = $BS Then $C7 = _19K ( $C7 )
		$D1 = DllCall ( $C2 , "DWORD" , "SetNamedSecurityInfo" , "str" , $C7 , "dword" , $C8 , "DWORD" , 1 , "ptr" , $CL , "ptr" , 0 , "ptr" , 0 , "ptr" , 0 )
	EndIf
	If @error Then Return SetError ( @error , 0 , False )
	Return SetError ( $D1 [ 0 ] , 0 , Number ( $D1 [ 0 ] = 0 ) )
EndFunc
Func _19J ( $D2 )
	If $D2 = "TrustedInstaller" Then $D2 = "NT SERVICE\TrustedInstaller"
	If $D2 = "Everyone" Then
		Return _19M ( "S-1-1-0" )
	ElseIf $D2 = "Authenticated Users" Then
		Return _19M ( "S-1-5-11" )
	ElseIf $D2 = "System" Then
		Return _19M ( "S-1-5-18" )
	ElseIf $D2 = "Administrators" Then
		Return _19M ( "S-1-5-32-544" )
	ElseIf $D2 = "Users" Then
		Return _19M ( "S-1-5-32-545" )
	ElseIf $D2 = "Guests" Then
		Return _19M ( "S-1-5-32-546" )
	ElseIf $D2 = "Power Users" Then
		Return _19M ( "S-1-5-32-547" )
	ElseIf $D2 = "Local Authority" Then
		Return _19M ( "S-1-2" )
	ElseIf $D2 = "Creator Owner" Then
		Return _19M ( "S-1-3-0" )
	ElseIf $D2 = "NT Authority" Then
		Return _19M ( "S-1-5-1" )
	ElseIf $D2 = "Restricted" Then
		Return _19M ( "S-1-5-12" )
	ElseIf StringRegExp ( $D2 , "\A(S-1-\d+(-\d+){0,5})\z" ) Then
		Return _19M ( $D2 )
	Else
		Local $D3 = _19L ( $D2 )
		Return _19M ( $D3 )
	EndIf
EndFunc
Func _19K ( $D4 )
	If StringInStr ( $D4 , "\\" ) = 1 Then
		$D4 = StringRegExpReplace ( $D4 , "(?i)\\(HKEY_CLASSES_ROOT|HKCR)" , "\CLASSES_ROOT" )
		$D4 = StringRegExpReplace ( $D4 , "(?i)\\(HKEY_CURRENT_USER|HKCU)" , "\CURRENT_USER" )
		$D4 = StringRegExpReplace ( $D4 , "(?i)\\(HKEY_LOCAL_MACHINE|HKLM)" , "\MACHINE" )
		$D4 = StringRegExpReplace ( $D4 , "(?i)\\(HKEY_USERS|HKU)" , "\USERS" )
	Else
		$D4 = StringRegExpReplace ( $D4 , "(?i)\A(HKEY_CLASSES_ROOT|HKCR)" , "CLASSES_ROOT" )
		$D4 = StringRegExpReplace ( $D4 , "(?i)\A(HKEY_CURRENT_USER|HKCU)" , "CURRENT_USER" )
		$D4 = StringRegExpReplace ( $D4 , "(?i)\A(HKEY_LOCAL_MACHINE|HKLM)" , "MACHINE" )
		$D4 = StringRegExpReplace ( $D4 , "(?i)\A(HKEY_USERS|HKU)" , "USERS" )
	EndIf
	Return $D4
EndFunc
Func _19L ( $D5 , $4Y = "" )
	Local $D6 = DllStructCreate ( "byte SID[256]" )
	Local $CL = DllStructGetPtr ( $D6 , "SID" )
	Local $D7 = DllCall ( $C2 , "bool" , "LookupAccountNameW" , "wstr" , $4Y , "wstr" , $D5 , "ptr" , $CL , "dword*" , 256 , "wstr" , "" , "dword*" , 256 , "int*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If Not $D7 [ 0 ] Then Return 0
	Return _19O ( $CL )
EndFunc
Func _19M ( $D8 )
	Local $D7 = DllCall ( $C2 , "bool" , "ConvertStringSidToSidW" , "wstr" , $D8 , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If Not $D7 [ 0 ] Then Return 0
	Local $5O = _19N ( $D7 [ 2 ] )
	Local $6K = DllStructCreate ( "byte Data[" & $5O & "]" , $D7 [ 2 ] )
	Local $D9 = DllStructCreate ( "byte Data[" & $5O & "]" )
	DllStructSetData ( $D9 , "Data" , DllStructGetData ( $6K , "Data" ) )
	DllCall ( $C3 , "ptr" , "LocalFree" , "ptr" , $D7 [ 2 ] )
	Return $D9
EndFunc
Func _19N ( $CL )
	If Not _19P ( $CL ) Then Return SetError ( + 4294967295 , 0 , "" )
	Local $D7 = DllCall ( $C2 , "dword" , "GetLengthSid" , "ptr" , $CL )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $D7 [ 0 ]
EndFunc
Func _19O ( $CL )
	If Not _19P ( $CL ) Then Return SetError ( + 4294967295 , 0 , "" )
	Local $D7 = DllCall ( $C2 , "int" , "ConvertSidToStringSidW" , "ptr" , $CL , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , "" )
	If Not $D7 [ 0 ] Then Return ""
	Local $6K = DllStructCreate ( "wchar Text[256]" , $D7 [ 2 ] )
	Local $D8 = DllStructGetData ( $6K , "Text" )
	DllCall ( $C3 , "ptr" , "LocalFree" , "ptr" , $D7 [ 2 ] )
	Return $D8
EndFunc
Func _19P ( $CL )
	Local $D7 = DllCall ( $C2 , "bool" , "IsValidSid" , "ptr" , $CL )
	If @error Then Return SetError ( @error , @extended , False )
	Return $D7 [ 0 ]
EndFunc
Func _19Q ( $DA )
	Local $DB = UBound ( $DA , 0 ) , $DC [ 1 ] [ 2 ]
	If Not ( $DB <= 2 And UBound ( $DA , $DB ) = 2 ) Then Return SetError ( 1300 , 0 , $DC )
	If $DB = 1 Then
		Local $DD [ 1 ] [ 2 ]
		$DD [ 0 ] [ 0 ] = $DA [ 0 ]
		$DD [ 0 ] [ 1 ] = $DA [ 1 ]
		$DA = $DD
		$DD = 0
	EndIf
	Local $3A , $DE = "dword" , $DF = UBound ( $DA , 1 )
	Do
		$3A += 1
		$DE &= ";dword;long;dword"
	Until $3A = $DF
	Local $58 , $4V , $DG , $DH , $DI , $DJ , $DK
	$58 = DllStructCreate ( $DE )
	$4V = DllStructCreate ( $DE )
	$DG = DllStructGetPtr ( $4V )
	$DH = DllStructCreate ( "dword;long" )
	DllStructSetData ( $58 , 1 , $DF )
	For $21 = 0 To $DF + 4294967295
		DllCall ( $C2 , "int" , "LookupPrivilegeValue" , "str" , "" , "str" , $DA [ $21 ] [ 0 ] , "ptr" , DllStructGetPtr ( $DH ) )
		DllStructSetData ( $58 , 3 * $21 + 2 , DllStructGetData ( $DH , 1 ) )
		DllStructSetData ( $58 , 3 * $21 + 3 , DllStructGetData ( $DH , 2 ) )
		DllStructSetData ( $58 , 3 * $21 + 4 , $DA [ $21 ] [ 1 ] )
	Next
	$DI = DllCall ( $C3 , "hwnd" , "GetCurrentProcess" )
	$DJ = DllCall ( $C2 , "int" , "OpenProcessToken" , "hwnd" , $DI [ 0 ] , "dword" , BitOR ( 32 , 8 ) , "hwnd*" , 0 )
	DllCall ( $C2 , "int" , "AdjustTokenPrivileges" , "hwnd" , $DJ [ 3 ] , "int" , False , "ptr" , DllStructGetPtr ( $58 ) , "dword" , DllStructGetSize ( $58 ) , "ptr" , $DG , "dword*" , 0 )
	$DK = DllCall ( $C3 , "dword" , "GetLastError" )
	DllCall ( $C3 , "int" , "CloseHandle" , "hwnd" , $DJ [ 3 ] )
	Local $6G = DllStructGetData ( $4V , 1 )
	If $6G > 0 Then
		Local $DL , $DM , $DN , $DC [ $6G ] [ 2 ]
		For $21 = 0 To $6G + 4294967295
			$DL = $DG + 12 * $21 + 4
			$DM = DllCall ( $C2 , "int" , "LookupPrivilegeName" , "str" , "" , "ptr" , $DL , "ptr" , 0 , "dword*" , 0 )
			$DN = DllStructCreate ( "char[" & $DM [ 4 ] & "]" )
			DllCall ( $C2 , "int" , "LookupPrivilegeName" , "str" , "" , "ptr" , $DL , "ptr" , DllStructGetPtr ( $DN ) , "dword*" , DllStructGetSize ( $DN ) )
			$DC [ $21 ] [ 0 ] = DllStructGetData ( $DN , 1 )
			$DC [ $21 ] [ 1 ] = DllStructGetData ( $4V , 3 * $21 + 4 )
		Next
	EndIf
	Return SetError ( $DK [ 0 ] , 0 , $DC )
EndFunc
Global $DO
Global $DP
Global $DQ
Global $DR
Global $DS
Global $DT = + 4294967295
Func _19R ( $DU , $DV = "" , $DW = + 4294967295 , $DX = True )
	If $DW <> + 4294967295 Then
		If $DW > + 4294967295 And $DW < 7 Then
			$DP = ObjCreate ( "Msxml2.DOMDocument." & $DW & ".0" )
			If IsObj ( $DP ) Then
				$DT = $DW
			EndIf
		Else
			MsgBox ( 266288 , "Error:" , "Failed to create object with MSXML version " & $DW )
			SetError ( 1 )
			Return 0
		EndIf
	Else
		For $7W = 8 To 0 Step + 4294967295
			If FileExists ( @SystemDir & "\msxml" & $7W & ".dll" ) Then
				$DP = ObjCreate ( "Msxml2.DOMDocument." & $7W & ".0" )
				If IsObj ( $DP ) Then
					$DT = $7W
					ExitLoop
				EndIf
			EndIf
		Next
	EndIf
	If Not IsObj ( $DP ) Then
		_1AM ( "Error: MSXML not found. This object is required to use this program." )
		SetError ( 2 )
		Return + 4294967295
	EndIf
	$DQ = ObjEvent ( "AutoIt.Error" )
	If $DQ = "" Then
		$DQ = ObjEvent ( "AutoIt.Error" , "_1an" )
	EndIf
	$DO = $DU
	$DP .async = False
	$DP .preserveWhiteSpace = True
	$DP .validateOnParse = $DX
	If $DT > 4 Then $DP .setProperty ( "ProhibitDTD" , False )
	$DP .Load ( $DO )
	$DP .setProperty ( "SelectionLanguage" , "XPath" )
	$DP .setProperty ( "SelectionNamespaces" , $DV )
	If $DP .parseError .errorCode > 0 Then ConsoleWrite ( $DP .parseError .reason & @LF )
	If $DP .parseError .errorCode <> 0 Then
		_1AM ( "Error opening specified file: " & $DU & @CRLF & $DP .parseError .reason )
		ConsoleWrite ( "Error opening specified file: " & $DU & @CRLF & $DP .parseError .reason )
		SetError ( 1 , $DP .parseError .errorCode , + 4294967295 )
		$DP = 0
		Return + 4294967295
	EndIf
	Return 1
EndFunc
Func _19U ( $DY )
	If Not IsObj ( $DP ) Then
		_1AM ( "No object passed to function _XMLSelectNodes" )
		Return SetError ( 2 , 0 , + 4294967295 )
	EndIf
	Local $DZ , $E0 , $E1 [ 1 ] , $E2
	$E0 = $DP .selectNodes ( $DY )
	If Not IsObj ( $E0 ) Then
		_1AM ( "\nNo matching nodes found" )
		Return SetError ( 1 , 0 , + 4294967295 )
	EndIf
	If $E0 .length < 1 Then
		_1AM ( "\nNo matching nodes found" )
		Return SetError ( 1 , 0 , + 4294967295 )
	EndIf
	For $DZ In $E0
		_1AZ ( $E1 , $DZ .nodeName )
		_1AP ( $DZ .nodeName )
		_1AP ( $DZ .namespaceURI )
	Next
	$E1 [ 0 ] = $E0 .length
	Return $E1
	_1AM ( "Error Selecting Node(s): " & $DY & $E2 )
	Return SetError ( 1 , 0 , + 4294967295 )
EndFunc
Func _1A0 ( $DY , $E3 , $E4 = "" )
	If Not IsObj ( $DP ) Then
		_1AM ( "No object passed to function _XMLGetAttrib" )
		ConsoleWrite ( "No object passed to function _XMLGetAttrib" )
		Return SetError ( 2 , 0 , + 4294967295 )
	EndIf
	Local $E0 , $E1 , $21 , $E2 , $E5
	$E0 = $DP .documentElement .selectNodes ( $DY & $E4 )
	_1AP ( "Get Attrib length= " & $E0 .length )
	If $E0 .length > 0 Then
		For $21 = 0 To $E0 .length + 4294967295
			$E5 = $E0 .item ( $21 ) .getAttribute ( $E3 )
			$E1 = $E5
			_1AP ( "RET>>" & $E5 )
		Next
		Return $E1
	EndIf
	$E2 = "\nNo qualified items found"
	_1AM ( "Attribute " & $E3 & " not found for: " & $DY & $E2 )
	ConsoleWrite ( "Attribute " & $E3 & " not found for: " & $DY & $E2 )
	Return SetError ( 1 , 0 , + 4294967295 )
EndFunc
Func _1A2 ( $DY , ByRef $E6 , ByRef $E7 , $E8 = "" )
	If Not IsObj ( $DP ) Then
		_1AM ( "No object passed to function _XMLGetAllAttrib" )
		Return SetError ( 1 , 9 , + 4294967295 )
	EndIf
	Local $E0 , $E9 , $DZ , $E1 [ 2 ] [ 1 ] , $21
	$E9 = $DP .selectNodes ( $DY & $E8 )
	If $E9 .length > 0 Then
		For $DZ In $E9
			$E0 = $DZ .attributes
			If ( $E0 .length ) Then
				_1AP ( "Get all attrib " & $E0 .length )
				ReDim $E1 [ 2 ] [ $E0 .length + 2 ]
				ReDim $E6 [ $E0 .length ]
				ReDim $E7 [ $E0 .length ]
				For $21 = 0 To $E0 .length + 4294967295
					$E1 [ 0 ] [ $21 + 1 ] = $E0 .item ( $21 ) .nodeName
					$E1 [ 1 ] [ $21 + 1 ] = $E0 .item ( $21 ) .Value
					$E6 [ $21 ] = $E0 .item ( $21 ) .nodeName
					$E7 [ $21 ] = $E0 .item ( $21 ) .Value
				Next
			Else
				_1AM ( "No Attributes found for node" )
				Return SetError ( 1 , 0 , + 4294967295 )
			EndIf
		Next
		$E1 [ 0 ] [ 0 ] = $E0 .length
		Return $E1
	EndIf
	_1AM ( "Error retrieving attributes for: " & $DY & @CRLF )
	Return SetError ( 1 , 0 , + 4294967295 )
EndFunc
Func _1AM ( $EA = "" )
	If $EA = "" Then
		$EA = $DR
		$DR = ""
		Return $EA
	Else
		$DR = StringFormat ( $EA )
	EndIf
	_1AP ( $DR )
EndFunc
Func _1AN ( )
	_1AO ( )
	Return
EndFunc
Func _1AO ( $EB = "" )
	Local $EC , $ED
	If $EB = True Or $EB = False Then
		$EC = $EB
		$EB = ""
	EndIf
	$ED = Hex ( $DQ .number , 8 )
	If @error Then Return
	Local $EE = "COM Error with DOM!" & @CRLF & @CRLF & "err.description is: " & @TAB & $DQ .description & @CRLF & "err.windescription:" & @TAB & $DQ .windescription & @CRLF & "err.number is: " & @TAB & $ED & @CRLF & "err.lastdllerror is: " & @TAB & $DQ .lastdllerror & @CRLF & "err.scriptline is: " & @TAB & $DQ .scriptline & @CRLF & "err.source is: " & @TAB & $DQ .source & @CRLF & "err.helpfile is: " & @TAB & $DQ .helpfile & @CRLF & "err.helpcontext is: " & @TAB & $DQ .helpcontext
	If $EC <> True Then
		MsgBox ( 0 , @AutoItExe , $EE )
	Else
		_1AM ( $EE )
	EndIf
	SetError ( 1 )
EndFunc
Func _1AP ( $EF , $EG = @LF )
	If $DS Then
		ConsoleWrite ( StringFormat ( $EF ) & $EG )
	EndIf
EndFunc
Func _1AZ ( ByRef $EH , $EI )
	If IsArray ( $EH ) Then
		ReDim $EH [ UBound ( $EH ) + 1 ]
		$EH [ UBound ( $EH ) + 4294967295 ] = $EI
		SetError ( 0 )
		Return 1
	Else
		SetError ( 1 )
		Return 0
	EndIf
EndFunc
Func _1B7 ( $EJ , $EK )
	If $EJ = $EK Then Return 0
	Local $EL = "" , $EM = ""
	If StringIsAlpha ( StringRight ( $EJ , 1 ) ) Then
		$EL = StringRight ( $EJ , 1 )
		$EJ = StringTrimRight ( $EJ , 1 )
	EndIf
	If StringIsAlpha ( StringRight ( $EK , 1 ) ) Then
		$EM = StringRight ( $EK , 1 )
		$EK = StringTrimRight ( $EK , 1 )
	EndIf
	Local $EN = StringSplit ( $EJ , ".," ) , $EO = StringSplit ( $EK , ".," )
	Local $EP = ( $EN [ 0 ] - $EO [ 0 ] )
	If $EP < 0 Then
		ReDim $EN [ UBound ( $EO ) ]
		$EN [ 0 ] = UBound ( $EN ) + 4294967295
		For $21 = ( UBound ( $EN ) - Abs ( $EP ) ) To $EN [ 0 ]
			$EN [ $21 ] = "0"
		Next
	ElseIf $EP > 0 Then
		ReDim $EO [ UBound ( $EN ) ]
		$EO [ 0 ] = UBound ( $EO ) + 4294967295
		For $21 = ( UBound ( $EO ) - Abs ( $EP ) ) To $EO [ 0 ]
			$EO [ $21 ] = "0"
		Next
	EndIf
	For $21 = 1 To $EN [ 0 ]
		If StringIsDigit ( $EN [ $21 ] ) And StringIsDigit ( $EO [ $21 ] ) Then
			If Number ( $EN [ $21 ] ) > Number ( $EO [ $21 ] ) Then
				Return SetExtended ( 2 , 1 )
			ElseIf Number ( $EN [ $21 ] ) < Number ( $EO [ $21 ] ) Then
				Return SetExtended ( 2 , + 4294967295 )
			ElseIf $21 = $EN [ 0 ] Then
				If $EL > $EM Then
					Return SetExtended ( 3 , 1 )
				ElseIf $EL < $EM Then
					Return SetExtended ( 3 , + 4294967295 )
				EndIf
			EndIf
		Else
			If $EN [ $21 ] > $EO [ $21 ] Then
				Return SetExtended ( 1 , 1 )
			ElseIf $EN [ $21 ] < $EO [ $21 ] Then
				Return SetExtended ( 1 , + 4294967295 )
			EndIf
		EndIf
	Next
	Return SetExtended ( Abs ( $EP ) , 0 )
EndFunc
Global $EQ [ 2 ]
Global $ER = False
Global $ES = ObjEvent ( "AutoIt.Error" , "_1bb" )
Global $ET = 1
If @Compiled Then
	$ET = 0
EndIf
Func _1BB ( )
	$EQ [ 0 ] = Hex ( $ES .number , 8 )
	$EQ [ 1 ] = StringStripWS ( $ES .description , 3 )
	If $ET = 1 Then
		MsgBox ( 0 , "AutoItCOM Test" , "We intercepted a COM Error !" & @CRLF & @CRLF & "err.description is: " & @TAB & $ES .description & @CRLF & "err.windescription:" & @TAB & $ES .windescription & @CRLF & "err.number is: " & @TAB & Hex ( $ES .number , 8 ) & @CRLF & "err.lastdllerror is: " & @TAB & $ES .lastdllerror & @CRLF & "err.scriptline is: " & @TAB & $ES .scriptline & @CRLF & "err.source is: " & @TAB & $ES .source & @CRLF & "err.helpfile is: " & @TAB & $ES .helpfile & @CRLF & "err.helpcontext is: " & @TAB & $ES .helpcontext )
	EndIf
	$ER = True
	SetError ( 1 )
	Return
EndFunc
Const $EU = 0
Const $EV = 1
Func _1BC ( $EW )
	If Not _1BQ ( ) Then Return SetError ( 2 , 2 , 0 )
	Local $EX , $EY , $EZ , $F0
	$EX = ObjCreate ( "Schedule.Service" )
	$EX .Connect ( )
	$EY = $EX .GetFolder ( "\" )
	If IsObj ( $EY ) Then
		$F0 = $EY .CreateFolder ( $EW )
	EndIf
	$EX = 0
	If $ER Then
		$ER = 0
		SetError ( 1 )
		Return 0
	Else
		Return 1
	EndIf
EndFunc
Func _1BD ( $EW )
	If Not _1BQ ( ) Then Return SetError ( 2 , 2 , 0 )
	Local $EX , $EY , $F0
	$EX = ObjCreate ( "Schedule.Service" )
	$EX .Connect ( )
	$EY = $EX .GetFolder ( "\" )
	If IsObj ( $EY ) Then
		$F0 = $EY .DeleteFolder ( $EW , 0 )
	EndIf
	$EX = 0
	If $ER Then
		$ER = 0
		SetError ( 1 )
		Return 0
	Else
		Return 1
	EndIf
EndFunc
Func _1BE ( $EW = "\" )
	If Not _1BQ ( ) Then Return SetError ( 2 , 2 , 0 )
	Local $EX , $EY
	Local $F1 = 0
	$EX = ObjCreate ( "Schedule.Service" )
	$EX .Connect ( )
	$EY = $EX .GetFolder ( $EW )
	If IsObj ( $EY ) Then
		$F1 = 1
	Else
		$F1 = 0
	EndIf
	$EX = 0
	If $ER Then
		$ER = 0
		SetError ( 1 )
		Return $F1
	Else
		Return $F1
	EndIf
EndFunc
Func _1BM ( $F2 , $EW = "\" )
	If Not _1BQ ( ) Then Return SetError ( 2 , 2 , 0 )
	Local $EX , $EY , $F3
	$EX = ObjCreate ( "Schedule.Service" )
	$EX .Connect ( )
	$EY = $EX .GetFolder ( $EW )
	If IsObj ( $EY ) Then $F3 = $EY .DeleteTask ( $F2 , 0 )
	$EX = 0
	If $ER Then
		$ER = 0
		SetError ( 1 )
		Return 0
	Else
		Return 1
	EndIf
EndFunc
Func _1BN ( $EW = "\" , $F4 = 1 )
	If Not _1BQ ( ) Then Return SetError ( 2 , 2 , 0 )
	Local $F5 = ""
	Local $F6
	Local $EX , $EY
	$EX = ObjCreate ( "Schedule.Service" )
	$EX .Connect ( )
	$EY = $EX .GetFolder ( $EW )
	If IsObj ( $EY ) Then
		$F6 = $EY .GetTasks ( $F4 )
		If IsObj ( $F6 ) And Not $ER Then
			For $F7 In $F6
				$F5 = $F5 & $F7 .Name ( ) & "|"
			Next
		EndIf
	EndIf
	If $F5 <> "" Then $F5 = StringTrimRight ( $F5 , 1 )
	$EX = 0
	If $ER Then
		$ER = 0
		SetError ( 1 )
		Return ( "Error found" )
	Else
		Return ( $F5 )
	EndIf
EndFunc
Func _1BO ( $F2 , $F8 , $F9 , $FA , $FB , $FC , $FD , $FE , $FF , $FG , $FH , $FI , $FJ , $FK , $FL , $FM , $FN , $FO = "" , $FP = "" , $FQ = True , $FR = True , $FS = 0 , $FT = False , $FU = False , $F4 = False , $FV = False , $FW = False , $FX = "P1D" , $FY = 5 , $FZ = "" , $G0 = True )
	If Not _1BQ ( ) Then Return SetError ( 2 , 2 , 0 )
	Local $EX , $EY , $G1 , $G2 , $G3
	Local $G4 , $G5 , $G6 , $G7 , $G8 , $G9
	If $F2 = "" Or $FN = "" Then Return SetError ( 1 , 1 , 0 )
	$EX = ObjCreate ( "Schedule.Service" )
	$EX .Connect ( )
	$EY = $EX .GetFolder ( "\" )
	$G1 = $EX .NewTask ( 0 )
	$G2 = $G1 .RegistrationInfo ( )
	$G2 .Description ( ) = $F8
	$G2 .Author ( ) = @LogonDomain & "\" & @UserName
	$G3 = $G1 .Settings ( )
	$G3 .MultipleInstances ( ) = $FS
	$G3 .DisallowStartIfOnBatteries ( ) = $FT
	$G3 .StopIfGoingOnBatteries ( ) = $FU
	$G3 .AllowHardTerminate ( ) = True
	$G3 .StartWhenAvailable ( ) = $G0
	$G3 .RunOnlyIfNetworkAvailable ( ) = $FQ
	$G3 .Enabled ( ) = $FR
	$G3 .Hidden ( ) = $F4
	$G3 .RunOnlyIfIdle ( ) = $FV
	$G3 .WakeToRun ( ) = $FW
	$G3 .ExecutionTimeLimit ( ) = $FX
	$G3 .Priority ( ) = $FY
	$G4 = $G1 .Principal ( )
	$G4 .Id ( ) = @UserName
	$G4 .DisplayName ( ) = @UserName
	$G4 .LogonType ( ) = $FJ
	$G4 .RunLevel ( ) = $FK
	$G8 = $G1 .Triggers ( )
	$G7 = $G8 .Create ( $F9 )
	$G7 .Id ( ) = "TriggerID"
	$G7 .Enabled ( ) = True
	$G7 .StartBoundary ( ) = $FA
	$G7 .EndBoundary ( ) = $FB
	If $F9 = 3 Or $F9 = 5 Then
		$G7 .DaysOfWeek ( ) = $FC
	EndIf
	If $F9 = 4 Then
		$G7 .DaysOfMonth ( ) = $FD
		$G7 .MonthsOfYear ( ) = $FE
	EndIf
	If $F9 = 5 Then
		$G7 .WeeksOfMonth ( ) = $FF
	EndIf
	If $F9 = 2 Then
		$G7 .DaysInterval ( ) = $FG
	EndIf
	If $FI Then
		$G9 = $G7 .Repetition ( )
		$G9 .Interval ( ) = $FH
		If $FZ <> "" Then $G9 .Duration ( ) = $FZ
	EndIf
	$G5 = $G1 .Actions ( )
	$G5 .Context ( ) = @UserName
	$G6 = $G1 .Actions .Create ( 0 )
	$G6 .Path ( ) = $FN
	$G6 .WorkingDirectory ( ) = $FO
	$G6 .Arguments ( ) = $FP
	$EY .RegisterTaskDefinition ( $F2 , $G1 , 6 , $FL , $FM , $FJ , "" )
	$EX = 0
	If $ER Then
		$ER = 0
		SetError ( 1 )
		Return 0
	Else
		Return 1
	EndIf
EndFunc
Func _1BQ ( )
	Local $GA = _1B7 ( @AutoItVersion , "3.3.9.4" ) = 0
	If Not @error And @OSVersion = "WIN_XP" Or @OSVersion = "WIN_XPe" Or @OSVersion = "WIN_2000" And $GA <> + 4294967295 Then
		Return 0
	Else
		Return 1
	EndIf
EndFunc
Func _1BR ( $GB , $5O = 8.5 , $GC = 400 , $GD = 0 , $4Z = "" , $GE = 0 , $5N = 0 )
	If $5O = Default Then $5O = 8.5
	If $GC = Default Then $GC = 400
	If $GD = Default Then $GD = 0
	If $4Z = "" Or $4Z = Default Then $4Z = _1BT ( )
	If Not IsString ( $GB ) Then Return SetError ( 1 , 1 , 0 )
	If Not IsNumber ( $5O ) Then Return SetError ( 1 , 2 , 0 )
	If Not IsInt ( $GC ) Then Return SetError ( 1 , 3 , 0 )
	If Not IsInt ( $GD ) Then Return SetError ( 1 , 4 , 0 )
	If Not IsString ( $4Z ) Then Return SetError ( 1 , 5 , 0 )
	If Not IsNumber ( $GE ) Then Return SetError ( 1 , 6 , 0 )
	If Not IsHWnd ( $5N ) And $5N <> 0 Then Return SetError ( 1 , 7 , 0 )
	Local $D1 , $GF , $GG , $GH = 0 , $GI
	Local $GJ = BitAND ( $GD , 1 )
	$GD = BitAND ( $GD , BitNOT ( 1 ) )
	If IsHWnd ( $5N ) Then
		$GH = GUICtrlCreateLabel ( "" , + 4294967286 , + 4294967286 , 10 , 10 )
		$GI = GUICtrlGetHandle ( + 4294967295 )
		GUICtrlSetFont ( + 4294967295 , $5O , $GC , $GD , $4Z )
		$D1 = DllCall ( "user32.dll" , "handle" , "GetDC" , "hwnd" , $GI )
		If @error Or $D1 [ 0 ] = 0 Then
			GUICtrlDelete ( $GH )
			Return SetError ( 2 , 1 , 0 )
		EndIf
		$GF = $D1 [ 0 ]
		$D1 = DllCall ( "user32.dll" , "lparam" , "SendMessage" , "hwnd" , $GI , "int" , 49 , "wparam" , 0 , "lparam" , 0 )
		If @error Or $D1 [ 0 ] = 0 Then
			GUICtrlDelete ( $GH )
			Return SetError ( 2 , _1BS ( 2 , $GF ) , 0 )
		EndIf
		$GG = $D1 [ 0 ]
	Else
		$D1 = DllCall ( "user32.dll" , "handle" , "GetDC" , "hwnd" , $5N )
		If @error Or $D1 [ 0 ] = 0 Then Return SetError ( 2 , 1 , 0 )
		$GF = $D1 [ 0 ]
		$D1 = DllCall ( "gdi32.dll" , "int" , "GetDeviceCaps" , "handle" , $GF , "int" , 90 )
		If @error Or $D1 [ 0 ] = 0 Then Return SetError ( 2 , _1BS ( 3 , $GF ) , 0 )
		Local $GK = $D1 [ 0 ]
		$D1 = DllCall ( "gdi32.dll" , "handle" , "CreateFontW" , "int" , - $GK * $5O / 72 , "int" , 0 , "int" , 0 , "int" , 0 , "int" , $GC , "dword" , BitAND ( $GD , 2 ) , "dword" , BitAND ( $GD , 4 ) , "dword" , BitAND ( $GD , 8 ) , "dword" , 0 , "dword" , 0 , "dword" , 0 , "dword" , 5 , "dword" , 0 , "wstr" , $4Z )
		If @error Or $D1 [ 0 ] = 0 Then Return SetError ( 2 , _1BS ( 4 , $GF ) , 0 )
		$GG = $D1 [ 0 ]
	EndIf
	$D1 = DllCall ( "gdi32.dll" , "handle" , "SelectObject" , "handle" , $GF , "handle" , $GG )
	If @error Or $D1 [ 0 ] = 0 Then Return SetError ( 2 , _1BS ( 5 , $GF , $GG , $GH ) , 0 )
	Local $GL = $D1 [ 0 ]
	Local $GM [ 4 ] , $GN , $GO = 0 , $GP = 0 , $GQ = 0 , $GR , $GS , $GT
	Local $GU = DllStructCreate ( "int X;int Y" )
	DllStructSetData ( $GU , "X" , 0 )
	DllStructSetData ( $GU , "Y" , 0 )
	$GB = StringRegExpReplace ( $GB , "((?<!\x0d)\x0a|\x0d(?!\x0a))" , @CRLF )
	Local $GV = StringSplit ( $GB , @CRLF , 1 )
	For $21 = 1 To $GV [ 0 ]
		If $GJ Then
			$GV [ $21 ] = StringReplace ( $GV [ $21 ] , @TAB , " XXXXXXXX" )
		EndIf
		$GN = StringLen ( $GV [ $21 ] )
		DllCall ( "gdi32.dll" , "bool" , "GetTextExtentPoint32W" , "handle" , $GF , "wstr" , $GV [ $21 ] , "int" , $GN , "ptr" , DllStructGetPtr ( $GU ) )
		If @error Then Return SetError ( 2 , _1BS ( 6 , $GF , $GG , $GH ) , 0 )
		If DllStructGetData ( $GU , "X" ) > $GQ Then $GQ = DllStructGetData ( $GU , "X" )
		If DllStructGetData ( $GU , "Y" ) > $GO Then $GO = DllStructGetData ( $GU , "Y" )
	Next
	If $GE <> 0 And $GQ > $GE Then
		For $28 = 1 To $GV [ 0 ]
			$GN = StringLen ( $GV [ $28 ] )
			DllCall ( "gdi32.dll" , "bool" , "GetTextExtentPoint32W" , "handle" , $GF , "wstr" , $GV [ $28 ] , "int" , $GN , "ptr" , DllStructGetPtr ( $GU ) )
			If @error Then Return SetError ( 2 , _1BS ( 6 , $GF , $GG , $GH ) , 0 )
			If DllStructGetData ( $GU , "X" ) < $GE + 4294967292 Then
				$GP += 1
				$GM [ 0 ] &= $GV [ $28 ] & @CRLF
			Else
				$GR = 0
				While 1
					$GQ = 0
					$GS = 0
					For $21 = 1 To StringLen ( $GV [ $28 ] )
						If StringMid ( $GV [ $28 ] , $21 , 1 ) = " " Then $GS = $21 + 4294967295
						$GT = StringMid ( $GV [ $28 ] , 1 , $21 )
						$GN = StringLen ( $GT )
						DllCall ( "gdi32.dll" , "bool" , "GetTextExtentPoint32W" , "handle" , $GF , "wstr" , $GT , "int" , $GN , "ptr" , DllStructGetPtr ( $GU ) )
						If @error Then Return SetError ( 2 , _1BS ( 6 , $GF , $GG , $GH ) , 0 )
						$GQ = DllStructGetData ( $GU , "X" )
						If $GQ >= $GE + 4294967292 Then ExitLoop
					Next
					If $21 > StringLen ( $GV [ $28 ] ) Then
						$GR += 1
						$GM [ 0 ] &= $GT & @CRLF
						ExitLoop
					Else
						$GR += 1
						If $GS = 0 Then Return SetError ( 3 , _1BS ( 0 , $GF , $GG , $GH ) , 0 )
						$GM [ 0 ] &= StringLeft ( $GT , $GS ) & @CRLF
						$GV [ $28 ] = StringTrimLeft ( $GV [ $28 ] , $GS )
						$GV [ $28 ] = StringStripWS ( $GV [ $28 ] , 1 )
					EndIf
				WEnd
				$GP += $GR
			EndIf
		Next
		If $GJ Then
			$GM [ 0 ] = StringRegExpReplace ( $GM [ 0 ] , "\x20?XXXXXXXX" , @TAB )
		EndIf
		$GM [ 1 ] = $GO
		$GM [ 2 ] = $GE
		$GM [ 3 ] = ( $GP * $GO ) + 4
	Else
		Local $GM [ 4 ] = [ $GB , $GO , $GQ , ( $GV [ 0 ] * $GO ) + 4 ]
	EndIf
	DllCall ( "gdi32.dll" , "handle" , "SelectObject" , "handle" , $GF , "handle" , $GL )
	DllCall ( "gdi32.dll" , "bool" , "DeleteObject" , "handle" , $GG )
	DllCall ( "user32.dll" , "int" , "ReleaseDC" , "hwnd" , 0 , "handle" , $GF )
	If $GH Then GUICtrlDelete ( $GH )
	Return $GM
EndFunc
Func _1BS ( $GW , $GF = 0 , $GG = 0 , $GH = 0 )
	If $GG <> 0 Then DllCall ( "gdi32.dll" , "bool" , "DeleteObject" , "handle" , $GG )
	If $GF <> 0 Then DllCall ( "user32.dll" , "int" , "ReleaseDC" , "hwnd" , 0 , "handle" , $GF )
	If $GH Then GUICtrlDelete ( $GH )
	Return $GW
EndFunc
Func _1BT ( )
	Local $GX = DllStructCreate ( "uint;int;int;int;int;int;byte[60];int;int;byte[60];int;int;byte[60];byte[60];byte[60]" )
	DllStructSetData ( $GX , 1 , DllStructGetSize ( $GX ) )
	DllCall ( "user32.dll" , "int" , "SystemParametersInfo" , "int" , 41 , "int" , DllStructGetSize ( $GX ) , "ptr" , DllStructGetPtr ( $GX ) , "int" , 0 )
	Local $GY = DllStructCreate ( "long;long;long;long;long;byte;byte;byte;byte;byte;byte;byte;byte;char[32]" , DllStructGetPtr ( $GX , 13 ) )
	If IsString ( DllStructGetData ( $GY , 14 ) ) Then
		Return DllStructGetData ( $GY , 14 )
	Else
		Return "Tahoma"
	EndIf
EndFunc
Global Const $GZ = 1
Global Const $H0 = 139273
Global Const $H1 = 2498570
Global $H2 = 0
Global $H3 = 0
Global $H4 = 0
Global $H5 = True
Func _1C6 ( $A6 )
	Local $4Q = DllCall ( $H2 , "int" , "GdipCreateBitmapFromFile" , "wstr" , $A6 , "handle*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $4Q [ 0 ] Then Return SetError ( 10 , $4Q [ 0 ] , 0 )
	Return $4Q [ 2 ]
EndFunc
Func _1CB ( $7T , $H6 , $H7 = $H1 , $H8 = 0 , $H9 = 0 )
	Local $4Q = DllCall ( $H2 , "uint" , "GdipCreateBitmapFromScan0" , "int" , $7T , "int" , $H6 , "int" , $H8 , "int" , $H7 , "struct*" , $H9 , "handle*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $4Q [ 0 ] Then Return SetError ( 10 , $4Q [ 0 ] , 0 )
	Return $4Q [ 6 ]
EndFunc
Func _1CE ( $HA )
	Local $4Q = DllCall ( $H2 , "int" , "GdipDisposeImage" , "handle" , $HA )
	If @error Then Return SetError ( @error , @extended , False )
	If $4Q [ 0 ] Then Return SetError ( 10 , $4Q [ 0 ] , False )
	Return True
EndFunc
Func _1CI ( $HA , $HB , $HC , $7T , $H6 , $86 = $GZ , $8I = $H0 )
	Local $D6 = DllStructCreate ( $5F )
	Local $HD = DllStructCreate ( $5D )
	DllStructSetData ( $HD , "Left" , $HB )
	DllStructSetData ( $HD , "Top" , $HC )
	DllStructSetData ( $HD , "Right" , $7T )
	DllStructSetData ( $HD , "Bottom" , $H6 )
	Local $4Q = DllCall ( $H2 , "int" , "GdipBitmapLockBits" , "handle" , $HA , "struct*" , $HD , "uint" , $86 , "int" , $8I , "struct*" , $D6 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $4Q [ 0 ] Then Return SetError ( 10 , $4Q [ 0 ] , 0 )
	Return $D6
EndFunc
Func _1CL ( $HA , $HE )
	Local $4Q = DllCall ( $H2 , "int" , "GdipBitmapUnlockBits" , "handle" , $HA , "struct*" , $HE )
	If @error Then Return SetError ( @error , @extended , False )
	If $4Q [ 0 ] Then Return SetError ( 10 , $4Q [ 0 ] , False )
	Return True
EndFunc
Func _1DU ( $HF )
	Local $4Q = DllCall ( $H2 , "int" , "GdipDeleteGraphics" , "handle" , $HF )
	If @error Then Return SetError ( @error , @extended , False )
	If $4Q [ 0 ] Then Return SetError ( 10 , $4Q [ 0 ] , False )
	Return True
EndFunc
Func _1E4 ( $HF , $HG , $HH , $HI , $HJ , $HK )
	Local $4Q = DllCall ( $H2 , "int" , "GdipDrawImageRect" , "handle" , $HF , "handle" , $HG , "float" , $HH , "float" , $HI , "float" , $HJ , "float" , $HK )
	If @error Then Return SetError ( @error , @extended , False )
	If $4Q [ 0 ] Then Return SetError ( 10 , $4Q [ 0 ] , False )
	Return True
EndFunc
Func _1F5 ( $HF , $HL )
	Local $4Q = DllCall ( $H2 , "int" , "GdipSetInterpolationMode" , "handle" , $HF , "int" , $HL )
	If @error Then Return SetError ( @error , @extended , False )
	If $4Q [ 0 ] Then Return SetError ( 10 , $4Q [ 0 ] , False )
	Return True
EndFunc
Func _1FP ( $HG )
	Local $4Q = DllCall ( $H2 , "int" , "GdipGetImageGraphicsContext" , "handle" , $HG , "handle*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $4Q [ 0 ] Then Return SetError ( 10 , $4Q [ 0 ] , 0 )
	Return $4Q [ 2 ]
EndFunc
Func _1K7 ( )
	If $H2 = 0 Then Return SetError ( + 4294967295 , + 4294967295 , False )
	$H3 -= 1
	If $H3 = 0 Then
		DllCall ( $H2 , "none" , "GdiplusShutdown" , "ulong_ptr" , $H4 )
		DllClose ( $H2 )
		$H2 = 0
	EndIf
	Return True
EndFunc
Func _1K8 ( $HM = Default , $HN = False )
	$H3 += 1
	If $H3 > 1 Then Return True
	If $HM = Default Then $HM = "gdiplus.dll"
	$H2 = DllOpen ( $HM )
	If $H2 = + 4294967295 Then
		$H3 = 0
		Return SetError ( 1 , 2 , False )
	EndIf
	Local $HO = FileGetVersion ( $HM )
	$HO = StringSplit ( $HO , "." )
	If $HO [ 1 ] > 5 Then $H5 = False
	Local $HP = DllStructCreate ( $5G )
	Local $HQ = DllStructCreate ( "ulong_ptr Data" )
	DllStructSetData ( $HP , "Version" , 1 )
	Local $4Q = DllCall ( $H2 , "int" , "GdiplusStartup" , "struct*" , $HQ , "struct*" , $HP , "ptr" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	If $4Q [ 0 ] Then Return SetError ( 10 , $4Q [ 0 ] , False )
	$H4 = DllStructGetData ( $HQ , "Data" )
	If $HN Then Return $H2
	Return SetExtended ( $HO [ 1 ] , True )
EndFunc
Global $HR [ 14 ]
Global $HS = _1LH ( )
$HR [ 10 ] = $HS [ 0 ]
$HR [ 11 ] = $HS [ 1 ]
$HS = DllCall ( "User32.dll" , "int" , "GetSysColor" , "int" , 15 )
$HR [ 8 ] = BitAND ( BitShift ( String ( Binary ( $HS [ 0 ] ) ) , 8 ) , 16777215 )
$HS = DllCall ( "User32.dll" , "int" , "GetSysColor" , "int" , 8 )
$HR [ 9 ] = BitAND ( BitShift ( String ( Binary ( $HS [ 0 ] ) ) , 8 ) , 16777215 )
$HS = DllCall ( "user32.dll" , "int" , "GetSystemMetrics" , "int" , 11 )
$HR [ 12 ] = $HS [ 0 ]
$HS = DllCall ( "user32.dll" , "int" , "GetSystemMetrics" , "int" , 30 )
$HR [ 12 ] += ( ( $HS [ 0 ] < 30 ) ? ( $HS [ 0 ] * 3 ) : ( $HS [ 0 ] ) )
$HS = 0
$HS = DllCall ( "dwmapi.dll" , "uint" , "DwmIsCompositionEnabled" , "int*" , $HS )
If Not @error And $HS [ 1 ] = True Then
	$HS = DllCall ( "user32.dll" , "int" , "GetSystemMetrics" , "int" , 7 )
	$HR [ 12 ] += ( $HS [ 0 ] * 4 )
EndIf
$HS = 0
$HR [ 0 ] = 0
$HR [ 1 ] = 0
$HR [ 2 ] = $HR [ 8 ]
$HR [ 3 ] = $HR [ 9 ]
$HR [ 4 ] = $HR [ 10 ]
$HR [ 5 ] = $HR [ 11 ]
$HR [ 6 ] = 370
$HR [ 7 ] = 500
$HR [ 13 ] = "~"
Func _1LF ( $HT = + 4294967295 , $HU = + 4294967295 , $HV = + 4294967295 , $7S = + 4294967295 , $HW = + 4294967295 , $HX = + 4294967295 , $7T = + 4294967295 , $HY = + 4294967295 , $HZ = "~" )
	Switch $HT
	Case Default
		$HR [ 0 ] = 0
		$HR [ 1 ] = 0
		$HR [ 2 ] = $HR [ 8 ]
		$HR [ 3 ] = $HR [ 9 ]
		$HR [ 5 ] = $HR [ 11 ]
		$HR [ 4 ] = $HR [ 10 ]
		$HR [ 6 ] = 370
		$HR [ 7 ] = 370
		$HR [ 13 ] = "~"
		Return
	Case + 4294967295
	Case 0 To 127
		$HR [ 0 ] = Int ( $HT )
Case Else
		Return SetError ( 1 , 1 , 0 )
	EndSwitch
	Switch $HU
	Case Default
		$HR [ 1 ] = 0
	Case + 4294967295
	Case 0 , 1 , 2 , 4 , 5 , 6
		$HR [ 1 ] = $HU
Case Else
		Return SetError ( 1 , 2 , 0 )
	EndSwitch
	Switch $HV
	Case Default
		$HR [ 2 ] = $HR [ 8 ]
	Case + 4294967295
	Case 0 To 16777215
		$HR [ 2 ] = Int ( $HV )
Case Else
		Return SetError ( 1 , 3 , 0 )
	EndSwitch
	Switch $7S
	Case Default
		$HR [ 3 ] = $HR [ 9 ]
	Case + 4294967295
	Case 0 To 16777215
		$HR [ 3 ] = Int ( $7S )
Case Else
		Return SetError ( 1 , 4 , 0 )
	EndSwitch
	Switch $HW
	Case Default
		$HR [ 4 ] = $HR [ 10 ]
	Case + 4294967295
	Case 8 To 72
		$HR [ 4 ] = Int ( $HW )
Case Else
		Return SetError ( 1 , 5 , 0 )
	EndSwitch
	Switch $HX
	Case Default
		$HR [ 5 ] = $HR [ 11 ]
	Case + 4294967295
Case Else
		If IsString ( $HX ) Then
			$HR [ 5 ] = $HX
		Else
			Return SetError ( 1 , 6 , 0 )
		EndIf
	EndSwitch
	Switch $7T
	Case Default
		$HR [ 6 ] = 370
	Case + 4294967295
	Case 370 To @DesktopWidth + 4294967276
		$HR [ 6 ] = Int ( $7T )
Case Else
		Return SetError ( 1 , 7 , 0 )
	EndSwitch
	Switch $HY
	Case Default
		$HR [ 7 ] = 370
	Case + 4294967295
	Case 370 To @DesktopWidth + 4294967276
		$HR [ 7 ] = Int ( $HY )
Case Else
		Return SetError ( 1 , 8 , 0 )
	EndSwitch
	If $HR [ 7 ] < $HR [ 6 ] Then
		$HR [ 7 ] = $HR [ 6 ]
	EndIf
	Switch $HZ
	Case Default
		$HR [ 13 ] = "~"
	Case + 4294967295
Case Else
		If IsString ( $HZ ) Then
			$HR [ 13 ] = StringLeft ( $HZ , 1 )
		Else
			$HR [ 13 ] = "~"
		EndIf
	EndSwitch
	Return 1
EndFunc
Func _1LG ( $I0 , $I1 , $I2 , $GB , $I3 = 0 , $I4 = "" , $I5 = 0 , $I6 = True )
	Local $I7 = $HR [ 6 ] , $I8 = 150 , $I9 = $HR [ 7 ]
	Local $IA = 100
	Local $IB = 80 , $IC = 50
	Local $ID = 0 , $IE = False , $IF , $IG , $D1 , $IH , $II
	Local $IJ , $IK , $IL
	$I3 = Int ( Number ( $I3 ) )
	If $I3 < 0 Then
		$I3 = 0
	EndIf
	If $I1 == " " And $I3 = 0 Then
		$I3 = 5
	EndIf
	Local $IM = 0
	Local $IN = 36
	Local $IO = "user32.dll"
	Local $IP = ""
	If $I3 = 0 And $I0 = 128 Then
		$I0 = 0
	EndIf
	If StringIsDigit ( $I0 ) Then
		Switch $I0
		Case 0
			$IN = 0
		Case 8
			$IO = "imageres.dll"
			$IM = 78
		Case 16
			$IM = + 4294967292
		Case 32
			$IM = + 4294967293
		Case 48
			$IM = + 4294967294
		Case 64
			$IM = + 4294967291
		Case 128
			If $I3 > 0 Then
				$IE = True
			EndIf
	Case Else
			Return SetError ( 1 , 0 , + 4294967295 )
		EndSwitch
	Else
		If StringInStr ( $I0 , "|" ) Then
			$IM = StringRegExpReplace ( $I0 , "(.*)\|" , "" )
			$IO = StringRegExpReplace ( $I0 , "\|.*$" , "" )
		Else
			Switch StringLower ( StringRight ( $I0 , 3 ) )
			Case "exe" , "ico"
				$IO = $I0
			Case "bmp" , "jpg" , "gif" , "png"
				$IP = $I0
			EndSwitch
		EndIf
	EndIf
	Local $HZ = $HR [ 13 ]
	StringReplace ( $I1 , $HZ , "" )
	If @extended > 1 Then
		Return SetError ( 2 , 0 , + 4294967295 )
	EndIf
	If IsNumber ( $I1 ) Then
		Switch $I1
		Case 0
			$I1 = "OK"
		Case 1
			$I1 = $HZ & "OK|Cancel"
		Case 2
			$I1 = $HZ & "Abort|Retry|Ignore"
		Case 3
			$I1 = $HZ & "Yes|No|Cancel"
		Case 4
			$I1 = $HZ & "Yes|No"
		Case 5
			$I1 = $HZ & "Retry|Cancel"
		Case 6
			$I1 = $HZ & "Cancel|Try Again|Continue"
	Case Else
			Return SetError ( 3 , 0 , + 4294967295 )
		EndSwitch
	EndIf
	Local $IQ [ 1 ] = [ 0 ]
	Local $IR = 0
	If $I1 <> " " Then
		$IQ = StringSplit ( $I1 , "|" )
		Local $IS = Floor ( ( ( $I7 + 4294967286 ) / $IQ [ 0 ] ) + 4294967286 )
		If $IS < $IC Then
			Return SetError ( 4 , 0 , + 4294967295 )
		EndIf
		Local $IT = 0
		For $21 = 1 To $IQ [ 0 ]
			$IJ = StringRegExpReplace ( $IQ [ $21 ] , "^" & $HZ & "?(.*)$" , "$1" )
			If BitAND ( $HR [ 0 ] , 4 ) Then
				$D1 = _1BR ( $IJ , $HR [ 10 ] , Default , Default , $HR [ 11 ] )
			Else
				$D1 = _1BR ( $IJ , $HR [ 4 ] , Default , Default , $HR [ 5 ] )
			EndIf
			If IsArray ( $D1 ) And $D1 [ 2 ] + 10 > $IT Then
				$IT = $D1 [ 2 ] + 10
			EndIf
		Next
		If $IT > $IS Then
			Return SetError ( 5 , 0 , + 4294967295 )
		EndIf
		$IK = $IB
		If $IT > $IB Then
			$IK = $IT
		EndIf
		If $IS < $IB Then
			If $IT > $IC Then
				$IK = $IT
			Else
				$IK = $IC
			EndIf
		EndIf
		$IR = ( ( $IK + 10 ) * $IQ [ 0 ] ) + 10
	EndIf
	Local $GJ = Default
	If BitAND ( $HR [ 0 ] , 8 ) Then
		$GJ = 1
	EndIf
	While 1
		Local $IU = _1BR ( $GB , $HR [ 4 ] , Default , $GJ , $HR [ 5 ] , $I7 + 4294967276 - $IN )
		If @error Then
			If $I7 >= $I9 Then
				Return SetError ( 6 , 0 , + 4294967295 )
			Else
				$I7 += 10
			EndIf
		Else
			ExitLoop
		EndIf
	WEnd
	$GB = $IU [ 0 ]
	Local $IV = $IU [ 2 ]
	Local $IW = $IU [ 3 ]
	Local $IX = $IV + 20 + $IN
	If $IR > $IX Then $IX = $IR
	If $IX < $I8 Then
		$IX = $I8
		$IV = $I8 + 4294967276
	EndIf
	Local $IY = $IX
	Local $IZ = _1BR ( $I2 , $HR [ 10 ] , Default , Default , $HR [ 11 ] )
	If $IZ [ 2 ] > ( $IX + 4294967226 ) Then
		$IY = ( ( $IZ [ 2 ] < ( $HR [ 7 ] - $HR [ 12 ] ) ) ? ( $IZ [ 2 ] + $HR [ 12 ] ) : ( $HR [ 7 ] ) )
	EndIf
	Local $J0 = $IW + 35
	If $I1 <> " " Then
		$J0 += 30
	EndIf
	If BitAND ( $HR [ 0 ] , 16 ) Then
		$J0 += 40
	EndIf
	If $J0 < $IA Then $J0 = $IA
	Local $J1 = 20
	If StringInStr ( $GB , @CRLF ) = 0 Then $J1 = 27
	If Mod ( $HR [ 0 ] , 2 ) = 1 Then
		If IsHWnd ( $I4 ) Then
			$ID = $I4
		Else
			$ID = WinGetHandle ( AutoItWinGetTitle ( ) )
		EndIf
	EndIf
	If $I4 = "" Then
		$II = ( @DesktopWidth - $IY ) / 2
		$I5 = ( @DesktopHeight - $J0 ) / 2
	Else
		If IsHWnd ( $I4 ) Then
			If BitAND ( WinGetState ( $I4 ) , 2 ) Then
				Local $J2 = WinGetPos ( $I4 )
				$II = ( $J2 [ 2 ] - $IY ) / 2 + $J2 [ 0 ] + 4294967293
				$I5 = ( $J2 [ 3 ] - $J0 ) / 2 + $J2 [ 1 ] + 4294967276
			Else
				$II = ( @DesktopWidth - $IY ) / 2
				$I5 = ( @DesktopHeight - $J0 ) / 2
			EndIf
		Else
			$II = $I4
		EndIf
	EndIf
	If $I6 Then
		If $II < 10 Then $II = 10
		If $II + $IY > @DesktopWidth + 4294967276 Then $II = @DesktopWidth + 4294967276 - $IY
		If $I5 < 10 Then $I5 = 10
		If $I5 + $J0 > @DesktopHeight + 4294967236 Then $I5 = @DesktopHeight + 4294967236 - $J0
	EndIf
	Local $J3 = 8
	If BitAND ( $HR [ 0 ] , 2 ) Then $J3 = + 4294967295
	Local $J4 = GUICreate ( $I2 , $IY , $J0 , $II , $I5 , BitOR ( 2156396544 , 12582912 ) , $J3 , $ID )
	If @error Then
		Return SetError ( 7 , 0 , + 4294967295 )
	EndIf
	If BitAND ( $HR [ 0 ] , 32 ) Then
		If @Compiled Then
			GUISetIcon ( @ScriptName , + 4294967294 , $J4 )
		Else
			GUISetIcon ( @AutoItExe , + 4294967294 , $J4 )
		EndIf
	EndIf
	If $HR [ 2 ] <> Default Then GUISetBkColor ( $HR [ 2 ] )
	If BitAND ( $HR [ 0 ] , 64 ) Then
		$D1 = DllCall ( "User32.dll" , "hwnd" , "GetSystemMenu" , "hwnd" , $J4 , "int" , 0 )
		Local $J5 = $D1 [ 0 ]
		DllCall ( "User32.dll" , "int" , "RemoveMenu" , "hwnd" , $J5 , "int" , 61536 , "int" , 0 )
		DllCall ( "User32.dll" , "int" , "DrawMenuBar" , "hwnd" , $J4 )
	EndIf
	Local $J6 = 0
	If BitAND ( $HR [ 1 ] , 1 ) = 1 Then
		$J6 = 1
	ElseIf BitAND ( $HR [ 1 ] , 2 ) = 2 Then
		$J6 = 2
	EndIf
	GUICtrlCreateLabel ( $GB , 10 + $IN , $J1 , $IV , $IW , $J6 )
	GUICtrlSetFont ( + 4294967295 , $HR [ 4 ] , Default , Default , $HR [ 5 ] )
	If $HR [ 3 ] <> Default Then GUICtrlSetColor ( + 4294967295 , $HR [ 3 ] )
	If BitAND ( $HR [ 0 ] , 16 ) Then
		Local $J7 = " Do not show again"
		Local $J8 = $J1 + $IW + 10
		$IF = GUICtrlCreateCheckbox ( "" , 10 + $IN , $J8 , 20 , 20 )
		Local $J9 = GUICtrlCreateLabel ( $J7 , 20 , 20 , 20 , 20 )
		GUICtrlSetColor ( $J9 , $HR [ 3 ] )
		GUICtrlSetBkColor ( $J9 , $HR [ 2 ] )
		If BitAND ( $HR [ 0 ] , 4 ) Then
			$IG = _1BR ( $J7 )
		Else
			$IG = _1BR ( $J7 , $HR [ 4 ] , 400 , 0 , $HR [ 5 ] )
			GUICtrlSetFont ( $J9 , $HR [ 4 ] , 400 , 0 , $HR [ 5 ] )
		EndIf
		$J8 = ( $J8 + 10 ) - ( $IG [ 3 ] + 4294967292 ) / 2
		ControlMove ( $J4 , "" , $J9 , 30 + $IN , $J8 , $IX - ( 30 + $IN ) , $IG [ 3 ] )
	EndIf
	If $IE = True Then
		Local $JA = GUICtrlCreateLabel ( StringFormat ( "%2s" , $I3 ) , 10 , 20 , 32 , 32 )
		GUICtrlSetFont ( + 4294967295 , 18 , Default , Default , $HR [ 5 ] )
		GUICtrlSetColor ( + 4294967295 , $HR [ 3 ] )
	Else
		If $IN Then
			Switch StringLower ( StringRight ( $IP , 3 ) )
			Case "bmp" , "jpg" , "gif"
				GUICtrlCreatePic ( $IP , 4 , 4 , 32 , 32 )
			Case "png"
				_1LI ( $IP )
		Case Else
				GUICtrlCreateIcon ( $IO , $IM , 4 , 4 )
			EndSwitch
		EndIf
	EndIf
	Local $JB [ $IQ [ 0 ] + 1 ] = [ 9999 ]
	If $I1 <> " " Then
		If $IQ [ 0 ] = 1 Then
			If BitAND ( $HR [ 1 ] , 4 ) = 4 Then
				$IL = ( $IX - $IK ) / 2
			Else
				$IL = $IX - $IK + 4294967286
			EndIf
		Else
			$IL = ( $IX - ( $IR + 4294967276 ) ) / 2
		EndIf
		Local $JC = 0
		For $21 = 0 To $IQ [ 0 ] + 4294967295
			Local $JD = $IQ [ $21 + 1 ]
			If $IQ [ 0 ] = 1 Then
				$JC = 1
			ElseIf StringLeft ( $JD , 1 ) = $HZ Then
				$JC = 1
				$IQ [ $21 + 1 ] = StringTrimLeft ( $JD , 1 )
			EndIf
			$JB [ $21 + 1 ] = GUICtrlCreateButton ( $IQ [ $21 + 1 ] , $IL + ( $21 * ( $IK + 10 ) ) , $J0 + 4294967261 , $IK , 25 , $JC )
			If $JC Then
				GUICtrlSetState ( $JB [ $21 + 1 ] , 256 )
			EndIf
			If Not BitAND ( $HR [ 0 ] , 4 ) Then GUICtrlSetFont ( + 4294967295 , $HR [ 4 ] , 400 , 0 , $HR [ 5 ] )
			$JC = 0
		Next
	EndIf
	GUISetState ( @SW_SHOW , $J4 )
	Local $JE = TimerInit ( )
	Local $JF = 0
	Local $JG
	Local $JH = Opt ( "GUIOnEventMode" , 0 )
	While 1
		$JG = GUIGetMsg ( 1 )
		If $JG [ 1 ] = $J4 Then
			Select
			Case $JG [ 0 ] = + 4294967293
				$IH = 0
				ExitLoop
		Case Else
				For $21 = 1 To UBound ( $JB ) + 4294967295
					If $JG [ 0 ] = $JB [ $21 ] Then
						$IH = $21
						ExitLoop 2
					EndIf
				Next
			EndSelect
		EndIf
		If TimerDiff ( $JE ) / 1000 >= $I3 And $I3 > 0 Then
			$IH = 9
			ExitLoop
		EndIf
		If $IE = True Then
			Local $JI = Int ( TimerDiff ( $JE ) / 1000 )
			If $JI <> $JF Then
				$JF = $JI
				GUICtrlSetData ( $JA , StringFormat ( "%2s" , $I3 - $JF ) )
			EndIf
		EndIf
	WEnd
	Opt ( "GUIOnEventMode" , $JH )
	If GUICtrlRead ( $IF ) = 1 Then
		$IH *= + 4294967295
	EndIf
	GUIDelete ( $J4 )
	Return $IH
EndFunc
Func _1LH ( )
	Local $JJ [ 2 ] = [ 9 , "Tahoma" ]
	Local $5N = WinGetHandle ( AutoItWinGetTitle ( ) )
	Local $JK = DllOpen ( "uxtheme.dll" )
	Local $JL = DllCall ( $JK , "ptr" , "OpenThemeData" , "hwnd" , $5N , "wstr" , "Static" )
	If @error Then Return $JJ
	$JL = $JL [ 0 ]
	Local $JM = DllStructCreate ( "long;long;long;long;long;byte;byte;byte;byte;byte;byte;byte;byte;wchar[32]" )
	Local $JN = DllStructGetPtr ( $JM )
	DllCall ( $JK , "long" , "GetThemeSysFont" , "HANDLE" , $JL , "int" , 805 , "ptr" , $JN )
	If @error Then Return $JJ
	Local $GF = DllCall ( "user32.dll" , "handle" , "GetDC" , "hwnd" , $5N )
	If @error Then Return $JJ
	$GF = $GF [ 0 ]
	Local $JO = DllCall ( "gdi32.dll" , "int" , "GetDeviceCaps" , "handle" , $GF , "int" , 90 )
	If Not @error Then
		$JO = $JO [ 0 ]
		$JJ [ 0 ] = Int ( 2 * ( 0.25 - DllStructGetData ( $JM , 1 ) * 72 / $JO ) ) / 2
	EndIf
	DllCall ( "user32.dll" , "int" , "ReleaseDC" , "hwnd" , $5N , "handle" , $GF )
	$JJ [ 1 ] = DllStructGetData ( $JM , 14 )
	Return $JJ
EndFunc
Func _1LI ( $IP )
	_1K8 ( )
	Local $JP = GUICtrlCreatePic ( "" , 4 , 4 , 32 , 32 )
	Local $HA = _1C6 ( $IP )
	Local $JQ = _1CB ( 32 , 32 )
	Local $JR = _1FP ( $JQ )
	_1F5 ( $JR , 7 )
	_1E4 ( $JR , $HA , 0 , 0 , 32 , 32 )
	Local $JS = _1LJ ( $JQ )
	_5X ( GUICtrlSendMsg ( $JP , 370 , 0 , $JS ) )
	_1CE ( $HA )
	_1CE ( $JQ )
	_1DU ( $JR )
	_5X ( $JS )
	_1K7 ( )
EndFunc
Func _1LJ ( $HA )
	Local $JT = 0
	Local $JU = DllCall ( $H2 , "uint" , "GdipGetImageDimension" , "ptr" , $HA , "float*" , 0 , "float*" , 0 )
	If ( @error ) Or ( $JU [ 0 ] ) Then Return 0
	Local $D6 = _1CI ( $HA , 0 , 0 , $JU [ 2 ] , $JU [ 3 ] , $GZ , $H1 )
	Local $JV = DllStructGetData ( $D6 , "Scan0" )
	If Not $JV Then Return 0
	Local $JW = DllStructCreate ( "dword;long;long;ushort;ushort;dword;dword;long;long;dword;dword" )
	DllStructSetData ( $JW , 1 , DllStructGetSize ( $JW ) )
	DllStructSetData ( $JW , 2 , $JU [ 2 ] )
	DllStructSetData ( $JW , 3 , $JU [ 3 ] )
	DllStructSetData ( $JW , 4 , 1 )
	DllStructSetData ( $JW , 5 , 32 )
	DllStructSetData ( $JW , 6 , 0 )
	Local $JX = DllCall ( "gdi32.dll" , "ptr" , "CreateDIBSection" , "hwnd" , 0 , "ptr" , DllStructGetPtr ( $JW ) , "uint" , 0 , "ptr*" , 0 , "ptr" , 0 , "dword" , 0 )
	If ( Not @error ) And ( $JX [ 0 ] ) Then
		DllCall ( "gdi32.dll" , "dword" , "SetBitmapBits" , "ptr" , $JX [ 0 ] , "dword" , $JU [ 2 ] * $JU [ 3 ] * 4 , "ptr" , DllStructGetData ( $D6 , "Scan0" ) )
		$JT = $JX [ 0 ]
	EndIf
	_1CL ( $HA , $D6 )
	Return $JT
EndFunc
Global $JY , $JZ = DllStructGetSize ( DllStructCreate ( "int type;int start;int end;int size;int parent" ) )
Func _1M5 ( )
	Global $K0 = "Supprimer les outils"
	Global $K1 = "Supprimer les points de restaurations"
	Global $K2 = "Créer un point de restauration"
	Global $K3 = "Sauvegarder le registre"
	Global $K4 = "Restaurer UAC"
	Global $K5 = "Restaurer les paramètres système"
	Global $K6 = "Exécuter"
	Global $K7 = "Toutes les opérations sont terminées"
	Global $K8 = "Échec"
	Global $K9 = "Impossible de créer une sauvegarde du registre"
	Global $KA = "Vous devez exécuter le programme avec les droits administrateurs"
	Global $KB = "Mise à jour"
	Global $KC = "Une version plus récente de KpRm existe, merci de la télécharger."
	Global $KD = "Vous devez redémarrer votre ordinateur pour terminer certaines actions"
	Global $KE = "Supprimer les quarantaines"
	Global $KF = "Supprimer maintenant"
	Global $KG = "Supprimer dans 7 jours"
	Global $KH = "Automatique"
	Global $KI = "Personnalisé"
	Global $KJ = "Aucun"
	Global $KK = "Tous"
	Global $KL = "Vider"
	Global $KM = "Analyser"
	Global $KN = "Supprimer"
	Global $KO = "Actions"
	Global $KP = "Aucun élément de sélectionné"
	Global $KQ = "Terminé"
	Global $KR = "Aucun outil trouvé"
	Global $KS = "Vous devez choisir une action"
EndFunc
Func _1M6 ( )
	Global $K0 = "Delete Tools"
	Global $K1 = "Delete Restore Points"
	Global $K2 = "Create Restore Point"
	Global $K3 = "Registry Backup"
	Global $K4 = "UAC Restore"
	Global $K5 = "Restore System Settings"
	Global $K6 = "Run"
	Global $K7 = "All operations are completed"
	Global $K8 = "Fail"
	Global $K9 = "Unable to create a registry backup"
	Global $KA = "You must run the program with administrator rights"
	Global $KB = "Update"
	Global $KC = "A more recent version of KpRm exists, please download it!"
	Global $KD = "You must restart your computer to complete certain actions"
	Global $KE = "Delete quarantines"
	Global $KF = "Delete now"
	Global $KG = "Delete in 7 days"
	Global $KH = "Automatic"
	Global $KI = "Customized"
	Global $KJ = "None"
	Global $KK = "All"
	Global $KL = "Empty"
	Global $KM = "Analyze"
	Global $KN = "Delete"
	Global $KO = "Actions"
	Global $KP = "No selected element"
	Global $KQ = "Completed"
	Global $KR = "No tools found"
	Global $KS = "You must choose an action"
EndFunc
Func _1M7 ( )
	Global $K0 = "Werkzeuge löschen"
	Global $K1 = "Wiederherstellungspunkte löschen"
	Global $K2 = "Erstellen eines Wiederherstellungspunktes"
	Global $K3 = "Speichern der Registrierung"
	Global $K4 = "UAC wiederherstellen"
	Global $K5 = "Systemeinstellungen wiederherstellen"
	Global $K6 = "Ausführen"
	Global $K7 = "Alle Vorgänge sind abgeschlossen"
	Global $K8 = "Ausfall"
	Global $K9 = "Es ist nicht möglich, ein Registrierungs-Backup zu erstellen"
	Global $KA = "Sie müssen das Programm mit Administratorrechten ausführen"
	Global $KB = "Update"
	Global $KC = "Es gibt eine neuere Version von KpRm, bitte laden Sie sie herunter."
	Global $KD = "Sie müssen Ihren Computer neu starten, um bestimmte Aktionen durchzuführen."
	Global $KE = "Quarantäne löschen"
	Global $KF = "Jetzt löschen"
	Global $KG = "Löschen in 7 Tagen"
	Global $KH = "Automatisch"
	Global $KI = "Personalisiert"
	Global $KJ = "Keine"
	Global $KK = "Alle"
	Global $KL = "Leer"
	Global $KM = "Analysieren"
	Global $KN = "Löschen"
	Global $KO = "Aktionen"
	Global $KP = "Kein ausgewähltes Element"
	Global $KQ = "Abgeschlossen"
	Global $KR = "Keine Werkzeuge gefunden"
	Global $KS = "Du musst eine Aktion auswählen"
EndFunc
Func _1M8 ( )
	Global $K0 = "Cancella strumenti"
	Global $K1 = "Elimina punti di ripristino"
	Global $K2 = "Crea un punto di ripristino"
	Global $K3 = "Salva registro"
	Global $K4 = "Ripristina UAC"
	Global $K5 = "Ripristina impostazioni di sistema"
	Global $K6 = "Eseguire"
	Global $K7 = "Tutte le operazioni sono completate"
	Global $K8 = "Fallimento"
	Global $K9 = "Impossibile creare un backup del registro di sistema"
	Global $KA = "È necessario eseguire il programma con i diritti di amministratore"
	Global $KB = "Aggiorna"
	Global $KC = "Esiste una versione più recente di KpRm, scaricatela, per favore"
	Global $KD = "È necessario riavviare il computer per completare determinate azioni"
	Global $KE = "Cancellare le quarantene"
	Global $KF = "Cancella ora"
	Global $KG = "Cancella in 7 giorni"
	Global $KH = "Automatico"
	Global $KI = "Personalizzati"
	Global $KJ = "Nessuna"
	Global $KK = "Tutti"
	Global $KL = "Vuoto"
	Global $KM = "Analizzare"
	Global $KN = "Cancellare"
	Global $KO = "Azioni"
	Global $KP = "Nessun elemento selezionato"
	Global $KQ = "Completato"
	Global $KR = "Nessun utensile trovato"
	Global $KS = "È necessario scegliere un'azione"
EndFunc
Func _1M9 ( )
	Global $K0 = "Apagar ferramentas"
	Global $K1 = "Deletar pontos de restauração"
	Global $K2 = "Criar um ponto de restauração"
	Global $K3 = "Salvar registro"
	Global $K4 = "Restaurar UAC"
	Global $K5 = "Restaurar configurações do sistema"
	Global $K6 = "Executar"
	Global $K7 = "Todas as operações estão concluídas"
	Global $K8 = "Falha"
	Global $K9 = "Incapaz de criar um backup do registro"
	Global $KA = "Você deve executar o programa com direitos de administrador"
	Global $KB = "Atualizar"
	Global $KC = "Uma nova versão do KpRm existe, por favor faça o download."
	Global $KD = "Você deve reiniciar seu computador para concluir certas ações"
	Global $KE = "Eliminar quarentenas"
	Global $KF = "Eliminar agora"
	Global $KG = "Eliminar em 7 dias"
	Global $KH = "Automático"
	Global $KI = "Personalizado"
	Global $KJ = "Nenhuma"
	Global $KK = "Todos"
	Global $KL = "Vazio"
	Global $KM = "Analisar"
	Global $KN = "Eliminar"
	Global $KO = "Ações"
	Global $KP = "Nenhum item marcado"
	Global $KQ = "Concluído"
	Global $KR = "Nenhuma ferramenta encontrada"
	Global $KS = "Você deve escolher uma ação"
EndFunc
Func _1MA ( )
	Global $K0 = "Инструменты удаления"
	Global $K1 = "Удалить точки восстановления"
	Global $K2 = "Создать точку восстановления"
	Global $K3 = "Резервное копирование реестра"
	Global $K4 = "Восстановление UAC"
	Global $K5 = "Восстановить настройки системы"
	Global $K6 = "Запустить"
	Global $K7 = "Все операции завершены"
	Global $K8 = "Ошибка"
	Global $K9 = "Не удается создать резервную копию реестра"
	Global $KA = "Вы должны запустить программу от имени администратора"
	Global $KB = "Обновление"
	Global $KC = "Существует более свежая версия KpRm, пожалуйста, скачайте её!"
	Global $KD = "Для выполнения определенных действий необходимо перезагрузить компьютер."
	Global $KE = "Удалить карантин"
	Global $KF = "Удалить"
	Global $KG = "Удалить через 7 дней"
	Global $KH = "Автоматический"
	Global $KI = "Персонализированный"
	Global $KJ = "Нет"
	Global $KK = "Все они"
	Global $KL = "Пусто"
	Global $KM = "Анализировать"
	Global $KN = "Удалить"
	Global $KO = "Действия"
	Global $KP = "Нет выбранных элементов"
	Global $KQ = "Завершено"
	Global $KR = "Инструментов не найдено"
	Global $KS = "Вы должны выбрать действие"
EndFunc
Func _1MB ( )
	Global $K0 = "Borrar herramientas"
	Global $K1 = "Eliminar puntos de restauración"
	Global $K2 = "Crear un punto de restauración"
	Global $K3 = "Guardar el registro"
	Global $K4 = "Restaurar UAC"
	Global $K5 = "Restaurar ajustes del sistema"
	Global $K6 = "Ejecutar"
	Global $K7 = "Todas las operaciones están terminadas"
	Global $K8 = "fallo"
	Global $K9 = "Incapaz de crear una copia de seguridad del registro"
	Global $KA = "Debe ejecutar el programa con derechos de administrador"
	Global $KB = "Actualización"
	Global $KC = "Existe una nueva versión de KpRm, por favor descárguela."
	Global $KD = "Debe reiniciar el equipo para completar ciertas acciones"
	Global $KE = "Borrar cuarentenas"
	Global $KF = "Borrar ahora"
	Global $KG = "Borrar en 7 días"
	Global $KH = "Automático"
	Global $KI = "Personalizado"
	Global $KJ = "Ninguno"
	Global $KK = "Todos"
	Global $KL = "Vacío"
	Global $KM = "Analizar"
	Global $KN = "Borrar"
	Global $KO = "Acciones"
	Global $KP = "Ninguna posición fija"
	Global $KQ = "Concluido"
	Global $KR = "No se han encontrado herramientas"
	Global $KS = "Debe seleccionar una acción"
EndFunc
Func _1MC ( )
	Global $K0 = "Gereedschap verwijderen"
	Global $K1 = "Restauratiepunten verwijderen"
	Global $K2 = "Creëer een herstelpunt"
	Global $K3 = "Sla het register op"
	Global $K4 = "UAC herstellen"
	Global $K5 = "Systeeminstellingen herstellen"
	Global $K6 = "Uitvoeren"
	Global $K7 = "Alle bewerkingen zijn voltooid"
	Global $K8 = "Falen"
	Global $K9 = "Niet in staat om een back-up van het register te maken"
	Global $KA = "U moet het programma met beheerdersrechten uitvoeren."
	Global $KB = "Update"
	Global $KC = "Een recentere versie van KpRm bestaat, download deze alsjeblieft."
	Global $KD = "U moet uw computer opnieuw opstarten om bepaalde acties te voltooien"
	Global $KE = "Quarantaines verwijderen"
	Global $KF = "Nu verwijderen"
	Global $KG = "Verwijderen in 7 dagen"
	Global $KH = "Automatisch"
	Global $KI = "Gepersonaliseerd"
	Global $KJ = "Geen"
	Global $KK = "Allemaal"
	Global $KL = "Leeg"
	Global $KM = "Analyseren"
	Global $KN = "Verwijderen"
	Global $KO = "Acties"
	Global $KP = "Geen geselecteerde artikele"
	Global $KQ = "Voltooid"
	Global $KR = "Geen gereedschap gevonden"
	Global $KS = "Je moet een actie kiezen"
EndFunc
Select
Case StringRegExp ( @OSLang , "..0C$" )
	_1M5 ( )
Case StringRegExp ( @OSLang , "..10$" )
	_1M8 ( )
Case StringRegExp ( @OSLang , "..07$" )
	_1M7 ( )
Case StringRegExp ( @OSLang , "..0A$" )
	_1MB ( )
Case StringRegExp ( @OSLang , "..16$" )
	_1M9 ( )
Case StringRegExp ( @OSLang , "..13$" )
	_1MC ( )
Case StringRegExp ( @OSLang , "..19$" )
	_1MA ( )
Case Else
	_1M6 ( )
EndSelect
Global $KT = False
Global $KU = "2.18.0"
Global $KV = @TempDir & "\KPRM"
Global $KW = "KpRm"
Global $KX = @YEAR & @MON & @MDAY & @HOUR & @MIN & @SEC
Global $KY = @YEAR & "-" & @MON & "-" & @MDAY & "-" & @HOUR & "-" & @MIN & "-" & @SEC
Global $KZ = "kprm-" & $KX & ".txt"
Global $L0 = Null
Global $L1 = Null
Global $L2 = False
Global $L3 = False
Global $L4 = False
Global $L5 [ 1 ] [ 2 ] = [ [ ] ]
Global $L6 [ 1 ] [ 2 ] = [ [ ] ]
Global $L7 = [ ]
Global $L8 = 16
Global $L9 = 220
Global $LA = 8
Global $LB = 400
Global $LC = 17
Global $LD = 39
Global $LE = 31
Global $LF = 36
Global $LG = 16777215
Global $LH = 1710618
Global $LI = 2763306
Global $LJ = 6537461
Global $LK = 11921491
Global $LL = 16204850
Global $LM = 61458
Global $LN = Null
Global $LO = Null
Global $LP = Null
Global $LQ
Global $LR
Global $LS
Global $LT
Global $LU
Global $LV
Global $LW
Global $LX
Global $LY
Global $LZ
Global $M0
Global $M1
Global $M2
Global $LO
Global $M3 = 27
Global $M4
Global Const $M5 = Floor ( 100 / $M3 )
Global $M6 = Null
Global $M7 = [ "desktop" , "desktopCommon" , "download" , "homeDrive" , "programFiles" , "appData" , "appDataCommon" , "appDataLocal" , "windowsFolder" , "startMenu" , "userStartMenu" ]
Global $M8 = Null
Global $M9 = Null
Func _1MD ( $MA , $MB )
	Local $MC = StringFormat ( "%.2f" , TimerDiff ( $MA ) / 1000 )
	_1MI ( @CRLF & "-- " & $MB & " finished in " & $MC & "s --" & @CRLF )
EndFunc
Func _1ME ( $MD , $ME )
	Return _X ( $MD , $ME , 0 , 0 , 0 , 1 , 1 , 0 ) = + 4294967295
EndFunc
Func _1MF ( $9X )
	Select
	Case StringRegExp ( $9X , "^@AppDataCommonDir" )
		$9X = @AppDataCommonDir & StringReplace ( $9X , "@AppDataCommonDir" , "" )
	Case StringRegExp ( $9X , "^@DesktopDir" )
		$9X = @DesktopDir & StringReplace ( $9X , "@DesktopDir" , "" )
	Case StringRegExp ( $9X , "^@LocalAppDataDir" )
		$9X = @LocalAppDataDir & StringReplace ( $9X , "@LocalAppDataDir" , "" )
	Case StringRegExp ( $9X , "^@HomeDrive" )
		$9X = @HomeDrive & StringReplace ( $9X , "@HomeDrive" , "" )
	Case StringRegExp ( $9X , "^@TempDir" )
		$9X = @TempDir & StringReplace ( $9X , "@TempDir" , "" )
	Case StringRegExp ( $9X , "^@UserProfileDir" )
		$9X = @UserProfileDir & StringReplace ( $9X , "@UserProfileDir" , "" )
	EndSelect
	Return $9X
EndFunc
Func _1MG ( )
	Local $MF = 100 , $MG = 100 , $MH = 0 , $MI = @WindowsDir & "\Explorer.exe"
	_TF ( $9N , 0 , 0 , 0 )
	Local $MJ = _10P ( "Shell_TrayWnd" , "" )
	_2U ( $MJ , 1460 , 0 , 0 )
	While ProcessExists ( "Explorer.exe" )
		Sleep ( 10 )
		$MF -= ProcessClose ( "Explorer.exe" ) ? 0 : 1
		If $MF < 1 Then Return SetError ( 1 , 0 , 0 )
	WEnd
	While ( Not ProcessExists ( "Explorer.exe" ) )
		If Not FileExists ( $MI ) Then Return SetError ( + 4294967295 , 0 , 0 )
		Sleep ( 500 )
		$MH = ShellExecute ( $MI )
		$MG -= $MH ? 0 : 1
		If $MG < 1 Then Return SetError ( 2 , 0 , 0 )
	WEnd
	Return $MH
EndFunc
Func _1MH ( )
	Local $MK = ""
	If @OSArch = "X64" Then $MK = "64"
	Return $MK
EndFunc
Func _1MI ( $EF )
	Dim $KZ
	FileWrite ( @HomeDrive & "\KPRM" & "\" & $KZ , $EF & @CRLF )
	FileWrite ( @DesktopDir & "\" & $KZ , $EF & @CRLF )
EndFunc
Func _1MJ ( )
	Dim $KT
	If $KT = False And @Compiled Then
		Run ( @ComSpec & " /c timeout 5 && del /F /Q """ & @AutoItExe & """" , "" , @SW_HIDE )
		FileDelete ( @AutoItExe )
	EndIf
EndFunc
Func _1MK ( $ML = False , $MM = True )
	Dim $KT
	Dim $KV
	DirRemove ( $KV , $0Z )
	If $MM = True Then
		_1MN ( )
	EndIf
	If $ML = True Then
		_1MJ ( )
	EndIf
	Exit
EndFunc
Func _1MM ( )
	Dim $L0
	If IsBool ( $L0 ) Then Return $L0
	Local $5Z = Run ( "powershell.exe -ep bypass" , "" , @SW_HIDE )
	If @error <> 0 Or Not $5Z Then
		$L0 = False
		Return $L0
	EndIf
	ProcessClose ( $5Z )
	$L0 = True
	Return $L0
EndFunc
Func _1MN ( $MN = Null )
	Dim $KZ
	Local $MO = @HomeDrive & "\KPRM\" & $KZ
	If $MN <> Null Then
		$MO = $MN
	EndIf
	If FileExists ( $MO ) Then
		Run ( "notepad.exe " & $MO )
	EndIf
EndFunc
Func _1MO ( )
	Local Const $BH = @HomeDrive & "\KPRM"
	Local $MP = _182 ( $BH , "kprm-*.txt" , $13 )
	If @error <> 0 Then Return 1
	Return $MP [ 0 ]
EndFunc
Func _1MP ( $GB )
	Dim $LN
	GUICtrlSetData ( $LN , $GB )
EndFunc
Func _1MR ( )
	Local $MQ [ 0 ]
	If FileExists ( @HomeDrive & "\Program Files" ) Then
		_D ( $MQ , @HomeDrive & "\Program Files" )
	EndIf
	If FileExists ( @HomeDrive & "\Program Files (x86)" ) Then
		_D ( $MQ , @HomeDrive & "\Program Files (x86)" )
	EndIf
	If FileExists ( @HomeDrive & "\Program Files(x86)" ) Then
		_D ( $MQ , @HomeDrive & "\Program Files(x86)" )
	EndIf
	Return $MQ
EndFunc
Func _1MS ( $A0 )
	Return Int ( FileExists ( $A0 ) And StringInStr ( FileGetAttrib ( $A0 ) , "D" , Default , 1 ) = 0 )
EndFunc
Func _1MT ( $A0 )
	Return Int ( FileExists ( $A0 ) And StringInStr ( FileGetAttrib ( $A0 ) , "D" , Default , 1 ) > 0 )
EndFunc
Func _1MU ( $MR )
	Return StringRegExp ( $MR , "(?i)^(HKLM|HKCU|HKU|HKCR|HKCC)" )
EndFunc
Func _1MV ( $A0 )
	Local $MS = Null
	If FileExists ( $A0 ) Then
		Local $MT = StringInStr ( FileGetAttrib ( $A0 ) , "D" , Default , 1 )
		If $MT = 0 Then
			$MS = "file"
		ElseIf $MT > 0 Then
			$MS = "folder"
		EndIf
	EndIf
	Return $MS
EndFunc
Func _1MW ( )
	Switch @OSVersion
	Case "WIN_VISTA"
		Return "Windows Vista"
	Case "WIN_7"
		Return "Windows 7"
	Case "WIN_8"
		Return "Windows 8"
	Case "WIN_81"
		Return "Windows 8.1"
	Case "WIN_10"
		Return "Windows 10"
	Case "WIN_11"
		Return "Windows 11"
Case Else
		Return "Unsupported OS"
	EndSwitch
EndFunc
Func _1MX ( $MU )
	If StringRegExp ( $MU , "(?i)^(HKLM|HKCU|HKU|HKCR|HKCC)64" ) Then
		Local $MR = StringReplace ( $MU , "64" , "" , 1 )
		Return $MR
	EndIf
	Return $MU
EndFunc
Func _1MY ( $MU )
	If _1MU ( $MU ) And @OSArch = "X64" Then
		Local $MV = StringSplit ( $MU , "\" , $K )
		$MV [ 0 ] = $MV [ 0 ] & "64"
		$MU = _15 ( $MV , "\" )
	EndIf
	Return $MU
EndFunc
Func _1MZ ( )
	Local $MW = "cmd /c ver"
	Local $5Z = Run ( $MW , "" , @SW_HIDE , $V )
	Local $MX = ""
	While 1
		$MX &= StdoutRead ( $5Z )
		If @error Then ExitLoop
	WEnd
	Return StringSplit ( $MX , " ]" , 2 ) [ 3 ]
EndFunc
Func _1N0 ( $I0 = 0 , $I2 = "" , $MY = "" , $I1 = 0 )
	Dim $LH
	Dim $LG
	_1LF ( + 4294967295 , + 4294967295 , $LH , $LG )
	Local Const $MZ = _1LG ( $I0 , $I1 , $I2 , $MY , 0 )
	_1LF ( Default )
	Return $MZ
EndFunc
Func _1N1 ( $N0 = 1 )
	Local $N1
	If $N0 And StringInStr ( @OSType , "WIN32_NT" ) Then
		$N1 = DllCall ( "uxtheme.dll" , "int" , "GetThemeAppProperties" )
		DllCall ( "uxtheme.dll" , "none" , "SetThemeAppProperties" , "int" , 0 )
		Return 1
	ElseIf StringInStr ( @OSType , "WIN32_NT" ) And IsArray ( $N1 ) Then
		DllCall ( "uxtheme.dll" , "none" , "SetThemeAppProperties" , "int" , $N1 [ 0 ] )
		$N1 = ""
		Return 1
	EndIf
	Return 0
EndFunc
Func _1N2 ( $N2 = 1 )
	Dim $LO
	Dim $M4
	$M4 += $N2
	GUICtrlSetData ( $LO , $M4 * $M5 )
	If $M4 = $M3 Then
		GUICtrlSetData ( $LO , 100 )
	EndIf
EndFunc
Func _1N3 ( )
	Dim $LO
	Dim $M4
	$M4 = 0
	GUICtrlSetData ( $LO , 0 )
EndFunc
Func _1N4 ( $N3 )
	Dim $KV
	Dim $K8
	Dim $K9
	Dim $KY
	_1MP ( "Create Registry Backup in another way ..." )
	Local Const $N4 = $KV & "\registry"
	Local Const $N5 = @HomeDrive & "\KPRM\backup\" & $KY
	If Not FileExists ( $N4 ) Then
		DirCreate ( $N4 )
	EndIf
	If Not FileExists ( $N5 ) Then
		DirCreate ( $N5 )
	EndIf
	If @OSArch = "X64" Then
		FileInstall ( ".\binaries\hobocopy64\HoboCopy.exe" , $KV & "\registry\HoboCopy.exe" , 1 )
		FileInstall ( ".\binaries\hobocopy64\msvcp100.dll" , $KV & "\registry\msvcp100.dll" , 1 )
		FileInstall ( ".\binaries\hobocopy64\msvcr100.dll" , $KV & "\registry\msvcr100.dll" , 1 )
	Else
		FileInstall ( ".\binaries\hobocopy32\HoboCopy.exe" , $KV & "\registry\HoboCopy.exe" , 1 )
		FileInstall ( ".\binaries\hobocopy32\msvcp100.dll" , $KV & "\registry\msvcp100.dll" , 1 )
		FileInstall ( ".\binaries\hobocopy32\msvcr100.dll" , $KV & "\registry\msvcr100.dll" , 1 )
	EndIf
	If Not FileExists ( $N5 ) Or Not FileExists ( $KV & "\registry\HoboCopy.exe" ) Or Not FileExists ( $KV & "\registry\msvcp100.dll" ) Or Not FileExists ( $KV & "\registry\msvcr100.dll" ) Then
		_1N0 ( 16 , $K8 , $K9 )
		_1MK ( False , False )
	EndIf
	If @AutoItX64 = 0 Then _Y4 ( False )
	For $21 = 0 To UBound ( $N3 ) + 4294967295
		Local $N6 = $N3 [ $21 ] [ 0 ]
		Local $N7 = $N3 [ $21 ] [ 1 ]
		If Not FileExists ( $N7 ) Then
			DirCreate ( $N7 )
		EndIf
		Local $BG = "" , $BH = "" , $A6 = "" , $BI = ""
		Local $N8 = _18F ( $N6 , $BG , $BH , $A6 , $BI )
		Local $N9 = $A6 & $BI
		$BH = StringRegExpReplace ( $BH , "\\$" , "" )
		Local $NA = $N5 & "\" & $BH & "\" & $N9
		Local $NB = $BG & $BH
		If Not FileExists ( $NA ) Then
			_1MP ( "Backup registry  " & $N6 )
			RunWait ( @ComSpec & " /c HoboCopy.exe """ & $NB & """ """ & $N7 & """ " & $N9 , $N4 , @SW_HIDE )
			Sleep ( 1000 )
			If Not FileExists ( $NA ) Then
				_1N0 ( 16 , $K8 , $K9 & @CRLF & $N6 )
				_1MI ( "     [X] Failed Registry Backup: " & $N6 )
				_1MK ( False )
			Else
				_1O1 ( $NA )
				_1MI ( "   ~ [OK] Hive " & $N6 & " backed up" )
			EndIf
		EndIf
	Next
	_1MI ( @CRLF & "     [OK] Registry Backup: " & $N5 )
EndFunc
Func _1N6 ( $NC , ByRef $ND )
	Local Const $NE = "wmic shadowcopy call create Volume='" & $NC & "\'"
	Local Const $5Z = Run ( @ComSpec & " /c " & $NE , @ScriptDir , @SW_HIDE , $V )
	ProcessWaitClose ( $5Z )
	Local $MX = StdoutRead ( $5Z )
	Local $NF = StringInStr ( $MX , "ReturnValue = " )
	$NF = $NF + StringLen ( "ReturnValue = " )
	Local $NG = StringInStr ( $MX , ";" , 1 , 1 , $NF )
	Local $NH = StringMid ( $MX , $NF , $NG - $NF )
	$NH = Number ( $NH )
	If $NH = 0 Then
		Local $NI = StringInStr ( $MX , "ShadowID = " )
		$NI = $NI + StringLen ( "ShadowID = " ) + 1
		Local $NJ = StringInStr ( $MX , ";" , 1 , 1 , $NI ) + 4294967295
		Local $NK = StringMid ( $MX , $NI , $NJ - $NI )
		If $NK <> "" Then
			$ND = $NK
		EndIf
	EndIf
	Return $NH
EndFunc
Func _1N7 ( $ND )
	Local Const $NE = "wmic shadowcopy"
	Local Const $5Z = Run ( @ComSpec & " /c " & $NE , @ScriptDir , @SW_HIDE , $V )
	ProcessWaitClose ( $5Z )
	Local $MX = StdoutRead ( $5Z )
	Local Const $NL = StringInStr ( $MX , $ND )
	If $NL = 0 Then
		Return ""
	EndIf
	Local Const $NM = StringInStr ( $MX , "\\?\GLOBALROOT\Device\" , 1 , + 4294967295 , $NL )
	If $NM = 0 Then
		Return ""
	EndIf
	Local Const $NN = StringInStr ( $MX , " " , 1 , 1 , $NM , 60 )
	If $NN = 0 Then
		Return ""
	EndIf
	Return StringMid ( $MX , $NM , $NN - $NM )
EndFunc
Func _1N8 ( )
	Local Const $NO = _1N9 ( )
	If ( UBound ( $NO ) + 4294967295 ) >= 1 Then
		Return $NO [ 1 ]
	Else
		Return + 4294967295
	EndIf
EndFunc
Func _1N9 ( )
	Local $1R [ 1 ]
	For $7W = 67 To 90
		If DriveStatus ( Chr ( $7W ) & ":\" ) = "INVALID" Then
			ReDim $1R [ UBound ( $1R ) + 1 ]
			$1R [ UBound ( $1R ) + 4294967295 ] = Chr ( $7W ) & ":"
		EndIf
	Next
	$1R [ 0 ] = UBound ( $1R ) + 4294967295
	Return ( $1R )
EndFunc
Func _1NA ( $NP )
	Local Const $NQ = _18H ( @TempDir , "kprm-dosdev" , ".exe" )
	_1NC ( $NQ )
	RunWait ( @ComSpec & " /c " & """" & $NQ & """" & " -d " & $NP , "" , @SW_HIDE )
	FileDelete ( $NQ )
EndFunc
Func _1NB ( $NP , $NR )
	Local Const $NQ = _18H ( @TempDir , "kprm-dosdev" , ".exe" )
	_1NC ( $NQ )
	RunWait ( @ComSpec & " /c " & """" & $NQ & """" & " " & $NP & " " & $NR , "" , @SW_HIDE )
	FileDelete ( $NQ )
	If DriveStatus ( $NP & "\" ) = "READY" Then
		Return 0
	EndIf
	Return + 4294967295
EndFunc
Func _1NC ( $1H )
	Local $NS = "0x"
	$NS &= "4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000E00000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A240000000000000056C8818312A9EFD012A9EFD012A9EFD091A1E0D013A9EFD091A1B2D015A9EFD012A9EED03EA9EFD09CA1B0D002A9EFD091A1B1D013A9EFD091A1B5D013A9EFD05269636812A9EFD0000000000000000000000000000000000000000000000000504500004C010300FCA6513E0000000000000000E0000F010B01070A001000000026030000000000FF190000001000000020000000000001001000000002000005000200050002000400000000000000006003000004000076AD0000030000800000040000200000000010000010000000000000100000000000000000000000001C00005000000000500300E8030000000000000000000000000000000000000000000000000000C01000001C0000000000000000000000000000000000000000000000000000004013000040000000000000000000000000100000B40000000000000000000000000000000000000000000000000000002E74657874000000BC0F0000001000000010000000040000000000000000000000000000200000602E6461746100000098200300002000000002000000140000000000000000000000000000400000C02E72737263000000E8030000005003000004000000160000000000000000000000000000400000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008A1F00009E1F00007C1F0000000000004C1D00005E1D0000701D0000841D00009E1D00003C1D0000C41D0000DA1D0000F41D0000081E00001C1E00002C1D0000181D0000AE1D0000041D0000000000006C1E0000781E0000801E0000621E0000941E00009E1E0000A81E0000B21E0000BA1E0000C81E0000D21E0000DE1E0000EE1E0000FA1E00000E1F00001E1F00002E1F00003C1F00004E1F00006E1F00005A1E0000501E0000481E00008A1E00000000000000000000000000000000000000000000FCA6513E00000000020000001B000000881300008807000052616D4469736B004344526F6D00000052656D6F74650000466978656400000052656D6F7661626C650000004E6F526F6F74446972000000556E6B6E6F776E000000000075736167653A20444F53444556205B2D615D205B2D735D205B2D685D205B5B2D725D205B2D64205B2D655D5D204465766963654E616D65205B546172676574506174685D5D0A000025730000203B200025732573203D2000526567517565727956616C75654578206661696C656420776974682025640A0053797374656D506172746974696F6E005265674F70656E4B65794578206661696C656420776974682025640A0000000053595354454D5C53657475700000000025732064656C657465642E0A00000000444F534445563A20556E61626C6520746F20257320646576696365206E616D65202573202D2025750A000000646566696E65000064656C657465000043757272656E7420646566696E6974696F6E3A200000000025633A203D202A2A2A204C4F474943414C204452495645204249542053455420425554204E4F204452495645204C4554544552202A2A2A0A00000000202A2A2A204C4F474943414C20445249564520424954204E4F5420534554202A2A2A0000205B25735D0000000A00000025735C002A2A2A20756E61626C6520746F207175657279207461726765742070617468202D202575202A2A2A00000000444F534445563A20556E61626C6520746F20717565727920646576696365206E616D6573202D2025750A0000556E68616E646C6564457863657074696F6E46696C746572000000006B65726E656C33322E646C6C00000000FFFFFFFF4B1B00015F1B00010000000048000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030200001B0130001010000004E42313000000000FCA6513E01000000646F736465762E7064620000000000000000000000000000F41B0000A1A010000183C040682011000150FF15A410000159596A01FF15A8100001CC558BEC535657FF750C8B3D5C100001FF75086870110001FFD78B751083C40C33DBEB2E395D"
	$NS &= "14742D3B75107608686C110001FFD759566868110001FFD75959EB0B8B451446FF4D1485C07410381E75F146381E75CE5F5E5B5DC21000895D14EBF0558BEC51518D45FC506A016A0068C81100016802000080FF150410000185C074125068A8110001FF155C100001595933C0EB46578D45F850FF7508C745F8040100006A006A006898110001FF75FCFF1500100001FF75FC8BF8FF150810000185FF7412576878110001FF155C100001595933C0EB0333C0405FC9C204008B442408FF308B442408FF30FF15501000015959C381EC1C010000A130200001535533ED33DB43FF8C2428010000568984242401000057896C2418896C2410895C241C896C24140F84C70000008BBC243401000083C7048B378A063C2D746F3C2F746B837C241800750689742418EB65837C2410000F85DD02000089742410EB540FBEC050FF156410000183E83F590F84C302000083E822742F83E803742348741983E8030F84AD02000083E80A740548751B8BEB095C2414EB13834C241404EB0C834C241402EB058364241C00468A0684C075ACFF8C24300100000F8572FFFFFF33F63BEE74188D4424245089442414E88DFEFFFF85C0750653E93F020000397424180F853B020000397424100F85440200006800500000BD80F00201556A00FF151010000185C07520FF152410000150A1A010000183C04068D812000150FF15A410000183C40CEBAF803D80F00201000F84E0000000BF6060010168005000005755FF15101000018BD885DB751BFF15241000015068AC12000157FF156010000183C40CE99C0000008BC58D50018A084084C975F92BC283F8027556807D013A7550A1804003018D34804055A3804003018D44242468A8120001508D34B560200001FF156010000183C40C8D44242050FF153C1000018B04851420000133C98A4D0089460C33C04083E941D3E0894610EB15A160F002018D3480408D34B560B00101A360F002018D430150892E895E04FF15AC100001535750894608FF155810000183C4108A45004584C075F83845000F8525FFFFFF68B11400016A14FF35804003016860200001FF155410000183C410FF15401000018364241000833D80400301008B3D5C1000018BD8BDA4120001764DBE68200001FF76FCFF36FF76F868A2120001E897FCFFFFFF7604689C120001FFD78B460885C35959740433D8EB086878120001FFD75955FFD7FF4424148B44241483C6143B05804003015972B885DB742033F633C0408BCED3E085C3740D8D464150683C120001FFD759594683FE1A72E2837C241C00755155FFD7C70424B11400016A14FF3560F002016860B00101FF155410000133DB83C410391D60F002017627BE68B00101FF76FCFF36FF76F868A2120001E8F5FBFFFF55FFD74383C6143B1D60F002015972DE6A00FF15A81000018B44241483E0028944241C750B397424107505E9A6FBFFFF8B3510100001BB0050000053BF6060010157FF742420FFD685C0BDA412000174185057FF7424206824120001E894FBFFFF55FF155C10000159FF742410FF74241CFF74241CFF154810000185C075353944241CBE1C1200017505BE14120001FF152410000150FF74241CA1A01000015683C04068E811000150FF15A410000183C414EB31538B5C241C5753FFD685C074165057536824120001E827FBFFFF55FF155C100001EB0D5368D8110001FF155C10000159598B8C24280100005F5E5D33C05B81C41C010000E986000000558BEC83EC10A13020000185C074073D4EE640BB756E568D45F850FF152C1000018B75FC3375F8FF152810000133F0FF154410000133F0FF152010000133F08D45F050FF151C1000018B45F43345F033F0893530200001750AC705302000014EE640BB6820130001FF151810000185C05E7411680413000150FF1514100001A388400301C9C33B0D302000017501C3E900000000558DAC2458FDFFFF81EC28030000A1302000018985A4020000A18440030185C07402FFD0833D8840030100743E5733C02145D86A13598D7D84F3ABB9B20000008D7DDCF3AB8D45808945D08D45D86A00C74580090400C08945D4FF15381000018D45D050FF15884003015F6802050000FF153410000150FF15301000018B8DA4020000E86AFFFFFF81C5A8020000C9C36A286830130001E89D01000066813D000000014D5A7528A13C00000181B8000000015045000075170FB7881800000181F90B010000742181F90B02000074068365E400EB2A83B8840000010E76F133C93988F8000001EB1183B8740000010E76DE33C93988E80000010F95C1894DE48365FC006A01FF159410000159830D8C400301FF830D90400301FFFF15901000018B0D4C2000018908FF158C1000018B0D482000018908A1881000018B00A394400301E8EC000000833D3420000100750C68A21B0001FF158410000159E8C00000006810200001680C200001E8AB000000A1442000018945DC8D45DC50FF35402000018D45E0508D45D8508D45D450FF157C1000018945CC68082000016800200001E8750000008B45E08B0D781000018901FF75E0FF75D8FF75D4E898F9FFFF83C4308BF08975C8837DE400750756FF15A8100001FF1574100001EB2D8B45EC8B088B09894DD05051E8280000005959C38B65E88B75D0837DE400750756FF156C100001FF1568100001834DFCFF8BC6E860000000C3FF2570100001FF258010000168000003006800000100E85B0000005959C333C0C3CCCCCC68F41B000164A100000000508B442410896C24108D6C24102BE05356578B45F88965E8508B45FCC745FCFFFFFFFF8945F88D45F064A300000000C38B4DF064890D00000000595F5E"
	$NS &= "5BC951C3FF2598100001FF259C100001601C000000000000000000003A1E000010100000A01C00000000000000000000621F000050100000501C00000000000000000000AE1F00000010000000000000000000000000000000000000000000008A1F00009E1F00007C1F0000000000004C1D00005E1D0000701D0000841D00009E1D00003C1D0000C41D0000DA1D0000F41D0000081E00001C1E00002C1D0000181D0000AE1D0000041D0000000000006C1E0000781E0000801E0000621E0000941E00009E1E0000A81E0000B21E0000BA1E0000C81E0000D21E0000DE1E0000EE1E0000FA1E00000E1F00001E1F00002E1F00003C1F00004E1F00006E1F00005A1E0000501E0000481E00008A1E0000000000007600446566696E65446F7344657669636541000070014765744C6F676963616C44726976657300004B01476574447269766554797065410069014765744C6173744572726F72000095025175657279446F734465766963654100980147657450726F6341646472657373000077014765744D6F64756C6548616E646C6541000099025175657279506572666F726D616E6365436F756E74657200D5014765745469636B436F756E7400003E0147657443757272656E74546872656164496400003B0147657443757272656E7450726F63657373496400C00147657453797374656D54696D65417346696C6554696D650051035465726D696E61746550726F6365737300003A0147657443757272656E7450726F63657373003D03536574556E68616E646C6564457863657074696F6E46696C746572004B45524E454C33322E646C6C00009A02657869740000A902667072696E74660044015F696F620000EF027072696E7466000001025F73747269636D700000F50271736F727400E9026D656D6D6F766500E2026D616C6C6F6300000303737072696E7466002403746F6C6F77657200CA005F635F6578697400FB005F65786974004E005F5863707446696C74657200CD005F6365786974000071005F5F696E6974656E760070005F5F6765746D61696E617267730040015F696E69747465726D009E005F5F736574757365726D6174686572720000BB005F61646A7573745F66646976000083005F5F705F5F636F6D6D6F6465000088005F5F705F5F666D6F646500009C005F5F7365745F6170705F747970650000F2005F6578636570745F68616E646C65723300006D73766372742E646C6C0000DB005F636F6E74726F6C66700000C901526567436C6F73654B657900EC01526567517565727956616C75654578410000E2015265674F70656E4B65794578410041445641504933322E646C6C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000DB1800010000000000000000000000001411000108110001FC100001F4100001EC100001E4100001DC1000014EE640BB01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001000000018000080000000000000000000000000000001000100000030000080000000000000000000000000000001000904000048000000605003008403000000000000000000000000000000000000840334000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100020005000000BC0E020005000000BC0E3F000000000000000400040001000000000000000000000000000000E2020000010053007400720069006E006700460069006C00650049006E0066006F000000BE02000001003000340030003900300034004200300000004C001600010043006F006D00700061006E0079004E0061006D006500000000004D006900630072006F0073006F0066007400200043006F00720070006F0072006100740069006F006E0000005A0019000100460069006C0065004400650073006300720069007000740069006F006E000000000044006900730070006C0061007900200044004F005300200044006500760069006300650020004E0061006D0065007300000000005E001F000100460069006C006500560065007200730069006F006E000000000035002E0032002E0033003700370032002E0030002000280064006E007300720076002E0030003300"
	$NS &= "30003200310037002D00310036003400380029000000000036000B00010049006E007400650072006E0061006C004E0061006D006500000044004F0053004400450056002E004500580045000000000080002E0001004C006500670061006C0043006F0070007900720069006700680074000000A90020004D006900630072006F0073006F0066007400200043006F00720070006F0072006100740069006F006E002E00200041006C006C0020007200690067006800740073002000720065007300650072007600650064002E0000003E000B0001004F0072006900670069006E0061006C00460069006C0065006E0061006D006500000044004F0053004400450056002E00450058004500000000006A0025000100500072006F0064007500630074004E0061006D006500000000004D006900630072006F0073006F0066007400AE002000570069006E0064006F0077007300AE0020004F007000650072006100740069006E0067002000530079007300740065006D00000000003A000B000100500072006F006400750063007400560065007200730069006F006E00000035002E0032002E0033003700370032002E00300000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000904B00400000000000000000000000000000000000000000000000000000000"
	$NS = Binary ( $NS )
	Local $NT = FileOpen ( $1H , 18 )
	FileWrite ( $NT , $NS )
	FileClose ( $NT )
EndFunc
Func _1ND ( $NU , ByRef $NV , ByRef $ND )
	$NV = ""
	$ND = ""
	If _1N6 ( $NU , $ND ) <> 0 Then
		Return + 4294967295
	EndIf
	Local $NW = _1N7 ( $ND )
	If $NW = "" Then
		Return + 4294967294
	EndIf
	Local $NX = _1N8 ( )
	If _1NB ( $NX , $NW ) = + 4294967295 Then
		Return + 4294967293
	EndIf
	$NV = $NX
	Return 0
EndFunc
Func _1NE ( $ND )
	Local Const $NE = "vssadmin Delete Shadows /Shadow=" & $ND & " /Quiet"
	Return RunWait ( @ComSpec & " /c " & $NE , @ScriptDir , @SW_HIDE )
EndFunc
Func _1NF ( $NX , $NY )
	If $NX Then
		_1NA ( $NX )
	EndIf
	If $NY Then
		_1NE ( $NY )
	EndIf
EndFunc
Func _1NG ( ByRef Const $N3 )
	Local $NX = ""
	Local $NY = ""
	If DriveStatus ( @HomeDrive & "\" ) <> "READY" Then
		Return + 4294967289
	EndIf
	Local $NZ = _1ND ( @HomeDrive , $NX , $NY )
	If $NZ < 0 Then
		_1NF ( $NX , $NY )
		Return $NZ
	EndIf
	If $NX = "" Then
		_1NF ( $NX , $NY )
		Return + 4294967292
	EndIf
	For $21 = 0 To UBound ( $N3 ) + 4294967295
		Local $N6 = $N3 [ $21 ] [ 0 ]
		Local $N5 = $N3 [ $21 ] [ 1 ]
		Local $O0 = StringMid ( $N6 , 3 )
		_1MP ( "Backup hive  " & $N6 )
		Local $O1 = FileCopy ( $NX & $O0 , $N5 )
		If $O1 = 0 Then
			_1NF ( $NX , $NY )
			Return + 4294967291
		EndIf
		Local $BG = "" , $BH = "" , $A6 = "" , $BI = ""
		Local $N8 = _18F ( $N6 , $BG , $BH , $A6 , $BI )
		Local $NA = $N5 & "\" & $A6 & $BI
		If Not FileExists ( $NA ) Then
			_1NF ( $NX , $NY )
			Return + 4294967287
		Else
			_1O1 ( $NA )
			_1MI ( "   ~ [OK] Hive " & $N6 & " backed up" )
		EndIf
	Next
	_1NF ( $NX , $NY )
	Return 0
EndFunc
Func _1NH ( )
	_1MI ( @CRLF & "- Create Registry Backup -" & @CRLF )
	_1MP ( "Create Registry Backup ..." )
	Dim $K8
	Dim $K9
	Dim $KY
	Local Const $N5 = @HomeDrive & "\KPRM\backup\" & $KY
	Local $N3 [ 0 ] [ 2 ]
	Local $O2 [ 2 ]
	$O2 [ 0 ] = @WindowsDir & "\System32\config\SOFTWARE"
	$O2 [ 1 ] = @UserProfileDir & "\NTUSER.dat"
	If Not FileExists ( $N5 ) Then
		DirCreate ( $N5 )
	EndIf
	For $O3 In $O2
		Local $BG = "" , $BH = "" , $A6 = "" , $BI = ""
		Local $N8 = _18F ( $O3 , $BG , $BH , $A6 , $BI )
		$BH = StringRegExpReplace ( $BH , "\\$" , "" )
		Local $O4 = $N5 & $BH
		Local $N6 = $O3 & "|||" & $O4
		If Not FileExists ( $O4 ) Then
			DirCreate ( $O4 )
		EndIf
		_D ( $N3 , $N6 , 0 , "|||" )
	Next
	If @AutoItX64 = 0 Then _Y4 ( False )
	Local Const $O5 = _1NG ( $N3 )
	If $O5 <> 0 Then
		_1N4 ( $N3 )
		Return
	EndIf
	_1MI ( @CRLF & "     [OK] Registry Backup: " & $N5 )
EndFunc
Func _1NI ( )
	_1MI ( @CRLF & "- Restore System Settings -" & @CRLF )
	_1MP ( "Restore system settings ..." )
	Local $O6 [ 8 ]
	$O6 [ 0 ] = "netsh winsock reset"
	$O6 [ 1 ] = "netsh winhttp reset proxy"
	$O6 [ 2 ] = "netsh winhttp reset tracing"
	$O6 [ 3 ] = "netsh winsock reset catalog"
	$O6 [ 4 ] = "netsh int ip reset all"
	$O6 [ 5 ] = "netsh int ipv4 reset catalog"
	$O6 [ 6 ] = "netsh int ipv6 reset catalog"
	$O6 [ 7 ] = "ipconfig /flushdns"
	For $O7 In $O6
		RunWait ( @ComSpec & " /c" & $O7 , "" , @SW_HIDE )
	Next
	_1MI ( "     [OK] Reset WinSock" & @CRLF & "     [OK] FLUSHDNS" )
	Local $MK = _1MH ( )
	Local $O8 = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
	If RegWrite ( $O8 , "Hidden" , "REG_DWORD" , "2" ) Then
		_1MI ( "     [OK] Hide Hidden file." )
	Else
		_1MI ( "     [X] Hide Hidden File" )
	EndIf
	If RegWrite ( $O8 , "HideFileExt" , "REG_DWORD" , "0" ) Then
		_1MI ( "     [OK] Show Extensions for known file types" )
	Else
		_1MI ( "     [X] Show Extensions for known file types" )
	EndIf
	If RegWrite ( $O8 , "ShowSuperHidden" , "REG_DWORD" , "0" ) Then
		_1MI ( "     [OK] Hide protected operating system files" )
	Else
		_1MI ( "     [X] Hide protected operating system files" )
	EndIf
	_1MG ( )
EndFunc
Func _1NJ ( )
	_1MI ( @CRLF & "- Restore UAC -" & @CRLF )
	_1MP ( "Restore UAC ..." )
	Local $MK = ""
	If @OSArch = "X64" Then $MK = "64"
	If RegWrite ( "HKEY_LOCAL_MACHINE" & $MK & "\Software\Microsoft\Windows\CurrentVersion\Policies\System" , "EnableLUA" , "REG_DWORD" , 1 ) = 1 Then
		_1MI ( "     [OK] Set EnableLUA with default (1) value" )
	Else
		_1MI ( "     [X] Set EnableLUA with default value" )
	EndIf
	If RegWrite ( "HKEY_LOCAL_MACHINE" & $MK & "\Software\Microsoft\Windows\CurrentVersion\Policies\System" , "ConsentPromptBehaviorAdmin" , "REG_DWORD" , 5 ) = 1 Then
		_1MI ( "     [OK] Set ConsentPromptBehaviorAdmin with default (5) value" )
	Else
		_1MI ( "     [X] Set ConsentPromptBehaviorAdmin with default value" )
	EndIf
	If RegWrite ( "HKEY_LOCAL_MACHINE" & $MK & "\Software\Microsoft\Windows\CurrentVersion\Policies\System" , "ConsentPromptBehaviorUser" , "REG_DWORD" , 3 ) = 1 Then
		_1MI ( "     [OK] Set ConsentPromptBehaviorUser with default (3) value" )
	Else
		_1MI ( "     [X] Set ConsentPromptBehaviorUser with default value" )
	EndIf
	If RegWrite ( "HKEY_LOCAL_MACHINE" & $MK & "\Software\Microsoft\Windows\CurrentVersion\Policies\System" , "EnableInstallerDetection" , "REG_DWORD" , 0 ) = 1 Then
		_1MI ( "     [OK] Set EnableInstallerDetection with default (0) value" )
	Else
		_1MI ( "     [X] Set EnableInstallerDetection with default value" )
	EndIf
	If RegWrite ( "HKEY_LOCAL_MACHINE" & $MK & "\Software\Microsoft\Windows\CurrentVersion\Policies\System" , "EnableSecureUIAPaths" , "REG_DWORD" , 1 ) = 1 Then
		_1MI ( "     [OK] Set EnableSecureUIAPaths with default (1) value" )
	Else
		_1MI ( "     [X] Set EnableSecureUIAPaths with default value" )
	EndIf
	If RegWrite ( "HKEY_LOCAL_MACHINE" & $MK & "\Software\Microsoft\Windows\CurrentVersion\Policies\System" , "EnableUIADesktopToggle" , "REG_DWORD" , 0 ) = 1 Then
		_1MI ( "     [OK] Set EnableUIADesktopToggle with default (0) value" )
	Else
		_1MI ( "     [X] Set EnableUIADesktopToggle with default value" )
	EndIf
	If RegWrite ( "HKEY_LOCAL_MACHINE" & $MK & "\Software\Microsoft\Windows\CurrentVersion\Policies\System" , "EnableVirtualization" , "REG_DWORD" , 1 ) = 1 Then
		_1MI ( "     [OK] Set EnableVirtualization with default (1) value" )
	Else
		_1MI ( "     [X] Set EnableVirtualization with default value" )
	EndIf
	If RegWrite ( "HKEY_LOCAL_MACHINE" & $MK & "\Software\Microsoft\Windows\CurrentVersion\Policies\System" , "FilterAdministratorToken" , "REG_DWORD" , 0 ) = 1 Then
		_1MI ( "     [OK] Set FilterAdministratorToken with default (0) value" )
	Else
		_1MI ( "     [X] Set FilterAdministratorToken with default value" )
	EndIf
	If RegWrite ( "HKEY_LOCAL_MACHINE" & $MK & "\Software\Microsoft\Windows\CurrentVersion\Policies\System" , "PromptOnSecureDesktop" , "REG_DWORD" , 1 ) = 1 Then
		_1MI ( "     [OK] Set PromptOnSecureDesktop with default (1) value" )
	Else
		_1MI ( "     [X] Set PromptOnSecureDesktop with default value" )
	EndIf
	If RegWrite ( "HKEY_LOCAL_MACHINE" & $MK & "\Software\Microsoft\Windows\CurrentVersion\Policies\System" , "ValidateAdminCodeSignatures" , "REG_DWORD" , 0 ) = 1 Then
		_1MI ( "     [OK] Set ValidateAdminCodeSignatures with default (0) value" )
	Else
		_1MI ( "     [X] Set ValidateAdminCodeSignatures with default value" )
	EndIf
EndFunc
Func _1NK ( $O9 )
	Return ( StringMid ( $O9 , 5 , 2 ) & "/" & StringMid ( $O9 , 7 , 2 ) & "/" & StringLeft ( $O9 , 4 ) & " " & StringMid ( $O9 , 9 , 2 ) & ":" & StringMid ( $O9 , 11 , 2 ) & ":" & StringMid ( $O9 , 13 , 2 ) )
EndFunc
Func _1NL ( $OA )
	Local Const $OB = 256
	Local Const $OC = 100
	Local Const $OD = 12
	Local $OE = DllStructCreate ( "DWORD dwEventType;DWORD dwRestorePtType;INT64 llSequenceNumber;WCHAR szDescription[" & $OB & "]" )
	DllStructSetData ( $OE , "dwEventType" , $OC )
	DllStructSetData ( $OE , "dwRestorePtType" , $OD )
	DllStructSetData ( $OE , "llSequenceNumber" , 0 )
	DllStructSetData ( $OE , "szDescription" , $OA )
	Local $OF = DllStructGetPtr ( $OE )
	Local $OG = DllStructCreate ( "UINT  nStatus;INT64 llSequenceNumber" )
	Local $OH = DllStructGetPtr ( $OG )
	Local $D1 = DllCall ( "SrClient.dll" , "BOOL" , "SRSetRestorePointW" , "ptr" , $OF , "ptr" , $OH )
	If @error Then Return 0
	Return $D1 [ 0 ]
EndFunc
Func _1NM ( )
	Local $OI [ 1 ] [ 3 ] , $JF = 0
	$OI [ 0 ] [ 0 ] = $JF
	Local $MX
	Local $OJ [ 0 ]
	Local $OK = False
	If _1MM ( ) = False Then
		Return $OI
	EndIf
	Local $5Z = Run ( "Powershell.exe -ep bypass -nop -Command ""$date = @{Expression={$_.ConvertToDateTime($_.CreationTime)}}; Get-ComputerRestorePoint | Select-Object -Property SequenceNumber, Description, $date""" , @SystemDir , @SW_HIDE , $V )
	While 1
		$MX &= StdoutRead ( $5Z )
		If @error Then ExitLoop
	WEnd
	Local $1Z = StringSplit ( $MX , @CRLF )
	For $21 = 1 To $1Z [ 0 ]
		Local $OL = StringStripWS ( $1Z [ $21 ] , $G + $H + $I )
		If $OL = "" Then ContinueLoop
		If StringInStr ( $OL , "-----" ) Then
			$OK = True
		ElseIf $OK = True Then
			_D ( $OJ , $OL )
		EndIf
	Next
	For $21 = 0 To UBound ( $OJ ) + 4294967295
		Local $OL = $OJ [ $21 ]
		Local $OM = StringSplit ( $OL , " " )
		Local $ON = $OM [ 0 ]
		If $ON >= 4 Then
			Local $OO = StringStripWS ( _U ( $OM ) , $G + $H + $I )
			Local $8A = StringStripWS ( _U ( $OM ) , $G + $H + $I )
			Local $OP = Number ( StringStripWS ( $OM [ 1 ] , $G + $H + $I ) )
			$8A = StringReplace ( $8A , "." , "/" )
			$8A = StringReplace ( $8A , "-" , "/" )
			_J ( $OM , 0 )
			_J ( $OM , 0 )
			Local $OQ = _15 ( $OM , " " )
			$OQ = StringStripWS ( $OQ , $G + $H + $I )
			$JF += 1
			ReDim $OI [ $JF + 1 ] [ 3 ]
			$OI [ $JF ] [ 0 ] = $OP
			$OI [ $JF ] [ 1 ] = $OQ
			$OI [ $JF ] [ 2 ] = $8A & " " & $OO
		EndIf
	Next
	$OI [ 0 ] [ 0 ] = $JF
	Return $OI
EndFunc
Func _1NN ( )
	Dim $M8
	Local $OI [ 1 ] [ 3 ] , $JF = 0
	$OI [ 0 ] [ 0 ] = $JF
	If Not IsObj ( $M8 ) Then
		$M8 = ObjGet ( "winmgmts:root/default" )
	EndIf
	If Not IsObj ( $M8 ) Then
		Return _1NM ( )
	EndIf
	Local $OR = $M8 .InstancesOf ( "SystemRestore" )
	If Not IsObj ( $OR ) Then
		Return _1NM ( )
	EndIf
	For $OS In $OR
		$JF += 1
		ReDim $OI [ $JF + 1 ] [ 3 ]
		$OI [ $JF ] [ 0 ] = $OS .SequenceNumber
		$OI [ $JF ] [ 1 ] = $OS .Description
		$OI [ $JF ] [ 2 ] = _1NK ( $OS .CreationTime )
	Next
	$OI [ 0 ] [ 0 ] = $JF
	Return $OI
EndFunc
Func _1NO ( $OT )
	Dim $M9
	If Not IsObj ( $M9 ) Then
		$M9 = ObjGet ( "winmgmts:{impersonationLevel=impersonate}!root/default:SystemRestore" )
	EndIf
	If Not IsObj ( $M9 ) Then
		Return 0
	EndIf
	If $M9 .Enable ( $OT ) = 0 Then
		Return 1
	EndIf
	Return 0
EndFunc
Func _1NP ( )
	_1MP ( "Enable restoration ..." )
	Local $OU = _1NO ( @HomeDrive & "\" )
	If $OU = 0 Then
		If _1MM ( ) = True Then
			RunWait ( "Powershell.exe -ep bypass -nop -Command  Enable-ComputeRrestore -drive '" & @HomeDrive & "\' | Set-Content -Encoding utf8 " , @ScriptDir , @SW_HIDE )
		EndIf
	EndIf
EndFunc
Func _1NQ ( $OV )
	Local $D1 = DllCall ( "SrClient.dll" , "DWORD" , "SRRemoveRestorePoint" , "DWORD" , $OV )
	If @error Then Return SetError ( 1 , 0 , 0 )
	If $D1 [ 0 ] = 0 Then Return 1
	Return SetError ( 1 , 0 , 0 )
EndFunc
Func _1NR ( )
	_1MI ( @CRLF & "- Clear Restore Points -" & @CRLF )
	_1MP ( "Clear Restore Points ..." )
	Local Const $OJ = _1NN ( )
	Local $OW = [ ]
	If $OJ [ 0 ] [ 0 ] = 0 Then
		_1MI ( "     [I] No system recovery points were found" )
		Return Null
	EndIf
	For $21 = 1 To $OJ [ 0 ] [ 0 ]
		_1MP ( "Remove restore point " & $OJ [ $21 ] [ 1 ] )
		Local $OX = $OJ [ $21 ] [ 0 ]
		_1NQ ( $OX )
		If @error <> 0 Then
			_D ( $OW , $OX )
		EndIf
	Next
	If UBound ( $OW ) = 1 Then
		For $21 = 1 To $OJ [ 0 ] [ 0 ]
			_1MI ( "   ~ [OK] RP named " & $OJ [ $21 ] [ 1 ] & " created at " & $OJ [ $21 ] [ 2 ] & " deleted" )
		Next
		_1MI ( "     [OK] All system restore points have been successfully deleted" )
		Return True
	EndIf
	Sleep ( 5000 )
	Local Const $OY = _1NN ( )
	If $OY [ 0 ] [ 0 ] = 0 Then
		For $21 = 1 To $OJ [ 0 ] [ 0 ]
			_1MI ( "   ~ [OK] RP named " & $OJ [ $21 ] [ 1 ] & " created at " & $OJ [ $21 ] [ 2 ] & " deleted" )
		Next
		_1MI ( "     [OK] All system restore points have been successfully deleted" )
		Return True
	EndIf
	For $21 = 1 To $OJ [ 0 ] [ 0 ]
		Local $OX = $OJ [ $21 ] [ 0 ]
		Local $OZ = False
		For $P0 = 0 To $OY [ 0 ] [ 0 ]
			Local $P1 = $OY [ $P0 ] [ 0 ]
			If $OX = $P1 Then
				$OZ = True
				ExitLoop
			EndIf
		Next
		If $OZ = True Then
			_1MI ( "   ~ [X] RP named " & $OJ [ $21 ] [ 1 ] & " created at " & $OJ [ $21 ] [ 2 ] & " not deleted" )
		Else
			_1MI ( "   ~ [OK] RP named " & $OJ [ $21 ] [ 1 ] & " created at " & $OJ [ $21 ] [ 2 ] & " deleted" )
		EndIf
	Next
	_1MI ( "     [X] Failure when deleting all restore points" )
EndFunc
Func _1NS ( $P2 )
	Local $P3 = StringLeft ( $P2 , 4 )
	Local $P4 = StringMid ( $P2 , 6 , 2 )
	Local $P5 = StringMid ( $P2 , 9 , 2 )
	Local $P6 = StringRight ( $P2 , 8 )
	Return $P4 & "/" & $P5 & "/" & $P3 & " " & $P6
EndFunc
Func _1NT ( )
	Local Const $OJ = _1NN ( )
	If $OJ [ 0 ] [ 0 ] = 0 Then
		Return Null
	EndIf
	Local Const $P7 = _1NS ( _PH ( "n" , + 4294965826 , _Q5 ( ) ) )
	Local $P8 = False
	For $21 = 1 To $OJ [ 0 ] [ 0 ]
		Local $P9 = $OJ [ $21 ] [ 2 ]
		If $P9 > $P7 Then
			If $P8 = False Then
				$P8 = True
				_1MI ( @CRLF & "     [I] Recent System Restore Point Deletion before create new:" & @CRLF )
			EndIf
			_1MP ( "Remove restore point " & $OJ [ $21 ] [ 1 ] )
			_1NQ ( $OJ [ $21 ] [ 0 ] )
			If @error <> 0 Then
				_1MI ( "   ~ [X] RP named " & $OJ [ $21 ] [ 1 ] & " created at " & $P9 & " not deleted" )
			Else
				_1MI ( "   ~ [OK] RP named " & $OJ [ $21 ] [ 1 ] & " created at " & $P9 & " deleted" )
			EndIf
			Sleep ( 250 )
		EndIf
	Next
	If $P8 = True Then
		_1MI ( @CRLF )
	EndIf
EndFunc
Func _1NU ( )
	_1MI ( @CRLF & "- Display System Restore Point -" & @CRLF )
	Local Const $OJ = _1NN ( )
	If $OJ [ 0 ] [ 0 ] = 0 Then
		_1MI ( "     [X] No System Restore point found" )
		Return
	EndIf
	For $21 = 1 To $OJ [ 0 ] [ 0 ]
		_1MI ( "   ~ [I] RP named " & $OJ [ $21 ] [ 1 ] & " created at " & $OJ [ $21 ] [ 2 ] )
	Next
EndFunc
Func _1NV ( )
	_1MP ( "Create new restore point ..." )
	RunWait ( @ComSpec & " /c " & "wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint ""KpRm"", 100, 7" , "" , @SW_HIDE )
	Sleep ( 2000 )
EndFunc
Func _1NW ( )
	_1MP ( "Create new restore point ..." )
	If _1MM ( ) = True Then
		RunWait ( "Powershell.exe -ep bypass -nop -Command Checkpoint-Computer -Description ""KpRm""" , @ScriptDir , @SW_HIDE )
	EndIf
	Sleep ( 2000 )
EndFunc
Func _1NX ( )
	_1MP ( "Verify if restore point exist ..." )
	Local Const $OJ = _1NN ( )
	Local Const $ON = $OJ [ 0 ] [ 0 ]
	ConsoleWrite ( $ON )
	ConsoleWrite ( $OJ [ $ON ] [ 1 ] )
	If $ON = 0 Then
		Return False
	EndIf
	Return $OJ [ $ON ] [ 1 ] = "KpRm"
EndFunc
Func _1NY ( )
	_1NV ( )
	If Not _1NX ( ) Then
		_1NL ( "KpRm" )
		If Not _1NX ( ) Then
			_1NT ( )
			_1NW ( )
			$OZ = _1NX ( )
		EndIf
	EndIf
	If Not _1NX ( ) Then
		_1MI ( "     [X] System Restore Point not created" )
	Else
		_1MI ( "     [OK] System Restore Point created" )
	EndIf
EndFunc
Func _1NZ ( )
	_1MI ( @CRLF & "- Create Restore Point -" & @CRLF )
	_1MP ( "Create Restore Point ..." )
	_1NP ( )
	_1NY ( )
	_1NU ( )
EndFunc
Func _1O0 ( $9X , $PA = 0 )
	_196 ( $9X , $BP )
	_18O ( $9X , $BP , @UserName )
	_1O1 ( $9X )
EndFunc
Func _1O1 ( $9X )
	Local $PB = FileGetAttrib ( $9X )
	Local $PC , $PD = 1
	Local $PE [ 8 ]
	$PE [ 0 ] = "R"
	$PE [ 1 ] = "A"
	$PE [ 2 ] = "S"
	$PE [ 3 ] = "H"
	$PE [ 4 ] = "N"
	$PE [ 5 ] = "O"
	$PE [ 6 ] = "T"
	$PE [ 7 ] = "I"
	For $PC In $PE
		If StringInStr ( $PB , $PC ) Then
			If $PD = 1 Then
				_18O ( $9X , $BP , @UserName )
				$PD += 1
			EndIf
			FileSetAttrib ( $9X , "-" & $PC )
		EndIf
	Next
EndFunc
Func _1O2 ( $9X , $PF , $MR )
	Local $21 = 0
	While True
		$21 += 1
		Local $PG = RegEnumKey ( $9X , $21 )
		If @error <> 0 Then ExitLoop
		Local $PH = $9X & "\" & $PG
		Local $4Z = RegRead ( $PH , $MR )
		If StringRegExp ( $4Z , $PF ) Then
			Return $PH
		EndIf
	WEnd
	Return Null
EndFunc
Func _1O3 ( $PI )
	Local Const $PJ [ 8 ] = [ "(?i)MKVPlayerSetup.*\.exe$" , "(?i)MKVExtractGUI.*\.exe$" , "(?i)mkvpropedit.*\.exe$" , "(?i)mkvinfo.*\.exe$" , "(?i)mkvextract.*\.exe$" , "(?i)mkvmerge.*\.exe$" , "(?i)mkvtoolnix.*\.exe$" , "(?i)MkvToMp4.*\.exe$" ]
	Local $PK = False
	For $21 = 0 To UBound ( $PJ ) + 4294967295
		If StringRegExp ( $PI , $PJ [ $21 ] ) Then
			$PK = True
			ExitLoop
		EndIf
	Next
	Return $PK
EndFunc
Func _1O4 ( $PL )
	Local Const $PJ [ 3 ] = [ "(?i)^sftvsa.exe$" , "(?i)^sftlist.exe$" , "(?i)^SftService.exe$" ]
	Local $PK = False
	For $21 = 0 To UBound ( $PJ ) + 4294967295
		If StringRegExp ( $PL , $PJ [ $21 ] ) Then
			$PK = True
			ExitLoop
		EndIf
	Next
	Return $PK
EndFunc
Func _1O5 ( $PI )
	If FileExists ( $PI ) Then
		_1O0 ( $PI , 0 )
		If Not FileDelete ( $PI ) Then
			DllCall ( "kernel32.dll" , "bool" , "DeleteFileW" , "wstr" , $PI )
		EndIf
		If FileExists ( $PI ) Then
			DllCall ( "kernel32.dll" , "int" , "MoveFileExW" , "wstr" , $PI , "ptr" , 0 , "dword" , $R )
		EndIf
	EndIf
EndFunc
Func _1O6 ( $9X )
	Dim $L4
	If FileExists ( $9X ) Then
		_1O0 ( $9X , 1 )
		If Not DirRemove ( $9X , $0Z ) Then
			Local $MP = _183 ( $9X , "*" , $13 , $1A , $1B , $1D )
			If @error <> 0 Then Return
			For $21 = 1 To UBound ( $MP ) + 4294967295
				_1O0 ( $MP [ $21 ] , 0 )
				_1O5 ( $MP [ $21 ] )
			Next
			Local $PM = _183 ( $9X , "*" , $14 , $1A , $1B , $1D )
			If @error <> 0 Then Return
			_J ( $PM , 0 )
			_W ( $PM )
			For $21 = 0 To UBound ( $PM ) + 4294967295
				_1O0 ( $PM [ $21 ] , 1 )
				DirRemove ( $PM [ $21 ] , $0Z )
			Next
			DirRemove ( $9X , $0Z )
			If FileExists ( $9X ) Then
				Local $PN = _183 ( $9X , "*" , $15 , $1A , $1B , $1D )
				If @error <> 0 Then Return
				_J ( $PN , 0 )
				_W ( $PN )
				Local $AT = DllOpen ( "kernel32.dll" )
				For $21 = 0 To UBound ( $PN ) + 4294967295
					DllCall ( $AT , "int" , "MoveFileExW" , "wstr" , $PN [ $21 ] , "ptr" , 0 , "dword" , $R )
				Next
				DllCall ( $AT , "int" , "MoveFileExW" , "wstr" , $9X , "ptr" , 0 , "dword" , $R )
				DllClose ( $AT )
			EndIf
		EndIf
	EndIf
EndFunc
Func _1O7 ( $PI , $PO , $PP = Null )
	Dim $L2
	Dim $L4
	Local Const $PQ = _1MS ( $PI )
	If $PQ And _1O3 ( $PI ) = False Then
		If $PP And StringRegExp ( $PI , "(?i)\.(exe|com)$" ) Then
			Local Const $PR = FileGetVersion ( $PI , "CompanyName" )
			If @error Or Not StringRegExp ( $PR , $PP ) Then
				Return False
			EndIf
		EndIf
		If $L2 = False Then
			_1MP ( "Remove file " & $PI )
			_1PD ( $PO , "element" , $PI )
			_1O5 ( $PI )
		Else
			_1MP ( "File " & $PI & " found" )
			_1OS ( $PI , $PO )
		EndIf
	EndIf
EndFunc
Func _1O8 ( $9X , $PO , $PS = "0" )
	Dim $L1
	Dim $L2
	Dim $L4
	Local $PQ = _1MT ( $9X )
	If $PQ Then
		If $L2 = True Then
			_1OS ( $9X , $PO )
			_1MP ( "Folder " & $9X & " found" )
			Return
		EndIf
		Local $PT = False
		If $PS = "1" Then
			$PT = True
			If $L1 = Null Then
				_1OW ( $9X , $PO )
				Return
			EndIf
		EndIf
		If $PT = False Or $L1 = 1 Then
			_1PD ( $PO , "element" , $9X )
			_1O0 ( $9X , 1 )
			_1MP ( "Remove folder " & $9X )
			_1O6 ( $9X )
		ElseIf $L1 = 7 Then
			_1OW ( $9X , $PO )
		EndIf
	EndIf
EndFunc
Func _1O9 ( $9X , $PI , $PU )
	Local Const $PV = $9X & "\" & $PI
	Local Const $A8 = FileFindFirstFile ( $PV )
	Local $PW = [ ]
	If $A8 = + 4294967295 Then
		Return $PW
	EndIf
	Local $A6 = FileFindNextFile ( $A8 )
	While @error = 0
		If StringRegExp ( $A6 , $PU ) Then
			_D ( $PW , $9X & "\" & $A6 )
		EndIf
		$A6 = FileFindNextFile ( $A8 )
	WEnd
	FileClose ( $A8 )
	Return $PW
EndFunc
Func _1OA ( $PX , Const ByRef $PY )
	Local $PZ = _1MV ( $PX )
	If $PZ = Null Then
		Return Null
	EndIf
	Local $BG = "" , $BH = "" , $A6 = "" , $BI = ""
	Local $N8 = _18F ( $PX , $BG , $BH , $A6 , $BI )
	Local $PI = $A6 & $BI
	For $Q0 = 0 To UBound ( $PY ) + 4294967295
		If $PY [ $Q0 ] [ 3 ] And $PZ = $PY [ $Q0 ] [ 1 ] And StringRegExp ( $PI , $PY [ $Q0 ] [ 3 ] ) Then
			If $PZ = "file" Then
				_1O7 ( $PX , $PY [ $Q0 ] [ 0 ] , $PY [ $Q0 ] [ 2 ] )
			ElseIf $PZ = "folder" Then
				_1O8 ( $PX , $PY [ $Q0 ] [ 0 ] , $PY [ $Q0 ] [ 4 ] )
			EndIf
		EndIf
	Next
EndFunc
Func _1OB ( $9X , Const ByRef $PY , $Q1 = + 4294967294 )
	Local $1R = _183 ( $9X , "*.exe;*.txt;*.lnk;*.log;*.reg;*.zip;*.dat;*.scr;*.com;*.bat;*.mbr;*.iso;*.pif;*.rtf" , $15 , $Q1 , $1B , $1D )
	If @error <> 0 Then
		Return Null
	EndIf
	For $21 = 1 To $1R [ 0 ]
		_1OA ( $1R [ $21 ] , $PY )
	Next
EndFunc
Func _1OC ( $9X , $PY )
	Local Const $PV = $9X & "\*"
	Local Const $A8 = FileFindFirstFile ( $PV )
	If $A8 = + 4294967295 Then
		Return Null
	EndIf
	Local $A6 = FileFindNextFile ( $A8 )
	While @error = 0
		Local $PX = $9X & "\" & $A6
		_1OA ( $PX , $PY )
		$A6 = FileFindNextFile ( $A8 )
	WEnd
	FileClose ( $A8 )
EndFunc
Func _1OD ( $Q2 , $PO )
	Dim $L2
	If $L2 = True Then
		_1MP ( "Registry key " & $Q2 & " found" )
		_1OS ( $Q2 , $PO )
		Return
	EndIf
	_196 ( $Q2 , $BS )
	_18O ( $Q2 , $BS , @UserName )
	_1MP ( "Remove registry key " & $Q2 )
	Local Const $Q3 = RegDelete ( $Q2 )
	If $Q3 <> 0 Then
		_1PD ( $PO , "key" , $Q2 )
	EndIf
EndFunc
Func _1OE ( )
	Local Const $Q4 [ 1 ] = [ "notepad.exe" ]
	For $21 = 0 To UBound ( $Q4 ) + 4294967295
		If 0 = ProcessExists ( $Q4 [ $21 ] ) Then ContinueLoop
		ProcessClose ( $Q4 [ $21 ] )
	Next
EndFunc
Func _1OF ( $PL , $Q5 , $Q6 = "0" )
	Local $Q7 = 50
	If 0 = ProcessExists ( $PL ) Then Return False
	If Number ( $Q6 ) Then
		_192 ( $PL )
		If 0 = ProcessExists ( $PL ) Then Return True
	EndIf
	_1MP ( "Close process " & $Q5 )
	ProcessClose ( $PL )
	Do
		$Q7 -= 1
		Sleep ( 250 )
	Until ( $Q7 = 0 Or 0 = ProcessExists ( $PL ) )
EndFunc
Func _1OG ( Const ByRef $BC )
	Dim $L2
	Local $Q8 = ProcessList ( )
	For $21 = 1 To $Q8 [ 0 ] [ 0 ]
		Local $Q5 = $Q8 [ $21 ] [ 0 ]
		Local $5Z = $Q8 [ $21 ] [ 1 ]
		For $Q7 = 0 To UBound ( $BC ) + 4294967295
			If _1O4 ( $Q5 ) = False And StringRegExp ( $Q5 , $BC [ $Q7 ] [ 1 ] ) Then
				Local $Q9 = _Z3 ( $5Z )
				If @error <> 0 Then ContinueLoop
				If Not _1MS ( $Q9 ) Then ContinueLoop
				If $BC [ $Q7 ] [ 2 ] <> "" Then
					Local $QA = $BC [ $Q7 ] [ 2 ]
					Local $PR = FileGetVersion ( $Q9 , "CompanyName" )
					If @error Or Not StringRegExp ( $PR , $QA ) Then
						ContinueLoop
					EndIf
				EndIf
				If $L2 = True Then
					_1MP ( "Process " & $Q5 & " found" )
					_1OS ( $Q9 , $BC [ $Q7 ] [ 0 ] )
					ContinueLoop
				EndIf
				_1OF ( $5Z , $Q5 , $BC [ $Q7 ] [ 3 ] )
				_1PD ( $BC [ $Q7 ] [ 0 ] , "process" , $Q5 )
			EndIf
		Next
	Next
EndFunc
Func _1OH ( Const ByRef $BC )
	For $21 = 0 To UBound ( $BC ) + 4294967295
		_1MP ( "Remove schedule task " & $BC [ $21 ] [ 1 ] )
		RunWait ( "schtasks.exe /delete /tn """ & $BC [ $21 ] [ 1 ] & """ /f" , "" , @SW_HIDE )
	Next
EndFunc
Func _1OI ( Const ByRef $BC )
	Dim $L2
	Local Const $MQ = _1MR ( )
	For $21 = 0 To UBound ( $MQ ) + 4294967295
		For $QB = 0 To UBound ( $BC ) + 4294967295
			Local $QC = $BC [ $QB ] [ 1 ]
			Local $QD = $BC [ $QB ] [ 2 ]
			Local $QE = _1O9 ( $MQ [ $21 ] , "*" , $QC )
			For $QF = 1 To UBound ( $QE ) + 4294967295
				Local $QG = _1O9 ( $QE [ $QF ] , "*" , $QD )
				For $QH = 1 To UBound ( $QG ) + 4294967295
					If _1MS ( $QG [ $QH ] ) Then
						_1MP ( "Uninstall " & $QG [ $QH ] )
						If $L2 = False Then
							RunWait ( $QG [ $QH ] )
							_1PD ( $BC [ $QB ] [ 0 ] , "uninstall" , $QG [ $QH ] )
						Else
							_1OS ( $QE [ $QF ] , $BC [ $QB ] [ 0 ] )
						EndIf
					EndIf
				Next
			Next
		Next
	Next
EndFunc
Func _1OJ ( Const ByRef $BC )
	Local Const $MQ = _1MR ( )
	For $21 = 0 To UBound ( $MQ ) + 4294967295
		_1OC ( $MQ [ $21 ] , $BC )
	Next
EndFunc
Func _1OK ( Const ByRef $BC )
	Local $MK = _1MH ( )
	Local $QI [ 2 ] = [ "HKCU" & $MK & "\SOFTWARE" , "HKLM" & $MK & "\SOFTWARE" ]
	For $3A = 0 To UBound ( $QI ) + 4294967295
		Local $21 = 0
		While True
			$21 += 1
			Local $PG = RegEnumKey ( $QI [ $3A ] , $21 )
			If @error <> 0 Then ExitLoop
			For $QB = 0 To UBound ( $BC ) + 4294967295
				If $PG And $BC [ $QB ] [ 1 ] Then
					If StringRegExp ( $PG , $BC [ $QB ] [ 1 ] ) Then
						Local $QJ = $QI [ $3A ] & "\" & $PG
						_1OD ( $QJ , $BC [ $QB ] [ 0 ] )
					EndIf
				EndIf
			Next
		WEnd
	Next
EndFunc
Func _1OL ( Const ByRef $BC )
	For $21 = 1 To UBound ( $BC ) + 4294967295
		Local $MR = _1MY ( $BC [ $21 ] [ 1 ] )
		Local $QJ = _1O2 ( $MR , $BC [ $21 ] [ 2 ] , $BC [ $21 ] [ 3 ] )
		If $QJ And $QJ <> "" Then
			_1OD ( $QJ , $BC [ $21 ] [ 0 ] )
		EndIf
	Next
EndFunc
Func _1OM ( Const ByRef $BC )
	For $21 = 0 To UBound ( $BC ) + 4294967295
		Local $MR = _1MY ( $BC [ $21 ] [ 1 ] )
		RegEnumVal ( $MR , "1" )
		If @error = 0 Then
			_1OD ( $MR , $BC [ $21 ] [ 0 ] )
		EndIf
	Next
EndFunc
Func _1ON ( Const ByRef $BC )
	Dim $L1
	Dim $L2
	For $21 = 0 To UBound ( $BC ) + 4294967295
		Local $9X = _1MF ( $BC [ $21 ] [ 1 ] )
		If FileExists ( $9X ) Then
			Local $PT = False
			If $BC [ $21 ] [ 3 ] = "1" Then
				$PT = True
				If $L1 = Null And $L2 = False Then
					_1OW ( $9X , $BC [ $21 ] [ 0 ] )
					ContinueLoop
				EndIf
			EndIf
			Local $MP = _182 ( $9X )
			If @error = 0 Then
				For $QF = 1 To $MP [ 0 ]
					If $L2 = False Then
						If $PT = False Or $L1 = 1 Then
							_1O7 ( $9X & "\" & $MP [ $QF ] , $BC [ $21 ] [ 0 ] , $BC [ $21 ] [ 2 ] )
						ElseIf $L1 = 7 Then
							_1OW ( $9X & "\" & $MP [ $QF ] , $BC [ $21 ] [ 0 ] )
						EndIf
					Else
						_1OS ( $9X & "\" & $MP [ $QF ] , $BC [ $21 ] [ 0 ] )
					EndIf
				Next
			EndIf
		EndIf
	Next
EndFunc
Func _1OO ( $QK )
	Dim $L7
	Dim $L4 = True
	If _X ( $L7 , $QK ) = + 4294967295 Then
		_D ( $L7 , $QK )
	EndIf
EndFunc
Func _1OP ( Const ByRef $BC )
	For $21 = 0 To UBound ( $BC ) + 4294967295
		Local $9X = _1MF ( $BC [ $21 ] [ 1 ] )
		_1O7 ( $9X , $BC [ $21 ] [ 0 ] , $BC [ $21 ] [ 2 ] )
	Next
EndFunc
Func _1OQ ( Const ByRef $BC )
	For $21 = 0 To UBound ( $BC ) + 4294967295
		Local $9X = _1MF ( $BC [ $21 ] [ 1 ] )
		_1O8 ( $9X , $BC [ $21 ] [ 0 ] , $BC [ $21 ] [ 2 ] )
	Next
EndFunc
Func _1OR ( )
	Dim $LP
	Dim $L3
	Dim $L6
	_0Z ( $L6 , 0 , 0 , 0 , 1 )
	$L3 = UBound ( $L6 ) > 1
	For $21 = 1 To UBound ( $L6 ) + 4294967295
		GUICtrlCreateListViewItem ( $L6 [ $21 ] [ 0 ] , $LP )
	Next
	_MM ( $LP , + 4294967295 , True )
EndFunc
Func _1OS ( $QK , $QL )
	Dim $L6
	If $QK = Null Or $QK = "" Then Return
	If $QL = Null Or $QL = "" Then Return
	If _1ME ( $L6 , $QK ) Then
		_D ( $L6 , $QK & "~~~~" & $QL , 0 , "~~~~" )
	EndIf
EndFunc
Func _1OT ( ByRef Const $QM , $Q6 = "0" )
	Local $Q8 = ProcessList ( )
	For $21 = 1 To $Q8 [ 0 ] [ 0 ]
		Local $Q5 = $Q8 [ $21 ] [ 0 ]
		Local $5Z = $Q8 [ $21 ] [ 1 ]
		For $Q7 = 1 To UBound ( $QM ) + 4294967295
			If _1O4 ( $Q5 ) = False Then
				If $QM [ $Q7 ] [ 0 ] <> "" Then
					Local $Q9 = _Z3 ( $5Z )
					If @error <> 0 Then ContinueLoop
					If Not _1MS ( $Q9 ) Then ContinueLoop
					If Not _1MS ( $QM [ $Q7 ] [ 0 ] ) Then ContinueLoop
					If $Q9 <> $QM [ $Q7 ] [ 0 ] Then ContinueLoop
					_1OF ( $5Z , $Q5 , $Q6 )
					_1PD ( $QM [ $Q7 ] [ 1 ] , "process" , $Q5 )
				EndIf
			EndIf
		Next
	Next
	_1N2 ( 10 )
EndFunc
Func _1OU ( ByRef Const $QM , $Q6 = "1" )
	_1OT ( $QM , $Q6 )
	Local Const $PR = Null
	Local Const $PS = "0"
	For $Q7 = 1 To UBound ( $QM ) + 4294967295
		Local $QN = $QM [ $Q7 ] [ 0 ]
		Local $QL = $QM [ $Q7 ] [ 1 ]
		If _1MS ( $QN ) Then
			_1O7 ( $QN , $QL , $PR )
		ElseIf _1MT ( $QN ) Then
			_1O8 ( $QN , $QL , $PS )
		ElseIf _1MU ( $QN ) Then
			_1OD ( $QN , $QL )
		EndIf
	Next
	_1N2 ( 10 )
EndFunc
Func _1OV ( ByRef Const $QM )
	_1OE ( )
	_1OU ( $QM , "1" )
	_1PA ( )
	_1N2 ( 50 )
EndFunc
Func _1OW ( $QK , $QL )
	Dim $L5
	If _1ME ( $L5 , $QK ) Then
		_D ( $L5 , $QK & "~~~~" & $QL , 0 , "~~~~" )
	EndIf
EndFunc
Func _1OX ( $QO )
	_1MI ( @CRLF & "- Errors -" & @CRLF )
	_1MI ( "    ~ " & $QO )
EndFunc
Func _1OY ( )
	Dim $L1
	Dim $KX
	Dim $L5
	If $L1 <> 7 Then Return
	If UBound ( $L5 ) = 1 Then Return
	Local Const $QP = @HomeDrive & "\KPRM\tasks-quarantines"
	Local Const $QQ = _1MH ( )
	If FileExists ( $QP ) = False Then
		DirCreate ( $QP )
	EndIf
	Local $QR = @AutoItExe
	If Not @Compiled Then $QR = @ScriptFullPath
	If Not FileExists ( $QP & "\kprm-quarantines.exe" ) Then
		FileCopy ( $QR , $QP & "\kprm-quarantines.exe" )
	EndIf
	If Not FileExists ( $QP & "\kprm-quarantines.exe" ) Then
		Return _1OX ( "Unable to copy binary in " & $QP & "\kprm-quarantines.exe" )
	EndIf
	For $21 = 1 To UBound ( $L5 ) + 4294967295
		Local $9X = StringReplace ( $L5 [ $21 ] [ 0 ] , "\" , "\\" )
		RegWrite ( "HKLM" & $QQ & "\Software\KPRM\quarantines\" & $KX , $21 , "REG_SZ" , $9X )
	Next
	Local $QS = _PH ( "d" , 7 , _Q5 ( ) )
	$QS = StringReplace ( $QS , "/" , "-" )
	$QS = StringReplace ( $QS , " " , "T" )
	Local $QT = _PH ( "M" , 4 , _Q5 ( ) )
	$QT = StringReplace ( $QT , "/" , "-" )
	$QT = StringReplace ( $QT , " " , "T" )
	Local Const $QU = "KpRm-quarantines"
	Local Const $QV = "KpRm-quarantines-" & $KX
	Local $QW
	$QW = _1BE ( $QU )
	If $QW <> 1 Then
		$QW = _1BC ( $QU )
		If $QW <> 1 Then
			Return _1OX ( "The folder with the name " & $QU & " was not created successfully" )
		EndIf
	EndIf
	$QW = _1BO ( $QU & "\" & $QV , "KpRm shedule quarantines deletion" , 1 , $QS , $QT , Null , Null , Null , Null , Null , "PT5M" , False , 3 , 1 , "" , "" , $QP & "\kprm-quarantines.exe" , $QP , "quarantines " & $KX , False )
	If $QW <> 1 Then
		Return _1OX ( "The task with the name " & $QV & " was not created successfully" )
	EndIf
EndFunc
Func _1OZ ( $QX )
	Local Const $QY = "kprm-" & $QX & ".txt"
	Local Const $QZ = @HomeDrive & "\KPRM" & "\" & $QY
	Local Const $R0 = @DesktopDir & "\" & $QY
	Local Const $R1 = FileExists ( $QZ )
	Local Const $R2 = FileExists ( $R0 )
	Local Const $QQ = _1MH ( )
	Local Const $MR = "HKLM" & $QQ & "\Software\KPRM\quarantines"
	Local Const $R3 = $MR & "\" & $QX
	If $R1 = True Then
		FileWrite ( $QZ , @CRLF & "- Deletions scheduled (" & _Q6 ( ) & ") -" & @CRLF )
	EndIf
	If $R2 = True Then
		FileWrite ( $R0 , @CRLF & "- Deletions scheduled (" & _Q6 ( ) & ") -" & @CRLF )
	EndIf
	For $21 = 1 To 10000
		Local $MT = RegEnumVal ( $R3 , $21 )
		If @error <> 0 Then ExitLoop
		Local $R4 = RegRead ( $R3 , $MT )
		If @error <> 0 Then ExitLoop
		Local $9X = StringReplace ( $R4 , "\\" , "\" )
		If $9X = "" Then ContinueLoop
		If _1MS ( $9X ) Then
			_1O5 ( $9X )
		ElseIf _1MT ( $9X ) Then
			_1O6 ( $9X )
		Else
			ContinueLoop
		EndIf
		If $R1 = True Or $R2 = True Then
			Local $R5 = "[OK]"
			Local $OZ = FileExists ( $9X )
			If $OZ = True Then
				$R5 = "[R]"
			EndIf
			Local $QO = "     " & $R5 & " " & $9X & " deleted (after 7 days)"
			If $R1 = True Then
				FileWrite ( $QZ , $QO & @CRLF )
			EndIf
			If $R2 = True Then
				FileWrite ( $R0 , $QO & @CRLF )
			EndIf
		EndIf
	Next
	Local $R6 = True
	RegDelete ( $R3 )
	RegEnumVal ( $MR , "1" )
	If @error <> 0 Then
		Local $R6 = False
		RegDelete ( $MR )
	EndIf
	RegEnumVal ( "HKLM" & $QQ & "\Software\KPRM" , "1" )
	If @error <> 0 Then
		Local $R6 = False
		RegDelete ( "HKLM" & $QQ & "\Software\KPRM" )
	EndIf
	Local Const $R7 = "KpRm-quarantines"
	Local Const $R8 = "KpRm-quarantines-" & $QX
	Local $QW
	$QW = _1BM ( $R8 , $R7 )
	If $QW <> 1 Then
		Exit
	EndIf
	$QW = _1BN ( $R7 )
	If @error <> 0 Then
		Exit
	EndIf
	Local Const $R9 = StringSplit ( $QW , "|" )
	Local Const $RA = $R9 [ 0 ] = 1 And $R9 [ 1 ] = ""
	If $RA = True Then
		_1BD ( $R7 )
		If $R6 Then
			RegDelete ( $MR )
		EndIf
		_1MJ ( )
	ElseIf $R6 = False Then
		For $21 = 1 To UBound ( $R9 ) + 4294967295
			_1BM ( $R9 [ $21 ] , $R7 )
		Next
		_1BD ( $R7 )
		_1MJ ( )
	EndIf
	Exit
EndFunc
Func _1P0 ( )
	Local Const $BH = @HomeDrive & "\KPRM"
	If Not FileExists ( $BH ) Then
		DirCreate ( $BH )
	EndIf
	If Not FileExists ( $BH ) Then
		_1N0 ( 16 , $K8 , $K9 )
		Exit
	EndIf
EndFunc
Func _1P1 ( )
	_1P0 ( )
	_1MI ( "# Run at " & _Q4 ( ) )
	_1MI ( "# KpRm (Kernel-panik) version " & $KU )
	_1MI ( "# Website https://kernel-panik.me/tool/kprm/" )
	_1MI ( "# Run by " & @UserName & " from " & @WorkingDir )
	_1MI ( "# Computer Name: " & @ComputerName )
	_1MI ( "# OS: " & _1MW ( ) & " " & @OSArch & " (" & @OSBuild & ") (" & _1MZ ( ) & ") " & @OSServicePack )
	_1MI ( "# Number of passes: " & _1MO ( ) )
	_1N3 ( )
EndFunc
Func _1P2 ( )
	GUICtrlSetState ( $LQ , $9 )
	GUICtrlSetState ( $LR , $8 )
	GUICtrlSetBkColor ( $LS , $LI )
	GUICtrlSetBkColor ( $LT , $LI )
	GUICtrlSetBkColor ( $LU , $LI )
	GUICtrlSetState ( $LS , $B )
	GUICtrlSetState ( $LT , $B )
	GUICtrlSetState ( $LU , $B )
	GUICtrlSetState ( $LR , $A )
EndFunc
Func _1P3 ( )
	GUICtrlSetState ( $LQ , $8 )
	GUICtrlSetState ( $LQ , $A )
	GUICtrlSetState ( $LR , $9 )
	GUICtrlSetBkColor ( $LS , $LJ )
	GUICtrlSetBkColor ( $LT , $LJ )
	GUICtrlSetBkColor ( $LU , $LJ )
	GUICtrlSetState ( $LS , $A )
	GUICtrlSetState ( $LT , $A )
	GUICtrlSetState ( $LU , $A )
EndFunc
Func _1P4 ( )
	Dim $KX = @YEAR & @MON & @MDAY & @HOUR & @MIN & @SEC
	Dim $KY = @YEAR & "-" & @MON & "-" & @MDAY & "-" & @HOUR & "-" & @MIN & "-" & @SEC
	Dim $KZ = "kprm-" & $KX & ".txt"
	Dim $L0 = Null
	Dim $L1 = Null
	Dim $L2 = False
	Dim $L3 = False
	Dim $L4 = False
	Dim $L5 [ 1 ] [ 2 ] = [ [ ] ]
	Dim $L6 [ 1 ] [ 2 ] = [ [ ] ]
	Dim $L7 = [ ]
	_1P9 ( )
	_1MP ( "Ready ..." )
	_1N3 ( )
EndFunc
Func _1P5 ( )
	_1P2 ( )
	Dim $L2 = True
	Dim $L3 = False
	GUICtrlSetState ( $LR , $B )
	_1PB ( )
	If $L3 = True Then
		_1P3 ( )
	Else
		_1N0 ( $U , $KQ , $KR )
		_1P2 ( )
	EndIf
EndFunc
Func _1P6 ( )
	Local $RB = False
	If GUICtrlRead ( $LV ) = $6 Then $RB = True
	If GUICtrlRead ( $LW ) = $6 Then $RB = True
	If GUICtrlRead ( $LX ) = $6 Then $RB = True
	If GUICtrlRead ( $LY ) = $6 Then $RB = True
	If GUICtrlRead ( $LZ ) = $6 Then $RB = True
	If GUICtrlRead ( $M0 ) = $6 Then $RB = True
	If GUICtrlRead ( $M1 ) = $6 Then $RB = True
	If GUICtrlRead ( $M2 ) = $6 Then $RB = True
	If $RB = False Then
		_1N0 ( $T , "Warning" , $KS )
		Return
	EndIf
	Local $RC = TimerInit ( )
	_1P1 ( )
	_1N2 ( )
	_1MI ( @CRLF & "- Checked options -" & @CRLF )
	If GUICtrlRead ( $LV ) = $6 Then _1MI ( "    ~ Registry Backup" )
	If GUICtrlRead ( $LW ) = $6 Then _1MI ( "    ~ Delete Tools" )
	If GUICtrlRead ( $LX ) = $6 Then _1MI ( "    ~ Restore System Settings" )
	If GUICtrlRead ( $LY ) = $6 Then _1MI ( "    ~ UAC Restore" )
	If GUICtrlRead ( $LZ ) = $6 Then _1MI ( "    ~ Delete Restore Points" )
	If GUICtrlRead ( $M0 ) = $6 Then _1MI ( "    ~ Create Restore Point" )
	If GUICtrlRead ( $M1 ) = $6 Then _1MI ( "    ~ Delete Quarantines" )
	If GUICtrlRead ( $M2 ) = $6 Then _1MI ( "    ~ Delete Quarantines after 7 days" )
	$L1 = Null
	If GUICtrlRead ( $M1 ) = $6 Then
		$L1 = 1
	ElseIf GUICtrlRead ( $M2 ) = $6 Then
		$L1 = 7
	EndIf
	_18I ( )
	If GUICtrlRead ( $LV ) = $6 Then
		_1NH ( )
	EndIf
	_1N2 ( )
	If GUICtrlRead ( $LW ) = $6 Then
		_1PB ( )
	Else
		_1N2 ( 16 )
	EndIf
	_1N2 ( )
	If GUICtrlRead ( $LX ) = $6 Then
		_1NI ( )
	EndIf
	_1N2 ( )
	If GUICtrlRead ( $LY ) = $6 Then
		_1NJ ( )
	EndIf
	_1N2 ( )
	If GUICtrlRead ( $LZ ) = $6 Then
		_1NR ( )
	EndIf
	_1N2 ( )
	If GUICtrlRead ( $M0 ) = $6 Then
		_1NZ ( )
	EndIf
	_1MD ( $RC , "KPRM" )
	GUICtrlSetData ( $LO , 100 )
	_18J ( )
	_1OY ( )
	_1PJ ( )
	_1MP ( "Finish" )
	_1N0 ( 64 , "OK" , $K7 )
	_1MK ( True )
EndFunc
Func _1P7 ( ByRef $P6 )
	If _X ( $M7 , $P6 ) <> + 4294967295 Then
		Local $RD [ 4 ] [ 2 ] = [ [ "type" , "file" ] , [ "companyName" , "" ] , [ "pattern" , "__REQUIRED__" ] , [ "quarantine" , "0" ] ]
		Return $RD
	ElseIf $P6 = "uninstall" Then
		Local $RD [ 2 ] [ 2 ] = [ [ "folder" , "__REQUIRED__" ] , [ "uninstaller" , "__REQUIRED__" ] ]
		Return $RD
	ElseIf $P6 = "task" Then
		Local $RD [ 1 ] [ 2 ] = [ [ "name" , "__REQUIRED__" ] ]
		Return $RD
	ElseIf $P6 = "softwareKey" Then
		Local $RD [ 1 ] [ 2 ] = [ [ "pattern" , "__REQUIRED__" ] ]
		Return $RD
	ElseIf $P6 = "process" Then
		Local $RD [ 3 ] [ 2 ] = [ [ "process" , "__REQUIRED__" ] , [ "companyName" , "" ] , [ "force" , "0" ] ]
		Return $RD
	ElseIf $P6 = "registryKey" Then
		Local $RD [ 1 ] [ 2 ] = [ [ "key" , "__REQUIRED__" ] ]
		Return $RD
	ElseIf $P6 = "searchRegistryKey" Then
		Local $RD [ 3 ] [ 2 ] = [ [ "key" , "__REQUIRED__" ] , [ "pattern" , "__REQUIRED__" ] , [ "value" , "__REQUIRED__" ] ]
		Return $RD
	ElseIf $P6 = "cleanDirectory" Then
		Local $RD [ 3 ] [ 2 ] = [ [ "path" , "__REQUIRED__" ] , [ "companyName" , "" ] , [ "quarantine" , "0" ] ]
		Return $RD
	ElseIf $P6 = "file" Then
		Local $RD [ 2 ] [ 2 ] = [ [ "path" , "__REQUIRED__" ] , [ "companyName" , "" ] ]
		Return $RD
	ElseIf $P6 = "folder" Then
		Local $RD [ 2 ] [ 2 ] = [ [ "path" , "__REQUIRED__" ] , [ "quarantine" , "0" ] ]
		Return $RD
	EndIf
EndFunc
Func _1P8 ( $RE , $RF , $RG , $RD )
	Local $NS = $RE & "~~"
	Local $39 = 0
	Local $RH = UBound ( $RD )
	For $21 = 0 To $RH + 4294967295
		Local $RI = False
		For $QB = 0 To UBound ( $RF ) + 4294967295
			If $RD [ $21 ] [ 0 ] = $RF [ $QB ] Then
				$NS &= $RG [ $QB ] & "~~"
				$RI = True
				$39 += 1
			EndIf
		Next
		If $RI = False Then
			Local $RJ = $RD [ $21 ] [ 1 ]
			If $RJ = "__REQUIRED__" Then
				_1N0 ( 16 , "Fail" , "Attribute " & $RD [ $21 ] [ 0 ] & " for tool " & $RE & " is required" )
				Exit
			EndIf
			$NS &= $RJ & "~~"
			$39 += 1
		EndIf
	Next
	If $39 <> $RH Then
		_1N0 ( 16 , "Fail" , "Values for tool " & $RE & " are invalid ! Number of expected values " & $39 & " and number of values received " & $RH )
		Exit
	EndIf
	$NS = StringTrimRight ( $NS , 2 )
	Return $NS
EndFunc
Func _1P9 ( )
	Dim $M6
	$M6 = ObjCreate ( "Scripting.Dictionary" )
	Local $RK = _19U ( "/tools/tool" )
	For $21 = 1 To $RK [ 0 ]
		Local $RL = _1A0 ( "/tools/tool[" & $21 & "]" , "name" )
		Local $RM = ObjCreate ( "Scripting.Dictionary" )
		Local $RN = ObjCreate ( "Scripting.Dictionary" )
		Local $RO = ObjCreate ( "Scripting.Dictionary" )
		Local $RP = ObjCreate ( "Scripting.Dictionary" )
		Local $RQ = ObjCreate ( "Scripting.Dictionary" )
		$RM .add ( "key" , $RN )
		$RM .add ( "element" , $RO )
		$RM .add ( "uninstall" , $RP )
		$RM .add ( "process" , $RQ )
		$M6 .add ( $RL , $RM )
	Next
EndFunc
Func _1PA ( )
	Dim $L1
	Dim $L5
	Local Const $RR [ 4 ] = [ "process" , "uninstall" , "element" , "key" ]
	Local $RS = False
	For $RT In $M6
		Local $RU = $M6 .Item ( $RT )
		Local $RV = False
		For $RW = 0 To UBound ( $RR ) + 4294967295
			Local $RX = $RR [ $RW ]
			Local $RY = $RU .Item ( $RX )
			Local $RZ = $RY .Keys
			If UBound ( $RZ ) > 0 Then
				$RS = True
				If $RV = False Then
					$RV = True
					_1MI ( @CRLF & "  ## " & $RT )
				EndIf
				For $S0 = 0 To UBound ( $RZ ) + 4294967295
					Local $S1 = $RZ [ $S0 ]
					Local $S2 = $RY .Item ( $S1 )
					_1PI ( $RX , $S1 , $S2 )
				Next
			EndIf
		Next
	Next
	If $RS = False Then
		_1MI ( "     [I] No tools found" )
	EndIf
	Local Const $S3 = _1MT ( @AppDataDir & "\ZHP" )
	Local Const $S4 = UBound ( $L5 ) > 1
	Local Const $S5 = $S3 = True Or $S4 = True
	If $S5 = True Then
		_1MI ( @CRLF & "- Other Lines -" & @CRLF )
	EndIf
	If $S3 = True Then
		_1MI ( @CRLF & "  ## Quarantines never deleted" )
		_1MI ( "    ~ " & @AppDataDir & "\ZHP (ZHP)" )
	EndIf
	If $S4 = True Then
		If $L1 = Null Then
			_1MI ( @CRLF & "  ## Quarantines keeped" )
		ElseIf $L1 = 7 Then
			_1MI ( @CRLF & "  ## Quarantines that will be deleted in 7 days (" & _PH ( "d" , 7 , _Q6 ( ) ) & ")" )
		EndIf
		_0Z ( $L5 , 0 , 0 , 0 , 1 )
		For $21 = 1 To UBound ( $L5 ) + 4294967295
			_1MI ( "    ~ " & $L5 [ $21 ] [ 0 ] & " (" & $L5 [ $21 ] [ 1 ] & ")" )
		Next
	EndIf
EndFunc
Func _1PB ( )
	Dim $L2
	_1MI ( @CRLF & "- Delete Tools -" & @CRLF )
	Local Const $S6 = [ "process" , "uninstall" , "task" , "desktop" , "desktopCommon" , "download" , "programFiles" , "homeDrive" , "appData" , "appDataCommon" , "appDataLocal" , "windowsFolder" , "softwareKey" , "registryKey" , "searchRegistryKey" , "startMenu" , "userStartMenu" , "cleanDirectory" , "file" , "folder" ]
	Local $RK = _19U ( "/tools/tool" )
	_1OE ( )
	For $S7 = 0 To UBound ( $S6 ) + 4294967295
		Local $S8 = $S6 [ $S7 ]
		Local $RD = _1P7 ( $S8 )
		Local $S9 [ 0 ] [ UBound ( $RD ) + 1 ]
		For $21 = 1 To $RK [ 0 ]
			Local $RL = _1A0 ( "/tools/tool[" & $21 & "]" , "name" )
			Local $SA = _19U ( "/tools/tool[" & $21 & "]/*" )
			For $QB = 1 To $SA [ 0 ]
				Local $89 = $SA [ $QB ]
				If $89 = $S8 Then
					Local $E6 [ 1 ] , $E7 [ 1 ]
					_1A2 ( "/tools/tool[" & $21 & "]/*[" & $QB & "]" , $E6 , $E7 )
					Local $SB = _1P8 ( $RL , $E6 , $E7 , $RD )
					_D ( $S9 , $SB , 0 , "~~" )
				EndIf
			Next
		Next
		Switch $S8
		Case "process"
			_1MP ( "Search process ..." )
			_1OG ( $S9 )
		Case "uninstall"
			_1MP ( "Search uninstaller ..." )
			_1OI ( $S9 )
		Case "task"
			_1MP ( "Search tasks ..." )
			_1OH ( $S9 )
		Case "desktop"
			_1MP ( "Search tools in desktop ..." )
			_1OB ( @DesktopDir , $S9 )
		Case "desktopCommon"
			_1MP ( "Search tools in common desktop ..." )
			_1OC ( @DesktopCommonDir , $S9 )
		Case "download"
			_1MP ( "Search tools in download ..." )
			_1OB ( @UserProfileDir & "\Downloads" , $S9 )
		Case "programFiles"
			_1MP ( "Search tools in Program files ..." )
			_1OJ ( $S9 )
		Case "homeDrive"
			_1MP ( "Search tools in home drive ..." )
			_1OC ( @HomeDrive , $S9 )
		Case "appDataCommon"
			_1MP ( "Search tools in AppData ..." )
			_1OC ( @AppDataCommonDir , $S9 )
		Case "appDataLocal"
			_1MP ( "Search tools in AppLocalData ..." )
			_1OC ( @LocalAppDataDir , $S9 )
		Case "windowsFolder"
			_1MP ( "Search tools in Windows ..." )
			_1OC ( @WindowsDir , $S9 )
		Case "softwareKey"
			_1MP ( "Search software keys ..." )
			_1OK ( $S9 )
		Case "registryKey"
			_1MP ( "Search tools in registry ..." )
			_1OM ( $S9 )
		Case "searchRegistryKey"
			_1MP ( "Specific search in registry ..." )
			_1OL ( $S9 )
		Case "startMenu"
			_1MP ( "Search tools in start menu ..." )
			_1OC ( @AppDataCommonDir & "\Microsoft\Windows\Start Menu\Programs" , $S9 )
		Case "userStartMenu"
			_1MP ( "Search tools in user start menu ..." )
			_1OC ( @AppDataDir & "\Microsoft\Windows\Start Menu\Programs" , $S9 )
		Case "cleanDirectory"
			_1MP ( "Search tools in specific directory ..." )
			_1ON ( $S9 )
		Case "file"
			_1MP ( "Search specific files ..." )
			_1OP ( $S9 )
		Case "folder"
			_1MP ( "Search specific directory ..." )
			_1OQ ( $S9 )
		EndSwitch
		Local $SC = 1
		If $L2 = True Then
			$SC = 2
		EndIf
		_1N2 ( $SC )
	Next
	If $L2 = True Then
		_1N2 ( 50 )
		_1MP ( "Finish ..." )
		_1OR ( )
		Return
	EndIf
	_1PA ( )
	_1N2 ( )
EndFunc
Func _1PC ( $SD , $MR )
	If $SD .Exists ( $MR ) Then
		Local $MT = $SD .Item ( $MR ) + 1
		$SD .Item ( $MR ) = $MT
	Else
		$SD .add ( $MR , 1 )
	EndIf
	Return $SD
EndFunc
Func _1PD ( $PO , $SE , $SF )
	Dim $M6
	Local $SG = $M6 .Item ( $PO )
	Local $SH = _1PC ( $SG .Item ( $SE ) , $SF )
	$SG .Item ( $SE ) = $SH
	$M6 .Item ( $PO ) = $SG
EndFunc
Func _1PE ( $PL , $SI )
	If $PL = Null Or $PL = "" Then Return
	Local $Q3 = ProcessExists ( $PL )
	If $Q3 <> 0 Then
		_1MI ( "     [X] Process " & $PL & " not killed, it is possible that the deletion is not complete" )
	Else
		_1MI ( "     [OK] Process " & $PL & " killed" )
	EndIf
EndFunc
Func _1PF ( $SJ , $SI )
	If $SJ = Null Or $SJ = "" Then Return
	Local $R5 = "[X]"
	RegEnumVal ( $SJ , "1" )
	If @error >= 0 Then
		$R5 = "[OK]"
	EndIf
	_1MI ( "     " & $R5 & " " & _1MX ( $SJ ) & " deleted" )
EndFunc
Func _1PG ( $SJ , $SI )
	If $SJ = Null Or $SJ = "" Then Return
	Local $BG = "" , $BH = "" , $A6 = "" , $BI = ""
	Local $N8 = _18F ( $SJ , $BG , $BH , $A6 , $BI )
	If $BI = ".exe" Then
		Local $SK = $N8 [ 1 ] & $N8 [ 2 ]
		Local $R5 = "[OK]"
		If FileExists ( $SK ) Then
			$R5 = "[R]"
			_1OO ( $SK )
		EndIf
		_1MI ( "     " & $R5 & " Uninstaller run correctly" )
	EndIf
EndFunc
Func _1PH ( $SJ , $SI )
	If $SJ = Null Or $SJ = "" Then Return
	Local $R5 = "[OK]"
	If FileExists ( $SJ ) Then
		$R5 = "[R]"
		_1OO ( $SJ )
	EndIf
	_1MI ( "     " & $R5 & " " & $SJ & " deleted" )
EndFunc
Func _1PI ( $89 , $SJ , $SI )
	Switch $89
	Case "process"
		_1PE ( $SJ , $SI )
	Case "key"
		_1PF ( $SJ , $SI )
	Case "uninstall"
		_1PG ( $SJ , $SI )
	Case "element"
		_1PH ( $SJ , $SI )
Case Else
		_1MI ( "     [?] Unknown type " & $89 )
	EndSwitch
EndFunc
Func _1PJ ( )
	Dim $L4
	Dim $L7
	Dim $KZ
	If $L4 = True Then
		Local Const $QQ = _1MH ( )
		For $21 = 1 To UBound ( $L7 ) + 4294967295
			Local $89 = _1MV ( $L7 [ $21 ] )
			Local $QK = StringReplace ( $L7 [ $21 ] , "\" , "\\" )
			Local $MW = Null
			If $89 = "file" Then
				$MW = "cmd.exe /c IF EXIST " & """" & $QK & """" & " DEL /F /Q " & """" & $QK & """"
			ElseIf $89 = "folder" Then
				$MW = "cmd.exe /c IF EXIST " & """" & $QK & """" & " RMDIR /S /Q " & """" & $QK & """"
			EndIf
			If $MW <> Null Then
				RegWrite ( "HKLM" & $QQ & "\Software\Microsoft\Windows\CurrentVersion\RunOnce" , "kprm_remove__" & $21 , "REG_SZ" , $MW )
			EndIf
		Next
		Local $SL = StringReplace ( @DesktopDir & "\" & $KZ , "\" , "\\" )
		RegWrite ( "HKLM" & $QQ & "\Software\Microsoft\Windows\CurrentVersion\RunOnce" , "kprm_report" , "REG_SZ" , "notepad.exe " & """" & $SL & """" )
		If @Compiled Then
			DllCall ( "kernel32.dll" , "int" , "MoveFileExW" , "wstr" , @AutoItExe , "ptr" , 0 , "dword" , $R )
		EndIf
		_1MI ( @CRLF & "- Need to Restart -" & @CRLF )
		_1MP ( "Need Restart" )
		_1N0 ( 64 , "Restart Now" , $KD )
		If Shutdown ( 6 ) <> 1 Then
			Shutdown ( 2 )
		EndIf
	EndIf
EndFunc
If FileExists ( $KV ) Then
	DirRemove ( $KV , $0Z )
EndIf
DirCreate ( $KV )
FileInstall ( ".\config\tools.xml" , $KV & "\kprm-tools.xml" , 1 )
FileInstall ( ".\assets\bug.gif" , $KV & "\kprm-logo.gif" , 1 )
FileInstall ( ".\assets\close.gif" , $KV & "\kprm-close.gif" , 1 )
FileInstall ( ".\config\tools.xml" , $KV & "\kprm-tools.xml" , 1 )
_19R ( $KV & "\kprm-tools.xml" )
If $KT = True Then
	AutoItSetOption ( "MustDeclareVars" , 1 )
EndIf
If UBound ( $CMDLINE ) > 1 Then
	Local $S8 = $CMDLINE [ 1 ]
	$S8 = StringStripWS ( $S8 , $G + $H )
	If $S8 = "quarantines" Then
		_1OZ ( $CMDLINE [ 2 ] )
	EndIf
	Exit
EndIf
Local Const $SM = _1N0 ( $U , "Disclaimer of warranty!" , "Disclaimer of warranty!" & @CRLF & @CRLF & "This software is provided ""AS IS"" without warranty of any kind." & @CRLF & "You may use this software at your own risk." & @CRLF & @CRLF & "This software is not permitted for commercial purposes." & @CRLF & @CRLF & "Are you sure you want to continue?" & @CRLF & @CRLF & "Click Yes to continue. Click No to exit." , $S )
If $SM <> 1 Then Exit
Local Const $SN = GUICreate ( $KW & " v" & $KU & " by kernel-panik" , 500 , 263 , 202 , 112 , BitOR ( $O , $N ) )
GUICtrlSetDefColor ( $LG )
Local Const $SO = GUICtrlCreateLabel ( "KpRm By Kernel-panik v" & $KU , $LA , $LA )
GUICtrlSetColor ( $SO , $LJ )
Global $LN = GUICtrlCreateLabel ( "Ready..." , $LA , 220 , 800 , $LC )
GUICtrlSetColor ( $LN , $LJ )
Local Const $SP = GUICtrlCreatePic ( $KV & "\kprm-close.gif" , 475 , 5 , 20 , 20 )
Local Const $SQ = GUICtrlCreateLabel ( $KH , 158 , 5 , 120 , 20 , $E + $C + $D )
GUICtrlSetBkColor ( $SQ , $LK )
GUICtrlSetColor ( $SQ , $LH )
Local Const $SR = GUICtrlCreateLabel ( $KI , 286 , 5 , 120 , 20 , $E + $C + $D )
GUICtrlSetBkColor ( $SR , $LI )
GUICtrlSetColor ( $SR , $LJ )
_1N1 ( 1 )
Global $LO = GUICtrlCreateProgress ( 0 , 245 , 500 , $LC )
GUICtrlSetBkColor ( $LO , $LG )
GUICtrlSetColor ( $LO , $LH )
_1N1 ( 0 )
Local Const $SS = GUICtrlCreateTab ( 10 , 40 , 200 , 200 )
GUICtrlSetState ( $SS , $9 )
Local Const $ST = GUICtrlCreateTabItem ( "tab1" )
Local Const $SU = GUICtrlCreatePic ( $KV & "\kprm-logo.gif" , 415 , 50 , 75 , 75 )
_1N1 ( 1 )
Local Const $SV = GUICtrlCreateGroup ( $KO , $LA , 25 , $LB , 120 )
GUICtrlSetColor ( $SV , $LG )
Local Const $SW = GUICtrlCreateGroup ( $KE , $LA , ( $LA + ( $LF * 4 ) ) , $LB , 58 )
GUICtrlSetColor ( $SW , $LG )
Global $LW = GUICtrlCreateCheckbox ( $K0 , $L8 , $LA + $LF , 190 , $LC )
GUICtrlSetColor ( $LW , $LG )
Global $LZ = GUICtrlCreateCheckbox ( $K1 , $L8 , ( $LA + ( $LF * 2 ) ) , 190 , $LC )
GUICtrlSetColor ( $LZ , $LG )
Global $M0 = GUICtrlCreateCheckbox ( $K2 , $L8 , ( $LA + ( $LF * 3 ) ) , 190 , $LC )
GUICtrlSetColor ( $M0 , $LG )
Global $LV = GUICtrlCreateCheckbox ( $K3 , $L9 , $LA + $LF , 185 , $LC )
GUICtrlSetColor ( $LV , $LG )
Global $LY = GUICtrlCreateCheckbox ( $K4 , $L9 , ( $LA + ( $LF * 2 ) ) , 185 , $LC )
GUICtrlSetColor ( $LY , $LG )
Global $LX = GUICtrlCreateCheckbox ( $K5 , $L9 , ( $LA + ( $LF * 3 ) ) , 185 , $LC )
GUICtrlSetColor ( $LX , $LG )
Global $M1 = GUICtrlCreateCheckbox ( $KF , $L8 , 176 , 137 , $LC )
GUICtrlSetColor ( $M1 , $LG )
Global $M2 = GUICtrlCreateCheckbox ( $KG , $L9 , 176 , 137 , $LC )
GUICtrlSetColor ( $M2 , $LG )
_1N1 ( 0 )
Local Const $SX = GUICtrlCreateButton ( $K6 , 415 , 159 , 75 , 52 )
GUICtrlSetBkColor ( $SX , $LK )
GUICtrlSetColor ( $SX , $LH )
Local Const $SY = GUICtrlCreateTabItem ( "tab2" )
Global $LS = GUICtrlCreateButton ( $KJ , 415 , $LE , 75 , $LD )
GUICtrlSetColor ( $LS , $LG )
Global $LT = GUICtrlCreateButton ( $KK , 415 , ( $LE + $LD + $LA ) , 75 , $LD )
GUICtrlSetColor ( $LT , $LG )
Global $LU = GUICtrlCreateButton ( $KL , 415 , ( $LE + ( $LD * 2 ) + ( $LA * 2 ) ) , 75 , $LD )
GUICtrlSetColor ( $LU , $LG )
Global $LR = GUICtrlCreateButton ( $KM , 415 , ( $LE + ( $LD * 3 ) + ( $LA * 3 ) ) , 75 , $LD )
GUICtrlSetColor ( $LR , $LG )
GUICtrlSetBkColor ( $LR , $LJ )
Global $LQ = GUICtrlCreateButton ( $KN , 415 , ( $LE + ( $LD * 3 ) + ( $LA * 3 ) ) , 75 , $LD )
GUICtrlSetBkColor ( $LQ , $LL )
GUICtrlSetColor ( $LQ , $LG )
Global $LP = GUICtrlCreateListView ( "Line" , $LA , 30 , $LB , 180 , $6Y , BitOR ( $P , $6Z , $70 ) )
GUICtrlSetBkColor ( $LP , $LH )
GUICtrlSetColor ( $LP , $LG )
_MA ( $LP , 0 , $LB + 4294967291 )
_1P2 ( )
GUICtrlCreateTabItem ( "" )
GUISetBkColor ( $LH )
GUISetState ( @SW_SHOW )
While 1
	Sleep ( 10 )
	Local $SZ = GUIGetMsg ( )
	Switch $SZ
	Case $5
		_2U ( $SN , $Q , $LM , 0 )
	Case $4
		Exit
	Case $SP
		Exit
	Case $SQ
		If GUICtrlRead ( $SS , 1 ) = $ST Then
			ContinueLoop
		EndIf
		GUICtrlSetState ( $ST , $8 )
		GUICtrlSetBkColor ( $SQ , $LK )
		GUICtrlSetColor ( $SQ , $LH )
		GUICtrlSetBkColor ( $SR , $LI )
		GUICtrlSetColor ( $SR , $LJ )
	Case $SR
		If GUICtrlRead ( $SS , 1 ) = $SY Then
			ContinueLoop
		EndIf
		GUICtrlSetState ( $SY , $8 )
		GUICtrlSetBkColor ( $SQ , $LI )
		GUICtrlSetColor ( $SQ , $LJ )
		GUICtrlSetBkColor ( $SR , $LK )
		GUICtrlSetColor ( $SR , $LH )
	Case $M1
		GUICtrlSetState ( $M2 , $7 )
		If GUICtrlRead ( $M1 ) = $6 Then
			GUICtrlSetState ( $LW , $6 )
		EndIf
	Case $M2
		GUICtrlSetState ( $M1 , $7 )
		If GUICtrlRead ( $M2 ) = $6 Then
			GUICtrlSetState ( $LW , $6 )
		EndIf
	Case $LW
		If GUICtrlRead ( $M1 ) = $6 Or GUICtrlRead ( $M2 ) = $6 Then
			GUICtrlSetState ( $LW , $6 )
		EndIf
	Case $LR
		_1P4 ( )
		_1MP ( "Search ..." )
		_1P5 ( )
	Case $SX
		_1P4 ( )
		_1MP ( "Running ..." )
		_1P6 ( )
	Case $LT
		_MM ( $LP , + 4294967295 , True )
	Case $LS
		_MM ( $LP , + 4294967295 , False )
	Case $LU
		_IV ( $LP )
		_1P2 ( )
		_1P4 ( )
	Case $LQ
		GUICtrlSetState ( $LQ , $B )
		Local $QM [ 1 ] [ 2 ] = [ [ ] ]
		For $21 = 1 To UBound ( $L6 ) + 4294967295
			If _K5 ( $LP , $21 + 4294967295 ) Then
				_D ( $QM , $L6 [ $21 ] [ 0 ] & "~~~~" & $L6 [ $21 ] [ 1 ] , 0 , "~~~~" )
			EndIf
		Next
		If UBound ( $QM ) = 1 Then
			_1N0 ( $T , "Warning" , $KP )
			GUICtrlSetState ( $LQ , $A )
		Else
			Local $RC = TimerInit ( )
			_1P4 ( )
			_1P1 ( )
			_1N2 ( )
			_1MI ( @CRLF & "- Checked options -" & @CRLF )
			_1MI ( "    ~ Custom deletions" )
			_1OV ( $QM )
			_1MP ( "Finish" )
			_1PJ ( )
			_IV ( $LP )
			_1P2 ( )
			_1N0 ( 64 , "OK" , $K7 )
			_1MN ( )
		EndIf
	EndSwitch
WEnd
