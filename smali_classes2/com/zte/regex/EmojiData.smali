.class final Lcom/zte/regex/EmojiData;
.super Ljava/lang/Object;
.source "EmojiData.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isExtendedPictographic(I)Z
    .locals 1

    const/16 v0, 0x2000

    if-ge p0, v0, :cond_2

    const/16 v0, 0xa9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xae

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    .line 24
    :cond_2
    invoke-static {p0}, Lcom/zte/regex/EmojiData;->isHigh(I)Z

    move-result p0

    return p0
.end method

.method private static isHigh(I)Z
    .locals 1

    const/16 v0, 0x203c

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2049

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2122

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2139

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2194

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2199

    if-le p0, v0, :cond_24

    :cond_0
    const/16 v0, 0x21a9

    if-eq p0, v0, :cond_24

    const/16 v0, 0x21aa

    if-eq p0, v0, :cond_24

    const/16 v0, 0x231a

    if-eq p0, v0, :cond_24

    const/16 v0, 0x231b

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2328

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2388

    if-eq p0, v0, :cond_24

    const/16 v0, 0x23cf

    if-eq p0, v0, :cond_24

    const/16 v0, 0x23e9

    if-lt p0, v0, :cond_1

    const/16 v0, 0x23f3

    if-le p0, v0, :cond_24

    :cond_1
    const/16 v0, 0x23f8

    if-lt p0, v0, :cond_2

    const/16 v0, 0x23fa

    if-le p0, v0, :cond_24

    :cond_2
    const/16 v0, 0x24c2

    if-eq p0, v0, :cond_24

    const/16 v0, 0x25aa

    if-eq p0, v0, :cond_24

    const/16 v0, 0x25ab

    if-eq p0, v0, :cond_24

    const/16 v0, 0x25b6

    if-eq p0, v0, :cond_24

    const/16 v0, 0x25c0

    if-eq p0, v0, :cond_24

    const/16 v0, 0x25fb

    if-lt p0, v0, :cond_3

    const/16 v0, 0x25fe

    if-le p0, v0, :cond_24

    :cond_3
    const/16 v0, 0x2600

    if-lt p0, v0, :cond_4

    const/16 v0, 0x2605

    if-le p0, v0, :cond_24

    :cond_4
    const/16 v0, 0x2607

    if-lt p0, v0, :cond_5

    const/16 v0, 0x2612

    if-le p0, v0, :cond_24

    :cond_5
    const/16 v0, 0x2614

    if-lt p0, v0, :cond_6

    const/16 v0, 0x2685

    if-le p0, v0, :cond_24

    :cond_6
    const/16 v0, 0x2690

    if-lt p0, v0, :cond_7

    const/16 v0, 0x2705

    if-le p0, v0, :cond_24

    :cond_7
    const/16 v0, 0x2708

    if-lt p0, v0, :cond_8

    const/16 v0, 0x2712

    if-le p0, v0, :cond_24

    :cond_8
    const/16 v0, 0x2714

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2716

    if-eq p0, v0, :cond_24

    const/16 v0, 0x271d

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2721

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2728

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2733

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2734

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2744

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2747

    if-eq p0, v0, :cond_24

    const/16 v0, 0x274c

    if-eq p0, v0, :cond_24

    const/16 v0, 0x274e

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2753

    if-lt p0, v0, :cond_9

    const/16 v0, 0x2755

    if-le p0, v0, :cond_24

    :cond_9
    const/16 v0, 0x2757

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2763

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2767

    if-le p0, v0, :cond_24

    :cond_a
    const/16 v0, 0x2795

    if-lt p0, v0, :cond_b

    const/16 v0, 0x2797

    if-le p0, v0, :cond_24

    :cond_b
    const/16 v0, 0x27a1

    if-eq p0, v0, :cond_24

    const/16 v0, 0x27b0

    if-eq p0, v0, :cond_24

    const/16 v0, 0x27bf

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2934

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2935

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2b05

    if-lt p0, v0, :cond_c

    const/16 v0, 0x2b07

    if-le p0, v0, :cond_24

    :cond_c
    const/16 v0, 0x2b1b

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2b1c

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2b50

    if-eq p0, v0, :cond_24

    const/16 v0, 0x2b55

    if-eq p0, v0, :cond_24

    const/16 v0, 0x3030

    if-eq p0, v0, :cond_24

    const/16 v0, 0x303d

    if-eq p0, v0, :cond_24

    const/16 v0, 0x3297

    if-eq p0, v0, :cond_24

    const/16 v0, 0x3299

    if-eq p0, v0, :cond_24

    const v0, 0x1f000

    if-lt p0, v0, :cond_d

    const v0, 0x1f0ff

    if-le p0, v0, :cond_24

    :cond_d
    const v0, 0x1f10d

    if-lt p0, v0, :cond_e

    const v0, 0x1f10f

    if-le p0, v0, :cond_24

    :cond_e
    const v0, 0x1f12f

    if-eq p0, v0, :cond_24

    const v0, 0x1f16c

    if-lt p0, v0, :cond_f

    const v0, 0x1f171

    if-le p0, v0, :cond_24

    :cond_f
    const v0, 0x1f17e

    if-eq p0, v0, :cond_24

    const v0, 0x1f17f

    if-eq p0, v0, :cond_24

    const v0, 0x1f18e

    if-eq p0, v0, :cond_24

    const v0, 0x1f191

    if-lt p0, v0, :cond_10

    const v0, 0x1f19a

    if-le p0, v0, :cond_24

    :cond_10
    const v0, 0x1f1ad

    if-lt p0, v0, :cond_11

    const v0, 0x1f1e5

    if-le p0, v0, :cond_24

    :cond_11
    const v0, 0x1f201

    if-lt p0, v0, :cond_12

    const v0, 0x1f20f

    if-le p0, v0, :cond_24

    :cond_12
    const v0, 0x1f21a

    if-eq p0, v0, :cond_24

    const v0, 0x1f22f

    if-eq p0, v0, :cond_24

    const v0, 0x1f232

    if-lt p0, v0, :cond_13

    const v0, 0x1f23a

    if-le p0, v0, :cond_24

    :cond_13
    const v0, 0x1f23c

    if-lt p0, v0, :cond_14

    const v0, 0x1f23f

    if-le p0, v0, :cond_24

    :cond_14
    const v0, 0x1f249

    if-lt p0, v0, :cond_15

    const v0, 0x1f3fa

    if-le p0, v0, :cond_24

    :cond_15
    const v0, 0x1f400

    if-lt p0, v0, :cond_16

    const v0, 0x1f53d

    if-le p0, v0, :cond_24

    :cond_16
    const v0, 0x1f546

    if-lt p0, v0, :cond_17

    const v0, 0x1f64f

    if-le p0, v0, :cond_24

    :cond_17
    const v0, 0x1f680

    if-lt p0, v0, :cond_18

    const v0, 0x1f6ff

    if-le p0, v0, :cond_24

    :cond_18
    const v0, 0x1f774

    if-lt p0, v0, :cond_19

    const v0, 0x1f77f

    if-le p0, v0, :cond_24

    :cond_19
    const v0, 0x1f7d5

    if-lt p0, v0, :cond_1a

    const v0, 0x1f7ff

    if-le p0, v0, :cond_24

    :cond_1a
    const v0, 0x1f80c

    if-lt p0, v0, :cond_1b

    const v0, 0x1f80f

    if-le p0, v0, :cond_24

    :cond_1b
    const v0, 0x1f848

    if-lt p0, v0, :cond_1c

    const v0, 0x1f84f

    if-le p0, v0, :cond_24

    :cond_1c
    const v0, 0x1f85a

    if-lt p0, v0, :cond_1d

    const v0, 0x1f85f

    if-le p0, v0, :cond_24

    :cond_1d
    const v0, 0x1f888

    if-lt p0, v0, :cond_1e

    const v0, 0x1f88f

    if-le p0, v0, :cond_24

    :cond_1e
    const v0, 0x1f8ae

    if-lt p0, v0, :cond_1f

    const v0, 0x1f8ff

    if-le p0, v0, :cond_24

    :cond_1f
    const v0, 0x1f90c

    if-lt p0, v0, :cond_20

    const v0, 0x1f93a

    if-le p0, v0, :cond_24

    :cond_20
    const v0, 0x1f93c

    if-lt p0, v0, :cond_21

    const v0, 0x1f945

    if-le p0, v0, :cond_24

    :cond_21
    const v0, 0x1f947

    if-lt p0, v0, :cond_22

    const v0, 0x1faff

    if-le p0, v0, :cond_24

    :cond_22
    const v0, 0x1fc00

    if-lt p0, v0, :cond_23

    const v0, 0x1fffd

    if-gt p0, v0, :cond_23

    goto :goto_0

    :cond_23
    const/4 p0, 0x0

    goto :goto_1

    :cond_24
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
