inherited frmCadastroBaixaEstoque: TfrmCadastroBaixaEstoque
  Caption = 'frmCadastroBaixaEstoque'
  ClientHeight = 372
  ClientWidth = 580
  OnCreate = FormCreate
  ExplicitWidth = 580
  ExplicitHeight = 372
  PixelsPerInch = 96
  TextHeight = 21
  inherited Panel1: TPanel
    Width = 580
    Caption = '       Baixa de Estoque'
    ExplicitWidth = 580
    inherited BtnExcluir: TButton
      Left = 523
      ExplicitLeft = 523
    end
    inherited BtnCancelar: TButton
      Left = 471
      ExplicitLeft = 471
    end
    inherited BtnSalvar: TButton
      Left = 419
      ExplicitLeft = 419
    end
  end
  inherited PnlDados: TPanel
    Width = 580
    Height = 288
    ExplicitWidth = 580
    ExplicitHeight = 288
    object Label1: TLabel
      Left = 10
      Top = 76
      Width = 56
      Height = 21
      Caption = 'Produto'
    end
    object Label3: TLabel
      Left = 10
      Top = 11
      Width = 50
      Height = 21
      Caption = 'C'#243'digo'
      FocusControl = DBEdit3
      Visible = False
    end
    object Label4: TLabel
      Left = 10
      Top = 11
      Width = 79
      Height = 21
      Caption = 'Cadastrado'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 437
      Top = 76
      Width = 81
      Height = 21
      Caption = 'Quantidade'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 10
      Top = 141
      Width = 82
      Height = 21
      Caption = 'Observa'#231#227'o'
    end
    object DBEdit3: TDBEdit
      Left = 10
      Top = 38
      Width = 81
      Height = 29
      DataField = 'ESTOQUE_MOVIMENTOS_ID'
      DataSource = dts
      Enabled = False
      TabOrder = 0
      Visible = False
    end
    object DBEdit4: TDBEdit
      Left = 10
      Top = 38
      Width = 167
      Height = 29
      DataField = 'CADASTRADO'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 437
      Top = 103
      Width = 124
      Height = 29
      DataField = 'QTDE'
      DataSource = dts
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 10
      Top = 168
      Width = 553
      Height = 97
      DataField = 'OBS'
      DataSource = dts
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 10
      Top = 103
      Width = 401
      Height = 29
      DataField = 'PRODUTO_ID'
      DataSource = dts
      KeyField = 'PRODUTO_ID'
      ListField = 'DESCRICAO'
      ListSource = dts2
      TabOrder = 4
    end
  end
  inherited Panel2: TPanel
    Top = 358
    Width = 580
    ExplicitTop = 358
    ExplicitWidth = 580
  end
  inherited ActionList1: TActionList
    Left = 304
    Top = 16
  end
  inherited dts: TDataSource
    DataSet = Tabelas.qryEstoque_Movimentos
    Left = 344
    Top = 16
  end
  object dts2: TDataSource
    DataSet = Tabelas.qryProdutos
    OnDataChange = dtsDataChange
    Left = 384
    Top = 16
  end
end
