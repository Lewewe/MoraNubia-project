.class public Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
.super Lcom/bumptech/glide/RequestBuilder;
.source "GlideRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/RequestBuilder<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/RequestBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/bumptech/glide/request/RequestListener;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 494
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 473
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public autoClone()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 466
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->autoClone()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public centerCrop()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 313
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->centerCrop()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public centerInside()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 349
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->centerInside()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public circleCrop()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 367
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->circleCrop()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 607
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->clone()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->clone()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->clone()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public decode(Ljava/lang/Class;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 232
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->decode(Ljava/lang/Class;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public disallowHardwareConfig()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 277
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->disallowHardwareConfig()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public dontAnimate()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 450
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->dontAnimate()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public dontTransform()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 441
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->dontTransform()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 286
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 241
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public encodeQuality(I)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 250
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->encodeQuality(I)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public error(I)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 169
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 160
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public error(Lcom/bumptech/glide/RequestBuilder;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 500
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public error(Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 507
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->error(Lcom/bumptech/glide/RequestBuilder;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic error(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->error(Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->error(I)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->error(Landroid/graphics/drawable/Drawable;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public fallback(I)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 151
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 142
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->fallback(I)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->fallback(Landroid/graphics/drawable/Drawable;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public fitCenter()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 331
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->fitCenter()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 268
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public frame(J)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 259
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->frame(J)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method protected getDownloadOnlyRequest()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    sget-object p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->getDownloadOnlyRequest()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 487
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public load(Landroid/graphics/Bitmap;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 552
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 559
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public load(Landroid/net/Uri;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 573
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public load(Ljava/io/File;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 580
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public load(Ljava/lang/Integer;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 587
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public load(Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 545
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public load(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 566
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public load(Ljava/net/URL;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 594
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public load([B)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 601
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Landroid/graphics/Bitmap;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Landroid/graphics/drawable/Drawable;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Landroid/net/Uri;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Ljava/io/File;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Ljava/lang/Integer;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Ljava/net/URL;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load([B)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Landroid/graphics/Bitmap;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Landroid/graphics/drawable/Drawable;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Landroid/net/Uri;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Ljava/io/File;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Ljava/lang/Integer;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load(Ljava/net/URL;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->load([B)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public lock()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 458
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic lock()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->lock()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public onlyRetrieveFromCache(Z)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 97
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->onlyRetrieveFromCache(Z)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public optionalCenterCrop()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 304
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->optionalCenterCrop()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public optionalCenterInside()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 340
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->optionalCenterInside()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public optionalCircleCrop()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 358
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->optionalCircleCrop()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public optionalFitCenter()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 322
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->optionalFitCenter()Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 412
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TY;>;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 422
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public override(I)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 205
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public override(II)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 196
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->override(I)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->override(II)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public placeholder(I)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 133
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 124
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->placeholder(I)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->placeholder(Landroid/graphics/drawable/Drawable;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 115
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->priority(Lcom/bumptech/glide/Priority;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TY;>;TY;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 223
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 214
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public sizeMultiplier(F)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 70
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->sizeMultiplier(F)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public skipMemoryCache(Z)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 187
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->skipMemoryCache(Z)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public theme(Landroid/content/res/Resources$Theme;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 178
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->theme(Landroid/content/res/Resources$Theme;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public thumbnail(F)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 538
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 514
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public thumbnail(Ljava/util/List;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;>;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 530
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Ljava/util/List;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public final varargs thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 523
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->thumbnail(F)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thumbnail(Ljava/util/List;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->thumbnail(Ljava/util/List;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public timeout(I)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 295
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->timeout(I)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 376
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TY;>;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 432
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 389
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->transform(Lcom/bumptech/glide/load/Transformation;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->transform([Lcom/bumptech/glide/load/Transformation;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public transition(Lcom/bumptech/glide/TransitionOptions;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 480
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public useAnimationPool(Z)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 88
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->useAnimationPool(Z)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public useUnlimitedSourceGeneratorsPool(Z)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 79
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;->useUnlimitedSourceGeneratorsPool(Z)Lcn/nubia/redmagickyi/util/imageloader/configuration/GlideRequest;

    move-result-object p0

    return-object p0
.end method
