.class Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$2;
.super Landroid/os/Handler;
.source "WallPaperPetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 157
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    const-string v0, "Unity Engine launch timeout, schedule kill my process"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->Log(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$002(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 163
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$100(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcn/nubia/redmagickyi/util/CPUBoostManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 164
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$2;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->access$100(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcn/nubia/redmagickyi/util/CPUBoostManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/CPUBoostManager;->releaseCPUBoost()V

    .line 166
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    :goto_0
    return-void
.end method
