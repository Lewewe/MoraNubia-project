.class Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$4;
.super Ljava/lang/Object;
.source "WallPaperUnityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->StartDelayedCareTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 648
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$4;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 651
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$4;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$600(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Z

    move-result v0

    const-string v1, "WallPaperUnityService"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$4;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$500(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$4;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->ScreenUnLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DESK_IS_VISIBEL start care:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$4;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$500(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$4;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->StartCare()V

    goto :goto_0

    .line 655
    :cond_0
    const-string p0, "stop care \uff01\uff01\uff01"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
