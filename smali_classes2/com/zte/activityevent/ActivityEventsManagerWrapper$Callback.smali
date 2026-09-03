.class public abstract Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;
.super Ljava/lang/Object;
.source "ActivityEventsManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/activityevent/ActivityEventsManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private final mStub:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback$1;

    invoke-direct {v0, p0}, Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback$1;-><init>(Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;)V

    iput-object v0, p0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;->mStub:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;)Landroid/os/IBinder;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;->mStub:Landroid/os/IBinder;

    return-object p0
.end method


# virtual methods
.method public abstract onActivityEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
