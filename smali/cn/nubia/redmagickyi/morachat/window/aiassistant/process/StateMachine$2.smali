.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$2;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->setIsIdel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 45
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->access$000()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->access$000()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;->onStateChanged(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;)V

    :cond_0
    return-void
.end method
