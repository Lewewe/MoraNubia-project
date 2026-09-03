.class final Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;
.super Ljava/lang/Object;
.source "Md5FileNameGenerator.java"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PoolableDigestContainer"
.end annotation


# instance fields
.field final messageDigest:Ljava/security/MessageDigest;

.field private final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 88
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;->messageDigest:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object p0
.end method
