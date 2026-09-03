.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2$1;
.super Ljava/lang/Object;
.source "ImageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;->onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$failReason:Ljava/lang/String;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 56
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2$1;->val$uri:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2$1;->val$failReason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2;->val$loadingListener:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2$1;->val$uri:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$2$1;->val$failReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;->onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method
