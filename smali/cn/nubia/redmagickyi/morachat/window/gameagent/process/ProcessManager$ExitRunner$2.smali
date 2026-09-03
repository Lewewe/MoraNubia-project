.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner$2;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->exit(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter<",
        "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 808
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent;)V
    .locals 0

    .line 811
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;->CLOSED:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent;->onWindowStateChanged(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent$Event$WindowState;)V

    return-void
.end method

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

    .line 808
    check-cast p1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner$2;->get(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/FeatureEvent;)V

    return-void
.end method
