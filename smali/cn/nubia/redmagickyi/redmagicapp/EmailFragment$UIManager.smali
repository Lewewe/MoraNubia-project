.class Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;
.super Ljava/lang/Object;
.source "EmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;
    }
.end annotation


# static fields
.field private static final MSG_DISMISS_OP_DIALOG:I = 0x1

.field private static final MSG_SHOW_OP_DIALOG:I = 0x0

.field private static final MSG_SHOW_TOAST:I = 0x2

.field private static final MSG_UPDATE_MAIL_CONTENT:I = 0x4

.field private static final MSG_UPDATE_MAIL_LIST:I = 0x3

.field private static final OP_DELETE_READ_CONFIRM:I = 0x0

.field private static final OP_DELETE_READ_FAILED_WITH_ATTACHMENTS_UNRRECEIVED:I = 0x2

.field private static final OP_DELETE_SINGLE_CONFIRM:I = 0x1

.field private static final OP_DELETE_SINGLE_FAILED_WITH_ATTACHMENTS_UNRRECEIVED:I = 0x3

.field private static final OP_LOADING:I = 0x4

.field private static final STATE_CONTENT_LOADING:I = 0x0

.field private static final STATE_CONTENT_LOAD_FAIL:I = 0x1

.field private static final STATE_CONTENT_LOAD_SUCCESS:I = 0x2


# instance fields
.field private h:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->h:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->removeAllMessage()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->updateMailListState()V

    return-void
.end method

.method static synthetic access$3600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;ILcn/nubia/redmagickyi/network/bean/EmailBean;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->updateEmailContentState(ILcn/nubia/redmagickyi/network/bean/EmailBean;)V

    return-void
.end method

.method static synthetic access$3800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->toast()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)Z
    .locals 0

    .line 279
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->isOpDialogShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->dismissOpDialog()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;I[Landroid/view/View;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->showOpDialog(I[Landroid/view/View;)V

    return-void
.end method

.method private dismissOpDialog()V
    .locals 2

    .line 574
    const-string v0, "EmailFragment"

    const-string v1, "perform dismissOpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->h:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method private isOpDialogShowing()Z
    .locals 0

    .line 561
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->h:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->access$3300(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;)Z

    move-result p0

    return p0
.end method

.method private removeAllMessage()V
    .locals 1

    .line 598
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->h:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private varargs showOpDialog(I[Landroid/view/View;)V
    .locals 2

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "perform showOpDialog, op is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 567
    iput v1, v0, Landroid/os/Message;->what:I

    .line 568
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 569
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 570
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->h:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private toast()V
    .locals 2

    .line 579
    const-string v0, "EmailFragment"

    const-string v1, "perform toast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->h:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method private updateEmailContentState(ILcn/nubia/redmagickyi/network/bean/EmailBean;)V
    .locals 2

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "perform updateEmailContentState, state is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 591
    iput v1, v0, Landroid/os/Message;->what:I

    .line 592
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 593
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 594
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->h:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateMailListState()V
    .locals 2

    .line 584
    const-string v0, "EmailFragment"

    const-string v1, "perform updateMailListState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->h:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->sendEmptyMessage(I)Z

    return-void
.end method
