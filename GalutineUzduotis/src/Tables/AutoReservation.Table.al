table 50105 AutoReservation
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; CarNum; Text[30])
        {
            Caption = 'Car number';
            TableRelation = AutoMark.CarCode;
        }
        field(2; LineNum; Code[20])
        {
            Caption = 'Line number';
            TableRelation = "No. Series";
        }
        field(3; ClientNum; Text[100])
        {
            Caption = 'Client number';
            TableRelation = Customer."No.";
        }
        field(4; BookedFrom; Date)
        {
            Caption = 'Booked from';
            trigger OnValidate()
            var
                ItemRec: Record AutoReservation;
            //CarRec: Record Auto;
            begin
                if (BookedUntil < BookedFrom) then begin
                    Error('Start date cannot be later than the end date.');
                end;
                ItemRec.Reset();
                //ItemRec.SetRange(BookedUntil, '<%', BookedFrom);

                // if ((ItemRec.CarNum = CarNum) AND (ItemRec.BookedUntil < BookedFrom)) then begin
                //     Error('That car is aleady booked for that date.');
                // end;
            end;
        }
        field(5; BookedUntil; Date)
        {
            Caption = 'Booked until';
            trigger OnValidate()
            begin
                if (BookedUntil < BookedFrom) then begin
                    Error('End date cannot be earlier than the start date.');
                end;
            end;
        }
    }

    keys
    {
        key(PrimaryKey; LineNum)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}