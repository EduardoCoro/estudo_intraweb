inherited frmLoginForm: TfrmLoginForm
  Width = 822
  Height = 637
  OnCreate = IWAppFormCreate
  ExplicitWidth = 822
  ExplicitHeight = 637
  PixelsPerInch = 96
  DesignLeft = 2
  DesignTop = 2
  object btnChangePassword: TIWButton [0]
    Left = 296
    Top = 272
    Width = 153
    Height = 30
    Hint = 
      'Type your e-mail and click here to start your password change pr' +
      'ocess'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Caption = 'Change Password'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnChangePassword'
    TabOrder = 6
    RenderButtonTag = True
    OnAsyncClick = btnChangePasswordAsyncClick
  end
  object lblUserName: TIWLabel [1]
    Left = 192
    Top = 120
    Width = 69
    Height = 17
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = True
    ForControl = edtUserName
    HasTabOrder = False
    FriendlyName = 'lblUserName'
    Caption = 'User name'
  end
  object edtUserName: TIWEdit [2]
    Left = 192
    Top = 143
    Width = 257
    Height = 24
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edtUserName'
    MaxLength = 100
    Required = True
    SubmitOnAsyncEvent = True
    TabOrder = 1
  end
  object lblPassword: TIWLabel [3]
    Left = 192
    Top = 184
    Width = 61
    Height = 17
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = True
    ForControl = edtPassword
    HasTabOrder = False
    FriendlyName = 'lblPassword'
    Caption = 'Password'
  end
  object edtPassword: TIWEdit [4]
    Left = 192
    Top = 206
    Width = 257
    Height = 24
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'Password'
    MaxLength = 100
    Required = True
    SubmitOnAsyncEvent = True
    TabOrder = 2
    DataType = stPassword
  end
  object btnLogin: TIWButton [5]
    Left = 296
    Top = 236
    Width = 153
    Height = 30
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Caption = 'Login'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnLogin'
    TabOrder = 3
    RenderButtonTag = True
    OnAsyncClick = btnLoginAsyncClick
  end
  object lnkForgotPassword: TIWLink [6]
    Left = 194
    Top = 360
    Width = 209
    Height = 17
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'lnkForgotPassword'
    OnAsyncClick = lnkForgotPasswordAsyncClick
    TabOrder = 5
    RawText = False
    Caption = 'Forgot your password?'
  end
  object lblMessage: TIWLabel [7]
    Left = 194
    Top = 411
    Width = 255
    Height = 49
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Font.Color = clWebRED
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'lblMessage'
    Caption = 'Message'
  end
  object btnCancel: TIWButton [8]
    Left = 296
    Top = 308
    Width = 153
    Height = 30
    Visible = False
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Caption = 'Cancel'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnCancel'
    TabOrder = 4
    RenderButtonTag = True
    OnAsyncClick = btnCancelAsyncClick
  end
  inherited IWTP: TIWTemplateProcessorHTML
    Templates.Default = 'login.html'
  end
end
