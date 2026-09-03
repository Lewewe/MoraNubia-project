.class Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandTrackNotifyService$1;
.super Ljava/lang/Object;
.source "WindowCommandTrackNotifyService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$OnEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandTrackNotifyService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandTrackNotifyService;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandTrackNotifyService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
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

    .line 41
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandTrackNotifyService$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandTrackNotifyService;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandTrackNotifyService$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventSendComplete()V
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandTrackNotifyService$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
