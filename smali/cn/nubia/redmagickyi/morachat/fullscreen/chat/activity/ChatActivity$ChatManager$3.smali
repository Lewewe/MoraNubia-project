.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$3;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/zte/oss/entry/UploadFile$FileGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->startChat(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1444
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$3;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 p0, 0x0

    .line 1448
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->loadImageAsync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1449
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1450
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
