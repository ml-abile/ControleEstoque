inherited FrmCadastroProdutos: TFrmCadastroProdutos
  ClientHeight = 324
  ClientWidth = 612
  ExplicitWidth = 612
  ExplicitHeight = 324
  PixelsPerInch = 96
  TextHeight = 21
  object TLabel [0]
    Left = 208
    Top = 344
    Width = 56
    Height = 21
    Caption = 'Produto'
  end
  inherited Panel1: TPanel
    Width = 612
    Caption = '       Produto'
    ExplicitWidth = 612
    inherited BtnExcluir: TButton
      Left = 555
      ExplicitLeft = 555
    end
    inherited BtnCancelar: TButton
      Left = 503
      ExplicitLeft = 503
    end
    inherited BtnSalvar: TButton
      Left = 445
      ExplicitLeft = 445
    end
  end
  inherited PnlDados: TPanel
    Width = 612
    Height = 240
    ExplicitWidth = 612
    ExplicitHeight = 240
    object Label1: TLabel
      Left = 21
      Top = 18
      Width = 56
      Height = 21
      Caption = 'Produto'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 125
      Top = 18
      Width = 67
      Height = 21
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 125
      Top = 90
      Width = 55
      Height = 21
      Caption = 'Estoque'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 309
      Top = 167
      Width = 30
      Height = 21
      Caption = 'Tipo'
    end
    object Label6: TLabel
      Left = 19
      Top = 90
      Width = 58
      Height = 21
      Caption = 'Unidade'
      FocusControl = DBEdit6
    end
    object Label4: TLabel
      Left = 21
      Top = 167
      Width = 110
      Height = 21
      Caption = 'Data de Entrada'
      FocusControl = DBEdit4
    end
    object Label8: TLabel
      Left = 151
      Top = 167
      Width = 139
      Height = 21
      Caption = 'Data de Vencimento'
      FocusControl = DBEdit4
    end
    object Label7: TLabel
      Left = 243
      Top = 90
      Width = 79
      Height = 21
      Caption = 'Localiza'#231#227'o'
      FocusControl = DBEdit5
    end
    object DBEdit1: TDBEdit
      Left = 21
      Top = 45
      Width = 81
      Height = 29
      DataField = 'PRODUTO_ID'
      DataSource = dts
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 125
      Top = 45
      Width = 473
      Height = 29
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 125
      Top = 117
      Width = 100
      Height = 29
      DataField = 'ESTOQUE_SALDO'
      DataSource = dts
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 21
      Top = 117
      Width = 68
      Height = 29
      CharCase = ecUpperCase
      DataField = 'UN'
      DataSource = dts
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 21
      Top = 194
      Width = 110
      Height = 29
      DataField = 'DATA_ENTRADA'
      DataSource = dts
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 243
      Top = 117
      Width = 355
      Height = 29
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = dts
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 151
      Top = 194
      Width = 139
      Height = 29
      DataField = 'DATA_VENCIMENTO'
      DataSource = dts
      TabOrder = 6
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 309
      Top = 194
      Width = 156
      Height = 29
      DataField = 'BAIXA_TIPO_ID'
      DataSource = dts
      KeyField = 'BAIXA_TIPO_ID'
      ListField = 'TIPO'
      ListSource = dts2
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Top = 310
    Width = 612
    ExplicitTop = 310
    ExplicitWidth = 612
  end
  inherited dts: TDataSource
    DataSet = Tabelas.qryProdutos
  end
  object dts2: TDataSource
    DataSet = Tabelas.qryBaixa_Tipos
    OnDataChange = dtsDataChange
    Left = 336
    Top = 40
  end
end
