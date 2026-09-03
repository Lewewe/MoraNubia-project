.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiAgentSettingsChanged(Ljava/lang/String;)V
    .locals 7

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAiAgentSettingsChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->isAccompanyEnable()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object v0

    new-instance v3, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    sget-object v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;->TYPE_TIPS:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v5, v5, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object v5

    sget v6, Lcn/nubia/redmagickyi/main/R$string;->morachat_window_accompany_tips:I

    invoke-virtual {v5, v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->startWithCheck(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 287
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_FULLSCREEN:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->start(Z)Z

    goto/16 :goto_0

    .line 290
    :cond_2
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_RESPONSE_DURATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->start(Z)Z

    goto/16 :goto_0

    .line 293
    :cond_3
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 295
    :cond_4
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;->onMicStateChanged()V

    goto :goto_0

    .line 298
    :cond_5
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 300
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;->onMicStateChanged()V

    goto :goto_0

    .line 301
    :cond_6
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 303
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;->onMicStateChanged()V

    goto :goto_0

    .line 304
    :cond_7
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI1_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 306
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;->onMicStateChanged()V

    goto :goto_0

    .line 307
    :cond_8
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 309
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;->onMicStateChanged()V

    goto :goto_0

    .line 310
    :cond_9
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI2_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 312
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$1400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;->onMicStateChanged()V

    .line 314
    :cond_a
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->onAiAgentSettingsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onCloseSystemChanged(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)V
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCloseSystemChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->DREAM:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->LOCK:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    if-ne p1, v0, :cond_1

    .line 274
    :cond_0
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->onScreenStatusChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDigitalHumanSettingsChanged(Ljava/lang/String;)V
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDigitalHumanSettingsChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/database/Property;->DIGITAL_HUMAN_SKIN_ID:Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->changeUnitySkin()V

    .line 325
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->onDigitalHumanSettingsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onFullScreenAccompanyLaunch(Z)V
    .locals 2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFullScreenAccompanyLaunch, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 366
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->hide()V

    goto :goto_0

    .line 368
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->show()V

    .line 369
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->access$2600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;)V

    .line 370
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->start(Z)Z

    :goto_0
    return-void
.end method

.method public onScreenStatusChanged(Ljava/lang/String;)V
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onScreenStatusChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$2002(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 262
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;->handleMessage(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->access$2002(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 256
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V

    .line 257
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->hide()V

    :goto_0
    return-void
.end method

.method public onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWakeupSettingsChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "cn.nubia.redmagickyi.action.OLA_VOICE_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "VOICE_ASSISTANT_MORA_VOICE_WAKEUP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "cn.nubia.redmagickyi.action.QUIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz p2, :cond_3

    .line 333
    const-string p1, "type"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isGameAgentWakeup(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 336
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    move-result-object p0

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->fromJsonBundle(Landroid/os/Bundle;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;

    move-result-object p1

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;->ContentProvider:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->handleGameAssistRemoteResponse(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 339
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 343
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;

    move-result-object p0

    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    sget-object p2, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;->handleMessage(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    goto :goto_1

    .line 352
    :pswitch_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;->handleMessage(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    goto :goto_1

    .line 348
    :pswitch_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->access$2500(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79003646 -> :sswitch_2
        -0xdee97b4 -> :sswitch_1
        0x2e3a520c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
