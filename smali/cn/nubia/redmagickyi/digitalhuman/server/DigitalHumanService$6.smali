.class Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$6;
.super Ljava/lang/Object;
.source "DigitalHumanService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 653
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$6;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPlayBegin(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 2

    .line 656
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAudioPlayBegin action is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionStateMachine$Care;->playing()V

    .line 659
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    .line 661
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getMotionID()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->searchMotion(I)Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 662
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->isEmptyWords()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 665
    :cond_0
    const-string p1, ""

    .line 667
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$6;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$6;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->updateMuteState()V

    .line 670
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$6;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->Server_From_Unity:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->startSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onAudioPlayComplete(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    return-void
.end method

.method public onAudioPlayPause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    return-void
.end method

.method public onAudioPlayResume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    return-void
.end method

.method public onAudioPlayStop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 2

    .line 680
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAudioPlayStop action is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getAction()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DigitalHumanService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionStateMachine$Care;->isPlaying()Z

    .line 683
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionStateMachine$Care;->idel()V

    .line 684
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$6;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 686
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$6;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    sget-object p1, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->Server_From_Unity:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->stopSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V

    :cond_0
    return-void
.end method
