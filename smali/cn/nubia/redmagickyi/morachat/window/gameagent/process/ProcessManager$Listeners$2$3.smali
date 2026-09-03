.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$3;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;->onOutputListClicked(ILcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter<",
        "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;

.field final synthetic val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)V
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

    .line 450
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$3;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$3;->val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 450
    check-cast p1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$3;->get(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;)V

    return-void
.end method

.method public get(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;)V
    .locals 3

    .line 453
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/ActionRequest;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$3;->val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->getActionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$3;->val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/ActionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$3$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$3$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$2$3;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->startSession(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/IChatRequest;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat$IResponseCallback;)V

    return-void
.end method
