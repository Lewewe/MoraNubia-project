.class Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1$1;
.super Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;
.source "ChatRoomImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 342
    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    invoke-static {v0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->access$1000(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 345
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->val$finalIsUsed:Z

    if-nez v0, :cond_1

    .line 346
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->val$listener:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;->onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
