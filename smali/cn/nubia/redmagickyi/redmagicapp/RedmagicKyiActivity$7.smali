.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;
.super Ljava/lang/Object;
.source "RedmagicKyiActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->parseTouchMotion(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

.field final synthetic val$effectManager:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

.field final synthetic val$is2DSkin:Z


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;ZLcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 706
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;->val$is2DSkin:Z

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;->val$effectManager:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPlayBegin(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 709
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;->val$is2DSkin:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tou_003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 710
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->access$200(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_0

    .line 711
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->access$200(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    return-void
.end method

.method public onAudioPlayComplete(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 736
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;->val$effectManager:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->play(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$OnPlayCallback;)V

    .line 750
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->unregistAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V

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
    .locals 1

    .line 723
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->access$200(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-gtz p1, :cond_0

    .line 724
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->access$200(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 725
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->unregistAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V

    :cond_0
    return-void
.end method
