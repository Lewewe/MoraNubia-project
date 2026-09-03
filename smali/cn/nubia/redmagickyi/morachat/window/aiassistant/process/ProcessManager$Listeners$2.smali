.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiAgentSettingsChanged(Ljava/lang/String;)V
    .locals 7

    .line 298
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAiAgentSettingsChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->isAccompanyEnable()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    move-result-object v0

    new-instance v3, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    sget-object v4, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;->TYPE_TIPS:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object v5, v5, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    move-result-object v5

    sget v6, Lcn/nubia/redmagickyi/main/R$string;->morachat_window_accompany_tips:I

    invoke-virtual {v5, v6}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->startWithCheck(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 305
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_FULLSCREEN:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->start(Z)Z

    goto/16 :goto_0

    .line 308
    :cond_2
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_RESPONSE_DURATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->start(Z)Z

    goto/16 :goto_0

    .line 311
    :cond_3
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 313
    :cond_4
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 315
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;->onMicStateChanged()V

    goto :goto_0

    .line 316
    :cond_5
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 318
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;->onMicStateChanged()V

    goto :goto_0

    .line 319
    :cond_6
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 321
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;->onMicStateChanged()V

    goto :goto_0

    .line 322
    :cond_7
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI1_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 324
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;->onMicStateChanged()V

    goto :goto_0

    .line 325
    :cond_8
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 327
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;->onMicStateChanged()V

    goto :goto_0

    .line 328
    :cond_9
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI2_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 330
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$1300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/util/RecordingListener$Listener;->onMicStateChanged()V

    .line 332
    :cond_a
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->onAiAgentSettingsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onCloseSystemChanged(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)V
    .locals 3

    .line 289
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCloseSystemChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->DREAM:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;->LOCK:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;

    if-ne p1, v0, :cond_1

    .line 292
    :cond_0
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->onScreenStatusChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDigitalHumanSettingsChanged(Ljava/lang/String;)V
    .locals 3

    .line 337
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDigitalHumanSettingsChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/database/Property;->DIGITAL_HUMAN_SKIN_ID:Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;->equals(Ljava/lang/String;)Z

    .line 342
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->onDigitalHumanSettingsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onFullScreenAccompanyLaunch(Z)V
    .locals 3

    .line 378
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFullScreenAccompanyLaunch, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 380
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->hide()V

    goto :goto_0

    .line 382
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->show()V

    .line 383
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;->access$2600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;)V

    .line 384
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->start(Z)Z

    :goto_0
    return-void
.end method

.method public onScreenStatusChanged(Ljava/lang/String;)V
    .locals 3

    .line 264
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScreenStatusChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$2102(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 280
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;->handleMessage(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->access$2102(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 274
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;Z)V

    .line 275
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->hide()V

    :goto_0
    return-void
.end method

.method public onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 347
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWakeupSettingsChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "VOICE_ASSISTANT_MORA_VOICE_WAKEUP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cn.nubia.redmagickyi.action.OLA_VOICE_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 351
    :cond_0
    const-string p1, "type"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isTileWakeup(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;

    move-result-object p0

    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    sget-object p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO_MENU:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO_MENU:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO_MENU:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;->handleMessage(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->isLowVoiceWakeup(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 355
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/AccompanyManager;->isFullScreenAccompanyRunning()Z

    move-result p1

    if-nez p1, :cond_3

    .line 357
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;

    move-result-object p0

    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    sget-object p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO_MENU:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO_MENU:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO_MENU:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;->handleMessage(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    goto :goto_0

    .line 366
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Wakeup;->handleMessage(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    :cond_3
    :goto_0
    return-void
.end method
