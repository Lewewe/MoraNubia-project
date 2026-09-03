.class Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$1;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->release(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 145
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 148
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 151
    throw v0
.end method
