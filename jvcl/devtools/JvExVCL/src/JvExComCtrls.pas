{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvExComCtrls.pas, released on 2004-01-04

The Initial Developer of the Original Code is Andreas Hausladen [Andreas dott Hausladen att gmx dott de]
Portions created by Andreas Hausladen are Copyright (C) 2004 Andreas Hausladen.
All Rights Reserved.

Contributor(s): -

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.sourceforge.net

Known Issues:
-----------------------------------------------------------------------------}
// $Id$

unit JvExComCtrls;

{$I jvcl.inc}
{MACROINCLUDE JvExControls.macros}

WARNINGHEADER

interface

uses
  Windows, Messages, Graphics, Controls, Forms, ComCtrls,
  {$IFDEF VisualCLX}
  Qt,
  {$ENDIF VisualCLX}
  Classes, SysUtils,
  JvTypes, JvThemes, JVCLVer, JvExControls;

{$IFDEF VCL}
 {$DEFINE NeedMouseEnterLeave}
{$ENDIF VCL}


type
  {$IFDEF COMPILER6_UP}
  JV_WINCONTROL_EVENTS(CustomHeaderControl)
  {$ENDIF COMPILER6_UP}
  JV_WINCONTROL_EVENTS(HeaderControl)
  JV_WINCONTROL_EVENTS(CustomTreeView)
  JV_WINCONTROL_EVENTS(TreeView)
  JV_WINCONTROL_EVENTS(CustomListView)
  JV_WINCONTROL_EVENTS(ListView)
  JV_CUSTOMCONTROL_EVENTS(PageControl)
  JV_CUSTOMCONTROL_EVENTS(CustomTabControl)
  JV_CUSTOMCONTROL_EVENTS(TabControl)
  JV_WINCONTROL_EVENTS(TrackBar)

{$IFDEF VCL}
  {$IFDEF COMPILER6_UP}
  {$IF declared(TAnimate)}
  JV_WINCONTROL_EVENTS(Animate)
  {$IFEND}
  JV_WINCONTROL_EVENTS(CustomComboBoxEx)
  JV_WINCONTROL_EVENTS(CustomStatusBar)
  JV_WINCONTROL_EVENTS(ComboBoxEx)
  {$ENDIF COMPILER6_UP}
  JV_WINCONTROL_EVENTS(CoolBar)

  JV_WINCONTROL_EVENTS(CommonCalendar)
  JV_WINCONTROL_EVENTS(MonthCalendar)

  JV_WINCONTROL_EVENTS(CustomHotKey)
  JV_WINCONTROL_EVENTS(HotKey)

  JV_WINCONTROL_EVENTS(CustomUpDown)
  JV_WINCONTROL_EVENTS(UpDown)

  JV_WINCONTROL_EVENTS(DateTimePicker)
  JV_WINCONTROL_EVENTS(PageScroller)
  JV_WINCONTROL_EVENTS(ProgressBar)
  JV_WINCONTROL_EVENTS(StatusBar)
  JV_WINCONTROL_EVENTS(TabSheet)
  JV_WINCONTROL_EVENTS(ToolBar)
  JV_CONTROL_EVENTS(ToolButton)
{$ENDIF VCL}

{$IFDEF VisualCLX}
  JV_CUSTOMCONTROL_EVENTS(Animate)
  JV_WINCONTROL_EVENTS(CustomIconView)
  JV_WINCONTROL_EVENTS(IconView)
  JV_WINCONTROL_EVENTS(CustomSpinEdit)
  JV_WINCONTROL_EVENTS(SpinEdit)
  JV_WINCONTROL_EVENTS(CustomViewControl)
  JV_CONTROL_EVENTS(ProgressBar)
  JV_CUSTOMCONTROL_EVENTS(StatusBar)
  JV_CUSTOMCONTROL_EVENTS(TabSheet)
  JV_CUSTOMCONTROL_EVENTS(ToolBar)
  JV_CUSTOMCONTROL_EVENTS(ToolButton)
{$ENDIF}

implementation

{$IFDEF COMPILER6_UP}
JV_WINCONTROL_EVENTS_IMPL(CustomHeaderControl)
{$ENDIF COMPILER6_UP}
JV_WINCONTROL_EVENTS_IMPL(HeaderControl)
JV_WINCONTROL_EVENTS_IMPL(CustomListView)
JV_WINCONTROL_EVENTS_IMPL(ListView)
JV_WINCONTROL_EVENTS_IMPL(CustomTreeView)
JV_WINCONTROL_EVENTS_IMPL(TreeView)
JV_WINCONTROL_EVENTS_IMPL(TrackBar)

{$IFDEF VCL}
{$IFDEF COMPILER6_UP}
{$IF declared(TAnimate)}
JV_WINCONTROL_EVENTS_IMPL(Animate)
{$IFEND TAnimate}
JV_WINCONTROL_EVENTS_IMPL(CustomComboBoxEx)
JV_WINCONTROL_EVENTS_IMPL(CustomStatusBar)
JV_WINCONTROL_EVENTS_IMPL(ComboBoxEx)
{$ENDIF COMPILER6_UP}
JV_WINCONTROL_EVENTS_IMPL(CoolBar)

JV_WINCONTROL_EVENTS_IMPL(CommonCalendar)
JV_WINCONTROL_EVENTS_IMPL(MonthCalendar)

JV_WINCONTROL_EVENTS_IMPL(CustomHotKey)
JV_WINCONTROL_EVENTS_IMPL(HotKey)

JV_WINCONTROL_EVENTS_IMPL(CustomUpDown)
JV_WINCONTROL_EVENTS_IMPL(UpDown)

JV_WINCONTROL_EVENTS_IMPL(DateTimePicker)

JV_WINCONTROL_EVENTS_IMPL(ProgressBar)
JV_WINCONTROL_EVENTS_IMPL(PageControl)
JV_WINCONTROL_EVENTS_IMPL(PageScroller)
JV_WINCONTROL_EVENTS_IMPL(CustomTabControl)
JV_WINCONTROL_EVENTS_IMPL(TabControl)
JV_WINCONTROL_EVENTS_IMPL(TabSheet)
JV_WINCONTROL_EVENTS_IMPL(ToolBar)
JV_WINCONTROL_EVENTS_IMPL(StatusBar)
JV_CONTROL_EVENTS_IMPL(ToolButton)
{$ENDIF VCL}

{$IFDEF VisualCLX}
JV_CUSTOMCONTROL_EVENTS_IMPL(Animate)
JV_CONTROL_EVENTS_IMPL(ProgressBar)
JV_CUSTOMCONTROL_EVENTS_IMPL(CustomTabControl)
JV_CUSTOMCONTROL_EVENTS_IMPL(TabControl)
JV_CUSTOMCONTROL_EVENTS_IMPL(TabSheet)
JV_CUSTOMCONTROL_EVENTS_IMPL(PageControl)
JV_CUSTOMCONTROL_EVENTS_IMPL(StatusBar)
JV_WINCONTROL_EVENTS_IMPL(CustomIconView)
JV_WINCONTROL_EVENTS_IMPL(CustomViewControl)
JV_CUSTOMCONTROL_EVENTS_IMPL(ToolBar)
JV_CUSTOMCONTROL_EVENTS_IMPL(ToolButton)
JV_WINCONTROL_EVENTS_IMPL(CustomSpinEdit)
{$ENDIF VisualCLX}


end.
