.class Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;
.super Landroid/os/CountDownTimer;
.source "ModifyPhoneNumberPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountdownThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;JJ)V
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

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;->this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;

    .line 93
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;->this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->access$900(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;->SetCountdownEnable(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 98
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$CountdownThread;->this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->access$800(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->nubia_time_second:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;->SetCountdownText(Ljava/lang/String;)V

    return-void
.end method
