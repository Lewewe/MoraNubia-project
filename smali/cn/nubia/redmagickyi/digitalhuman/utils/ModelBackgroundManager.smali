.class public abstract Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;
.super Ljava/lang/Object;
.source "ModelBackgroundManager.java"


# instance fields
.field private backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundColor:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundColor:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static hasAlphaChannel(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 119
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    .line 120
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSupportedBackground()Z
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->getScene()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private recycleBackgroundBitmap()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private recycleBackgroundBitmapString()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->isSupportedBackground()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getBackgroundColor()I
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundColor:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public abstract getScene()I
.end method

.method public release()V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->recycleBackgroundBitmap()V

    .line 136
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->recycleBackgroundBitmapString()V

    return-void
.end method

.method public declared-synchronized setBackgroundBitmap(Landroid/graphics/Bitmap;)Z
    .locals 5

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->release()V

    const/4 v0, 0x1

    .line 85
    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/16 v1, 0x3f7

    if-eqz p1, :cond_9

    .line 86
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->isSupportedBackground()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    goto/16 :goto_9

    .line 93
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 94
    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->hasAlphaChannel(Landroid/graphics/Bitmap;)Z

    move-result p1

    .line 95
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_2

    :cond_3
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_2
    if-eqz p1, :cond_4

    const/16 p1, 0x64

    goto :goto_3

    :cond_4
    const/16 p1, 0xa

    :goto_3
    invoke-static {v3, v4, p1}, Lcn/nubia/redmagickyi/util/BitmapUtils;->bitmaptoString(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :cond_5
    :try_start_2
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;-><init>()V

    .line 101
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setMsgID(I)V

    .line 102
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, ""

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_4
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setImage(Ljava/lang/String;)V

    .line 103
    :goto_5
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_a

    :catchall_0
    move-exception p1

    goto :goto_7

    .line 98
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :try_start_4
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;-><init>()V

    .line 101
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setMsgID(I)V

    .line 102
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, ""

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_6
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setImage(Ljava/lang/String;)V

    goto :goto_5

    .line 100
    :goto_7
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;-><init>()V

    .line 101
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setMsgID(I)V

    .line 102
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, ""

    goto :goto_8

    :cond_8
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_8
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setImage(Ljava/lang/String;)V

    .line 103
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 104
    throw p1

    .line 87
    :cond_9
    :goto_9
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;-><init>()V

    .line 88
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setMsgID(I)V

    .line 89
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setImage(Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 106
    :goto_a
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBackgroundColor(I)Z
    .locals 8

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundColor:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->release()V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 50
    :goto_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundColor:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/16 v3, 0x3f7

    if-eqz p1, :cond_b

    .line 51
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->isSupportedBackground()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_1

    goto/16 :goto_9

    .line 58
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 59
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->recycleBackgroundBitmap()V

    .line 60
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v4

    .line 61
    iget-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    aget v6, v4, v2

    aget v7, v4, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    aget v7, v4, v2

    aget v4, v4, v1

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p1, v6, v4}, Lcn/nubia/redmagickyi/util/BitmapUtils;->colorToBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 63
    :cond_3
    iget-object v4, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    .line 64
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 65
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_2

    :cond_5
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_2
    if-eqz v1, :cond_6

    const/16 v1, 0x64

    goto :goto_3

    :cond_6
    const/16 v1, 0xa

    :goto_3
    invoke-static {v2, v4, v1}, Lcn/nubia/redmagickyi/util/BitmapUtils;->bitmaptoString(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :cond_7
    :try_start_2
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;-><init>()V

    .line 71
    invoke-virtual {p1, v3}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setMsgID(I)V

    .line 72
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, ""

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_4
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setImage(Ljava/lang/String;)V

    .line 73
    :goto_5
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_a

    :catchall_0
    move-exception p1

    goto :goto_7

    .line 68
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :try_start_4
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;-><init>()V

    .line 71
    invoke-virtual {p1, v3}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setMsgID(I)V

    .line 72
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, ""

    goto :goto_6

    :cond_9
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_6
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setImage(Ljava/lang/String;)V

    goto :goto_5

    .line 70
    :goto_7
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;-><init>()V

    .line 71
    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setMsgID(I)V

    .line 72
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, ""

    goto :goto_8

    :cond_a
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->backgroundBitmapString:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_8
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setImage(Ljava/lang/String;)V

    .line 73
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 74
    throw p1

    .line 52
    :cond_b
    :goto_9
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;-><init>()V

    .line 53
    invoke-virtual {p1, v3}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setMsgID(I)V

    .line 54
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setImage(Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    :goto_a
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
