.class public Lcn/nubia/redmagickyi/util/imageloader/configuration/NeoGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "NeoGlideModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 2

    .line 36
    new-instance p0, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    const-wide/32 v0, 0x2800000

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(J)V

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/GlideBuilder;->setMemoryCache(Lcom/bumptech/glide/load/engine/cache/MemoryCache;)Lcom/bumptech/glide/GlideBuilder;

    .line 37
    new-instance p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache$Factory;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache$Factory;-><init>()V

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;

    return-void
.end method

.method public isManifestParsingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 1

    .line 27
    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 28
    new-instance p1, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressInterceptor;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressInterceptor;-><init>()V

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 29
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    .line 31
    const-class p1, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;-><init>(Lokhttp3/Call$Factory;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    return-void
.end method
