.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$WorkHandler;
.super Landroid/os/Handler;
.source "AccompanyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# static fields
.field private static final MSG_WORK:I


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    .line 48
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 53
    const-string v0, "perform analyze with check"

    const-string v1, "Accompany-AccompanyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->isAccompanyEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$Callback;->isEnableAnalyze()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const-string p1, "perform analyze"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->startTakePicture(Z)V

    goto :goto_0

    .line 60
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$WorkHandler;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method
