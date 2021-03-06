﻿namespace RemObjects.Elements.RTL;

interface

type
  Locale = public class {$IF ECHOES}mapped to System.Globalization.CultureInfo{$ELSEIF COOPER}mapped to java.util.Locale{$ELSEIF TOFFEE}mapped to Foundation.NSLocale{$ENDIF}
  public

    {$IF COOPER}
    class property Invariant: not nullable Locale read java.util.Locale.US as not nullable;
    class property Current: not nullable Locale read java.util.Locale.Default as not nullable;
    {$ELSEIF ECHOES}
    class property Invariant: not nullable Locale read System.Globalization.CultureInfo.InvariantCulture as not nullable;
    class property Current: not nullable Locale read System.Globalization.CultureInfo.CurrentCulture as not nullable;
    {$ELSEIF ISLAND}
    class property Invariant: Locale read nil; {$WARNING Not Implemented}
    class property Current: Locale read nil; {$WARNING Not Implemented}
    {$ELSEIF TOFFEE}
    class property Invariant: not nullable Locale read NSLocale.systemLocale as not nullable;
    class property Current: not nullable Locale read NSLocale.currentLocale as not nullable;
    {$ENDIF}

    {$IF COOPER}
    property Identifier: not nullable String read mapped.toString as not nullable;
    {$ELSEIF ECHOES}
    property Identifier: not nullable String read mapped.Name as not nullable;
    {$ELSEIF ISLAND}
    property Identifier: not nullable String read "Dummy"; {$WARNING Not Implemented}
    {$ELSEIF TOFFEE}
    property Identifier: not nullable String read mapped.localeIdentifier as not nullable;
    {$ENDIF}
  end;

implementation

end.