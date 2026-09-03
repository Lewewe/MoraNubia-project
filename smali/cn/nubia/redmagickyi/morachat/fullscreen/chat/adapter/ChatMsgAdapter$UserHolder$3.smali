.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$3;
.super Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;
.source "ChatMsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->bind(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private loadRunnable:Ljava/lang/Runnable;

.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$3;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 331
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$3;->loadRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_0

    .line 332
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$3;->loadRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 334
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p3

    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$3$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$3$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$3;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$3;->loadRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
