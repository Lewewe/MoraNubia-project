.class public Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listeners"
.end annotation


# instance fields
.field private aiListener:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

.field private isScreenOn:Ljava/lang/Boolean;

.field private netTypeListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

.field private recordingListener:Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->aiListener:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    .line 362
    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$2;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->recordingListener:Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    .line 369
    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$3;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners$3;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->netTypeListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;
    .locals 0

    .line 270
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->netTypeListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/util/RecordingListener$Listener;
    .locals 0

    .line 270
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->recordingListener:Lcn/nubia/redmagickyi/util/RecordingListener$Listener;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;)Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;
    .locals 0

    .line 270
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->aiListener:Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;

    return-object p0
.end method

.method static synthetic access$1402(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 270
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public isScreenOn()Z
    .locals 2

    .line 274
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$1300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 277
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    .line 280
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;

    .line 283
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isScreenOn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accompany-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Listeners;->isScreenOn:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
