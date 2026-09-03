.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1;
.super Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->getBackground(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1;->val$callback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    .line 47
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->AIAGENT_BACKGROUND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;Ljava/lang/String;)Z

    .line 48
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    new-instance p2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 54
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    new-instance p2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1$2;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 62
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object p3

    .line 63
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->access$100()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 64
    aget v3, p3, v1

    goto :goto_0

    :cond_2
    aget v3, p3, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 65
    aget p3, p3, v2

    goto :goto_1

    :cond_3
    aget p3, p3, v1

    .line 66
    :goto_1
    invoke-static {p2, v3, p3}, Lcn/nubia/redmagickyi/util/BitmapUtils;->centerCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    invoke-static {p2, p3, v3}, Lcn/nubia/redmagickyi/util/BitmapUtils;->centerCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eq v0, p2, :cond_4

    if-eq p3, p2, :cond_4

    .line 69
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 72
    :cond_4
    new-instance p2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    invoke-direct {p2, p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->access$202(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    .line 73
    new-instance p2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    invoke-direct {p2, p1, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->access$302(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    .line 74
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    new-instance p2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1$3;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
