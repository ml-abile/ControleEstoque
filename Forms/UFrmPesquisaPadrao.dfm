object FrmPesquisaPadrao: TFrmPesquisaPadrao
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 405
  ClientWidth = 729
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 70
    Align = alTop
    Alignment = taLeftJustify
    Caption = '       Pesquisa Padr'#227'o'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -29
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      729
      70)
    object BtnImprimir: TButton
      Left = 556
      Top = 9
      Width = 46
      Height = 50
      Action = actImprmir
      Anchors = [akTop, akRight]
      ImageAlignment = iaCenter
      Images = Tabelas.img32
      Style = bsCommandLink
      TabOrder = 0
      Visible = False
    end
    object BtnAlterar: TButton
      Left = 668
      Top = 9
      Width = 46
      Height = 50
      Action = actAlterar
      Anchors = [akTop, akRight]
      ImageAlignment = iaCenter
      Images = Tabelas.img32
      Style = bsCommandLink
      TabOrder = 1
    end
    object Button1: TButton
      Left = 0
      Top = 14
      Width = 46
      Height = 50
      Action = actVoltar
      ImageAlignment = iaCenter
      Images = Tabelas.img32
      Style = bsCommandLink
      TabOrder = 2
    end
    object BtnIncluir: TButton
      Left = 608
      Top = 14
      Width = 46
      Height = 50
      Action = actIncluir
      Anchors = [akTop, akRight]
      ImageAlignment = iaCenter
      Images = Tabelas.img32
      Style = bsCommandLink
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 391
    Width = 729
    Height = 14
    Align = alBottom
    Alignment = taLeftJustify
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -29
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object PnlPesquisa: TPanel
    Left = 0
    Top = 70
    Width = 729
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 729
    Height = 270
    Align = alClient
    BorderStyle = bsNone
    DataSource = dts
    DrawingStyle = gdsGradient
    FixedColor = clBlack
    GradientEndColor = clBlack
    GradientStartColor = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -16
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object ActionList1: TActionList
    Left = 400
    Top = 192
    object actVoltar: TAction
      Hint = 'Retornar a tela anterior'
      ImageIndex = 30
      ShortCut = 16411
      OnExecute = actVoltarExecute
    end
    object actIncluir: TAction
      Hint = 'Incluir um novo registro'
      ImageIndex = 86
      ShortCut = 113
      OnExecute = actIncluirExecute
    end
    object actAlterar: TAction
      Caption = 'actAlterar'
      Hint = 'Alterar o registro atual'
      ImageIndex = 77
      ShortCut = 114
      OnExecute = actAlterarExecute
    end
    object actImprmir: TAction
      Caption = 'actImprmir'
      Hint = 'Gerar relat'#243'rios'
      ImageIndex = 180
      ShortCut = 115
      OnExecute = actImprmirExecute
    end
  end
  object dts: TDataSource
    Left = 472
    Top = 192
  end
end
