table 50111 FinishedAutoRentHeader
{
    Caption = 'Finished Auto Rent Header';
    DataClassification = CustomerContent;

    fields
    {
        field(1; LineNum; Integer)
        {
            TableRelation = "No. Series";
            Editable = false;
        }
        field(2; ClientNum; Code[20])
        {
            TableRelation = Customer;
            Editable = false;

        }
        field(3; DriversLicense; Blob)
        {
            Subtype = Bitmap;
        }
        field(4; DateOfDocument; Date)
        {
            Editable = false;
        }
        field(5; CarNum; Text[30])
        {
            TableRelation = AutoMark;
            Editable = false;
        }
        field(6; DateFrom; Date)
        {
            Caption = 'Reservation date from';
            Editable = false;
        }
        field(7; DateUntil; Date)
        {
            Caption = 'Reservation date until';
            Editable = false;
        }
        field(8; Total; Integer)
        {
            Editable = false;
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
    var

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