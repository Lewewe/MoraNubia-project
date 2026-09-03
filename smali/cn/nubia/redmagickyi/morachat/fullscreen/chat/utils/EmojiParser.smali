.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/EmojiParser;
.super Ljava/lang/Object;
.source "EmojiParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmojiPositions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 40
    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/EmojiParser;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 45
    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static isEmoji(I)Z
    .locals 1

    const v0, 0x1f600

    if-lt p0, v0, :cond_0

    const v0, 0x1f64f

    if-le p0, v0, :cond_e

    :cond_0
    const v0, 0x1f300

    if-lt p0, v0, :cond_1

    const v0, 0x1f5ff

    if-le p0, v0, :cond_e

    :cond_1
    const v0, 0x1f680

    if-lt p0, v0, :cond_2

    const v0, 0x1f6ff

    if-le p0, v0, :cond_e

    :cond_2
    const/16 v0, 0x2600

    if-lt p0, v0, :cond_3

    const/16 v0, 0x26ff

    if-le p0, v0, :cond_e

    :cond_3
    const/16 v0, 0x2700

    if-lt p0, v0, :cond_4

    const/16 v0, 0x27bf

    if-le p0, v0, :cond_e

    :cond_4
    const v0, 0xfe00

    if-lt p0, v0, :cond_5

    const v0, 0xfe0f

    if-le p0, v0, :cond_e

    :cond_5
    const v0, 0x1f900

    if-lt p0, v0, :cond_6

    const v0, 0x1f9ff

    if-le p0, v0, :cond_e

    :cond_6
    const v0, 0x1f1e6

    if-lt p0, v0, :cond_7

    const v0, 0x1f1ff

    if-le p0, v0, :cond_e

    :cond_7
    const/16 v0, 0x231a

    if-lt p0, v0, :cond_8

    const/16 v0, 0x231b

    if-le p0, v0, :cond_e

    :cond_8
    const/16 v0, 0x23e9

    if-lt p0, v0, :cond_9

    const/16 v0, 0x23ec

    if-le p0, v0, :cond_e

    :cond_9
    const/16 v0, 0x23f0

    if-eq p0, v0, :cond_e

    const/16 v0, 0x23f3

    if-eq p0, v0, :cond_e

    const/16 v0, 0x25aa

    if-lt p0, v0, :cond_a

    const/16 v0, 0x25ab

    if-le p0, v0, :cond_e

    :cond_a
    const/16 v0, 0x2b05

    if-lt p0, v0, :cond_b

    const/16 v0, 0x2b07

    if-le p0, v0, :cond_e

    :cond_b
    const/16 v0, 0x2b1b

    if-lt p0, v0, :cond_c

    const/16 v0, 0x2b1c

    if-le p0, v0, :cond_e

    :cond_c
    const/16 v0, 0x3030

    if-eq p0, v0, :cond_e

    const/16 v0, 0x303d

    if-eq p0, v0, :cond_e

    const/16 v0, 0x3297

    if-eq p0, v0, :cond_e

    const/16 v0, 0x3299

    if-eq p0, v0, :cond_e

    const v0, 0xe0020

    if-lt p0, v0, :cond_d

    const v0, 0xe007f

    if-gt p0, v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 p0, 0x0

    goto :goto_1

    :cond_e
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
