.class public abstract Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;
.super Ljava/lang/Object;
.source "ActivityEventsManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/activityevent/ActivityEventsManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CallbackNubia"
.end annotation


# instance fields
.field private final mStub:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia$1;

    invoke-direct {v0, p0}, Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia$1;-><init>(Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;)V

    iput-object v0, p0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;->mStub:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$200(Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;)Landroid/os/IBinder;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;->mStub:Landroid/os/IBinder;

    return-object p0
.end method


# virtual methods
.method public abstract onActivityEvent(Ljava/lang/String;)V
.end method
