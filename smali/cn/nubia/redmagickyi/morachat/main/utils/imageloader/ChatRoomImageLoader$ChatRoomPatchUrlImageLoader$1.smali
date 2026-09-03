.class Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;
.super Ljava/lang/Object;
.source "ChatRoomImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->loadImage(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

.field final synthetic val$cachedImage:Ljava/io/File;

.field final synthetic val$finalIsUsed:Z

.field final synthetic val$listener:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;Ljava/io/File;Ljava/lang/String;ZLcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->val$cachedImage:Ljava/io/File;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    iput-boolean p4, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->val$finalIsUsed:Z

    iput-object p5, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->val$listener:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 325
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->val$cachedImage:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 328
    :try_start_0
    invoke-static {v1}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 332
    :goto_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->access$1000(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 334
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->val$finalIsUsed:Z

    if-nez v2, :cond_1

    .line 335
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->val$listener:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    invoke-virtual {v2, p0, v1, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 339
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$900(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    new-instance v2, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->loadImage(Ljava/lang/String;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V

    :cond_1
    :goto_1
    return-void
.end method
