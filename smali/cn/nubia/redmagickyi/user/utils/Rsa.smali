.class public Lcn/nubia/redmagickyi/user/utils/Rsa;
.super Ljava/lang/Object;
.source "Rsa.java"


# static fields
.field private static final INSTANCE:Lcn/nubia/redmagickyi/user/utils/Rsa;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private keyGen:Ljava/security/KeyPairGenerator;

.field private keyPair:Ljava/security/KeyPair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcn/nubia/redmagickyi/user/utils/Rsa;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/user/utils/Rsa;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/user/utils/Rsa;->INSTANCE:Lcn/nubia/redmagickyi/user/utils/Rsa;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/utils/Rsa;->keyGen:Ljava/security/KeyPairGenerator;

    const/16 v1, 0x400

    .line 30
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 31
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/utils/Rsa;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/utils/Rsa;->keyPair:Ljava/security/KeyPair;

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/utils/Rsa;->keyGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/utils/Rsa;->keyPair:Ljava/security/KeyPair;

    .line 34
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/user/utils/Rsa;->saveKeyPair(Ljava/security/KeyPair;)V

    .line 36
    :cond_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/utils/Rsa;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private RSADecrypt([BLjava/security/KeyPair;Ljavax/crypto/Cipher;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x2

    .line 119
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 120
    invoke-virtual {p3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 121
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method private RSAEncrypt(Ljava/lang/String;Ljava/security/KeyPair;Ljavax/crypto/Cipher;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    const-string p0, "UTF8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x1

    .line 113
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 114
    invoke-virtual {p3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/user/utils/Rsa;
    .locals 1

    .line 45
    sget-object v0, Lcn/nubia/redmagickyi/user/utils/Rsa;->INSTANCE:Lcn/nubia/redmagickyi/user/utils/Rsa;

    return-object v0
.end method

.method private getKeyPair()Ljava/security/KeyPair;
    .locals 3

    const/4 p0, 0x0

    .line 68
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pws_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    const-string v1, "keypair"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 73
    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 74
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 75
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    check-cast v0, Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method private saveKeyPair(Ljava/security/KeyPair;)V
    .locals 2

    .line 50
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 52
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 53
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 54
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pws_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 56
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 57
    const-string v0, "keypair"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/utils/Rsa;->keyPair:Ljava/security/KeyPair;

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/utils/Rsa;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/user/utils/Rsa;->RSADecrypt([BLjava/security/KeyPair;Ljavax/crypto/Cipher;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 90
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/utils/Rsa;->keyPair:Ljava/security/KeyPair;

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/utils/Rsa;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/user/utils/Rsa;->RSAEncrypt(Ljava/lang/String;Ljava/security/KeyPair;Ljavax/crypto/Cipher;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method
