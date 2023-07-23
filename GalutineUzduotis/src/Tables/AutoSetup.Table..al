table 50101 AutoSetup
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; PrimaryKey; Integer)
        {

        }
        field(2; CarPlates; Integer)
        {
            Caption = 'Car number plate';

        }
        field(3; RentalCard; Integer)
        {
            Caption = 'Rental card';

        }
        field(4; LocationOfAttachments; Text[100])
        {
            Caption = 'Location of attachments';
            TableRelation = Location.Address;

        }
    }

    keys
    {
        key(PrimaryKey; PrimaryKey)
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