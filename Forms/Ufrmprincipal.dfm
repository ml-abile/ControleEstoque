object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrmPrincipal'
  ClientHeight = 517
  ClientWidth = 1002
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 70
    Align = alTop
    Alignment = taLeftJustify
    Caption = '   ZionControl'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -29
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    OnDblClick = Panel1DblClick
    OnMouseDown = Panel1MouseDown
    DesignSize = (
      1002
      70)
    object BtnFechar: TButton
      Left = 945
      Top = 9
      Width = 46
      Height = 50
      Anchors = [akTop, akRight]
      ImageAlignment = iaCenter
      ImageIndex = 146
      Images = Tabelas.img32
      Style = bsCommandLink
      TabOrder = 0
      OnClick = BtnFecharClick
    end
    object BtnMinimizar: TButton
      Left = 893
      Top = 9
      Width = 46
      Height = 50
      Anchors = [akTop, akRight]
      ImageAlignment = iaCenter
      ImageIndex = 28
      Images = Tabelas.img32
      Style = bsCommandLink
      TabOrder = 1
      OnClick = BtnMinimizarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 503
    Width = 1002
    Height = 14
    Align = alBottom
    Alignment = taLeftJustify
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object btnProdutos: TButton
    Left = 8
    Top = 76
    Width = 161
    Height = 37
    Caption = 'Produtos'
    ImageIndex = 64
    TabOrder = 2
    OnClick = btnProdutosClick
  end
  object btnBaixaEstoque: TButton
    Left = 175
    Top = 76
    Width = 170
    Height = 37
    Caption = 'Baixa de Estoque'
    TabOrder = 3
    OnClick = btnBaixaEstoqueClick
  end
  object btnRelatorios: TButton
    Left = 351
    Top = 76
    Width = 178
    Height = 37
    Caption = 'Relat'#243'rios'
    TabOrder = 4
    OnClick = btnRelatoriosClick
  end
  object btnTiposBaixa: TButton
    Left = 175
    Top = 119
    Width = 170
    Height = 37
    Caption = 'Tipos de Baixa'
    TabOrder = 5
    OnClick = btnTiposBaixaClick
  end
end
