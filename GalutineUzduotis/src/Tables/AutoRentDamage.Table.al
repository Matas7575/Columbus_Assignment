table 50110 AutoRentDamage
{
    Caption = 'Auto Rent Damage';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; DocumentNum; Integer)
        {

        }
        field(2; LineNum; Integer)
        {

        }
        field(3; Date; Date)
        {

        }
        field(4; Description; text[100])
        {

        }
    }

    keys
    {
        key(PrimaryKey; DocumentNum)
        {
            Clustered = true;
        }
        key(Key1; LineNum)
        {

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