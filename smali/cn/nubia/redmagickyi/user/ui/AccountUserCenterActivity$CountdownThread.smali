.class Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;
.super Landroid/os/CountDownTimer;
.source "AccountUserCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountdownThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    .line 336
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$400(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 348
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$400(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Landroid/widget/TextView;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->next:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 341
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$400(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$CountdownThread;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->nubia_time_second:I

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
