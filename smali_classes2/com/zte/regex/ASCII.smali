.class final Lcom/zte/regex/ASCII;
.super Ljava/lang/Object;
.source "ASCII.java"


# static fields
.field static final ALNUM:I = 0x700

.field static final ALPHA:I = 0x300

.field static final ASCII:I = 0xff00

.field static final BLANK:I = 0x4000

.field static final CNTRL:I = 0x2000

.field static final DIGIT:I = 0x400

.field static final GRAPH:I = 0x1700

.field static final HEX:I = 0x8000

.field static final LOWER:I = 0x200

.field static final PUNCT:I = 0x1000

.field static final SPACE:I = 0x800

.field static final UNDER:I = 0x10000

.field static final UPPER:I = 0x100

.field static final WORD:I = 0x10700

.field static final XDIGIT:I = 0x8000

.field private static final ctype:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    .line 42
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/regex/ASCII;->ctype:[I

    return-void

    :array_0
    .array-data 4
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x6800
        0x2800
        0x2800
        0x2800
        0x2800
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x4800
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x8400
        0x8401
        0x8402
        0x8403
        0x8404
        0x8405
        0x8406
        0x8407
        0x8408
        0x8409
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x810a
        0x810b
        0x810c
        0x810d
        0x810e
        0x810f
        0x110
        0x111
        0x112
        0x113
        0x114
        0x115
        0x116
        0x117
        0x118
        0x119
        0x11a
        0x11b
        0x11c
        0x11d
        0x11e
        0x11f
        0x120
        0x121
        0x122
        0x123
        0x1000
        0x1000
        0x1000
        0x1000
        0x11000
        0x1000
        0x820a
        0x820b
        0x820c
        0x820d
        0x820e
        0x820f
        0x210
        0x211
        0x212
        0x213
        0x214
        0x215
        0x216
        0x217
        0x218
        0x219
        0x21a
        0x21b
        0x21c
        0x21d
        0x21e
        0x21f
        0x220
        0x221
        0x222
        0x223
        0x1000
        0x1000
        0x1000
        0x1000
        0x2000
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getType(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lcom/zte/regex/ASCII;->ctype:[I

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isAlnum(I)Z
    .locals 1

    const/16 v0, 0x700

    .line 194
    invoke-static {p0, v0}, Lcom/zte/regex/ASCII;->isType(II)Z

    move-result p0

    return p0
.end method

.method static isAlpha(I)Z
    .locals 1

    const/16 v0, 0x300

    .line 186
    invoke-static {p0, v0}, Lcom/zte/regex/ASCII;->isType(II)Z

    move-result p0

    return p0
.end method

.method static isAscii(I)Z
    .locals 0

    and-int/lit8 p0, p0, -0x80

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isCntrl(I)Z
    .locals 1

    const/16 v0, 0x2000

    .line 222
    invoke-static {p0, v0}, Lcom/zte/regex/ASCII;->isType(II)Z

    move-result p0

    return p0
.end method

.method static isDigit(I)Z
    .locals 1

    add-int/lit8 v0, p0, -0x30

    rsub-int/lit8 p0, p0, 0x39

    or-int/2addr p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isGraph(I)Z
    .locals 1

    const/16 v0, 0x1700

    .line 198
    invoke-static {p0, v0}, Lcom/zte/regex/ASCII;->isType(II)Z

    move-result p0

    return p0
.end method

.method static isHexDigit(I)Z
    .locals 1

    const v0, 0x8000

    .line 214
    invoke-static {p0, v0}, Lcom/zte/regex/ASCII;->isType(II)Z

    move-result p0

    return p0
.end method

.method static isLower(I)Z
    .locals 1

    add-int/lit8 v0, p0, -0x61

    rsub-int/lit8 p0, p0, 0x7a

    or-int/2addr p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isOctDigit(I)Z
    .locals 1

    add-int/lit8 v0, p0, -0x30

    rsub-int/lit8 p0, p0, 0x37

    or-int/2addr p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isPrint(I)Z
    .locals 1

    add-int/lit8 v0, p0, -0x20

    rsub-int/lit8 p0, p0, 0x7e

    or-int/2addr p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isPunct(I)Z
    .locals 1

    const/16 v0, 0x1000

    .line 206
    invoke-static {p0, v0}, Lcom/zte/regex/ASCII;->isType(II)Z

    move-result p0

    return p0
.end method

.method static isSpace(I)Z
    .locals 1

    const/16 v0, 0x800

    .line 210
    invoke-static {p0, v0}, Lcom/zte/regex/ASCII;->isType(II)Z

    move-result p0

    return p0
.end method

.method static isType(II)Z
    .locals 0

    .line 178
    invoke-static {p0}, Lcom/zte/regex/ASCII;->getType(I)I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isUpper(I)Z
    .locals 1

    add-int/lit8 v0, p0, -0x41

    rsub-int/lit8 p0, p0, 0x5a

    or-int/2addr p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isWord(I)Z
    .locals 1

    const v0, 0x10700

    .line 234
    invoke-static {p0, v0}, Lcom/zte/regex/ASCII;->isType(II)Z

    move-result p0

    return p0
.end method

.method static toDigit(I)I
    .locals 1

    .line 238
    sget-object v0, Lcom/zte/regex/ASCII;->ctype:[I

    and-int/lit8 p0, p0, 0x7f

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method static toLower(I)I
    .locals 1

    .line 242
    invoke-static {p0}, Lcom/zte/regex/ASCII;->isUpper(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    :cond_0
    return p0
.end method

.method static toUpper(I)I
    .locals 1

    .line 246
    invoke-static {p0}, Lcom/zte/regex/ASCII;->isLower(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x20

    :cond_0
    return p0
.end method
