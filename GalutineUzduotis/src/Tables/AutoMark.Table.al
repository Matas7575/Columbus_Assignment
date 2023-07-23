table 50102 AutoMark
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; CarCode; text[30])
        {

        }
        field(2; Description; Text[100])
        {

        }
    }

    keys
    {
        key(Key1; CarCode)
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