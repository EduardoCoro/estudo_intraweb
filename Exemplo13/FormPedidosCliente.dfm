object frmPedidosCliente: TfrmPedidosCliente
  Left = 0
  Top = 0
  Width = 844
  Height = 596
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignSize = (
    844
    596)
  DesignLeft = 8
  DesignTop = 8
  object Grid: TIWDBGrid
    Left = 16
    Top = 125
    Width = 185
    Height = 447
    Cursor = crAuto
    Anchors = [akLeft, akTop, akBottom]
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 1
    BorderStyle = tfDefault
    Caption = 'Grid'
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    OnRenderCell = GridRenderCell
    UseFrame = True
    UseSize = True
    ScrollToCurrentRow = True
    Columns = <
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Header = False
        Height = '0'
        ShowHint = True
        VAlign = vaMiddle
        Visible = True
        Width = '180'
        Wrap = False
        RawText = False
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'ORDERNO'
        LinkField = 'ORDERNO'
        OnClick = GridColumns0Click
        Title.Alignment = taCenter
        Title.BGColor = clNone
        Title.DoSubmitValidation = True
        Title.Font.Color = clNone
        Title.Font.Size = 10
        Title.Font.Style = []
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.Text = 'N'#186' do Pedido'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
      end>
    DataSource = DataSource1
    FooterRowCount = 0
    FriendlyName = 'Grid'
    FromStart = True
    HighlightColor = clNone
    HighlightRows = False
    Options = [dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 0
    RollOver = False
    RowClick = False
    RollOverColor = clNone
    RowHeaderColor = clNone
    RowAlternateColor = clNone
    RowCurrentColor = clNone
    TabOrder = -1
  end
  object btnVoltar: TIWButton
    Left = 16
    Top = 69
    Width = 185
    Height = 50
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Caption = 'Voltar a lista de clientes'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnVoltar'
    ScriptEvents = <>
    TabOrder = 0
    OnClick = btnVoltarClick
  end
  object IWRectangle1: TIWRectangle
    Left = 0
    Top = 0
    Width = 844
    Height = 58
    Cursor = crAuto
    Align = alTop
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Text = ' Pedidos do Cliente'
    Font.Color = clNone
    Font.Size = 14
    Font.Style = []
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    FriendlyName = 'IWRectangle1'
    Color = clActiveCaption
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  inline frmDadosPedido: TfrmDadosPedido
    Left = 207
    Top = 125
    Width = 388
    Height = 316
    TabOrder = 0
    ExplicitLeft = 207
    ExplicitTop = 125
    inherited IWFrameRegion: TIWRegion
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 388
      ExplicitHeight = 316
    end
  end
  object DataSource1: TDataSource
    Left = 96
    Top = 232
  end
end