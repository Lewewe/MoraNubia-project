.class public final Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;
.super Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;
.source "NeoImageLoader.java"


# static fields
.field private static self:Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;
    .locals 1

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->self()Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getLoader()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public static self()Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;
    .locals 2

    .line 14
    sget-object v0, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->self:Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;

    if-nez v0, :cond_1

    .line 16
    const-class v1, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->self:Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;-><init>()V

    .line 20
    sput-object v0, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->self:Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;

    .line 22
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected getCacheFolderName()Ljava/lang/String;
    .locals 0

    .line 33
    const-string p0, "cachePic"

    return-object p0
.end method

.method protected getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 38
    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 40
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->NONE:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    .line 41
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    const/16 v0, 0x64

    .line 42
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    .line 43
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0
.end method
