.class public Lcn/nubia/redmagickyi/crop/util/VideoToast;
.super Ljava/lang/Object;
.source "VideoToast.java"


# instance fields
.field private final MSG_WHAT_CANCEL:I

.field private final MSG_WHAT_SHOW:I

.field private mCancelRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mShowKey:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x53484f57

    .line 12
    iput v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->MSG_WHAT_SHOW:I

    const v0, 0x4341434c

    .line 13
    iput v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->MSG_WHAT_CANCEL:I

    .line 14
    const-string v0, "show"

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mShowKey:Ljava/lang/String;

    .line 17
    new-instance v0, Lcn/nubia/redmagickyi/crop/util/VideoToast$1;

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/crop/util/VideoToast$1;-><init>(Lcn/nubia/redmagickyi/crop/util/VideoToast;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcn/nubia/redmagickyi/crop/util/VideoToast$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast$2;-><init>(Lcn/nubia/redmagickyi/crop/util/VideoToast;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mCancelRunnable:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/crop/util/VideoToast;)Landroid/widget/Toast;
    .locals 0

    .line 11
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/crop/util/VideoToast;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 11
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/crop/util/VideoToast;)Landroid/content/Context;
    .locals 0

    .line 11
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/crop/util/VideoToast;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->cancelToast()V

    return-void
.end method

.method private cancelToast()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public showToast(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showToast(Ljava/lang/CharSequence;)V
    .locals 2

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string v1, "show"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const v0, 0x53484f57

    .line 59
    iput v0, p1, Landroid/os/Message;->what:I

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
