object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Width = 663
  Height = 575
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  RenderInvisibleControls = False
  OnRender = IWAppFormRender
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  inline frmMenu1: TfrmMenu
    Left = 0
    Top = 0
    Width = 165
    Height = 575
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 575
    inherited IWFrameRegion: TIWRegion
      Height = 575
      ExplicitHeight = 575
    end
  end
end
