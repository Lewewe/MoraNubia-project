.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1$1;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1;->onUnityAudioActionReady(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1;

.field final synthetic val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1;Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1$1;->val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1$1;->val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1$1;->val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getMotionID()I

    move-result v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->searchMotion(I)Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->isStopAudioPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->createStopAudioPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 114
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1;

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->stopSpeaking()V

    .line 115
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1;

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->stopWords()V

    .line 116
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    move-result-object p0

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    sget-object v3, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_UNITY:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->UNITY:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->UNITY:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result v4

    invoke-direct {v2, v3, v0, v1, v4}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V

    return-void
.end method
