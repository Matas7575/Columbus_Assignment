table 50103 AutoModel
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; MarkCode; Text[30])
        {
            Caption = 'Mark';
            TableRelation = AutoMark.CarCode;
        }
        field(2; ModelCode; Text[50])
        {
            Caption = 'Model';
        }
        field(3; Description; Text[100])
        {

        }
    }

    keys
    {
        key(PrimaryKey; Markcode)
        {
            Clustered = true;
        }
        key(Key1; ModelCode)
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