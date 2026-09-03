.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;
.super Landroid/os/Handler;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MSG_EXPAND:I = 0x1

.field private static final MSG_HANDUP_TIMEOUT:I = 0x2


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 362
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$1;)V
    .locals 0

    .line 362
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    return-void
.end method

.method static synthetic access$4500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;)V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->removedTimeoutMessage()V

    return-void
.end method

.method static synthetic access$4600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;)V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->packup()V

    return-void
.end method

.method static synthetic access$4700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;Z)V
    .locals 0

    .line 362
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->sendTimeoutMessage(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;)V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->expand()V

    return-void
.end method

.method private changeWindowAlpha(F)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$3900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->onWindowAlphaChanged(F)V

    .line 422
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$4000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->onWindowAlphaChanged(F)V

    .line 423
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$4100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->onWindowAlphaChanged(F)V

    .line 424
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$3100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setWindowAlpha(F)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 425
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->access$3300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setWindowAlpha(F)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 426
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->access$3400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setWindowAlpha(F)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    .line 427
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$3200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->setWindowAlpha(F)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    return-void
.end method

.method private expand()V
    .locals 3

    const/4 v0, 0x1

    .line 408
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->removeMessages(I)V

    .line 409
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->access$2600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)V

    .line 410
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->access$2700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)V

    .line 411
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$2800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)V

    const-wide/16 v1, 0x64

    .line 412
    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private packup()V
    .locals 1

    const/4 v0, 0x1

    .line 401
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->removeMessages(I)V

    .line 402
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->access$3600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)V

    .line 403
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->access$3700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)V

    .line 404
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$3800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)V

    return-void
.end method

.method private removedTimeoutMessage()V
    .locals 1

    const/4 v0, 0x2

    .line 416
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->removeMessages(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 417
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->changeWindowAlpha(F)V

    return-void
.end method

.method private sendTimeoutMessage(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 433
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$4200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V

    :cond_0
    const/4 p1, 0x2

    .line 435
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->removeMessages(I)V

    const-wide/16 v0, 0x2710

    .line 436
    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 368
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 375
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$2900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 376
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    .line 377
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->access$3000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/OutputTextView;->isScrolling()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    .line 378
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->access$2000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    .line 379
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$3100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->isTouching()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    .line 380
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$3200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->isTouching()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    .line 381
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->access$3300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->isTouching()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    .line 382
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->access$3400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDraggable()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/draggable/BaseDraggable;->isTouching()Z

    move-result p1

    if-nez p1, :cond_1

    .line 383
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$3500()Ljava/lang/String;

    move-result-object p1

    const-string v1, "hide menu by time out"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object p1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$1700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;Z)V

    .line 385
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->access$1800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 386
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->hideCaption(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 389
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->sendTimeoutMessage(Z)V

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f000000    # 0.5f

    .line 392
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->changeWindowAlpha(F)V

    goto :goto_0

    .line 370
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->access$2600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;)V

    .line 371
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->access$2700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)V

    .line 372
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->access$2800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;)V

    :cond_4
    :goto_0
    return-void
.end method
