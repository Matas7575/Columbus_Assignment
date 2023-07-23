table 50106 AutoDamage
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; CarNum; Text[30])
        {
            TableRelation = AutoMark.CarCode;
        }
        field(2; LineNum; Integer)
        {
            //TableRelation = "No. Series";
        }
        field(3; DateOfDamage; Date)
        {
            Caption = 'Date';
        }
        field(4; Description; Text[100])
        {

        }
        field(5; Status; Option)
        {
            OptionMembers = Open,Removed;
        }
    }

    keys
    {
        key(PrimaryKey; CarNum)
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