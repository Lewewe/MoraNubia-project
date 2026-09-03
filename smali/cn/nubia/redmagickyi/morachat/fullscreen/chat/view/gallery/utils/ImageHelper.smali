.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper;
.super Ljava/lang/Object;
.source "ImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$RetrieveCallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static imageIsInFileCached(Ljava/lang/String;)Z
    .locals 6

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public static loadImage(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;)V
    .locals 2

    const/4 v0, 0x1

    .line 49
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;

    invoke-direct {v1, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;)V

    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->loadImage(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;)V

    return-void
.end method

.method public static retrieveImageWhRadioFromMemoryCache(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$RetrieveCallBack;)V
    .locals 1

    const/4 v0, 0x1

    .line 18
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$1;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$RetrieveCallBack;)V

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper;->loadImage(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;)V

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 36
    invoke-interface {p1, v0, p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$RetrieveCallBack;->onRetrieveImageWhRatio(ZFZ)V

    :goto_0
    return-void
.end method
