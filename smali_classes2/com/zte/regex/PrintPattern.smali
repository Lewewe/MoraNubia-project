.class Lcom/zte/regex/PrintPattern;
.super Ljava/lang/Object;
.source "PrintPattern.java"


# static fields
.field private static ids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/zte/regex/Pattern$Node;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static pmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/zte/regex/Pattern$CharPredicate;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/regex/PrintPattern;->ids:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/regex/PrintPattern;->pmap:Ljava/util/HashMap;

    .line 97
    invoke-static {}, Lcom/zte/regex/Pattern;->ALL()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    const-string v2, "All"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/zte/regex/PrintPattern;->pmap:Ljava/util/HashMap;

    invoke-static {}, Lcom/zte/regex/Pattern;->DOT()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    const-string v2, "Dot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/zte/regex/PrintPattern;->pmap:Ljava/util/HashMap;

    invoke-static {}, Lcom/zte/regex/Pattern;->UNIXDOT()Lcom/zte/regex/Pattern$CharPredicate;

    move-result-object v1

    const-string v2, "UnixDot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/zte/regex/PrintPattern;->pmap:Ljava/util/HashMap;

    invoke-static {}, Lcom/zte/regex/Pattern;->VertWS()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object v1

    const-string v2, "VertWS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/zte/regex/PrintPattern;->pmap:Ljava/util/HashMap;

    invoke-static {}, Lcom/zte/regex/Pattern;->HorizWS()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object v1

    const-string v2, "HorizWS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/zte/regex/PrintPattern;->pmap:Ljava/util/HashMap;

    invoke-static {}, Lcom/zte/regex/CharPredicates;->ASCII_DIGIT()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object v1

    const-string v2, "ASCII.DIGIT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/zte/regex/PrintPattern;->pmap:Ljava/util/HashMap;

    invoke-static {}, Lcom/zte/regex/CharPredicates;->ASCII_WORD()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object v1

    const-string v2, "ASCII.WORD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/zte/regex/PrintPattern;->pmap:Ljava/util/HashMap;

    invoke-static {}, Lcom/zte/regex/CharPredicates;->ASCII_SPACE()Lcom/zte/regex/Pattern$BmpCharPredicate;

    move-result-object v1

    const-string v2, "ASCII.SPACE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 210
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/zte/regex/Pattern;->compile(Ljava/lang/String;)Lcom/zte/regex/Pattern;

    move-result-object p0

    .line 211
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   Pattern: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/zte/regex/Pattern;->root:Lcom/zte/regex/Pattern$Node;

    invoke-static {p0, v0}, Lcom/zte/regex/PrintPattern;->walk(Lcom/zte/regex/Pattern$Node;I)V

    return-void
.end method

.method private static print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V
    .locals 3

    .line 17
    sget-object v0, Lcom/zte/regex/PrintPattern;->ids:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    sget-object v0, Lcom/zte/regex/PrintPattern;->ids:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%6d:%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    if-nez p2, :cond_1

    move-object p2, v2

    goto :goto_0

    :cond_1
    shl-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "s<%s>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/zte/regex/PrintPattern;->ids:Ljava/util/HashMap;

    .line 20
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p2, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 21
    sget-object p1, Lcom/zte/regex/PrintPattern;->ids:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object p2, Lcom/zte/regex/PrintPattern;->ids:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, " (=>%d)"

    invoke-virtual {p1, p2, p0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 23
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "%n"

    invoke-virtual {p0, p2, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method private static print(Ljava/lang/String;I)V
    .locals 3

    .line 27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "       %"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    if-nez p1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "s<%s>%n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method private static toString(Lcom/zte/regex/Pattern$Node;)Ljava/lang/String;
    .locals 1

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x24

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toStringCP(I)Ljava/lang/String;
    .locals 2

    .line 39
    invoke-static {p0}, Lcom/zte/regex/ASCII;->isPrint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static toStringCPS([I)Ljava/lang/String;
    .locals 4

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 34
    invoke-static {v3}, Lcom/zte/regex/PrintPattern;->toStringCP(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toStringCtype(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    .line 85
    const-string p0, "ASCII ?"

    return-object p0

    .line 81
    :sswitch_0
    const-string p0, "ASCII.WORD"

    return-object p0

    .line 71
    :sswitch_1
    const-string p0, "ASCII.UNDER"

    return-object p0

    .line 73
    :sswitch_2
    const-string p0, "ASCII.ASCII"

    return-object p0

    .line 83
    :sswitch_3
    const-string p0, "ASCII.XDIGIT"

    return-object p0

    .line 69
    :sswitch_4
    const-string p0, "ASCII.BLANK"

    return-object p0

    .line 67
    :sswitch_5
    const-string p0, "ASCII.CNTRL"

    return-object p0

    .line 79
    :sswitch_6
    const-string p0, "ASCII.GRAPH"

    return-object p0

    .line 65
    :sswitch_7
    const-string p0, "ASCII.PUNCT"

    return-object p0

    .line 63
    :sswitch_8
    const-string p0, "ASCII.SPACE"

    return-object p0

    .line 77
    :sswitch_9
    const-string p0, "ASCII.ALNUM"

    return-object p0

    .line 61
    :sswitch_a
    const-string p0, "ASCII.DIGIT"

    return-object p0

    .line 75
    :sswitch_b
    const-string p0, "ASCII.ALPHA"

    return-object p0

    .line 59
    :sswitch_c
    const-string p0, "ASCII.LOWER"

    return-object p0

    .line 57
    :sswitch_d
    const-string p0, "ASCII.UPPER"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_d
        0x200 -> :sswitch_c
        0x300 -> :sswitch_b
        0x400 -> :sswitch_a
        0x700 -> :sswitch_9
        0x800 -> :sswitch_8
        0x1000 -> :sswitch_7
        0x1700 -> :sswitch_6
        0x2000 -> :sswitch_5
        0x4000 -> :sswitch_4
        0x8000 -> :sswitch_3
        0xff00 -> :sswitch_2
        0x10000 -> :sswitch_1
        0x10700 -> :sswitch_0
    .end sparse-switch
.end method

.method private static toStringRange(II)Ljava/lang/String;
    .locals 2

    const v0, 0x7fffffff

    .line 44
    const-string v1, "{"

    if-ne p1, v0, :cond_2

    if-nez p0, :cond_0

    .line 46
    const-string p0, " * "

    return-object p0

    :cond_0
    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    .line 48
    const-string p0, " + "

    return-object p0

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", max}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 51
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static walk(Lcom/zte/regex/Pattern$Node;I)V
    .locals 8

    const/4 v0, 0x1

    add-int/2addr p1, v0

    :goto_0
    if-eqz p0, :cond_15

    .line 111
    invoke-static {p0}, Lcom/zte/regex/PrintPattern;->toString(Lcom/zte/regex/Pattern$Node;)Ljava/lang/String;

    move-result-object v1

    .line 113
    instance-of v2, p0, Lcom/zte/regex/Pattern$Prolog;

    const-string v3, " "

    if-eqz v2, :cond_0

    .line 114
    invoke-static {p0, v1, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    .line 116
    check-cast p0, Lcom/zte/regex/Pattern$Prolog;

    iget-object p0, p0, Lcom/zte/regex/Pattern$Prolog;->loop:Lcom/zte/regex/Pattern$Loop;

    .line 117
    invoke-static {p0}, Lcom/zte/regex/PrintPattern;->toString(Lcom/zte/regex/Pattern$Node;)Ljava/lang/String;

    move-result-object v1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/regex/Pattern$Loop;->cmin:I

    iget v4, p0, Lcom/zte/regex/Pattern$Loop;->cmax:I

    invoke-static {v3, v4}, Lcom/zte/regex/PrintPattern;->toStringRange(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {p0, v2, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    .line 120
    iget-object v2, p0, Lcom/zte/regex/Pattern$Loop;->body:Lcom/zte/regex/Pattern$Node;

    invoke-static {v2, p1}, Lcom/zte/regex/PrintPattern;->walk(Lcom/zte/regex/Pattern$Node;I)V

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/zte/regex/PrintPattern;->print(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 123
    :cond_0
    instance-of v2, p0, Lcom/zte/regex/Pattern$Loop;

    if-eqz v2, :cond_1

    return-void

    .line 125
    :cond_1
    instance-of v2, p0, Lcom/zte/regex/Pattern$Curly;

    if-eqz v2, :cond_2

    .line 126
    move-object v1, p0

    check-cast v1, Lcom/zte/regex/Pattern$Curly;

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Curly "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/zte/regex/Pattern$Curly;->type:Lcom/zte/regex/Pattern$Qtype;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/zte/regex/Pattern$Curly;->cmin:I

    iget v4, v1, Lcom/zte/regex/Pattern$Curly;->cmax:I

    invoke-static {v3, v4}, Lcom/zte/regex/PrintPattern;->toStringRange(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {p0, v2, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    .line 129
    iget-object v1, v1, Lcom/zte/regex/Pattern$Curly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-static {v1, p1}, Lcom/zte/regex/PrintPattern;->walk(Lcom/zte/regex/Pattern$Node;I)V

    .line 130
    const-string v1, "/Curly"

    invoke-static {v1, p1}, Lcom/zte/regex/PrintPattern;->print(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 131
    :cond_2
    instance-of v2, p0, Lcom/zte/regex/Pattern$GroupCurly;

    if-eqz v2, :cond_3

    .line 132
    move-object v1, p0

    check-cast v1, Lcom/zte/regex/Pattern$GroupCurly;

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "GroupCurly "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/zte/regex/Pattern$GroupCurly;->groupIndex:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/zte/regex/Pattern$GroupCurly;->type:Lcom/zte/regex/Pattern$Qtype;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/zte/regex/Pattern$GroupCurly;->cmin:I

    iget v4, v1, Lcom/zte/regex/Pattern$GroupCurly;->cmax:I

    .line 134
    invoke-static {v3, v4}, Lcom/zte/regex/PrintPattern;->toStringRange(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {p0, v2, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    .line 136
    iget-object v1, v1, Lcom/zte/regex/Pattern$GroupCurly;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-static {v1, p1}, Lcom/zte/regex/PrintPattern;->walk(Lcom/zte/regex/Pattern$Node;I)V

    .line 137
    const-string v1, "/GroupCurly"

    invoke-static {v1, p1}, Lcom/zte/regex/PrintPattern;->print(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 138
    :cond_3
    instance-of v2, p0, Lcom/zte/regex/Pattern$GroupHead;

    if-eqz v2, :cond_4

    .line 139
    check-cast p0, Lcom/zte/regex/Pattern$GroupHead;

    .line 140
    iget-object v1, p0, Lcom/zte/regex/Pattern$GroupHead;->tail:Lcom/zte/regex/Pattern$GroupTail;

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Group.head "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/zte/regex/Pattern$GroupTail;->groupIndex:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    .line 142
    iget-object p0, p0, Lcom/zte/regex/Pattern$GroupHead;->next:Lcom/zte/regex/Pattern$Node;

    invoke-static {p0, p1}, Lcom/zte/regex/PrintPattern;->walk(Lcom/zte/regex/Pattern$Node;I)V

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "/Group.tail "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lcom/zte/regex/Pattern$GroupTail;->groupIndex:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    move-object p0, v1

    goto/16 :goto_6

    .line 145
    :cond_4
    instance-of v2, p0, Lcom/zte/regex/Pattern$GroupTail;

    if-eqz v2, :cond_5

    return-void

    .line 147
    :cond_5
    instance-of v2, p0, Lcom/zte/regex/Pattern$Ques;

    if-eqz v2, :cond_6

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ques "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Lcom/zte/regex/Pattern$Ques;

    iget-object v3, v2, Lcom/zte/regex/Pattern$Ques;->type:Lcom/zte/regex/Pattern$Qtype;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    .line 149
    iget-object v1, v2, Lcom/zte/regex/Pattern$Ques;->atom:Lcom/zte/regex/Pattern$Node;

    invoke-static {v1, p1}, Lcom/zte/regex/PrintPattern;->walk(Lcom/zte/regex/Pattern$Node;I)V

    .line 150
    const-string v1, "/Ques"

    invoke-static {v1, p1}, Lcom/zte/regex/PrintPattern;->print(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 151
    :cond_6
    instance-of v2, p0, Lcom/zte/regex/Pattern$Branch;

    if-eqz v2, :cond_9

    .line 152
    move-object v2, p0

    check-cast v2, Lcom/zte/regex/Pattern$Branch;

    .line 153
    invoke-static {v2, v1, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 156
    :goto_1
    iget-object v1, v2, Lcom/zte/regex/Pattern$Branch;->atoms:[Lcom/zte/regex/Pattern$Node;

    aget-object v1, v1, p0

    if-eqz v1, :cond_7

    .line 157
    iget-object v1, v2, Lcom/zte/regex/Pattern$Branch;->atoms:[Lcom/zte/regex/Pattern$Node;

    aget-object v1, v1, p0

    invoke-static {v1, p1}, Lcom/zte/regex/PrintPattern;->walk(Lcom/zte/regex/Pattern$Node;I)V

    goto :goto_2

    .line 159
    :cond_7
    const-string v1, "  (accepted)"

    invoke-static {v1, p1}, Lcom/zte/regex/PrintPattern;->print(Ljava/lang/String;I)V

    :goto_2
    add-int/lit8 p0, p0, 0x1

    .line 161
    iget v1, v2, Lcom/zte/regex/Pattern$Branch;->size:I

    if-ne p0, v1, :cond_8

    .line 165
    iget-object p0, v2, Lcom/zte/regex/Pattern$Branch;->conn:Lcom/zte/regex/Pattern$Node;

    .line 166
    const-string v1, "/Branch"

    invoke-static {p0, v1, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 163
    :cond_8
    const-string v1, "-branch.separator-"

    invoke-static {v1, p1}, Lcom/zte/regex/PrintPattern;->print(Ljava/lang/String;I)V

    goto :goto_1

    .line 167
    :cond_9
    instance-of v2, p0, Lcom/zte/regex/Pattern$BranchConn;

    if-eqz v2, :cond_a

    return-void

    .line 169
    :cond_a
    instance-of v2, p0, Lcom/zte/regex/Pattern$CharProperty;

    const-string v4, "Single \""

    const-string v5, "\""

    if-eqz v2, :cond_c

    .line 170
    sget-object v1, Lcom/zte/regex/PrintPattern;->pmap:Ljava/util/HashMap;

    move-object v2, p0

    check-cast v2, Lcom/zte/regex/Pattern$CharProperty;

    iget-object v2, v2, Lcom/zte/regex/Pattern$CharProperty;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_b

    .line 172
    invoke-static {p0}, Lcom/zte/regex/PrintPattern;->toString(Lcom/zte/regex/Pattern$Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 174
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    :goto_3
    invoke-static {p0, v1, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 176
    :cond_c
    instance-of v2, p0, Lcom/zte/regex/Pattern$SliceNode;

    if-eqz v2, :cond_d

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcom/zte/regex/Pattern$SliceNode;

    iget-object v2, v2, Lcom/zte/regex/Pattern$SliceNode;->buffer:[I

    .line 178
    invoke-static {v2}, Lcom/zte/regex/PrintPattern;->toStringCPS([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {p0, v1, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 180
    :cond_d
    instance-of v2, p0, Lcom/zte/regex/Pattern$CharPropertyGreedy;

    if-eqz v2, :cond_11

    .line 181
    move-object v2, p0

    check-cast v2, Lcom/zte/regex/Pattern$CharPropertyGreedy;

    .line 182
    sget-object v6, Lcom/zte/regex/PrintPattern;->pmap:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/zte/regex/Pattern$CharPropertyGreedy;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_e

    .line 184
    iget-object v4, v2, Lcom/zte/regex/Pattern$CharPropertyGreedy;->predicate:Lcom/zte/regex/Pattern$CharPredicate;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 186
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    iget v3, v2, Lcom/zte/regex/Pattern$CharPropertyGreedy;->cmin:I

    if-nez v3, :cond_f

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 190
    :cond_f
    iget v3, v2, Lcom/zte/regex/Pattern$CharPropertyGreedy;->cmin:I

    if-ne v3, v0, :cond_10

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 193
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lcom/zte/regex/Pattern$CharPropertyGreedy;->cmin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    :goto_5
    invoke-static {p0, v1, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    goto :goto_6

    .line 195
    :cond_11
    instance-of v2, p0, Lcom/zte/regex/Pattern$BackRef;

    if-eqz v2, :cond_12

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GroupBackRef "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Lcom/zte/regex/Pattern$BackRef;

    iget v2, v2, Lcom/zte/regex/Pattern$BackRef;->groupIndex:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {p0, v1, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    goto :goto_6

    .line 198
    :cond_12
    instance-of v2, p0, Lcom/zte/regex/Pattern$LastNode;

    if-eqz v2, :cond_13

    .line 199
    const-string v1, "END"

    invoke-static {p0, v1, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    goto :goto_6

    .line 200
    :cond_13
    sget-object v2, Lcom/zte/regex/Pattern;->accept:Lcom/zte/regex/Pattern$Node;

    if-ne p0, v2, :cond_14

    return-void

    .line 203
    :cond_14
    invoke-static {p0, v1, p1}, Lcom/zte/regex/PrintPattern;->print(Lcom/zte/regex/Pattern$Node;Ljava/lang/String;I)V

    .line 205
    :goto_6
    iget-object p0, p0, Lcom/zte/regex/Pattern$Node;->next:Lcom/zte/regex/Pattern$Node;

    goto/16 :goto_0

    :cond_15
    return-void
.end method
