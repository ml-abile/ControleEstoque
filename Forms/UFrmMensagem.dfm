object FrmMensagem: TFrmMensagem
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 240
  BorderStyle = bsNone
  ClientHeight = 518
  ClientWidth = 881
  Color = clInfoBk
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    881
    518)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 58
    Top = 77
    Width = 753
    Height = 356
    Anchors = []
    BevelOuter = bvNone
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object LblTipo: TLabel
      Left = 40
      Top = 16
      Width = 33
      Height = 86
      Caption = ':)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -64
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblTitulo: TLabel
      Left = 40
      Top = 108
      Width = 672
      Height = 32
      AutoSize = False
      Caption = 'T'#237'tulo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblMensagem: TLabel
      Left = 40
      Top = 161
      Width = 672
      Height = 97
      AutoSize = False
      Caption = 
        'Mensagem Mensagem Mensagem Mensagem Mensagem Mensagem Mensagem M' +
        'ensagem Mensagem Mensagem Mensagem Mensagem Mensagem Mensagem Me' +
        'nsagem Mensagem '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel1: TBevel
      Left = 40
      Top = 148
      Width = 672
      Height = 7
      Shape = bsTopLine
    end
    object btn1: TSpeedButton
      Left = 575
      Top = 289
      Width = 137
      Height = 45
      Caption = 'OK'
      Flat = True
      OnClick = btn1Click
    end
    object btn2: TSpeedButton
      Left = 434
      Top = 289
      Width = 137
      Height = 45
      Caption = 'Sim'
      Flat = True
      OnClick = btn2Click
    end
  end
end
