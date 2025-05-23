-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Object;
with type MSSyst.Guid.Valuetype is tagged;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Windows.Forms.NativeMethods.ActiveX is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   IID_IUnknown : MSSyst.Guid.Valuetype;
   pragma Import(MSIL,IID_IUnknown,"IID_IUnknown");
   OCM_uBASE : Integer;
   pragma Import(MSIL,OCM_uBASE,"OCM__BASE");
   DISPID_VALUE : Integer;
   pragma Import(MSIL,DISPID_VALUE,"DISPID_VALUE");
   DISPID_UNKNOWN : Integer;
   pragma Import(MSIL,DISPID_UNKNOWN,"DISPID_UNKNOWN");
   DISPID_AUTOSIZE : Integer;
   pragma Import(MSIL,DISPID_AUTOSIZE,"DISPID_AUTOSIZE");
   DISPID_BACKCOLOR : Integer;
   pragma Import(MSIL,DISPID_BACKCOLOR,"DISPID_BACKCOLOR");
   DISPID_BACKSTYLE : Integer;
   pragma Import(MSIL,DISPID_BACKSTYLE,"DISPID_BACKSTYLE");
   DISPID_BORDERCOLOR : Integer;
   pragma Import(MSIL,DISPID_BORDERCOLOR,"DISPID_BORDERCOLOR");
   DISPID_BORDERSTYLE : Integer;
   pragma Import(MSIL,DISPID_BORDERSTYLE,"DISPID_BORDERSTYLE");
   DISPID_BORDERWIDTH : Integer;
   pragma Import(MSIL,DISPID_BORDERWIDTH,"DISPID_BORDERWIDTH");
   DISPID_DRAWMODE : Integer;
   pragma Import(MSIL,DISPID_DRAWMODE,"DISPID_DRAWMODE");
   DISPID_DRAWSTYLE : Integer;
   pragma Import(MSIL,DISPID_DRAWSTYLE,"DISPID_DRAWSTYLE");
   DISPID_DRAWWIDTH : Integer;
   pragma Import(MSIL,DISPID_DRAWWIDTH,"DISPID_DRAWWIDTH");
   DISPID_FILLCOLOR : Integer;
   pragma Import(MSIL,DISPID_FILLCOLOR,"DISPID_FILLCOLOR");
   DISPID_FILLSTYLE : Integer;
   pragma Import(MSIL,DISPID_FILLSTYLE,"DISPID_FILLSTYLE");
   DISPID_FONT : Integer;
   pragma Import(MSIL,DISPID_FONT,"DISPID_FONT");
   DISPID_FORECOLOR : Integer;
   pragma Import(MSIL,DISPID_FORECOLOR,"DISPID_FORECOLOR");
   DISPID_ENABLED : Integer;
   pragma Import(MSIL,DISPID_ENABLED,"DISPID_ENABLED");
   DISPID_HWND : Integer;
   pragma Import(MSIL,DISPID_HWND,"DISPID_HWND");
   DISPID_TABSTOP : Integer;
   pragma Import(MSIL,DISPID_TABSTOP,"DISPID_TABSTOP");
   DISPID_TEXT : Integer;
   pragma Import(MSIL,DISPID_TEXT,"DISPID_TEXT");
   DISPID_CAPTION : Integer;
   pragma Import(MSIL,DISPID_CAPTION,"DISPID_CAPTION");
   DISPID_BORDERVISIBLE : Integer;
   pragma Import(MSIL,DISPID_BORDERVISIBLE,"DISPID_BORDERVISIBLE");
   DISPID_APPEARANCE : Integer;
   pragma Import(MSIL,DISPID_APPEARANCE,"DISPID_APPEARANCE");
   DISPID_MOUSEPOINTER : Integer;
   pragma Import(MSIL,DISPID_MOUSEPOINTER,"DISPID_MOUSEPOINTER");
   DISPID_MOUSEICON : Integer;
   pragma Import(MSIL,DISPID_MOUSEICON,"DISPID_MOUSEICON");
   DISPID_PICTURE : Integer;
   pragma Import(MSIL,DISPID_PICTURE,"DISPID_PICTURE");
   DISPID_VALID : Integer;
   pragma Import(MSIL,DISPID_VALID,"DISPID_VALID");
   DISPID_READYSTATE : Integer;
   pragma Import(MSIL,DISPID_READYSTATE,"DISPID_READYSTATE");
   DISPID_REFRESH : Integer;
   pragma Import(MSIL,DISPID_REFRESH,"DISPID_REFRESH");
   DISPID_DOCLICK : Integer;
   pragma Import(MSIL,DISPID_DOCLICK,"DISPID_DOCLICK");
   DISPID_ABOUTBOX : Integer;
   pragma Import(MSIL,DISPID_ABOUTBOX,"DISPID_ABOUTBOX");
   DISPID_CLICK : Integer;
   pragma Import(MSIL,DISPID_CLICK,"DISPID_CLICK");
   DISPID_DBLCLICK : Integer;
   pragma Import(MSIL,DISPID_DBLCLICK,"DISPID_DBLCLICK");
   DISPID_KEYDOWN : Integer;
   pragma Import(MSIL,DISPID_KEYDOWN,"DISPID_KEYDOWN");
   DISPID_KEYPRESS : Integer;
   pragma Import(MSIL,DISPID_KEYPRESS,"DISPID_KEYPRESS");
   DISPID_KEYUP : Integer;
   pragma Import(MSIL,DISPID_KEYUP,"DISPID_KEYUP");
   DISPID_MOUSEDOWN : Integer;
   pragma Import(MSIL,DISPID_MOUSEDOWN,"DISPID_MOUSEDOWN");
   DISPID_MOUSEMOVE : Integer;
   pragma Import(MSIL,DISPID_MOUSEMOVE,"DISPID_MOUSEMOVE");
   DISPID_MOUSEUP : Integer;
   pragma Import(MSIL,DISPID_MOUSEUP,"DISPID_MOUSEUP");
   DISPID_ERROREVENT : Integer;
   pragma Import(MSIL,DISPID_ERROREVENT,"DISPID_ERROREVENT");
   DISPID_RIGHTTOLEFT : Integer;
   pragma Import(MSIL,DISPID_RIGHTTOLEFT,"DISPID_RIGHTTOLEFT");
   DISPID_READYSTATECHANGE : Integer;
   pragma Import(MSIL,DISPID_READYSTATECHANGE,"DISPID_READYSTATECHANGE");
   DISPID_AMBIENT_BACKCOLOR : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_BACKCOLOR,"DISPID_AMBIENT_BACKCOLOR");
   DISPID_AMBIENT_DISPLAYNAME : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_DISPLAYNAME,"DISPID_AMBIENT_DISPLAYNAME");
   DISPID_AMBIENT_FONT : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_FONT,"DISPID_AMBIENT_FONT");
   DISPID_AMBIENT_FORECOLOR : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_FORECOLOR,"DISPID_AMBIENT_FORECOLOR");
   DISPID_AMBIENT_LOCALEID : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_LOCALEID,"DISPID_AMBIENT_LOCALEID");
   DISPID_AMBIENT_MESSAGEREFLECT : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_MESSAGEREFLECT,"DISPID_AMBIENT_MESSAGEREFLECT");
   DISPID_AMBIENT_SCALEUNITS : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_SCALEUNITS,"DISPID_AMBIENT_SCALEUNITS");
   DISPID_AMBIENT_TEXTALIGN : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_TEXTALIGN,"DISPID_AMBIENT_TEXTALIGN");
   DISPID_AMBIENT_USERMODE : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_USERMODE,"DISPID_AMBIENT_USERMODE");
   DISPID_AMBIENT_UIDEAD : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_UIDEAD,"DISPID_AMBIENT_UIDEAD");
   DISPID_AMBIENT_SHOWGRABHANDLES : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_SHOWGRABHANDLES,"DISPID_AMBIENT_SHOWGRABHANDLES");
   DISPID_AMBIENT_SHOWHATCHING : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_SHOWHATCHING,"DISPID_AMBIENT_SHOWHATCHING");
   DISPID_AMBIENT_DISPLAYASDEFAULT : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_DISPLAYASDEFAULT,"DISPID_AMBIENT_DISPLAYASDEFAULT");
   DISPID_AMBIENT_SUPPORTSMNEMONICS : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_SUPPORTSMNEMONICS,"DISPID_AMBIENT_SUPPORTSMNEMONICS");
   DISPID_AMBIENT_AUTOCLIP : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_AUTOCLIP,"DISPID_AMBIENT_AUTOCLIP");
   DISPID_AMBIENT_APPEARANCE : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_APPEARANCE,"DISPID_AMBIENT_APPEARANCE");
   DISPID_AMBIENT_PALETTE : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_PALETTE,"DISPID_AMBIENT_PALETTE");
   DISPID_AMBIENT_TRANSFERPRIORITY : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_TRANSFERPRIORITY,"DISPID_AMBIENT_TRANSFERPRIORITY");
   DISPID_AMBIENT_RIGHTTOLEFT : Integer;
   pragma Import(MSIL,DISPID_AMBIENT_RIGHTTOLEFT,"DISPID_AMBIENT_RIGHTTOLEFT");
   DISPID_Name : Integer;
   pragma Import(MSIL,DISPID_Name,"DISPID_Name");
   DISPID_Delete : Integer;
   pragma Import(MSIL,DISPID_Delete,"DISPID_Delete");
   DISPID_Object : Integer;
   pragma Import(MSIL,DISPID_Object,"DISPID_Object");
   DISPID_Parent : Integer;
   pragma Import(MSIL,DISPID_Parent,"DISPID_Parent");
   DVASPECT_CONTENT : Integer;
   pragma Import(MSIL,DVASPECT_CONTENT,"DVASPECT_CONTENT");
   DVASPECT_THUMBNAIL : Integer;
   pragma Import(MSIL,DVASPECT_THUMBNAIL,"DVASPECT_THUMBNAIL");
   DVASPECT_ICON : Integer;
   pragma Import(MSIL,DVASPECT_ICON,"DVASPECT_ICON");
   DVASPECT_DOCPRINT : Integer;
   pragma Import(MSIL,DVASPECT_DOCPRINT,"DVASPECT_DOCPRINT");
   OLEMISC_RECOMPOSEONRESIZE : Integer;
   pragma Import(MSIL,OLEMISC_RECOMPOSEONRESIZE,"OLEMISC_RECOMPOSEONRESIZE");
   OLEMISC_ONLYICONIC : Integer;
   pragma Import(MSIL,OLEMISC_ONLYICONIC,"OLEMISC_ONLYICONIC");
   OLEMISC_INSERTNOTREPLACE : Integer;
   pragma Import(MSIL,OLEMISC_INSERTNOTREPLACE,"OLEMISC_INSERTNOTREPLACE");
   OLEMISC_STATIC : Integer;
   pragma Import(MSIL,OLEMISC_STATIC,"OLEMISC_STATIC");
   OLEMISC_CANTLINKINSIDE : Integer;
   pragma Import(MSIL,OLEMISC_CANTLINKINSIDE,"OLEMISC_CANTLINKINSIDE");
   OLEMISC_CANLINKBYOLE1 : Integer;
   pragma Import(MSIL,OLEMISC_CANLINKBYOLE1,"OLEMISC_CANLINKBYOLE1");
   OLEMISC_ISLINKOBJECT : Integer;
   pragma Import(MSIL,OLEMISC_ISLINKOBJECT,"OLEMISC_ISLINKOBJECT");
   OLEMISC_INSIDEOUT : Integer;
   pragma Import(MSIL,OLEMISC_INSIDEOUT,"OLEMISC_INSIDEOUT");
   OLEMISC_ACTIVATEWHENVISIBLE : Integer;
   pragma Import(MSIL,OLEMISC_ACTIVATEWHENVISIBLE,"OLEMISC_ACTIVATEWHENVISIBLE");
   OLEMISC_RENDERINGISDEVICEINDEPENDENT : Integer;
   pragma Import(MSIL,OLEMISC_RENDERINGISDEVICEINDEPENDENT,"OLEMISC_RENDERINGISDEVICEINDEPENDENT");
   OLEMISC_INVISIBLEATRUNTIME : Integer;
   pragma Import(MSIL,OLEMISC_INVISIBLEATRUNTIME,"OLEMISC_INVISIBLEATRUNTIME");
   OLEMISC_ALWAYSRUN : Integer;
   pragma Import(MSIL,OLEMISC_ALWAYSRUN,"OLEMISC_ALWAYSRUN");
   OLEMISC_ACTSLIKEBUTTON : Integer;
   pragma Import(MSIL,OLEMISC_ACTSLIKEBUTTON,"OLEMISC_ACTSLIKEBUTTON");
   OLEMISC_ACTSLIKELABEL : Integer;
   pragma Import(MSIL,OLEMISC_ACTSLIKELABEL,"OLEMISC_ACTSLIKELABEL");
   OLEMISC_NOUIACTIVATE : Integer;
   pragma Import(MSIL,OLEMISC_NOUIACTIVATE,"OLEMISC_NOUIACTIVATE");
   OLEMISC_ALIGNABLE : Integer;
   pragma Import(MSIL,OLEMISC_ALIGNABLE,"OLEMISC_ALIGNABLE");
   OLEMISC_SIMPLEFRAME : Integer;
   pragma Import(MSIL,OLEMISC_SIMPLEFRAME,"OLEMISC_SIMPLEFRAME");
   OLEMISC_SETCLIENTSITEFIRST : Integer;
   pragma Import(MSIL,OLEMISC_SETCLIENTSITEFIRST,"OLEMISC_SETCLIENTSITEFIRST");
   OLEMISC_IMEMODE : Integer;
   pragma Import(MSIL,OLEMISC_IMEMODE,"OLEMISC_IMEMODE");
   OLEMISC_IGNOREACTIVATEWHENVISIBLE : Integer;
   pragma Import(MSIL,OLEMISC_IGNOREACTIVATEWHENVISIBLE,"OLEMISC_IGNOREACTIVATEWHENVISIBLE");
   OLEMISC_WANTSTOMENUMERGE : Integer;
   pragma Import(MSIL,OLEMISC_WANTSTOMENUMERGE,"OLEMISC_WANTSTOMENUMERGE");
   OLEMISC_SUPPORTSMULTILEVELUNDO : Integer;
   pragma Import(MSIL,OLEMISC_SUPPORTSMULTILEVELUNDO,"OLEMISC_SUPPORTSMULTILEVELUNDO");
   QACONTAINER_SHOWHATCHING : Integer;
   pragma Import(MSIL,QACONTAINER_SHOWHATCHING,"QACONTAINER_SHOWHATCHING");
   QACONTAINER_SHOWGRABHANDLES : Integer;
   pragma Import(MSIL,QACONTAINER_SHOWGRABHANDLES,"QACONTAINER_SHOWGRABHANDLES");
   QACONTAINER_USERMODE : Integer;
   pragma Import(MSIL,QACONTAINER_USERMODE,"QACONTAINER_USERMODE");
   QACONTAINER_DISPLAYASDEFAULT : Integer;
   pragma Import(MSIL,QACONTAINER_DISPLAYASDEFAULT,"QACONTAINER_DISPLAYASDEFAULT");
   QACONTAINER_UIDEAD : Integer;
   pragma Import(MSIL,QACONTAINER_UIDEAD,"QACONTAINER_UIDEAD");
   QACONTAINER_AUTOCLIP : Integer;
   pragma Import(MSIL,QACONTAINER_AUTOCLIP,"QACONTAINER_AUTOCLIP");
   QACONTAINER_MESSAGEREFLECT : Integer;
   pragma Import(MSIL,QACONTAINER_MESSAGEREFLECT,"QACONTAINER_MESSAGEREFLECT");
   QACONTAINER_SUPPORTSMNEMONICS : Integer;
   pragma Import(MSIL,QACONTAINER_SUPPORTSMNEMONICS,"QACONTAINER_SUPPORTSMNEMONICS");
   XFORMCOORDS_POSITION : Integer;
   pragma Import(MSIL,XFORMCOORDS_POSITION,"XFORMCOORDS_POSITION");
   XFORMCOORDS_SIZE : Integer;
   pragma Import(MSIL,XFORMCOORDS_SIZE,"XFORMCOORDS_SIZE");
   XFORMCOORDS_HIMETRICTOCONTAINER : Integer;
   pragma Import(MSIL,XFORMCOORDS_HIMETRICTOCONTAINER,"XFORMCOORDS_HIMETRICTOCONTAINER");
   XFORMCOORDS_CONTAINERTOHIMETRIC : Integer;
   pragma Import(MSIL,XFORMCOORDS_CONTAINERTOHIMETRIC,"XFORMCOORDS_CONTAINERTOHIMETRIC");
   PROPCAT_Nil : Integer;
   pragma Import(MSIL,PROPCAT_Nil,"PROPCAT_Nil");
   PROPCAT_Misc : Integer;
   pragma Import(MSIL,PROPCAT_Misc,"PROPCAT_Misc");
   PROPCAT_Font : Integer;
   pragma Import(MSIL,PROPCAT_Font,"PROPCAT_Font");
   PROPCAT_Position : Integer;
   pragma Import(MSIL,PROPCAT_Position,"PROPCAT_Position");
   PROPCAT_Appearance : Integer;
   pragma Import(MSIL,PROPCAT_Appearance,"PROPCAT_Appearance");
   PROPCAT_Behavior : Integer;
   pragma Import(MSIL,PROPCAT_Behavior,"PROPCAT_Behavior");
   PROPCAT_Data : Integer;
   pragma Import(MSIL,PROPCAT_Data,"PROPCAT_Data");
   PROPCAT_List : Integer;
   pragma Import(MSIL,PROPCAT_List,"PROPCAT_List");
   PROPCAT_Text : Integer;
   pragma Import(MSIL,PROPCAT_Text,"PROPCAT_Text");
   PROPCAT_Scale : Integer;
   pragma Import(MSIL,PROPCAT_Scale,"PROPCAT_Scale");
   PROPCAT_DDE : Integer;
   pragma Import(MSIL,PROPCAT_DDE,"PROPCAT_DDE");
   GC_WCH_SIBLING : Integer;
   pragma Import(MSIL,GC_WCH_SIBLING,"GC_WCH_SIBLING");
   GC_WCH_CONTAINER : Integer;
   pragma Import(MSIL,GC_WCH_CONTAINER,"GC_WCH_CONTAINER");
   GC_WCH_CONTAINED : Integer;
   pragma Import(MSIL,GC_WCH_CONTAINED,"GC_WCH_CONTAINED");
   GC_WCH_ALL : Integer;
   pragma Import(MSIL,GC_WCH_ALL,"GC_WCH_ALL");
   GC_WCH_FREVERSEDIR : Integer;
   pragma Import(MSIL,GC_WCH_FREVERSEDIR,"GC_WCH_FREVERSEDIR");
   GC_WCH_FONLYNEXT : Integer;
   pragma Import(MSIL,GC_WCH_FONLYNEXT,"GC_WCH_FONLYNEXT");
   GC_WCH_FONLYPREV : Integer;
   pragma Import(MSIL,GC_WCH_FONLYPREV,"GC_WCH_FONLYPREV");
   GC_WCH_FSELECTED : Integer;
   pragma Import(MSIL,GC_WCH_FSELECTED,"GC_WCH_FSELECTED");
   OLECONTF_EMBEDDINGS : Integer;
   pragma Import(MSIL,OLECONTF_EMBEDDINGS,"OLECONTF_EMBEDDINGS");
   OLECONTF_LINKS : Integer;
   pragma Import(MSIL,OLECONTF_LINKS,"OLECONTF_LINKS");
   OLECONTF_OTHERS : Integer;
   pragma Import(MSIL,OLECONTF_OTHERS,"OLECONTF_OTHERS");
   OLECONTF_ONLYUSER : Integer;
   pragma Import(MSIL,OLECONTF_ONLYUSER,"OLECONTF_ONLYUSER");
   OLECONTF_ONLYIFRUNNING : Integer;
   pragma Import(MSIL,OLECONTF_ONLYIFRUNNING,"OLECONTF_ONLYIFRUNNING");
   ALIGN_MIN : Integer;
   pragma Import(MSIL,ALIGN_MIN,"ALIGN_MIN");
   ALIGN_NO_CHANGE : Integer;
   pragma Import(MSIL,ALIGN_NO_CHANGE,"ALIGN_NO_CHANGE");
   ALIGN_TOP : Integer;
   pragma Import(MSIL,ALIGN_TOP,"ALIGN_TOP");
   ALIGN_BOTTOM : Integer;
   pragma Import(MSIL,ALIGN_BOTTOM,"ALIGN_BOTTOM");
   ALIGN_LEFT : Integer;
   pragma Import(MSIL,ALIGN_LEFT,"ALIGN_LEFT");
   ALIGN_RIGHT : Integer;
   pragma Import(MSIL,ALIGN_RIGHT,"ALIGN_RIGHT");
   ALIGN_MAX : Integer;
   pragma Import(MSIL,ALIGN_MAX,"ALIGN_MAX");
   OLEVERBATTRIB_NEVERDIRTIES : Integer;
   pragma Import(MSIL,OLEVERBATTRIB_NEVERDIRTIES,"OLEVERBATTRIB_NEVERDIRTIES");
   OLEVERBATTRIB_ONCONTAINERMENU : Integer;
   pragma Import(MSIL,OLEVERBATTRIB_ONCONTAINERMENU,"OLEVERBATTRIB_ONCONTAINERMENU");
private
   pragma Convention(MSIL,Typ);
end MSSyst.Windows.Forms.NativeMethods.ActiveX;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.NativeMethods.ActiveX,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeMethods/ActiveX");
