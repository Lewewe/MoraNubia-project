.class Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;
.super Landroid/os/Handler;
.source "MobileLiveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;
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

    .line 1046
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1049
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 p1, 0x2

    const-string v2, "image_trans"

    const/4 v3, 0x3

    if-eq v0, p1, :cond_4

    const/4 p1, 0x4

    if-eq v0, v3, :cond_1

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 1099
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2400(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->update()V

    .line 1100
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1101
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->update()V

    goto/16 :goto_2

    .line 1087
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2100(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x1f4

    .line 1088
    invoke-virtual {p0, v3, v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 1090
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2500(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2400(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1091
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2400(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateAlpha(I)V

    .line 1093
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1094
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    move-result-object p0

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateAlpha(I)V

    goto/16 :goto_2

    .line 1082
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2100(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1083
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2400(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateAlpha(I)V

    .line 1084
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2502(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;Z)Z

    goto/16 :goto_2

    .line 1051
    :cond_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x0

    if-ne p1, v1, :cond_6

    move p1, v1

    goto :goto_0

    :cond_6
    move p1, v0

    .line 1052
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handle recreate, isNeedShowFaceWindow = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MobileLiveService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2300(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    .line 1054
    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.action.redmagickyi.pose.mobile.recreate"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 1055
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1056
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    const-string v4, "pref_mobile_live_temp_extra"

    invoke-virtual {v3, v4, v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1057
    const-string v3, "EXTRA_NEED_SHOW_FACE_WINDOW"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1058
    const-string p1, "EXTRA_IS_LIVE_RELAUNCHING"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1059
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1060
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 1061
    const-string v1, "EXTRA_FACE_WINDOW_POSITION_X"

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1062
    const-string v1, "EXTRA_FACE_WINDOW_POSITION_Y"

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1064
    :cond_7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1065
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1066
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 1076
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->hideMenu()V

    .line 1077
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$400(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    .line 1078
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->stopSelf()V

    goto :goto_2

    .line 1067
    :cond_9
    :goto_1
    new-instance p1, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6$1;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    :goto_2
    return-void
.end method
