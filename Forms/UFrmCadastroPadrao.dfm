object FrmCadastroPadrao: TFrmCadastroPadrao
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 301
  ClientWidth = 577
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
    Width = 577
    Height = 70
    Align = alTop
    Alignment = taLeftJustify
    Caption = '       Cadastro Padr'#227'o'
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
      577
      70)
    object BtnExcluir: TButton
      Left = 520
      Top = 14
      Width = 46
      Height = 50
      Action = actExcluir
      Anchors = [akTop, akRight]
      ImageAlignment = iaCenter
      Images = Tabelas.img32
      Style = bsCommandLink
      TabOrder = 0
    end
    object BtnCancelar: TButton
      Left = 468
      Top = 14
      Width = 46
      Height = 50
      Action = ActCancelar
      Anchors = [akTop, akRight]
      ImageAlignment = iaCenter
      Images = Tabelas.img32
      Style = bsCommandLink
      TabOrder = 1
    end
    object BtnVoltar: TButton
      Left = 8
      Top = 9
      Width = 46
      Height = 50
      Action = actVoltar
      ImageAlignment = iaCenter
      Images = Tabelas.img32
      Style = bsCommandLink
      TabOrder = 2
    end
    object BtnSalvar: TButton
      Left = 416
      Top = 14
      Width = 46
      Height = 50
      Action = actSalvar
      Anchors = [akTop, akRight]
      ImageAlignment = iaCenter
      Images = Tabelas.img32
      Style = bsCommandLink
      TabOrder = 3
    end
  end
  object PnlDados: TPanel
    Left = 0
    Top = 70
    Width = 577
    Height = 217
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 287
    Width = 577
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
    TabOrder = 2
  end
  object ActionList1: TActionList
    Left = 384
    Top = 40
    object actSalvar: TAction
      Hint = 'Salva todas as altera'#231#245'es em andamento'
      ImageIndex = 50
      ShortCut = 113
      OnExecute = actSalvarExecute
    end
    object ActCancelar: TAction
      Hint = 'Cancela todas as altera'#231#245'es em andamento'
      ImageIndex = 75
      ShortCut = 114
      OnExecute = ActCancelarExecute
    end
    object actExcluir: TAction
      Hint = 'Exclui o registro atual'
      ImageIndex = 234
      ShortCut = 16430
      OnExecute = actExcluirExecute
    end
    object actVoltar: TAction
      Hint = 'Retorna a tela anterior'
      ImageIndex = 30
      ShortCut = 16411
      OnExecute = actVoltarExecute
    end
  end
  object dts: TDataSource
    OnDataChange = dtsDataChange
    Left = 456
    Top = 40
  end
end
