.class public final enum Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine$StateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

.field public static final enum STATE_ACTIVE:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

.field public static final enum STATE_IDEL_FAKE:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

.field public static final enum STATE_IDEL_TRUTH:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

.field private static state:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

.field private static stateListener:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine$StateListener;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;
    .locals 3

    .line 3
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->STATE_IDEL_TRUTH:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->STATE_IDEL_FAKE:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->STATE_ACTIVE:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    filled-new-array {v0, v1, v2}, [Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    const-string v1, "STATE_IDEL_TRUTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->STATE_IDEL_TRUTH:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    .line 7
    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    const-string v2, "STATE_IDEL_FAKE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->STATE_IDEL_FAKE:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    .line 9
    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    const-string v2, "STATE_ACTIVE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->STATE_ACTIVE:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    .line 3
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->$values()[Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    move-result-object v1

    sput-object v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->$VALUES:[Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    .line 11
    sput-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->state:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getState()Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;
    .locals 1

    .line 15
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->state:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    return-object v0
.end method

.method public static isStateActive()Z
    .locals 2

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->STATE_ACTIVE:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setState(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;)V
    .locals 2

    .line 19
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 21
    sput-object p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->state:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    .line 22
    sget-object v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->stateListener:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine$StateListener;

    if-eqz v1, :cond_0

    .line 23
    invoke-interface {v1, v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine$StateListener;->onStateChanged(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;)V

    :cond_0
    return-void
.end method

.method public static setStateListener(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine$StateListener;)V
    .locals 0

    .line 33
    sput-object p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->stateListener:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine$StateListener;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 3
    const-class v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;
    .locals 1

    .line 3
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->$VALUES:[Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    return-object v0
.end method
