' 按键精灵优化版：V/Z/F 映射与连招
' 说明：
' 1) 依赖按键精灵自带 F10 启动 / F12 停止，不再做脚本内暂停/退出开关
' 2) V 改为按住持续触发（带冷却，避免过高频率）
' 3) Z / F 保持按下即触发
' 4) 配置集中管理（坐标/颜色/延时）

Option Explicit

Private Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
Private Declare Function GetTickCount Lib "kernel32" () As Long

' ===== 配置区 =====
Const LOOP_DELAY = 20             ' 主循环间隔(ms)
Const COMBO_COOLDOWN = 180        ' V 连招最小冷却(ms)
Const HOTKEY_V = 86               ' V
Const HOTKEY_Z = 90               ' Z
Const HOTKEY_F = 70               ' F

' 颜色检测点
Const PT_A_X = 810
Const PT_A_Y = 1193
Const PT_A_COLOR = "345C64"

Const PT_B_X = 863
Const PT_B_Y = 1202
Const PT_B_COLOR = "DEE6DE"

Const PT_C_X = 752
Const PT_C_Y = 1250
Const PT_C_COLOR = "3FB6D3"

Const PT_D_X = 759
Const PT_D_Y = 1201
Const PT_D_COLOR = "EEE6DE"

' ===== 状态区 =====
Dim lastZState, lastFState
Dim lastComboTick

Sub InitState()
    lastZState = 0
    lastFState = 0
    lastComboTick = 0
End Sub

Function IsPressed(vk)
    IsPressed = (GetAsyncKeyState(vk) <> 0)
End Function

Function OnKeyDown(vk, ByRef lastState)
    Dim nowState
    nowState = IsPressed(vk)
    If nowState And (Not lastState) Then
        OnKeyDown = True
    Else
        OnKeyDown = False
    End If
    lastState = nowState
End Function

Function ComboReady()
    Dim nowTick
    nowTick = GetTickCount()
    ComboReady = ((nowTick - lastComboTick) >= COMBO_COOLDOWN)
    If ComboReady Then
        lastComboTick = nowTick
    End If
End Function

Sub RunVCombo()
    KeyPress "Num 4", 1

    IfColor PT_A_X, PT_A_Y, PT_A_COLOR, 2 Then
        IfColor PT_B_X, PT_B_Y, PT_B_COLOR, 2 Then
            KeyPress "`", 3
        End If
    End If

    IfColor PT_C_X, PT_C_Y, PT_C_COLOR, 2 Then
        KeyPress "5", 3
    End If

    IfColor PT_D_X, PT_D_Y, PT_D_COLOR, 2 Then
        KeyPress "3", 3
    Else
        KeyPress "6", 2
        KeyPress "4", 1
    End If
End Sub

SetSimMode 2
InitState

Do
    ' V：按住持续连招（冷却节流）
    If IsPressed(HOTKEY_V) Then
        If ComboReady() Then
            RunVCombo
        End If
    End If

    ' Z：快速虎跑（按下一次触发）
    If OnKeyDown(HOTKEY_Z, lastZState) Then
        KeyPress "0", 2
    End If

    ' F -> F7（按下一次触发）
    If OnKeyDown(HOTKEY_F, lastFState) Then
        KeyPress "F7", 1
    End If

    Delay LOOP_DELAY
Loop
