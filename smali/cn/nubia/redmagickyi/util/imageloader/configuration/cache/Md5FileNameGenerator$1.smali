.class Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$1;
.super Ljava/lang/Object;
.source "Md5FileNameGenerator.java"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<",
        "Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$1;->this$0:Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;
    .locals 1

    .line 27
    :try_start_0
    new-instance p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;-><init>(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$1;->create()Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;

    move-result-object p0

    return-object p0
.end method
