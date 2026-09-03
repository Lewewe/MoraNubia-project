.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;
.super Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;
.source "ImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper;->loadImage(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private loadRunnable:Ljava/lang/Runnable;

.field final synthetic val$loadingListener:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;->val$loadingListener:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;->loadRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;->loadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;->loadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
