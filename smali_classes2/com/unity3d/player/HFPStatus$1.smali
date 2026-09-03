.class Lcom/unity3d/player/HFPStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "HFPStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/HFPStatus;->requestHFPStat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/HFPStatus;


# direct methods
.method constructor <init>(Lcom/unity3d/player/HFPStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->this$0:Lcom/unity3d/player/HFPStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 40
    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->this$0:Lcom/unity3d/player/HFPStatus;

    invoke-static {p1}, Lcom/unity3d/player/HFPStatus;->access$200(Lcom/unity3d/player/HFPStatus;)Lcom/unity3d/player/HFPStatus$a1;

    move-result-object p1

    sget-object v0, Lcom/unity3d/player/HFPStatus$a1;->b:Lcom/unity3d/player/HFPStatus$a1;

    if-ne p1, v0, :cond_1

    .line 61
    iget-object p0, p0, Lcom/unity3d/player/HFPStatus$1;->this$0:Lcom/unity3d/player/HFPStatus;

    invoke-static {p0, p2}, Lcom/unity3d/player/HFPStatus;->access$002(Lcom/unity3d/player/HFPStatus;Z)Z

    return-void

    .line 64
    :cond_1
    iget-object p0, p0, Lcom/unity3d/player/HFPStatus$1;->this$0:Lcom/unity3d/player/HFPStatus;

    sget-object p1, Lcom/unity3d/player/HFPStatus$a1;->c:Lcom/unity3d/player/HFPStatus$a1;

    invoke-static {p0, p1}, Lcom/unity3d/player/HFPStatus;->access$202(Lcom/unity3d/player/HFPStatus;Lcom/unity3d/player/HFPStatus$a1;)Lcom/unity3d/player/HFPStatus$a1;

    :goto_0
    return-void

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->this$0:Lcom/unity3d/player/HFPStatus;

    sget-object p2, Lcom/unity3d/player/HFPStatus$a1;->b:Lcom/unity3d/player/HFPStatus$a1;

    invoke-static {p1, p2}, Lcom/unity3d/player/HFPStatus;->access$202(Lcom/unity3d/player/HFPStatus;Lcom/unity3d/player/HFPStatus$a1;)Lcom/unity3d/player/HFPStatus$a1;

    .line 52
    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->this$0:Lcom/unity3d/player/HFPStatus;

    invoke-static {p1}, Lcom/unity3d/player/HFPStatus;->access$000(Lcom/unity3d/player/HFPStatus;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 53
    iget-object p0, p0, Lcom/unity3d/player/HFPStatus$1;->this$0:Lcom/unity3d/player/HFPStatus;

    invoke-static {p0}, Lcom/unity3d/player/HFPStatus;->access$100(Lcom/unity3d/player/HFPStatus;)Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    return-void

    .line 57
    :cond_3
    iget-object p0, p0, Lcom/unity3d/player/HFPStatus$1;->this$0:Lcom/unity3d/player/HFPStatus;

    invoke-static {p0}, Lcom/unity3d/player/HFPStatus;->access$100(Lcom/unity3d/player/HFPStatus;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setMode(I)V

    return-void

    .line 44
    :cond_4
    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->this$0:Lcom/unity3d/player/HFPStatus;

    invoke-static {p1}, Lcom/unity3d/player/HFPStatus;->access$000(Lcom/unity3d/player/HFPStatus;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 45
    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->this$0:Lcom/unity3d/player/HFPStatus;

    invoke-static {p1}, Lcom/unity3d/player/HFPStatus;->access$100(Lcom/unity3d/player/HFPStatus;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setMode(I)V

    .line 48
    :cond_5
    iget-object p0, p0, Lcom/unity3d/player/HFPStatus$1;->this$0:Lcom/unity3d/player/HFPStatus;

    invoke-static {p0, p2}, Lcom/unity3d/player/HFPStatus;->access$002(Lcom/unity3d/player/HFPStatus;Z)Z

    return-void
.end method
