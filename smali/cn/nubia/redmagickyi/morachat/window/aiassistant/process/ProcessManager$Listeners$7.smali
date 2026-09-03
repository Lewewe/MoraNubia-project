.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$7;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;


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

    .line 469
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$7;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMicrophoneServiceConnected(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V
    .locals 0

    return-void
.end method

.method public onMicrophoneServiceDisconnected()V
    .locals 0

    return-void
.end method
