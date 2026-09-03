.class Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$2;
.super Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;
.source "MobileLiveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->showFace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;Landroid/content/Context;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 331
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$2;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 335
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$2;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$400(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    return-void
.end method

.method public switchCamera()V
    .locals 3

    .line 340
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$2;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$500(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;JZ)V

    return-void
.end method
