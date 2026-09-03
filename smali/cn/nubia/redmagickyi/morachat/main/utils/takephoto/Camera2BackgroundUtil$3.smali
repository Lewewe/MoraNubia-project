.class Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$3;
.super Ljava/lang/Object;
.source "Camera2BackgroundUtil.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->setupImageReader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$3;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 187
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$3;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$402(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;I)I

    .line 190
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$3;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$502(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;I)I

    .line 191
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$3;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$600(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Landroid/media/Image;)V

    .line 192
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_0
    return-void
.end method
