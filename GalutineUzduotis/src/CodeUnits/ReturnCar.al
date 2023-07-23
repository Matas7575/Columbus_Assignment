codeunit 50101 ReturnCar
{
    procedure TransferDataAndDelete(DocumentNumber: Integer);
    var
        SourceRecord: Record AutoRentHeader;
        DestinationRecord: Record FinishedAutoRentHeader;
        DamageRecord: Record AutoRentDamage;
        AutoDamageRecord: Record AutoDamage;
        SourceLinesRecord: Record AutoRentLine;
        DestinationLinesRecord: Record FinishedAutoRentLine;
    begin
        SourceRecord.SetRange(Linenum, DocumentNumber);

        if SourceRecord.FindFirst then begin
            // Perkelti Header recorda
            DestinationRecord.INIT;
            DestinationRecord.LineNum := SourceRecord.LineNum;
            DestinationRecord.ClientNum := SourceRecord.ClientNum;
            DestinationRecord.DriversLicense := SourceRecord.DriversLicense;
            DestinationRecord.DateOfDocument := SourceRecord.DateOfDocument;
            DestinationRecord.CarNum := SourceRecord.CarNum;
            DestinationRecord.DateFrom := SourceRecord.DateFrom;
            DestinationRecord.DateUntil := SourceRecord.DateUntil;
            DestinationRecord.Total := SourceRecord.Total;

            // Perkelti Line recorda
            DestinationLinesRecord.Init;
            DestinationLinesRecord.DocumentNum := SourceLinesRecord.DocumentNum;
            DestinationLinesRecord.LineNum := SourceLinesRecord.LineNum;
            DestinationLinesRecord.TypeOf := SourceLinesRecord.TypeOf;
            DestinationLinesRecord.Num := SourceLinesRecord.Num;
            DestinationLinesRecord.Description := SourceLinesRecord.Description;
            DestinationLinesRecord.Amount := SourceLinesRecord.Amount;
            DestinationLinesRecord.Price := SourceLinesRecord.Price;
            DestinationLinesRecord.PriceSum := SourceLinesRecord.PriceSum;

            // Perkelti damage recorda
            DamageRecord.DocumentNum := DamageRecord.DocumentNum + 1;
            AutoDamageRecord.CarNum := SourceRecord.CarNum;
            AutoDamageRecord.LineNum := DamageRecord.LineNum;
            AutoDamageRecord.Description := DamageRecord.Description;
            AutoDamageRecord.DateOfDamage := DamageRecord.Date;


            DestinationRecord.INSERT;
            DestinationLinesRecord.Insert;
            AutoDamageRecord.Insert;


            SourceRecord.DELETE;
            SourceLinesRecord.Delete;
            DamageRecord.Delete;


        end;
    end;
}