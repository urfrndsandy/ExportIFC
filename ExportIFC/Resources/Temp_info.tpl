
template 
{
    name = "template_963";
    type = GRAPHICAL;
    width = 63.8566207261894;
    maxheight = 10000;
    columns = (1, 1);
    gap = 1;
    fillpolicy = EVEN;
    filldirection = HORIZONTAL;
    fillstartfrom = TOPLEFT;
    margins = (0, 0, 0, 0);
    gridxspacing = 1;
    gridyspacing = 1;
    version = 3.6;
    created = "09.09.2008 07:51";
    modified = "29.05.2019 14:39";
    notes = "Converted template";

    row _tmp_39
    {
        name = "PART_2";
        height = 5;
        visibility = FALSE;
        usecolumns = FALSE;
        rule = "if (IsSet(\"USERDEFINED.comment\") && GetValue(\"MAIN_PART\")==1) then\n\nOutput()\n  \nelse\n  StepOver()\nendif";
        contenttype = "ASSEMBLY";
        sorttype = COMBINE;

        valuefield _tmp_41
        {
            name = "ValueField";
            location = (10, 1);
            formula = "GetValue(\"ASSEMBLY_POS\")";
            maxnumoflines = 1;
            datatype = STRING;
            class = "";
            cacheable = TRUE;
            formatzeroasempty = TRUE;
            justify = LEFT;
            visibility = TRUE;
            angle = 0;
            length = 10;
            decimals = 0;
            sortdirection = NONE;
            fontname = "Arial";
            fontcolor = 164;
            fonttype = 2;
            fontsize = 3;
            fontratio = 1;
            fontstyle = 0;
            fontslant = 0;
            pen = -1;
            oncombine = NONE;
        };

        row 
        {
            name = "PART";
            height = 5;
            visibility = TRUE;
            usecolumns = FALSE;
            rule = "if (IsSet(\"USERDEFINED.comment\") && GetValue(\"MAIN_PART\")==1 && GetValue(\"ASSEMBLY.ASSEMBLY_NAME\")!=\"TEAR_PLATE\" && GetValue(\"ASSEMBLY.ASSEMBLY_NAME\")!=\"THREADED_ROD\") then\n\nOutput()\n  \nelse\n  StepOver()\nendif";
            contenttype = "SIMILAR_ASSEMBLY";
            sorttype = COMBINE;

            valuefield _tmp_0
            {
                name = "NAME_field";
                location = (1, 1);
                formula = "GetValue(\"ASSEMBLY_POS\")";
                maxnumoflines = 1;
                datatype = STRING;
                class = "";
                cacheable = TRUE;
                formatzeroasempty = TRUE;
                justify = LEFT;
                visibility = TRUE;
                angle = 0;
                length = 10;
                decimals = 0;
                sortdirection = ASCENDING;
                fontname = "Arial";
                fontcolor = 164;
                fonttype = 2;
                fontsize = 2.5;
                fontratio = 1;
                fontstyle = 0;
                fontslant = 0;
                pen = -1;
                oncombine = NONE;
            };

            rectangle _tmp_2
            {
                name = "Rectangle";
                x1 = 0;
                y1 = 5;
                x2 = 63.8566207261894;
                y2 = 0;
                filled = FALSE;
                filltype = -1;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
            };

            valuefield _tmp_15
            {
                name = "USERDEFINED.comment_field";
                location = (34.0016885813149, 1);
                formula = "if(GetValue(\"ASSEMBLY_TOP_LEVEL_GLOBAL\")>1000) then \"level 3\" else \nif(GetValue(\"ASSEMBLY_TOP_LEVEL_GLOBAL\")>800) then \"level 2\" else\nif(GetValue(\"ASSEMBLY_TOP_LEVEL_GLOBAL\")>600) then \"level 1\" else\nif(GetValue(\"ASSEMBLY_TOP_LEVEL_GLOBAL\")>400) then \"level 0\" else \"level -1\" \nendif endif endif endif ";
                maxnumoflines = 1;
                datatype = STRING;
                class = "";
                cacheable = TRUE;
                formatzeroasempty = FALSE;
                justify = LEFT;
                visibility = TRUE;
                angle = 0;
                length = 10;
                decimals = 0;
                sortdirection = ASCENDING;
                fontname = "Arial";
                fontcolor = 164;
                fonttype = 2;
                fontsize = 2.5;
                fontratio = 1;
                fontstyle = 0;
                fontslant = 0;
                pen = 0;
                oncombine = NONE;
            };

            lineorarc _tmp_18
            {
                name = "LineOrArc_2";
                x1 = 31.2902975778547;
                y1 = 0;
                x2 = 31.2902975778547;
                y2 = 5;
                pen = -1;
                color = 153;
                linetype = 1;
                linewidth = 1;
                bulge = 0;
            };
        };
    };
};
