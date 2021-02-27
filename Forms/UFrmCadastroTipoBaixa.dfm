inherited frmCadastroTipoBaixa: TfrmCadastroTipoBaixa
  Caption = 'frmCadastroTipoBaixa'
  ClientHeight = 210
  ClientWidth = 492
  OnCreate = FormCreate
  ExplicitWidth = 492
  ExplicitHeight = 210
  PixelsPerInch = 96
  TextHeight = 21
  inherited Panel1: TPanel
    Width = 492
    Caption = '       Tipos de Baixa'
    ExplicitWidth = 566
    inherited BtnExcluir: TButton
      Left = 435
      ExplicitLeft = 509
    end
    inherited BtnCancelar: TButton
      Left = 383
      ExplicitLeft = 457
    end
    inherited BtnSalvar: TButton
      Left = 331
      ExplicitLeft = 405
    end
  end
  inherited PnlDados: TPanel
    Width = 492
    Height = 126
    ExplicitWidth = 566
    ExplicitHeight = 126
    object Label2: TLabel
      Left = 16
      Top = 26
      Width = 34
      Height = 21
      Caption = 'Tipo'
      FocusControl = DBEdit2
    end
    object Label1: TLabel
      Left = 16
      Top = 26
      Width = 50
      Height = 21
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 53
      Width = 465
      Height = 29
      CharCase = ecUpperCase
      DataField = 'TIPO'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 53
      Width = 89
      Height = 29
      DataField = 'BAIXA_TIPO_ID'
      DataSource = dts
      Enabled = False
      TabOrder = 1
      Visible = False
    end
  end
  inherited Panel2: TPanel
    Top = 196
    Width = 492
    ExplicitTop = 196
    ExplicitWidth = 566
  end
  inherited dts: TDataSource
    DataSet = Tabelas.qryBaixa_Tipos
  end
end
