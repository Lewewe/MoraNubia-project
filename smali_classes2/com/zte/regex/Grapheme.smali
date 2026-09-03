.class final Lcom/zte/regex/Grapheme;
.super Ljava/lang/Object;
.source "Grapheme.java"


# static fields
.field private static final CONTROL:I = 0x3

.field private static final CR:I = 0x1

.field private static final EXTEND:I = 0x4

.field private static final EXTENDED_PICTOGRAPHIC:I = 0xe

.field private static final FIRST_TYPE:I = 0x0

.field private static final L:I = 0x9

.field private static final LAST_TYPE:I = 0xe

.field private static final LCOUNT:I = 0x13

.field private static final LF:I = 0x2

.field private static final LV:I = 0xc

.field private static final LVT:I = 0xd

.field private static final NCOUNT:I = 0x24c

.field private static final OTHER:I = 0x0

.field private static final PREPEND:I = 0x7

.field private static final RI:I = 0x6

.field private static final SCOUNT:I = 0x2ba4

.field private static final SPACINGMARK:I = 0x8

.field private static final SYLLABLE_BASE:I = 0xac00

.field private static final T:I = 0xb

.field private static final TCOUNT:I = 0x1c

.field private static final V:I = 0xa

.field private static final VCOUNT:I = 0x15

.field private static final ZWJ:I = 0x5

.field private static rules:[[Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x2

    .line 77
    new-array v1, v0, [I

    const/4 v2, 0x1

    const/16 v3, 0xf

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    sput-object v1, Lcom/zte/regex/Grapheme;->rules:[[Z

    move v1, v4

    :goto_0
    const/16 v3, 0xe

    if-gt v1, v3, :cond_1

    move v5, v4

    :goto_1
    if-gt v5, v3, :cond_0

    .line 81
    sget-object v6, Lcom/zte/regex/Grapheme;->rules:[[Z

    aget-object v6, v6, v1

    aput-boolean v2, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_1
    sget-object v1, Lcom/zte/regex/Grapheme;->rules:[[Z

    const/16 v5, 0x9

    aget-object v6, v1, v5

    aput-boolean v4, v6, v5

    const/16 v5, 0xa

    .line 84
    aput-boolean v4, v6, v5

    const/16 v7, 0xc

    .line 85
    aput-boolean v4, v6, v7

    const/16 v8, 0xd

    .line 86
    aput-boolean v4, v6, v8

    .line 88
    aget-object v6, v1, v7

    aput-boolean v4, v6, v5

    const/16 v7, 0xb

    .line 89
    aput-boolean v4, v6, v7

    .line 90
    aget-object v6, v1, v5

    aput-boolean v4, v6, v5

    .line 91
    aput-boolean v4, v6, v7

    .line 93
    aget-object v5, v1, v8

    aput-boolean v4, v5, v7

    .line 94
    aget-object v1, v1, v7

    aput-boolean v4, v1, v7

    move v1, v4

    :goto_2
    const/4 v5, 0x5

    const/4 v6, 0x4

    if-gt v1, v3, :cond_2

    .line 99
    sget-object v7, Lcom/zte/regex/Grapheme;->rules:[[Z

    aget-object v8, v7, v1

    aput-boolean v4, v8, v6

    .line 100
    aput-boolean v4, v8, v5

    const/16 v5, 0x8

    .line 101
    aput-boolean v4, v8, v5

    const/4 v5, 0x7

    .line 102
    aget-object v5, v7, v5

    aput-boolean v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_3
    if-gt v1, v3, :cond_4

    move v7, v2

    :goto_4
    const/4 v8, 0x3

    if-gt v7, v8, :cond_3

    .line 108
    sget-object v8, Lcom/zte/regex/Grapheme;->rules:[[Z

    aget-object v9, v8, v1

    aput-boolean v2, v9, v7

    .line 109
    aget-object v8, v8, v7

    aput-boolean v2, v8, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 112
    :cond_4
    sget-object v1, Lcom/zte/regex/Grapheme;->rules:[[Z

    aget-object v2, v1, v2

    aput-boolean v4, v2, v0

    .line 114
    aget-object v0, v1, v3

    aput-boolean v4, v0, v6

    .line 115
    aput-boolean v4, v0, v5

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getType(I)I
    .locals 9

    const/16 v0, 0x7f

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ge p0, v0, :cond_3

    const/16 v0, 0x20

    if-ge p0, v0, :cond_2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ne p0, v2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v3

    :cond_2
    return v4

    .line 154
    :cond_3
    invoke-static {p0}, Lcom/zte/regex/EmojiData;->isExtendedPictographic(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0xe

    return p0

    .line 158
    :cond_4
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v5, 0x13

    if-eq v0, v5, :cond_1c

    const/16 v5, 0x1b

    const/4 v6, 0x4

    if-eq v0, v5, :cond_18

    const/16 v5, 0x1c

    if-eq v0, v5, :cond_16

    const/4 v7, 0x7

    const/16 v8, 0x8

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_0
    const/16 v0, 0x200c

    if-eq p0, v0, :cond_a

    const v0, 0xe0020

    if-lt p0, v0, :cond_5

    const v0, 0xe007f

    if-gt p0, v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v0, 0x200d

    if-ne p0, v0, :cond_6

    const/4 p0, 0x5

    return p0

    :cond_6
    const/16 v0, 0x600

    if-lt p0, v0, :cond_7

    const/16 v0, 0x605

    if-le p0, v0, :cond_9

    :cond_7
    const/16 v0, 0x6dd

    if-eq p0, v0, :cond_9

    const/16 v0, 0x70f

    if-eq p0, v0, :cond_9

    const/16 v0, 0x8e2

    if-eq p0, v0, :cond_9

    const v0, 0x110bd

    if-eq p0, v0, :cond_9

    const v0, 0x110cd

    if-ne p0, v0, :cond_8

    goto :goto_0

    :cond_8
    return v3

    :cond_9
    :goto_0
    return v7

    :cond_a
    :goto_1
    return v6

    .line 192
    :pswitch_1
    invoke-static {p0}, Lcom/zte/regex/Grapheme;->isExcludedSpacingMark(I)Z

    move-result p0

    if-eqz p0, :cond_b

    return v4

    :cond_b
    return v8

    :pswitch_2
    return v6

    :pswitch_3
    const/16 v0, 0xe33

    if-eq p0, v0, :cond_15

    const/16 v0, 0xeb3

    if-ne p0, v0, :cond_c

    goto :goto_3

    :cond_c
    const/16 v0, 0x1100

    const/16 v3, 0xb

    const/16 v6, 0x9

    if-lt p0, v0, :cond_f

    const/16 v0, 0x11ff

    if-gt p0, v0, :cond_f

    const/16 v0, 0x115f

    if-gt p0, v0, :cond_d

    return v6

    :cond_d
    const/16 v0, 0x11a7

    if-gt p0, v0, :cond_e

    return v2

    :cond_e
    return v3

    :cond_f
    const v0, 0xac00

    sub-int v0, p0, v0

    if-ltz v0, :cond_11

    const/16 v8, 0x2ba4

    if-ge v0, v8, :cond_11

    .line 226
    rem-int/2addr v0, v5

    if-nez v0, :cond_10

    const/16 p0, 0xc

    return p0

    :cond_10
    return v1

    :cond_11
    const v0, 0xa960

    if-lt p0, v0, :cond_12

    const v0, 0xa97c

    if-gt p0, v0, :cond_12

    return v6

    :cond_12
    const v0, 0xd7b0

    if-lt p0, v0, :cond_13

    const v0, 0xd7c6

    if-gt p0, v0, :cond_13

    return v2

    :cond_13
    const v0, 0xd7cb

    if-lt p0, v0, :cond_14

    const v0, 0xd7fb

    if-gt p0, v0, :cond_14

    return v3

    :cond_14
    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    :goto_2
    return v4

    :pswitch_4
    :sswitch_0
    return v7

    :cond_15
    :goto_3
    return v8

    :cond_16
    const v0, 0x1f1e6

    if-lt p0, v0, :cond_17

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_17

    const/4 p0, 0x6

    return p0

    :cond_17
    return v4

    :cond_18
    :pswitch_5
    const v0, 0xff9e

    if-eq p0, v0, :cond_1a

    const v0, 0xff9f

    if-eq p0, v0, :cond_1a

    const v0, 0x1f3fb

    if-lt p0, v0, :cond_19

    const v0, 0x1f3ff

    if-gt p0, v0, :cond_19

    goto :goto_4

    :cond_19
    return v4

    :cond_1a
    :goto_4
    return v6

    :cond_1b
    const/16 v0, 0x378

    if-ne p0, v0, :cond_1c

    return v4

    :cond_1c
    :pswitch_6
    return v3

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xd4e -> :sswitch_0
        0x1193f -> :sswitch_0
        0x11941 -> :sswitch_0
        0x11a3a -> :sswitch_0
        0x11d46 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x111c2
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x11a84
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static isExcludedSpacingMark(I)Z
    .locals 2

    const/16 v0, 0x102b

    if-eq p0, v0, :cond_5

    const/16 v0, 0x102c

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1038

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1062

    if-lt p0, v0, :cond_0

    const/16 v1, 0x1064

    if-le p0, v1, :cond_5

    :cond_0
    if-lt p0, v0, :cond_1

    const/16 v0, 0x106d

    if-le p0, v0, :cond_5

    :cond_1
    const/16 v0, 0x1083

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1087

    if-lt p0, v0, :cond_2

    const/16 v0, 0x108c

    if-le p0, v0, :cond_5

    :cond_2
    const/16 v0, 0x108f

    if-eq p0, v0, :cond_5

    const/16 v0, 0x109a

    if-lt p0, v0, :cond_3

    const/16 v0, 0x109c

    if-le p0, v0, :cond_5

    :cond_3
    const/16 v0, 0x1a61

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1a63

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1a64

    if-eq p0, v0, :cond_5

    const v0, 0xaa7b

    if-eq p0, v0, :cond_5

    const v0, 0xaa7d

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static nextBoundary(Ljava/lang/CharSequence;II)I
    .locals 11

    .line 22
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/zte/regex/Grapheme$$ExternalSyntheticBackport0;->m(III)I

    .line 24
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p1

    .line 27
    invoke-static {v0}, Lcom/zte/regex/Grapheme;->getType(I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const/16 v6, 0xe

    if-ne v0, v6, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    if-ge v1, p2, :cond_8

    .line 31
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 32
    invoke-static {v8}, Lcom/zte/regex/Grapheme;->getType(I)I

    move-result v9

    if-eqz v7, :cond_2

    const/4 v10, 0x5

    if-ne v0, v10, :cond_2

    if-ne v9, v6, :cond_2

    goto :goto_3

    .line 36
    :cond_2
    rem-int/lit8 v10, v5, 0x2

    if-ne v10, v2, :cond_3

    if-ne v0, v4, :cond_3

    if-ne v9, v4, :cond_3

    goto :goto_3

    .line 38
    :cond_3
    sget-object v10, Lcom/zte/regex/Grapheme;->rules:[[Z

    aget-object v0, v10, v0

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_6

    if-le v1, p1, :cond_4

    goto :goto_5

    :cond_4
    if-ne v9, v6, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    move v7, v0

    move v5, v3

    :cond_6
    :goto_3
    if-ne v9, v4, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v3

    :goto_4
    add-int/2addr v5, v0

    .line 50
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v1, v0

    move v0, v9

    goto :goto_1

    :cond_8
    :goto_5
    return v1
.end method
