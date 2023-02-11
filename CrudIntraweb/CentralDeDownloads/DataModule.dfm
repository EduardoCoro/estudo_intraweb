object DM: TDM
  OldCreateOrder = False
  Height = 611
  Width = 690
  object DB: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=CentralDeDownloads;Data Sou' +
      'rce=DESKTOP-LMVS7KS\SQLINSTANCIA14;Initial File Name="";Server S' +
      'PN=""'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'SQLNCLI11.1'
    Left = 72
    Top = 64
  end
  object qryClientes: TADOQuery
    Connection = DB
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from cliente'
      'order by empresa')
    Left = 72
    Top = 160
  end
  object qryProdutos: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from produto'
      'order by nome')
    Left = 192
    Top = 160
    object qryProdutosid_produto: TAutoIncField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'id_produto'
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object qryProdutosnome: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'nome'
      Size = 100
    end
    object qryProdutospasta: TStringField
      DisplayLabel = 'Pasta para Upload'
      FieldName = 'pasta'
      Size = 50
    end
    object qryProdutosdescricao: TMemoField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'descricao'
      BlobType = ftMemo
    end
    object qryProdutosimagem: TStringField
      DisplayLabel = 'Arquivo da imagem'
      FieldName = 'imagem'
      Size = 50
    end
  end
  object qryChecaLogin: TADOQuery
    Connection = DB
    Parameters = <
      item
        Name = 'email'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'senha'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from cliente'
      'where'
      '  email = :email and'
      '  senha = :senha')
    Left = 192
    Top = 56
  end
  object qryCliente: TADOQuery
    Connection = DB
    Parameters = <
      item
        Name = 'id_cliente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from cliente'
      'where'
      '  id_cliente = :id_cliente')
    Left = 72
    Top = 264
  end
  object qryProduto: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'id_produto'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from produto'
      'where id_produto = :id_produto')
    Left = 192
    Top = 264
    object AutoIncField1: TAutoIncField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'id_produto'
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object StringField1: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'nome'
      Size = 100
    end
    object StringField2: TStringField
      DisplayLabel = 'Pasta para Upload'
      FieldName = 'pasta'
      Size = 50
    end
    object MemoField1: TMemoField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'descricao'
      BlobType = ftMemo
    end
    object StringField3: TStringField
      DisplayLabel = 'Arquivo da imagem'
      FieldName = 'imagem'
      Size = 50
    end
  end
end
