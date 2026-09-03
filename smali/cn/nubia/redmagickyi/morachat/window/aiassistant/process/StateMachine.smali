.class public final enum Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

.field public static final enum STATE_ANALYING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

.field public static final enum STATE_INPUTING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

.field public static final enum STATE_OUTPUTING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

.field private static isIdel:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private static stateListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;
    .locals 3

    .line 7
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_INPUTING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_ANALYING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_OUTPUTING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    filled-new-array {v0, v1, v2}, [Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    const-string v1, "STATE_INPUTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_INPUTING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    .line 11
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    const-string v1, "STATE_ANALYING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_ANALYING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    .line 13
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    const-string v1, "STATE_OUTPUTING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_OUTPUTING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    .line 7
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->$values()[Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->$VALUES:[Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->isIdel:Ljava/util/concurrent/atomic/AtomicReference;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;
    .locals 1

    .line 7
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->stateListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;

    return-object v0
.end method

.method public static getState()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;
    .locals 1

    .line 21
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    return-object v0
.end method

.method public static isIdel()Z
    .locals 1

    .line 58
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->isIdel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->isIdel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static print()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isIdel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->isIdel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setIsIdel(Z)V
    .locals 1

    .line 40
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->isIdel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->isIdel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p0, :cond_1

    .line 41
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->isIdel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$2;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$2;-><init>()V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static setState(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;)V
    .locals 3

    .line 25
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 27
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$1;

    invoke-direct {v2, v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static setStateListener(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;)V
    .locals 0

    .line 62
    sput-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->stateListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine$StateListener;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 7
    const-class v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;
    .locals 1

    .line 7
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->$VALUES:[Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    return-object v0
.end method
