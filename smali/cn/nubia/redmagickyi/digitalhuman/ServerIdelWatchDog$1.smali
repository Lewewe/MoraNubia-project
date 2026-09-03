.class Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$1;
.super Ljava/lang/Object;
.source "ServerIdelWatchDog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;)Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;)Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$Callback;->onTimeout()V

    :cond_0
    return-void
.end method
