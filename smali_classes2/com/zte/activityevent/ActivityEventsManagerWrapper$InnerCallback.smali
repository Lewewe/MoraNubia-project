.class public abstract Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;
.super Ljava/lang/Object;
.source "ActivityEventsManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/activityevent/ActivityEventsManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InnerCallback"
.end annotation


# instance fields
.field private final mStub:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback$1;

    invoke-direct {v0, p0}, Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback$1;-><init>(Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;)V

    iput-object v0, p0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;->mStub:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;)Landroid/os/IBinder;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;->mStub:Landroid/os/IBinder;

    return-object p0
.end method


# virtual methods
.method public abstract onActivityEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
.end method
