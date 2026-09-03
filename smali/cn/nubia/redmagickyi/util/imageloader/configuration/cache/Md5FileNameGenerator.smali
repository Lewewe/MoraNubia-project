.class public Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;
.super Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
.source "Md5FileNameGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;
    }
.end annotation


# static fields
.field private static isHockSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final digestPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/LruCache<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->isHockSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;-><init>()V

    .line 22
    new-instance v0, Lcom/bumptech/glide/util/LruCache;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/util/LruCache;-><init>(J)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    .line 23
    new-instance v0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$1;-><init>(Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->digestPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private calculateHexStringDigest(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->digestPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;

    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;

    .line 73
    :try_start_0
    iget-object v1, v0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;->messageDigest:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 74
    new-instance p1, Ljava/math/BigInteger;

    iget-object v1, v0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator$PoolableDigestContainer;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    const/16 v1, 0x24

    .line 75
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->digestPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->digestPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 78
    throw p1
.end method

.method public static getSafeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 54
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->isHockSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 57
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x24

    .line 58
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 62
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->sha256BytesToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method


# virtual methods
.method public getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    .locals 3

    .line 40
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->calculateHexStringDigest(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    monitor-enter v2

    .line 47
    :try_start_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {p0, p1, v1}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 42
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public setHockSuccess()V
    .locals 1

    .line 35
    sget-object p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/Md5FileNameGenerator;->isHockSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
