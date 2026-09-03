.class Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6$1;
.super Ljava/lang/Object;
.source "MobileLiveService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1067
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6$1;->this$1:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1070
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6$1;->this$1:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;

    iget-object v0, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->hideMenu()V

    .line 1071
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6$1;->this$1:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;

    iget-object v0, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$400(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    .line 1072
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6$1;->this$1:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->stopSelf()V

    return-void
.end method
