.class Lcn/nubia/accountsdk/http/util/AesFormatDataImpl$Aes128;
.super Ljava/lang/Object;
.source "AesFormatDataImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accountsdk/http/util/AesFormatDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Aes128"
.end annotation


# static fields
.field private static final AES:Lcn/nubia/accountsdk/http/util/AesCbc128;

.field private static final AUTH_INFO_LENGTH:I = 0x10

.field private static final AUTH_SUFFIX_CODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcn/nubia/accountsdk/http/util/AesCbc128;

    invoke-direct {v0}, Lcn/nubia/accountsdk/http/util/AesCbc128;-><init>()V

    sput-object v0, Lcn/nubia/accountsdk/http/util/AesFormatDataImpl$Aes128;->AES:Lcn/nubia/accountsdk/http/util/AesCbc128;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 97
    invoke-static {p1}, Lcn/nubia/accountsdk/http/util/AesFormatDataImpl$Aes128;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {p2}, Lcn/nubia/accountsdk/http/util/AesFormatDataImpl$Aes128;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 100
    :try_start_0
    sget-object v0, Lcn/nubia/accountsdk/http/util/AesFormatDataImpl$Aes128;->AES:Lcn/nubia/accountsdk/http/util/AesCbc128;

    invoke-virtual {v0, p1, p2, p0}, Lcn/nubia/accountsdk/http/util/AesCbc128;->cbcDecrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    const-string p0, ""

    return-object p0
.end method

.method static encode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 86
    invoke-static {p1}, Lcn/nubia/accountsdk/http/util/AesFormatDataImpl$Aes128;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p2}, Lcn/nubia/accountsdk/http/util/AesFormatDataImpl$Aes128;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 89
    :try_start_0
    sget-object v0, Lcn/nubia/accountsdk/http/util/AesFormatDataImpl$Aes128;->AES:Lcn/nubia/accountsdk/http/util/AesCbc128;

    invoke-virtual {v0, p1, p2, p0}, Lcn/nubia/accountsdk/http/util/AesCbc128;->cbcEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const-string p0, ""

    return-object p0
.end method

.method private static formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    .line 110
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-ge v0, v2, :cond_1

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method
