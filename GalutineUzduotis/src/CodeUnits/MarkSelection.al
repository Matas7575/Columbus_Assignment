codeunit 50104 MarkSelection
{
    procedure GetMarkData(var OptionCode: Text[30]): Boolean
    var
        AutoMark: Record AutoMark;
    begin
        AutoMark.Reset;
        IF AutoMark.FindSet THEN BEGIN
            OptionCode := AutoMark.CarCode;
            EXIT(true);
        END;
        EXIT(false);
    end;
}
