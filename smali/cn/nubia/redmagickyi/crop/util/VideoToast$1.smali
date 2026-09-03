.class Lcn/nubia/redmagickyi/crop/util/VideoToast$1;
.super Landroid/os/Handler;
.source "VideoToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/util/VideoToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/util/VideoToast;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/util/VideoToast;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast$1;->this$0:Lcn/nubia/redmagickyi/crop/util/VideoToast;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 20
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x4341434c

    if-eq v0, v1, :cond_2

    const v1, 0x53484f57

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "show"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast$1;->this$0:Lcn/nubia/redmagickyi/crop/util/VideoToast;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->access$000(Lcn/nubia/redmagickyi/crop/util/VideoToast;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast$1;->this$0:Lcn/nubia/redmagickyi/crop/util/VideoToast;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->access$100(Lcn/nubia/redmagickyi/crop/util/VideoToast;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->access$002(Lcn/nubia/redmagickyi/crop/util/VideoToast;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast$1;->this$0:Lcn/nubia/redmagickyi/crop/util/VideoToast;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->access$000(Lcn/nubia/redmagickyi/crop/util/VideoToast;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast$1;->this$0:Lcn/nubia/redmagickyi/crop/util/VideoToast;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->access$000(Lcn/nubia/redmagickyi/crop/util/VideoToast;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast$1;->this$0:Lcn/nubia/redmagickyi/crop/util/VideoToast;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->access$200(Lcn/nubia/redmagickyi/crop/util/VideoToast;)V

    goto :goto_1

    .line 32
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast$1;->this$0:Lcn/nubia/redmagickyi/crop/util/VideoToast;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->access$000(Lcn/nubia/redmagickyi/crop/util/VideoToast;)Landroid/widget/Toast;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast$1;->this$0:Lcn/nubia/redmagickyi/crop/util/VideoToast;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->access$000(Lcn/nubia/redmagickyi/crop/util/VideoToast;)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    :cond_3
    :goto_1
    return-void
.end method
