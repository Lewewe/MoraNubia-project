.class public Lcom/zte/aigc/utils/CryptoManage;
.super Ljava/lang/Object;
.source "CryptoManage.java"


# static fields
.field private static final AES_IV:Ljava/lang/String; = "abcdefgh12345678"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aesDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 21
    :cond_0
    const-string v0, "abcdefgh12345678"

    invoke-static {p0, v0, p1}, Lcom/zte/aigc/utils/Aes;->cbc128Decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "abcdefgh12345678"

    invoke-static {p0, v0, p1}, Lcom/zte/aigc/utils/Aes;->cbc128Encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
