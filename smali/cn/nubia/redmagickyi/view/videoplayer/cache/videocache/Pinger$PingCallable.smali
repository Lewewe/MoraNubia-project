.class Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger$PingCallable;
.super Ljava/lang/Object;
.source "Pinger.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger$PingCallable;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger$1;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger$PingCallable;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger$PingCallable;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;->access$100(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger$PingCallable;->call()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
