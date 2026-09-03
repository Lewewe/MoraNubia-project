.class public Lcn/nubia/redmagickyi/network/okhttp/utils/EncrUtil;
.super Ljava/lang/Object;
.source "EncrUtil.java"


# static fields
.field private static final RADIX:I = 0x10

.field private static final SEED:Ljava/lang/String; = "0123456789"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 26
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 32
    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "0123456789"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 34
    :try_start_0
    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 36
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static final encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 13
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 19
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    .line 20
    new-instance p0, Ljava/math/BigInteger;

    const-string v1, "0123456789"

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x10

    .line 22
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
