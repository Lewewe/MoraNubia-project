.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->setState(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$newState:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

.field final synthetic val$oldState:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$1;->val$oldState:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$1;->val$newState:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 31
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->access$000()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->access$000()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$1;->val$oldState:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$1;->val$newState:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    invoke-interface {v0, v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;->onStateChanged(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;)V

    :cond_0
    return-void
.end method
