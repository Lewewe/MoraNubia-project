.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$4;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->stopAIModel()V
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
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1285
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

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

    .line 1285
    check-cast p1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$4;->get(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;)V

    return-void
.end method

.method public get(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;)V
    .locals 0

    .line 1288
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/FeatureChat;->stopSession()V

    return-void
.end method
