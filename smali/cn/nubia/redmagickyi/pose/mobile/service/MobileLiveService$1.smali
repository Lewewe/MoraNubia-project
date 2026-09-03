.class Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;
.super Ljava/lang/Object;
.source "MobileLiveService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 249
    const-string v0, "begin destroy egl"

    const-string v1, "MobileLiveService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->close()V

    .line 252
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$002(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;)Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    .line 254
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$100(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$100(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->close()V

    .line 256
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$102(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;)Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    .line 258
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$200(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcom/google/mediapipe/glutil/EglManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$200(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcom/google/mediapipe/glutil/EglManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/glutil/EglManager;->release()V

    .line 260
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$202(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;Lcom/google/mediapipe/glutil/EglManager;)Lcom/google/mediapipe/glutil/EglManager;

    .line 262
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$300(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/util/SensorHelper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$300(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/util/SensorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/SensorHelper;->disable()V

    .line 264
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$302(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;Lcn/nubia/redmagickyi/util/SensorHelper;)Lcn/nubia/redmagickyi/util/SensorHelper;

    .line 266
    :cond_3
    const-string p0, "end destroy egl"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
