.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$5;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetTypeListener;


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

    .line 452
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$5;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetTypeChanged(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;)V
    .locals 0

    .line 455
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$5;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->onNetTypeChanged()V

    return-void
.end method
