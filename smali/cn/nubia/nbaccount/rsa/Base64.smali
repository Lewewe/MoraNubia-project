.class public final Lcn/nubia/nbaccount/rsa/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static final base64Alphabet:[B

.field private static final fDebug:Z = false

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x80

    .line 14
    new-array v1, v0, [B

    sput-object v1, Lcn/nubia/nbaccount/rsa/Base64;->base64Alphabet:[B

    const/16 v1, 0x40

    .line 15
    new-array v1, v1, [C

    sput-object v1, Lcn/nubia/nbaccount/rsa/Base64;->lookUpBase64Alphabet:[C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    sget-object v3, Lcn/nubia/nbaccount/rsa/Base64;->base64Alphabet:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 22
    sget-object v2, Lcn/nubia/nbaccount/rsa/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    .line 25
    sget-object v2, Lcn/nubia/nbaccount/rsa/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x47

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    .line 29
    sget-object v2, Lcn/nubia/nbaccount/rsa/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 32
    :cond_3
    sget-object v0, Lcn/nubia/nbaccount/rsa/Base64;->base64Alphabet:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v0, v2

    const/16 v4, 0x2f

    const/16 v5, 0x3f

    .line 33
    aput-byte v5, v0, v4

    move v0, v1

    :goto_4
    const/16 v6, 0x19

    if-gt v0, v6, :cond_4

    .line 36
    sget-object v6, Lcn/nubia/nbaccount/rsa/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v7, v0, 0x41

    int-to-char v7, v7

    aput-char v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/16 v0, 0x1a

    move v6, v1

    :goto_5
    const/16 v7, 0x33

    if-gt v0, v7, :cond_5

    .line 40
    sget-object v7, Lcn/nubia/nbaccount/rsa/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v8, v6, 0x61

    int-to-char v8, v8

    aput-char v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    const/16 v0, 0x34

    :goto_6
    const/16 v6, 0x3d

    if-gt v0, v6, :cond_6

    .line 44
    sget-object v6, Lcn/nubia/nbaccount/rsa/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v7, v1, 0x30

    int-to-char v7, v7

    aput-char v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 46
    :cond_6
    sget-object v0, Lcn/nubia/nbaccount/rsa/Base64;->lookUpBase64Alphabet:[C

    aput-char v2, v0, v3

    .line 47
    aput-char v4, v0, v5

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 168
    invoke-static {p0}, Lcn/nubia/nbaccount/rsa/Base64;->removeWhiteSpace([C)I

    move-result v1

    .line 170
    rem-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    return-object v0

    .line 174
    :cond_1
    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 177
    new-array p0, v2, [B

    return-object p0

    :cond_2
    mul-int/lit8 v3, v1, 0x3

    .line 187
    new-array v3, v3, [B

    move v4, v2

    move v5, v4

    move v6, v5

    :goto_0
    add-int/lit8 v7, v1, -0x1

    if-ge v4, v7, :cond_5

    add-int/lit8 v7, v5, 0x1

    .line 191
    aget-char v8, p0, v5

    invoke-static {v8}, Lcn/nubia/nbaccount/rsa/Base64;->isData(C)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v9, v5, 0x2

    aget-char v7, p0, v7

    invoke-static {v7}, Lcn/nubia/nbaccount/rsa/Base64;->isData(C)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v10, v5, 0x3

    aget-char v9, p0, v9

    .line 192
    invoke-static {v9}, Lcn/nubia/nbaccount/rsa/Base64;->isData(C)Z

    move-result v11

    if-eqz v11, :cond_4

    add-int/lit8 v5, v5, 0x4

    aget-char v10, p0, v10

    .line 193
    invoke-static {v10}, Lcn/nubia/nbaccount/rsa/Base64;->isData(C)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    .line 197
    :cond_3
    sget-object v11, Lcn/nubia/nbaccount/rsa/Base64;->base64Alphabet:[B

    aget-byte v8, v11, v8

    .line 198
    aget-byte v7, v11, v7

    .line 199
    aget-byte v9, v11, v9

    .line 200
    aget-byte v10, v11, v10

    add-int/lit8 v11, v6, 0x1

    shl-int/lit8 v8, v8, 0x2

    shr-int/lit8 v12, v7, 0x4

    or-int/2addr v8, v12

    int-to-byte v8, v8

    .line 202
    aput-byte v8, v3, v6

    add-int/lit8 v8, v6, 0x2

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x4

    shr-int/lit8 v12, v9, 0x2

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v7, v12

    int-to-byte v7, v7

    .line 203
    aput-byte v7, v3, v11

    add-int/lit8 v6, v6, 0x3

    shl-int/lit8 v7, v9, 0x6

    or-int/2addr v7, v10

    int-to-byte v7, v7

    .line 204
    aput-byte v7, v3, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    add-int/lit8 v1, v5, 0x1

    .line 207
    aget-char v7, p0, v5

    invoke-static {v7}, Lcn/nubia/nbaccount/rsa/Base64;->isData(C)Z

    move-result v8

    if-eqz v8, :cond_c

    add-int/lit8 v8, v5, 0x2

    aget-char v1, p0, v1

    invoke-static {v1}, Lcn/nubia/nbaccount/rsa/Base64;->isData(C)Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_3

    .line 211
    :cond_6
    sget-object v9, Lcn/nubia/nbaccount/rsa/Base64;->base64Alphabet:[B

    aget-byte v7, v9, v7

    .line 212
    aget-byte v1, v9, v1

    add-int/lit8 v5, v5, 0x3

    .line 214
    aget-char v8, p0, v8

    .line 215
    aget-char p0, p0, v5

    .line 216
    invoke-static {v8}, Lcn/nubia/nbaccount/rsa/Base64;->isData(C)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p0}, Lcn/nubia/nbaccount/rsa/Base64;->isData(C)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    .line 241
    :cond_7
    aget-byte v0, v9, v8

    .line 242
    aget-byte p0, v9, p0

    add-int/lit8 v2, v6, 0x1

    shl-int/lit8 v4, v7, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 243
    aput-byte v4, v3, v6

    add-int/lit8 v6, v6, 0x2

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v1, v4

    int-to-byte v1, v1

    .line 244
    aput-byte v1, v3, v2

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p0, v0

    int-to-byte p0, p0

    .line 245
    aput-byte p0, v3, v6

    return-object v3

    .line 217
    :cond_8
    :goto_2
    invoke-static {v8}, Lcn/nubia/nbaccount/rsa/Base64;->isPad(C)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {p0}, Lcn/nubia/nbaccount/rsa/Base64;->isPad(C)Z

    move-result v5

    if-eqz v5, :cond_a

    and-int/lit8 p0, v1, 0xf

    if-eqz p0, :cond_9

    return-object v0

    :cond_9
    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 p0, v4, 0x1

    .line 222
    new-array p0, p0, [B

    .line 223
    invoke-static {v3, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v7, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 224
    aput-byte v0, p0, v6

    return-object p0

    .line 226
    :cond_a
    invoke-static {v8}, Lcn/nubia/nbaccount/rsa/Base64;->isPad(C)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {p0}, Lcn/nubia/nbaccount/rsa/Base64;->isPad(C)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 227
    aget-byte p0, v9, v8

    and-int/lit8 v5, p0, 0x3

    if-eqz v5, :cond_b

    return-object v0

    :cond_b
    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v4, 0x2

    .line 232
    new-array v0, v0, [B

    .line 233
    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v6, 0x1

    shl-int/lit8 v3, v7, 0x2

    shr-int/lit8 v4, v1, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 234
    aput-byte v3, v0, v6

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 p0, p0, 0x2

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, v1

    int-to-byte p0, p0

    .line 235
    aput-byte p0, v0, v2

    :cond_c
    :goto_3
    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 15

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    array-length v0, p0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 77
    const-string p0, ""

    return-object p0

    .line 80
    :cond_1
    rem-int/lit8 v2, v0, 0x18

    .line 81
    div-int/lit8 v0, v0, 0x18

    if-eqz v2, :cond_2

    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    mul-int/lit8 v3, v3, 0x4

    .line 85
    new-array v3, v3, [C

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v4, v0, :cond_6

    add-int/lit8 v7, v5, 0x1

    .line 96
    aget-byte v8, p0, v5

    add-int/lit8 v9, v5, 0x2

    .line 97
    aget-byte v7, p0, v7

    add-int/lit8 v5, v5, 0x3

    .line 98
    aget-byte v9, p0, v9

    and-int/lit8 v10, v7, 0xf

    int-to-byte v10, v10

    and-int/lit8 v11, v8, 0x3

    int-to-byte v11, v11

    and-int/lit8 v12, v8, -0x80

    shr-int/lit8 v8, v8, 0x2

    if-nez v12, :cond_3

    goto :goto_2

    :cond_3
    xor-int/lit16 v8, v8, 0xc0

    :goto_2
    int-to-byte v8, v8

    and-int/lit8 v12, v7, -0x80

    shr-int/lit8 v7, v7, 0x4

    if-nez v12, :cond_4

    goto :goto_3

    :cond_4
    xor-int/lit16 v7, v7, 0xf0

    :goto_3
    int-to-byte v7, v7

    and-int/lit8 v12, v9, -0x80

    if-nez v12, :cond_5

    shr-int/lit8 v12, v9, 0x6

    goto :goto_4

    :cond_5
    shr-int/lit8 v12, v9, 0x6

    xor-int/lit16 v12, v12, 0xfc

    :goto_4
    int-to-byte v12, v12

    add-int/lit8 v13, v6, 0x1

    .line 117
    sget-object v14, Lcn/nubia/nbaccount/rsa/Base64;->lookUpBase64Alphabet:[C

    aget-char v8, v14, v8

    aput-char v8, v3, v6

    add-int/lit8 v8, v6, 0x2

    shl-int/lit8 v11, v11, 0x4

    or-int/2addr v7, v11

    .line 118
    aget-char v7, v14, v7

    aput-char v7, v3, v13

    add-int/lit8 v7, v6, 0x3

    shl-int/lit8 v10, v10, 0x2

    or-int/2addr v10, v12

    .line 119
    aget-char v10, v14, v10

    aput-char v10, v3, v8

    add-int/lit8 v6, v6, 0x4

    and-int/lit8 v8, v9, 0x3f

    .line 120
    aget-char v8, v14, v8

    aput-char v8, v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/16 v0, 0x3d

    if-ne v2, v1, :cond_8

    .line 125
    aget-byte p0, p0, v5

    and-int/lit8 v1, p0, 0x3

    int-to-byte v1, v1

    and-int/lit8 v2, p0, -0x80

    shr-int/lit8 p0, p0, 0x2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    xor-int/lit16 p0, p0, 0xc0

    :goto_5
    int-to-byte p0, p0

    add-int/lit8 v2, v6, 0x1

    .line 132
    sget-object v4, Lcn/nubia/nbaccount/rsa/Base64;->lookUpBase64Alphabet:[C

    aget-char p0, v4, p0

    aput-char p0, v3, v6

    add-int/lit8 p0, v6, 0x2

    shl-int/lit8 v1, v1, 0x4

    .line 133
    aget-char v1, v4, v1

    aput-char v1, v3, v2

    add-int/lit8 v6, v6, 0x3

    .line 134
    aput-char v0, v3, p0

    .line 135
    aput-char v0, v3, v6

    goto :goto_8

    :cond_8
    const/16 v1, 0x10

    if-ne v2, v1, :cond_b

    .line 137
    aget-byte v1, p0, v5

    add-int/lit8 v5, v5, 0x1

    .line 138
    aget-byte p0, p0, v5

    and-int/lit8 v2, p0, 0xf

    int-to-byte v2, v2

    and-int/lit8 v4, v1, 0x3

    int-to-byte v4, v4

    and-int/lit8 v5, v1, -0x80

    shr-int/lit8 v1, v1, 0x2

    if-nez v5, :cond_9

    goto :goto_6

    :cond_9
    xor-int/lit16 v1, v1, 0xc0

    :goto_6
    int-to-byte v1, v1

    and-int/lit8 v5, p0, -0x80

    shr-int/lit8 p0, p0, 0x4

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    xor-int/lit16 p0, p0, 0xf0

    :goto_7
    int-to-byte p0, p0

    add-int/lit8 v5, v6, 0x1

    .line 145
    sget-object v7, Lcn/nubia/nbaccount/rsa/Base64;->lookUpBase64Alphabet:[C

    aget-char v1, v7, v1

    aput-char v1, v3, v6

    add-int/lit8 v1, v6, 0x2

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr p0, v4

    .line 146
    aget-char p0, v7, p0

    aput-char p0, v3, v5

    add-int/lit8 v6, v6, 0x3

    shl-int/lit8 p0, v2, 0x2

    .line 147
    aget-char p0, v7, p0

    aput-char p0, v3, v1

    .line 148
    aput-char v0, v3, v6

    .line 151
    :cond_b
    :goto_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static isData(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 60
    sget-object v0, Lcn/nubia/nbaccount/rsa/Base64;->base64Alphabet:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPad(C)Z
    .locals 1

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWhiteSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

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
.end method

.method private static removeWhiteSpace([C)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 265
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 267
    aget-char v3, p0, v0

    invoke-static {v3}, Lcn/nubia/nbaccount/rsa/Base64;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 268
    aget-char v4, p0, v0

    aput-char v4, p0, v2

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
