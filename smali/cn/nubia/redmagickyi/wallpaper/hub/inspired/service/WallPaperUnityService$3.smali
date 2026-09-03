.class Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;
.super Landroid/os/Handler;
.source "WallPaperUnityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;
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

    .line 283
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 286
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 287
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 303
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FLOAT_VIEW_SHOW motion\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallPaperUnityService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getTextByVioceId(I)Ljava/lang/String;

    move-result-object p1

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FLOAT_VIEW_SHOW TEXT\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1100(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcn/nubia/redmagickyi/care/utils/FloatView;

    move-result-object v0

    if-nez v0, :cond_4

    .line 312
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    new-instance v1, Lcn/nubia/redmagickyi/care/utils/FloatView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/care/utils/FloatView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1102(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Lcn/nubia/redmagickyi/care/utils/FloatView;)Lcn/nubia/redmagickyi/care/utils/FloatView;

    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$400(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 316
    const-string p0, "!getDatabasePath(DATABASE_NAME).exists() onAudioPlayBegin:"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 319
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    .line 320
    const-string v0, "open_bubble"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    const-string v0, "bubble_mute"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    sget-object v0, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->MUTE_VOLUM_STATUS:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    const-string v0, "no Settings.canDrawOverlays"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_4
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1100(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcn/nubia/redmagickyi/care/utils/FloatView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 326
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1100(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcn/nubia/redmagickyi/care/utils/FloatView;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->ShowFloatView(Ljava/lang/String;)V

    goto :goto_1

    .line 330
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object p1, p1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    if-eqz p1, :cond_6

    .line 331
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    iget-object p1, p1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->StopCare()V

    .line 333
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1100(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcn/nubia/redmagickyi/care/utils/FloatView;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 334
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1100(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcn/nubia/redmagickyi/care/utils/FloatView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->HideFloatView()V

    .line 335
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1102(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Lcn/nubia/redmagickyi/care/utils/FloatView;)Lcn/nubia/redmagickyi/care/utils/FloatView;

    goto :goto_1

    .line 299
    :cond_7
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    const-string v0, "Perform FJT_SHOW"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 300
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$1000(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V

    goto :goto_1

    .line 291
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    const-string v0, "Unity Engine launch timeout, schedule kill my process"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 292
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$802(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 293
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$900(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcn/nubia/redmagickyi/util/CPUBoostManager;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 294
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->access$900(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcn/nubia/redmagickyi/util/CPUBoostManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/CPUBoostManager;->releaseCPUBoost()V

    .line 296
    :cond_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    :cond_a
    :goto_1
    return-void
.end method
