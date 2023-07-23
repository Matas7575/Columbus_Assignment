table 50107 AutoRentHeader
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; LineNum; Integer)
        {
            //TableRelation = "No. Series";
        }
        field(2; ClientNum; Code[20])
        {
            TableRelation = Customer;

        }
        field(3; DriversLicense; Blob)
        {
            Subtype = Bitmap;


        }
        field(4; DateOfDocument; Date)
        {

        }
        field(5; CarNum; Text[30])
        {
            TableRelation = AutoMark;
        }
        field(6; DateFrom; Date)
        {
            Caption = 'Reservation date from';
        }
        field(7; DateUntil; Date)
        {
            Caption = 'Reservation date until';
        }
        field(8; Total; Integer)
        {
            CalcFormula = sum(AutoRentLine.PriceSum);
            FieldClass = FlowField;
        }
        field(9; State; Text[10])
        {
            //OptionMembers = Open,Closed;
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
        AutoRentRec: Record AutoRentHeader;
    begin

        AutoRentRec.State := 'Open';
        State := 'Open'
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